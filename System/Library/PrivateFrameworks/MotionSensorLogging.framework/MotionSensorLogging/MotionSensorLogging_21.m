uint64_t CMMsl::GyroBiasConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 120) & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    v18 = *(v3 + 117);
    this = PB::Writer::write(a2);
    if ((*(v3 + 120) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = PB::Writer::write(a2, *(this + 104));
  v4 = *(v3 + 120);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    v5 = *(v3 + 116);
    this = PB::Writer::write(a2);
  }

LABEL_5:
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::write(a2, v8);
  }

  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11);
  }

  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  while (v12 != v13)
  {
    v14 = *v12++;
    this = PB::Writer::write(a2, v14);
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  while (v15 != v16)
  {
    v17 = *v15++;
    this = PB::Writer::write(a2, v17);
  }

  if ((*(v3 + 120) & 2) != 0)
  {
    v19 = *(v3 + 112);

    return PB::Writer::write(a2, v19);
  }

  return this;
}

BOOL CMMsl::GyroBiasConstraints::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    if ((*(a2 + 120) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (*(a2 + 120))
  {
    return 0;
  }

  if ((*(a1 + 120) & 8) != 0)
  {
    if ((*(a2 + 120) & 8) == 0 || *(a1 + 117) != *(a2 + 117))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 120) & 4) != 0)
  {
    if ((*(a2 + 120) & 4) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a2 + 56);
  if (v5 - v6 != *(a2 + 64) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(a2 + 80);
  if (v8 - v9 != *(a2 + 88) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  v14 = (*(a2 + 120) & 2) == 0;
  if ((*(a1 + 120) & 2) != 0)
  {
    return (*(a2 + 120) & 2) != 0 && *(a1 + 112) == *(a2 + 112);
  }

  return v14;
}

uint64_t CMMsl::GyroBiasConstraints::hash_value(CMMsl::GyroBiasConstraints *this)
{
  if ((*(this + 120) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 120) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    if ((*(this + 120) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(this + 13) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 13);
  }

  if ((*(this + 120) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v3 = *(this + 117);
  if ((*(this + 120) & 4) != 0)
  {
LABEL_4:
    v4 = *(this + 116);
    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
LABEL_11:
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = PBHashBytes();
  v8 = *(this + 7);
  v9 = *(this + 8);
  v10 = PBHashBytes();
  v11 = *(this + 10);
  v12 = *(this + 11);
  v13 = PBHashBytes();
  v14 = *(this + 1);
  v15 = *(this + 2);
  v16 = PBHashBytes();
  if ((*(this + 120) & 2) != 0)
  {
    v18 = *(this + 28);
    v17 = LODWORD(v18);
    if (v18 == 0.0)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v3 ^ v2 ^ v4 ^ v7 ^ v10 ^ v13 ^ v16 ^ v17;
}

uint64_t CMMsl::GyroBiasCorrection::GyroBiasCorrection(uint64_t this)
{
  *this = &unk_286C205B0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C205B0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::GyroBiasCorrection::~GyroBiasCorrection(CMMsl::GyroBiasCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C205B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::GyroBiasCorrection::~GyroBiasCorrection(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroBiasCorrection::GyroBiasCorrection(uint64_t this, const CMMsl::GyroBiasCorrection *a2)
{
  *this = &unk_286C205B0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

const CMMsl::GyroBiasCorrection *CMMsl::GyroBiasCorrection::operator=(const CMMsl::GyroBiasCorrection *a1, const CMMsl::GyroBiasCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasCorrection::GyroBiasCorrection(v6, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    CMMsl::GyroBiasCorrection::~GyroBiasCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::GyroBiasCorrection *a2, CMMsl::GyroBiasCorrection *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::GyroBiasCorrection::GyroBiasCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C205B0;
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

uint64_t CMMsl::GyroBiasCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasCorrection::GyroBiasCorrection(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::GyroBiasCorrection::~GyroBiasCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasCorrection::formatText(CMMsl::GyroBiasCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "axis");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "correction");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasCorrection::readFrom(CMMsl::GyroBiasCorrection *this, PB::Reader *a2)
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
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
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
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
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
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::GyroBiasCorrection::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::GyroBiasCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotionCorrection::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t CMMsl::GyroBiasCorrection::hash_value(CMMsl::GyroBiasCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::GyroBiasCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

double CMMsl::GyroBiasEstimate::GyroBiasEstimate(CMMsl::GyroBiasEstimate *this)
{
  *this = &unk_286C205E8;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C205E8;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::GyroBiasEstimate::~GyroBiasEstimate(CMMsl::GyroBiasEstimate *this)
{
  *this = &unk_286C205E8;
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
  CMMsl::GyroBiasEstimate::~GyroBiasEstimate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::GyroBiasEstimate *CMMsl::GyroBiasEstimate::GyroBiasEstimate(CMMsl::GyroBiasEstimate *this, const CMMsl::GyroBiasEstimate *a2)
{
  *this = &unk_286C205E8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 80) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 80) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 8) == 0)
  {
    if ((*(a2 + 80) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(a2 + 18);
    *(this + 80) |= 4u;
    *(this + 18) = v10;
    if ((*(a2 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 76);
  *(this + 80) |= 8u;
  *(this + 76) = v9;
  v6 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v7 = *(a2 + 7);
    *(this + 80) |= 1u;
    *(this + 7) = v7;
  }

  return this;
}

uint64_t CMMsl::GyroBiasEstimate::operator=(uint64_t a1, const CMMsl::GyroBiasEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasEstimate::GyroBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::GyroBiasEstimate::~GyroBiasEstimate(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GyroBiasEstimate *a2, CMMsl::GyroBiasEstimate *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
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
  LOBYTE(v10) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::GyroBiasEstimate::GyroBiasEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C205E8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::GyroBiasEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasEstimate::GyroBiasEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::GyroBiasEstimate::~GyroBiasEstimate(v11);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasEstimate::formatText(CMMsl::GyroBiasEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "covUT", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "est", v10);
  }

  v11 = *(this + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(this + 76);
    PB::TextFormatter::format(a2, "isCandidate");
    v11 = *(this + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(this + 18);
  PB::TextFormatter::format(a2, "numSamplesInAverage");
  v11 = *(this + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "temperature", *(this + 7));
  if ((*(this + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasEstimate::readFrom(CMMsl::GyroBiasEstimate *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      if (v23 == 4)
      {
        *(this + 80) |= 8u;
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

        *(this + 76) = v45;
        goto LABEL_129;
      }

      if (v23 == 5)
      {
        *(this + 80) |= 4u;
        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        v64 = *a2;
        if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
        {
          v71 = 0;
          v72 = 0;
          v67 = 0;
          v73 = (v64 + v63);
          v18 = v62 >= v63;
          v74 = v62 - v63;
          if (!v18)
          {
            v74 = 0;
          }

          v75 = v63 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v67) = 0;
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            v76 = *v73;
            *(a2 + 1) = v75;
            v67 |= (v76 & 0x7F) << v71;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            ++v73;
            --v74;
            ++v75;
            v14 = v72++ > 8;
            if (v14)
            {
LABEL_91:
              LODWORD(v67) = 0;
              goto LABEL_117;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v67) = 0;
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = (v64 + v63);
          v69 = v63 + 1;
          while (1)
          {
            *(a2 + 1) = v69;
            v70 = *v68++;
            v67 |= (v70 & 0x7F) << v65;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v69;
            v14 = v66++ > 8;
            if (v14)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_117:
        *(this + 18) = v67;
        goto LABEL_129;
      }

      if (v23 != 6)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_129;
      }

      *(this + 80) |= 1u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 7) = *(*a2 + v40);
    }

    else if (v23 == 1)
    {
      *(this + 80) |= 2u;
      v41 = *(a2 + 1);
      if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 8) = *(*a2 + v41);
    }

    else
    {
      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_135:
            v103 = 0;
            return v103 & 1;
          }

          v46 = *(a2 + 1);
          v47 = *(a2 + 2);
          while (v46 < v47 && (*(a2 + 24) & 1) == 0)
          {
            v49 = *(this + 5);
            v48 = *(this + 6);
            if (v49 >= v48)
            {
              v51 = *(this + 4);
              v52 = v49 - v51;
              v53 = (v49 - v51) >> 3;
              v54 = v53 + 1;
              if ((v53 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v55 = v48 - v51;
              if (v55 >> 2 > v54)
              {
                v54 = v55 >> 2;
              }

              if (v55 >= 0x7FFFFFFFFFFFFFF8)
              {
                v56 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v54;
              }

              if (v56)
              {
                sub_25AD28710(v56);
              }

              v57 = (v49 - v51) >> 3;
              v58 = (8 * v53);
              v59 = (8 * v53 - 8 * v57);
              *v58 = 0;
              v50 = v58 + 1;
              memcpy(v59, v51, v52);
              v60 = *(this + 4);
              *(this + 4) = v59;
              *(this + 5) = v50;
              *(this + 6) = 0;
              if (v60)
              {
                operator delete(v60);
              }
            }

            else
            {
              *v49 = 0;
              v50 = v49 + 8;
            }

            *(this + 5) = v50;
            v61 = *(a2 + 1);
            if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
            {
LABEL_96:
              *(a2 + 24) = 1;
              goto LABEL_97;
            }

            *(v50 - 1) = *(*a2 + v61);
            v47 = *(a2 + 2);
            v46 = *(a2 + 1) + 8;
            *(a2 + 1) = v46;
          }

          goto LABEL_97;
        }

        v81 = *(this + 5);
        v80 = *(this + 6);
        if (v81 >= v80)
        {
          v88 = *(this + 4);
          v89 = v81 - v88;
          v90 = (v81 - v88) >> 3;
          v91 = v90 + 1;
          if ((v90 + 1) >> 61)
          {
LABEL_137:
            sub_25AAE66B8();
          }

          v92 = v80 - v88;
          if (v92 >> 2 > v91)
          {
            v91 = v92 >> 2;
          }

          if (v92 >= 0x7FFFFFFFFFFFFFF8)
          {
            v93 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v91;
          }

          if (v93)
          {
            sub_25AD28710(v93);
          }

          v98 = (v81 - v88) >> 3;
          v99 = (8 * v90);
          v100 = (8 * v90 - 8 * v98);
          *v99 = 0;
          v79 = v99 + 1;
          memcpy(v100, v88, v89);
          v101 = *(this + 4);
          *(this + 4) = v100;
          *(this + 5) = v79;
          *(this + 6) = 0;
          if (v101)
          {
            operator delete(v101);
          }
        }

        else
        {
          *v81 = 0;
          v79 = v81 + 8;
        }

        *(this + 5) = v79;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_135;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v33 = v26 - v29;
              if (v33 >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_25AD28710(v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v27 = 0;
              v28 = v27 + 8;
            }

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_96;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_97:
          PB::Reader::recallMark();
          goto LABEL_129;
        }

        v78 = *(this + 2);
        v77 = *(this + 3);
        if (v78 >= v77)
        {
          v82 = *(this + 1);
          v83 = v78 - v82;
          v84 = (v78 - v82) >> 3;
          v85 = v84 + 1;
          if ((v84 + 1) >> 61)
          {
            goto LABEL_137;
          }

          v86 = v77 - v82;
          if (v86 >> 2 > v85)
          {
            v85 = v86 >> 2;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v87 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = v85;
          }

          if (v87)
          {
            sub_25AD28710(v87);
          }

          v94 = (v78 - v82) >> 3;
          v95 = (8 * v84);
          v96 = (8 * v84 - 8 * v94);
          *v95 = 0;
          v79 = v95 + 1;
          memcpy(v96, v82, v83);
          v97 = *(this + 1);
          *(this + 1) = v96;
          *(this + 2) = v79;
          *(this + 3) = 0;
          if (v97)
          {
            operator delete(v97);
          }
        }

        else
        {
          *v78 = 0;
          v79 = v78 + 8;
        }

        *(this + 2) = v79;
      }

      v102 = *(a2 + 1);
      if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
      {
LABEL_126:
        *(a2 + 24) = 1;
        goto LABEL_129;
      }

      *(v79 - 1) = *(*a2 + v102);
    }

    *(a2 + 1) += 8;
LABEL_129:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t CMMsl::GyroBiasEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 80) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

  v11 = *(v3 + 76);
  this = PB::Writer::write(a2);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v13 = *(v3 + 56);

  return PB::Writer::write(a2, v13);
}

BOOL CMMsl::GyroBiasEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  if ((*(a1 + 80) & 8) != 0)
  {
    if ((*(a2 + 80) & 8) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
  {
    return 0;
  }

  v8 = (*(a2 + 80) & 1) == 0;
  if (*(a1 + 80))
  {
    return (*(a2 + 80) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::GyroBiasEstimate::hash_value(CMMsl::GyroBiasEstimate *this)
{
  if ((*(this + 80) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  if ((*(this + 80) & 8) != 0)
  {
    v9 = *(this + 76);
    if ((*(this + 80) & 4) != 0)
    {
LABEL_8:
      v10 = *(this + 18);
      if (*(this + 80))
      {
        goto LABEL_9;
      }

LABEL_14:
      v11 = 0.0;
      return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
    }
  }

  else
  {
    v9 = 0;
    if ((*(this + 80) & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = *(this + 7);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
}

double CMMsl::GyroBiasEstimateError::GyroBiasEstimateError(CMMsl::GyroBiasEstimateError *this)
{
  *this = &unk_286C20620;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C20620;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void CMMsl::GyroBiasEstimateError::~GyroBiasEstimateError(CMMsl::GyroBiasEstimateError *this)
{
  *this = &unk_286C20620;
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

{
  CMMsl::GyroBiasEstimateError::~GyroBiasEstimateError(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::GyroBiasEstimateError *CMMsl::GyroBiasEstimateError::GyroBiasEstimateError(CMMsl::GyroBiasEstimateError *this, const CMMsl::GyroBiasEstimateError *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = &unk_286C20620;
  *(this + 23) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if (*(a2 + 92))
  {
    v5 = *(a2 + 10);
    *(this + 92) = 1;
    *(this + 10) = v5;
  }

  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  if ((*(a2 + 92) & 2) != 0)
  {
    v6 = *(a2 + 22);
    *(this + 92) |= 2u;
    *(this + 22) = v6;
  }

  return this;
}

CMMsl *CMMsl::GyroBiasEstimateError::operator=(CMMsl *a1, const CMMsl::GyroBiasEstimateError *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasEstimateError::GyroBiasEstimateError(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GyroBiasEstimateError::~GyroBiasEstimateError(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroBiasEstimateError *a2, CMMsl::GyroBiasEstimateError *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
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
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  result = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = result;
  return result;
}

uint64_t CMMsl::GyroBiasEstimateError::GyroBiasEstimateError(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20620;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 80) = *(a2 + 80);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 56));
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

CMMsl *CMMsl::GyroBiasEstimateError::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasEstimateError::GyroBiasEstimateError(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GyroBiasEstimateError::~GyroBiasEstimateError(v5);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasEstimateError::formatText(CMMsl::GyroBiasEstimateError *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "dynamicBiasEstimate", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "estimateErrorMetric", v10);
  }

  if ((*(this + 92) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "rawGyroTemperature", *(this + 22));
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "subFitError", v13);
  }

  if (*(this + 92))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasEstimateError::readFrom(CMMsl::GyroBiasEstimateError *this, PB::Reader *a2)
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
        goto LABEL_143;
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
        goto LABEL_143;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_145;
          }

          goto LABEL_139;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_145;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 >= v27)
            {
              v30 = *(this + 1);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 2;
              v33 = v32 + 1;
              if ((v32 + 1) >> 62)
              {
                goto LABEL_147;
              }

              v34 = v27 - v30;
              if (v34 >> 1 > v33)
              {
                v33 = v34 >> 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v35 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                sub_25AD288E8(v35);
              }

              v36 = (v28 - v30) >> 2;
              v37 = (4 * v32);
              v38 = (4 * v32 - 4 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 1);
              *(this + 1) = v38;
              *(this + 2) = v29;
              *(this + 3) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 4;
            }

            *(this + 2) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
            {
LABEL_98:
              *(a2 + 24) = 1;
              break;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 4;
            *(a2 + 1) = v25;
          }

LABEL_99:
          PB::Reader::recallMark();
          goto LABEL_139;
        }

        v81 = *(this + 2);
        v80 = *(this + 3);
        if (v81 >= v80)
        {
          v94 = *(this + 1);
          v95 = v81 - v94;
          v96 = (v81 - v94) >> 2;
          v97 = v96 + 1;
          if ((v96 + 1) >> 62)
          {
LABEL_147:
            sub_25AAE66B8();
          }

          v98 = v80 - v94;
          if (v98 >> 1 > v97)
          {
            v97 = v98 >> 1;
          }

          if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v99 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v99 = v97;
          }

          if (v99)
          {
            sub_25AD288E8(v99);
          }

          v108 = (v81 - v94) >> 2;
          v109 = (4 * v96);
          v110 = (4 * v96 - 4 * v108);
          *v109 = 0;
          v77 = v109 + 1;
          memcpy(v110, v94, v95);
          v111 = *(this + 1);
          *(this + 1) = v110;
          *(this + 2) = v77;
          *(this + 3) = 0;
          if (v111)
          {
            operator delete(v111);
          }
        }

        else
        {
          *v81 = 0;
          v77 = v81 + 4;
        }

        *(this + 2) = v77;
LABEL_133:
        v112 = *(a2 + 1);
        if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(a2 + 2))
        {
          goto LABEL_135;
        }

        *(v77 - 1) = *(*a2 + v112);
        goto LABEL_137;
      }

      *(this + 92) |= 1u;
      v73 = *(a2 + 1);
      if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(a2 + 2))
      {
        goto LABEL_135;
      }

      *(this + 10) = *(*a2 + v73);
      v74 = *(a2 + 1) + 8;
LABEL_138:
      *(a2 + 1) = v74;
LABEL_139:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_143;
      }
    }

    if (v23 == 3)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_145;
        }

        v41 = *(a2 + 1);
        v42 = *(a2 + 2);
        while (v41 < v42 && (*(a2 + 24) & 1) == 0)
        {
          v44 = *(this + 5);
          v43 = *(this + 6);
          if (v44 >= v43)
          {
            v46 = *(this + 4);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 2;
            v49 = v48 + 1;
            if ((v48 + 1) >> 62)
            {
              goto LABEL_147;
            }

            v50 = v43 - v46;
            if (v50 >> 1 > v49)
            {
              v49 = v50 >> 1;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v51 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_25AD288E8(v51);
            }

            v52 = (v44 - v46) >> 2;
            v53 = (4 * v48);
            v54 = (4 * v48 - 4 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(this + 4);
            *(this + 4) = v54;
            *(this + 5) = v45;
            *(this + 6) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = 0;
            v45 = v44 + 4;
          }

          *(this + 5) = v45;
          v56 = *(a2 + 1);
          if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(v45 - 1) = *(*a2 + v56);
          v42 = *(a2 + 2);
          v41 = *(a2 + 1) + 4;
          *(a2 + 1) = v41;
        }

        goto LABEL_99;
      }

      v76 = *(this + 5);
      v75 = *(this + 6);
      if (v76 >= v75)
      {
        v82 = *(this + 4);
        v83 = v76 - v82;
        v84 = (v76 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
          goto LABEL_147;
        }

        v86 = v75 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          sub_25AD288E8(v87);
        }

        v100 = (v76 - v82) >> 2;
        v101 = (4 * v84);
        v102 = (4 * v84 - 4 * v100);
        *v101 = 0;
        v77 = v101 + 1;
        memcpy(v102, v82, v83);
        v103 = *(this + 4);
        *(this + 4) = v102;
        *(this + 5) = v77;
        *(this + 6) = 0;
        if (v103)
        {
          operator delete(v103);
        }
      }

      else
      {
        *v76 = 0;
        v77 = v76 + 4;
      }

      *(this + 5) = v77;
      goto LABEL_133;
    }

    if (v23 == 4)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_145:
          v113 = 0;
          return v113 & 1;
        }

        v57 = *(a2 + 1);
        v58 = *(a2 + 2);
        while (v57 < v58 && (*(a2 + 24) & 1) == 0)
        {
          v60 = *(this + 8);
          v59 = *(this + 9);
          if (v60 >= v59)
          {
            v62 = *(this + 7);
            v63 = v60 - v62;
            v64 = (v60 - v62) >> 2;
            v65 = v64 + 1;
            if ((v64 + 1) >> 62)
            {
              goto LABEL_147;
            }

            v66 = v59 - v62;
            if (v66 >> 1 > v65)
            {
              v65 = v66 >> 1;
            }

            if (v66 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v67 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v65;
            }

            if (v67)
            {
              sub_25AD288E8(v67);
            }

            v68 = (v60 - v62) >> 2;
            v69 = (4 * v64);
            v70 = (4 * v64 - 4 * v68);
            *v69 = 0;
            v61 = v69 + 1;
            memcpy(v70, v62, v63);
            v71 = *(this + 7);
            *(this + 7) = v70;
            *(this + 8) = v61;
            *(this + 9) = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v60 = 0;
            v61 = v60 + 4;
          }

          *(this + 8) = v61;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(v61 - 1) = *(*a2 + v72);
          v58 = *(a2 + 2);
          v57 = *(a2 + 1) + 4;
          *(a2 + 1) = v57;
        }

        goto LABEL_99;
      }

      v79 = *(this + 8);
      v78 = *(this + 9);
      if (v79 >= v78)
      {
        v88 = *(this + 7);
        v89 = v79 - v88;
        v90 = (v79 - v88) >> 2;
        v91 = v90 + 1;
        if ((v90 + 1) >> 62)
        {
          goto LABEL_147;
        }

        v92 = v78 - v88;
        if (v92 >> 1 > v91)
        {
          v91 = v92 >> 1;
        }

        if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v93 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v93 = v91;
        }

        if (v93)
        {
          sub_25AD288E8(v93);
        }

        v104 = (v79 - v88) >> 2;
        v105 = (4 * v90);
        v106 = (4 * v90 - 4 * v104);
        *v105 = 0;
        v77 = v105 + 1;
        memcpy(v106, v88, v89);
        v107 = *(this + 7);
        *(this + 7) = v106;
        *(this + 8) = v77;
        *(this + 9) = 0;
        if (v107)
        {
          operator delete(v107);
        }
      }

      else
      {
        *v79 = 0;
        v77 = v79 + 4;
      }

      *(this + 8) = v77;
      goto LABEL_133;
    }

    if (v23 != 5)
    {
      goto LABEL_17;
    }

    *(this + 92) |= 2u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
    {
LABEL_135:
      *(a2 + 24) = 1;
      goto LABEL_139;
    }

    *(this + 22) = *(*a2 + v24);
LABEL_137:
    v74 = *(a2 + 1) + 4;
    goto LABEL_138;
  }

LABEL_143:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t CMMsl::GyroBiasEstimateError::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 92))
  {
    this = PB::Writer::write(a2, *(this + 80));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  if ((*(v3 + 92) & 2) != 0)
  {
    v13 = *(v3 + 88);

    return PB::Writer::write(a2, v13);
  }

  return this;
}

BOOL CMMsl::GyroBiasEstimateError::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    if ((*(a2 + 92) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (*(a2 + 92))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 56);
  if (v8 - v9 != *(a2 + 64) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v11 = (*(a2 + 92) & 2) == 0;
  if ((*(a1 + 92) & 2) != 0)
  {
    return (*(a2 + 92) & 2) != 0 && *(a1 + 88) == *(a2 + 88);
  }

  return v11;
}

uint64_t CMMsl::GyroBiasEstimateError::hash_value(CMMsl::GyroBiasEstimateError *this)
{
  if (*(this + 92))
  {
    if (*(this + 10) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 10);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes();
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = PBHashBytes();
  v9 = *(this + 7);
  v10 = *(this + 8);
  v11 = PBHashBytes();
  if ((*(this + 92) & 2) != 0)
  {
    v13 = *(this + 22);
    v12 = LODWORD(v13);
    if (v13 == 0.0)
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v5 ^ v2 ^ v8 ^ v11 ^ v12;
}

double CMMsl::GyroBiasFit::GyroBiasFit(CMMsl::GyroBiasFit *this)
{
  *this = &unk_286C20658;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C20658;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::GyroBiasFit::~GyroBiasFit(CMMsl::GyroBiasFit *this)
{
  *this = &unk_286C20658;
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
  CMMsl::GyroBiasFit::~GyroBiasFit(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::GyroBiasFit *CMMsl::GyroBiasFit::GyroBiasFit(char **this, char **a2)
{
  *this = &unk_286C20658;
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 15) = 0;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  if (this != a2)
  {
    sub_25AD287AC(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 2);
    sub_25AD287AC(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  }

  if (*(a2 + 60))
  {
    v5 = *(a2 + 14);
    *(this + 60) |= 1u;
    *(this + 14) = v5;
  }

  return this;
}

uint64_t CMMsl::GyroBiasFit::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasFit::GyroBiasFit(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::GyroBiasFit::~GyroBiasFit(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroBiasFit *a2, CMMsl::GyroBiasFit *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  return result;
}

uint64_t CMMsl::GyroBiasFit::GyroBiasFit(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20658;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::GyroBiasFit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasFit::GyroBiasFit(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::GyroBiasFit::~GyroBiasFit(&v9);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasFit::formatText(CMMsl::GyroBiasFit *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "intercept", v7);
  }

  if (*(this + 60))
  {
    PB::TextFormatter::format(a2, "lastMiniCal", *(this + 14));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "slope", v10);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasFit::readFrom(CMMsl::GyroBiasFit *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) == 3)
    {
      *(this + 60) |= 1u;
      v56 = *(a2 + 1);
      if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
      {
        goto LABEL_96;
      }

      *(this + 14) = *(*a2 + v56);
    }

    else
    {
      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_105:
            v83 = 0;
            return v83 & 1;
          }

          v40 = *(a2 + 1);
          v41 = *(a2 + 2);
          while (v40 < v41 && (*(a2 + 24) & 1) == 0)
          {
            v43 = *(this + 2);
            v42 = *(this + 3);
            if (v43 >= v42)
            {
              v45 = *(this + 1);
              v46 = v43 - v45;
              v47 = (v43 - v45) >> 2;
              v48 = v47 + 1;
              if ((v47 + 1) >> 62)
              {
                goto LABEL_107;
              }

              v49 = v42 - v45;
              if (v49 >> 1 > v48)
              {
                v48 = v49 >> 1;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v50 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                sub_25AD288E8(v50);
              }

              v51 = (v43 - v45) >> 2;
              v52 = (4 * v47);
              v53 = (4 * v47 - 4 * v51);
              *v52 = 0;
              v44 = v52 + 1;
              memcpy(v53, v45, v46);
              v54 = *(this + 1);
              *(this + 1) = v53;
              *(this + 2) = v44;
              *(this + 3) = 0;
              if (v54)
              {
                operator delete(v54);
              }
            }

            else
            {
              *v43 = 0;
              v44 = v43 + 4;
            }

            *(this + 2) = v44;
            v55 = *(a2 + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(a2 + 2))
            {
LABEL_70:
              *(a2 + 24) = 1;
              goto LABEL_71;
            }

            *(v44 - 1) = *(*a2 + v55);
            v41 = *(a2 + 2);
            v40 = *(a2 + 1) + 4;
            *(a2 + 1) = v40;
          }

          goto LABEL_71;
        }

        v58 = *(this + 2);
        v57 = *(this + 3);
        if (v58 >= v57)
        {
          v62 = *(this + 1);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 2;
          v65 = v64 + 1;
          if ((v64 + 1) >> 62)
          {
            goto LABEL_107;
          }

          v66 = v57 - v62;
          if (v66 >> 1 > v65)
          {
            v65 = v66 >> 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v67 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_25AD288E8(v67);
          }

          v74 = (v58 - v62) >> 2;
          v75 = (4 * v64);
          v76 = (4 * v64 - 4 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(this + 1);
          *(this + 1) = v76;
          *(this + 2) = v59;
          *(this + 3) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 4;
        }

        *(this + 2) = v59;
      }

      else
      {
        if (v23 != 1)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_99;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_105;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 5);
            v26 = *(this + 6);
            if (v27 >= v26)
            {
              v29 = *(this + 4);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 2;
              v32 = v31 + 1;
              if ((v31 + 1) >> 62)
              {
                goto LABEL_107;
              }

              v33 = v26 - v29;
              if (v33 >> 1 > v32)
              {
                v32 = v33 >> 1;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v34 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_25AD288E8(v34);
              }

              v35 = (v27 - v29) >> 2;
              v36 = (4 * v31);
              v37 = (4 * v31 - 4 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 4);
              *(this + 4) = v37;
              *(this + 5) = v28;
              *(this + 6) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v27 = 0;
              v28 = v27 + 4;
            }

            *(this + 5) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
            {
              goto LABEL_70;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 4;
            *(a2 + 1) = v24;
          }

LABEL_71:
          PB::Reader::recallMark();
          goto LABEL_99;
        }

        v61 = *(this + 5);
        v60 = *(this + 6);
        if (v61 >= v60)
        {
          v68 = *(this + 4);
          v69 = v61 - v68;
          v70 = (v61 - v68) >> 2;
          v71 = v70 + 1;
          if ((v70 + 1) >> 62)
          {
LABEL_107:
            sub_25AAE66B8();
          }

          v72 = v60 - v68;
          if (v72 >> 1 > v71)
          {
            v71 = v72 >> 1;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v73 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v71;
          }

          if (v73)
          {
            sub_25AD288E8(v73);
          }

          v78 = (v61 - v68) >> 2;
          v79 = (4 * v70);
          v80 = (4 * v70 - 4 * v78);
          *v79 = 0;
          v59 = v79 + 1;
          memcpy(v80, v68, v69);
          v81 = *(this + 4);
          *(this + 4) = v80;
          *(this + 5) = v59;
          *(this + 6) = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v61 = 0;
          v59 = v61 + 4;
        }

        *(this + 5) = v59;
      }

      v82 = *(a2 + 1);
      if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
      {
LABEL_96:
        *(a2 + 24) = 1;
        goto LABEL_99;
      }

      *(v59 - 1) = *(*a2 + v82);
    }

    *(a2 + 1) += 4;
LABEL_99:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::GyroBiasFit::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  v5 = *(this + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  if (*(v3 + 60))
  {
    v10 = *(v3 + 56);

    return PB::Writer::write(a2, v10);
  }

  return this;
}

BOOL CMMsl::GyroBiasFit::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v8 = (*(a2 + 60) & 1) == 0;
  if (*(a1 + 60))
  {
    return (*(a2 + 60) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::GyroBiasFit::hash_value(CMMsl::GyroBiasFit *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = PBHashBytes();
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = PBHashBytes();
  if (*(this + 60))
  {
    v9 = *(this + 14);
    v8 = LODWORD(v9);
    if (v9 == 0.0)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

void *CMMsl::GyroCalibrationDataFactory::GyroCalibrationDataFactory(void *this)
{
  *this = &unk_286C20690;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C20690;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::GyroCalibrationDataFactory::~GyroCalibrationDataFactory(CMMsl::GyroCalibrationDataFactory *this)
{
  *this = &unk_286C20690;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C20690;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C20690;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::GyroCalibrationDataFactory::GyroCalibrationDataFactory(void *this, const CMMsl::GyroCalibrationDataFactory *a2)
{
  this[1] = 0;
  *this = &unk_286C20690;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::GyroCalibrationDataFactory::operator=(uint64_t a1, const CMMsl::GyroCalibrationDataFactory *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCalibrationDataFactory::GyroCalibrationDataFactory(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C20690;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::GyroCalibrationDataFactory *a2, CMMsl::GyroCalibrationDataFactory *a3)
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

uint64_t CMMsl::GyroCalibrationDataFactory::GyroCalibrationDataFactory(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20690;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C20690;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::GyroCalibrationDataFactory::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C20690;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C20690;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::GyroCalibrationDataFactory::formatText(CMMsl::GyroCalibrationDataFactory *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "sample");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroCalibrationDataFactory::readFrom(CMMsl::GyroCalibrationDataFactory *this, PB::Reader *a2)
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
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
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

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::GyroCalibrationDataFactory::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL CMMsl::GyroCalibrationDataFactory::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::GyroCalibrationSample::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_25AB998E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
    result = CMMsl::GyroCalibrationSample::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::GyroCalibrationDataFactory::hash_value(CMMsl::GyroCalibrationDataFactory *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::GyroCalibrationSample::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void *CMMsl::GyroCalibrationDataNonlinearNonFactory::GyroCalibrationDataNonlinearNonFactory(void *this)
{
  *this = &unk_286C206C8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C206C8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::GyroCalibrationDataNonlinearNonFactory::~GyroCalibrationDataNonlinearNonFactory(CMMsl::GyroCalibrationDataNonlinearNonFactory *this)
{
  *this = &unk_286C206C8;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C206C8;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C206C8;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::GyroCalibrationDataNonlinearNonFactory::GyroCalibrationDataNonlinearNonFactory(void *this, const CMMsl::GyroCalibrationDataNonlinearNonFactory *a2)
{
  this[1] = 0;
  *this = &unk_286C206C8;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::operator=(uint64_t a1, const CMMsl::GyroCalibrationDataNonlinearNonFactory *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCalibrationDataNonlinearNonFactory::GyroCalibrationDataNonlinearNonFactory(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C206C8;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::GyroCalibrationDataNonlinearNonFactory *a2, CMMsl::GyroCalibrationDataNonlinearNonFactory *a3)
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

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::GyroCalibrationDataNonlinearNonFactory(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C206C8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C206C8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C206C8;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C206C8;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::formatText(CMMsl::GyroCalibrationDataNonlinearNonFactory *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "sample");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::readFrom(CMMsl::GyroCalibrationDataNonlinearNonFactory *this, PB::Reader *a2)
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
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
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

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL CMMsl::GyroCalibrationDataNonlinearNonFactory::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::GyroCalibrationSampleNonlinear::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_25AB9A3C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
    result = CMMsl::GyroCalibrationSampleNonlinear::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::GyroCalibrationDataNonlinearNonFactory::hash_value(CMMsl::GyroCalibrationDataNonlinearNonFactory *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::GyroCalibrationSampleNonlinear::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t CMMsl::GyroCalibrationSample::GyroCalibrationSample(uint64_t this)
{
  *this = &unk_286C20700;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C20700;
  *(this + 24) = 0;
  return this;
}

void CMMsl::GyroCalibrationSample::~GyroCalibrationSample(CMMsl::GyroCalibrationSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GyroCalibrationSample::GyroCalibrationSample(CMMsl::GyroCalibrationSample *this, const CMMsl::GyroCalibrationSample *a2)
{
  *this = &unk_286C20700;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 2) = result;
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
    result = *(a2 + 3);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 5);
    *(this + 24) = v3 | 8;
    *(this + 5) = result;
    return result;
  }

  result = *(a2 + 4);
  v3 |= 4u;
  *(this + 24) = v3;
  *(this + 4) = result;
  if ((*(a2 + 24) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::GyroCalibrationSample::operator=(uint64_t a1, const CMMsl::GyroCalibrationSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCalibrationSample::GyroCalibrationSample(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroCalibrationSample *a2, CMMsl::GyroCalibrationSample *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::GyroCalibrationSample::GyroCalibrationSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20700;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = &unk_286C20700;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::GyroCalibrationSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C20700;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::GyroCalibrationSample::formatText(CMMsl::GyroCalibrationSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "temperature", *(this + 2));
    v5 = *(this + 24);
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

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "x", *(this + 3));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "y", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "z", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroCalibrationSample::readFrom(CMMsl::GyroCalibrationSample *this, PB::Reader *a2)
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
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::GyroCalibrationSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 24) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 20);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::GyroCalibrationSample::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 8) == 0;
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*(a2 + 24) & 8) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::GyroCalibrationSample::hash_value(CMMsl::GyroCalibrationSample *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 2);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 4);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

uint64_t CMMsl::GyroCalibrationSampleNonlinear::GyroCalibrationSampleNonlinear(uint64_t this)
{
  *this = &unk_286C20738;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C20738;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::GyroCalibrationSampleNonlinear::~GyroCalibrationSampleNonlinear(CMMsl::GyroCalibrationSampleNonlinear *this)
{
  v2 = *(this + 1);
  *this = &unk_286C20738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::GyroCalibrationSampleNonlinear::~GyroCalibrationSampleNonlinear(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroCalibrationSampleNonlinear::GyroCalibrationSampleNonlinear(uint64_t this, const CMMsl::GyroCalibrationSampleNonlinear *a2)
{
  *this = &unk_286C20738;
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

uint64_t CMMsl::GyroCalibrationSampleNonlinear::operator=(uint64_t a1, const CMMsl::GyroCalibrationSampleNonlinear *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCalibrationSampleNonlinear::GyroCalibrationSampleNonlinear(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::GyroCalibrationSampleNonlinear::~GyroCalibrationSampleNonlinear(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GyroCalibrationSampleNonlinear *a2, CMMsl::GyroCalibrationSampleNonlinear *a3)
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

uint64_t CMMsl::GyroCalibrationSampleNonlinear::GyroCalibrationSampleNonlinear(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20738;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
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

uint64_t CMMsl::GyroCalibrationSampleNonlinear::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCalibrationSampleNonlinear::GyroCalibrationSampleNonlinear(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::GyroCalibrationSampleNonlinear::~GyroCalibrationSampleNonlinear(&v7);
  }

  return a1;
}

uint64_t CMMsl::GyroCalibrationSampleNonlinear::formatText(CMMsl::GyroCalibrationSampleNonlinear *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroCalibrationSampleNonlinear::readFrom(CMMsl::GyroCalibrationSampleNonlinear *this, PB::Reader *a2)
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

uint64_t CMMsl::GyroCalibrationSampleNonlinear::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::GyroCalibrationSampleNonlinear::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::GyroCalibrationSample::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t CMMsl::GyroCalibrationSampleNonlinear::hash_value(CMMsl::GyroCalibrationSampleNonlinear *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::GyroCalibrationSample::hash_value(v2);
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

uint64_t CMMsl::GyroCalibrationSampleNonlinear::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::GyroCompass::GyroCompass(uint64_t this)
{
  *this = &unk_286C20770;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C20770;
  *(this + 60) = 0;
  return this;
}

void CMMsl::GyroCompass::~GyroCompass(CMMsl::GyroCompass *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroCompass::GyroCompass(uint64_t this, const CMMsl::GyroCompass *a2)
{
  *this = &unk_286C20770;
  *(this + 60) = 0;
  v2 = *(a2 + 30);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 60) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 30);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 30) & 0x100) != 0)
  {
LABEL_5:
    v5 = *(a2 + 11);
    v3 |= 0x100u;
    *(this + 60) = v3;
    *(this + 44) = v5;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x200u;
    *(this + 60) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 30);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 60) = v3;
  *(this + 52) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 60) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 60) = v3;
  *(this + 36) = v9;
  v2 = *(a2 + 30);
  if ((v2 & 0x800) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 60) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 30);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 4);
  v3 |= 2u;
  *(this + 60) = v3;
  *(this + 16) = v11;
  v2 = *(a2 + 30);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 6);
  v3 |= 8u;
  *(this + 60) = v3;
  *(this + 24) = v12;
  v2 = *(a2 + 30);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 60) = v3;
  *(this + 28) = v13;
  v2 = *(a2 + 30);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 5);
    *(this + 60) = v3 | 4;
    *(this + 20) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 60) = v3;
  *(this + 32) = v14;
  if ((*(a2 + 30) & 4) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::GyroCompass::operator=(CMMsl *a1, const CMMsl::GyroCompass *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCompass::GyroCompass(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroCompass *a2, CMMsl::GyroCompass *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  return result;
}

float CMMsl::GyroCompass::GyroCompass(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20770;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

CMMsl *CMMsl::GyroCompass::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroCompass::GyroCompass(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::GyroCompass::formatText(CMMsl::GyroCompass *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accuracy", *(this + 4));
    v5 = *(this + 30);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 5);
  PB::TextFormatter::format(a2, "calibrationLevel");
  v5 = *(this + 30);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "magneticFieldX", *(this + 6));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "magneticFieldY", *(this + 7));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "magneticFieldZ", *(this + 8));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "magneticHeading", *(this + 9));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 10));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 11));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 12));
  v5 = *(this + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 13));
  v5 = *(this + 30);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 30) & 0x800) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "trueHeading", *(this + 14));
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroCompass::readFrom(CMMsl::GyroCompass *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 6)
    {
      if (v22 > 9)
      {
        switch(v22)
        {
          case 0xA:
            *(this + 30) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_74:
              *(a2 + 24) = 1;
              goto LABEL_91;
            }

            *(this + 7) = *(*a2 + v2);
LABEL_84:
            v2 = *(a2 + 1) + 4;
LABEL_85:
            *(a2 + 1) = v2;
            goto LABEL_91;
          case 0xB:
            *(this + 30) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_84;
          case 0xC:
            *(this + 30) |= 4u;
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
                  goto LABEL_90;
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
                  goto LABEL_89;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_89:
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

LABEL_90:
            *(this + 5) = v27;
            goto LABEL_91;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 30) |= 0x800u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 14) = *(*a2 + v2);
            goto LABEL_84;
          case 8:
            *(this + 30) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_84;
          case 9:
            *(this + 30) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_84;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 30) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_84;
        case 5:
          *(this + 30) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_84;
        case 6:
          *(this + 30) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_84;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 30) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_85;
        case 2:
          *(this + 30) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_84;
        case 3:
          *(this + 30) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_84;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_91:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::GyroCompass::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 60) & 4) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_25:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::GyroCompass::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
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

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x200) != 0)
  {
    if ((*(a2 + 60) & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x400) != 0)
  {
    if ((*(a2 + 60) & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x400) != 0)
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

  if ((*(a1 + 60) & 0x800) != 0)
  {
    if ((*(a2 + 60) & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x800) != 0)
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

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v4;
}

uint64_t CMMsl::GyroCompass::hash_value(CMMsl::GyroCompass *this)
{
  v1 = *(this + 30);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_37:
    v4 = 0;
    if ((*(this + 30) & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_38:
    v6 = 0;
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    v8 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_12;
    }

LABEL_40:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_41:
    v12 = 0;
    if ((*(this + 30) & 0x800) != 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    v14 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v16 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    v18 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_45:
    v20 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 30) & 0x100) == 0)
  {
    goto LABEL_37;
  }

LABEL_3:
  v3 = *(this + 11);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 30) & 0x200) == 0)
  {
    goto LABEL_38;
  }

LABEL_6:
  v5 = *(this + 12);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 30) & 0x400) == 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  v7 = *(this + 13);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_40;
  }

LABEL_12:
  v9 = *(this + 10);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_15:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 30) & 0x800) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v13 = *(this + 14);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v15 = *(this + 4);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_44;
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
    goto LABEL_45;
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
    v22 = LODWORD(v21);
    if (v21 == 0.0)
    {
      v22 = 0;
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_33;
    }

LABEL_47:
    v23 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23;
  }

LABEL_46:
  v22 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_47;
  }

LABEL_33:
  v23 = *(this + 5);
  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23;
}

uint64_t CMMsl::GyroController::GyroController(uint64_t this)
{
  *this = &unk_286C207A8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C207A8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::GyroController::~GyroController(CMMsl::GyroController *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroController::GyroController(uint64_t this, const CMMsl::GyroController *a2)
{
  *this = &unk_286C207A8;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::GyroController::operator=(uint64_t a1, const CMMsl::GyroController *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroController::GyroController(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GyroController *a2, CMMsl::GyroController *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::GyroController::GyroController(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C207A8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C207A8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::GyroController::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C207A8;
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
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::GyroController::formatText(CMMsl::GyroController *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "isGyroOn");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroController::readFrom(CMMsl::GyroController *this, PB::Reader *a2)
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
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
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

        *(this + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
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

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::GyroController::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::GyroController::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::GyroController::hash_value(CMMsl::GyroController *this)
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
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

uint64_t CMMsl::GyroDt::GyroDt(uint64_t this)
{
  *this = &unk_286C207E0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C207E0;
  *(this + 12) = 0;
  return this;
}

void CMMsl::GyroDt::~GyroDt(CMMsl::GyroDt *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GyroDt::GyroDt(CMMsl::GyroDt *this, const CMMsl::GyroDt *a2)
{
  *this = &unk_286C207E0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

{
  *this = &unk_286C207E0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::GyroDt::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C207E0;
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
    v8 = &unk_286C207E0;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroDt *a2, CMMsl::GyroDt *a3)
{
  v3 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float CMMsl::GyroDt::GyroDt(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C207E0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C207E0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::GyroDt::formatText(CMMsl::GyroDt *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "dt", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroDt::readFrom(CMMsl::GyroDt *this, PB::Reader *a2)
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
          goto LABEL_23;
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
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
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
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::GyroDt::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

BOOL CMMsl::GyroDt::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

float CMMsl::GyroDt::hash_value(CMMsl::GyroDt *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  return result;
}

uint64_t CMMsl::GyroFactoryCalibrationData::GyroFactoryCalibrationData(uint64_t this)
{
  *this = &unk_286C20818;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C20818;
  *(this + 24) = 0;
  return this;
}

void CMMsl::GyroFactoryCalibrationData::~GyroFactoryCalibrationData(CMMsl::GyroFactoryCalibrationData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GyroFactoryCalibrationData::GyroFactoryCalibrationData(CMMsl::GyroFactoryCalibrationData *this, const CMMsl::GyroFactoryCalibrationData *a2)
{
  *this = &unk_286C20818;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 2) = result;
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
    result = *(a2 + 3);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 5);
    *(this + 24) = v3 | 8;
    *(this + 5) = result;
    return result;
  }

  result = *(a2 + 4);
  v3 |= 4u;
  *(this + 24) = v3;
  *(this + 4) = result;
  if ((*(a2 + 24) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::GyroFactoryCalibrationData::operator=(uint64_t a1, const CMMsl::GyroFactoryCalibrationData *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroFactoryCalibrationData::GyroFactoryCalibrationData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroFactoryCalibrationData *a2, CMMsl::GyroFactoryCalibrationData *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::GyroFactoryCalibrationData::GyroFactoryCalibrationData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20818;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = &unk_286C20818;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::GyroFactoryCalibrationData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C20818;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::GyroFactoryCalibrationData::formatText(CMMsl::GyroFactoryCalibrationData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "temperature", *(this + 2));
    v5 = *(this + 24);
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

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "x", *(this + 3));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "y", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "z", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroFactoryCalibrationData::readFrom(CMMsl::GyroFactoryCalibrationData *this, PB::Reader *a2)
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
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::GyroFactoryCalibrationData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 24) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 20);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::GyroFactoryCalibrationData::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 8) == 0;
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*(a2 + 24) & 8) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::GyroFactoryCalibrationData::hash_value(CMMsl::GyroFactoryCalibrationData *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 2);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 4);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

uint64_t CMMsl::GyroGps::GyroGps(uint64_t this)
{
  *this = &unk_286C20850;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C20850;
  *(this + 28) = 0;
  return this;
}

void CMMsl::GyroGps::~GyroGps(CMMsl::GyroGps *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GyroGps::GyroGps(CMMsl::GyroGps *this, const CMMsl::GyroGps *a2)
{
  *this = &unk_286C20850;
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

uint64_t CMMsl::GyroGps::operator=(uint64_t a1, const CMMsl::GyroGps *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroGps::GyroGps(&v9, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::GyroGps *a2, CMMsl::GyroGps *a3)
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

float CMMsl::GyroGps::GyroGps(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20850;
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
  *a1 = &unk_286C20850;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::GyroGps::operator=(uint64_t a1, uint64_t a2)
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
    v9[0] = &unk_286C20850;
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

uint64_t CMMsl::GyroGps::formatText(CMMsl::GyroGps *this, PB::TextFormatter *a2, const char *a3)
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

uint64_t CMMsl::GyroGps::readFrom(CMMsl::GyroGps *this, PB::Reader *a2)
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

uint64_t CMMsl::GyroGps::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::GyroGps::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::GyroGps::hash_value(CMMsl::GyroGps *this)
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

uint64_t CMMsl::GyroOscarEmu::GyroOscarEmu(uint64_t this)
{
  *this = &unk_286C20888;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_286C20888;
  *(this + 36) = 0;
  return this;
}

void CMMsl::GyroOscarEmu::~GyroOscarEmu(CMMsl::GyroOscarEmu *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroOscarEmu::GyroOscarEmu(uint64_t this, const CMMsl::GyroOscarEmu *a2)
{
  *this = &unk_286C20888;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 36) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 36) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 36) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 36) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 36) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 32);
    *(this + 36) = v3 | 0x20;
    *(this + 32) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 4);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v8;
  if ((*(a2 + 36) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::GyroOscarEmu::operator=(uint64_t a1, const CMMsl::GyroOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroOscarEmu::GyroOscarEmu(v8, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v6) = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroOscarEmu *a2, CMMsl::GyroOscarEmu *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

float CMMsl::GyroOscarEmu::GyroOscarEmu(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20888;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = &unk_286C20888;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::GyroOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13[0] = &unk_286C20888;
    v3 = *(a2 + 36);
    *(a2 + 36) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v18 = *(a1 + 36);
    v8 = *(a1 + 8);
    *(a1 + 8) = v4;
    v13[1] = v8;
    v9 = *(a1 + 20);
    v10 = *(a2 + 20);
    *(a1 + 36) = v3;
    *(a1 + 20) = v10;
    v15 = v9;
    LODWORD(v9) = *(a1 + 28);
    *(a1 + 28) = v5;
    v16 = v9;
    v11 = *(a1 + 16);
    *(a1 + 16) = v6;
    v14 = v11;
    LOBYTE(v11) = *(a1 + 32);
    *(a1 + 32) = v7;
    v17 = v11;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t CMMsl::GyroOscarEmu::formatText(CMMsl::GyroOscarEmu *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(this + 32);
    PB::TextFormatter::format(a2, "fsync");
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "sampleNum");
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "x", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "y", *(this + 6));
  if ((*(this + 36) & 0x10) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "z", *(this + 7));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroOscarEmu::readFrom(CMMsl::GyroOscarEmu *this, PB::Reader *a2)
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
          *(this + 36) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_66;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_59:
          v2 = *(a2 + 1) + 4;
LABEL_60:
          *(a2 + 1) = v2;
          goto LABEL_66;
        case 5:
          *(this + 36) |= 2u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v35 = (v26 + v25);
            v36 = v2 - v25;
            v37 = v25 + 1;
            while (1)
            {
              if (!v36)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_65;
              }

              v38 = v37;
              v39 = *v35;
              *(a2 + 1) = v38;
              v29 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v35;
              --v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_64;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_64:
            v2 = v38;
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
                LODWORD(v29) = 0;
                break;
              }
            }
          }

LABEL_65:
          *(this + 4) = v29;
          goto LABEL_66;
        case 6:
          *(this + 36) |= 0x20u;
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

          *(this + 32) = v24;
          goto LABEL_66;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_60;
        case 2:
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_59;
        case 3:
          *(this + 36) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_59;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_66:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::GyroOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 36) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v6 = *(v3 + 32);

  return PB::Writer::write(a2);
}

BOOL CMMsl::GyroOscarEmu::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if ((*(a2 + 36) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if ((*(a2 + 36) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x10) != 0)
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

  v2 = (*(a2 + 36) & 0x20) == 0;
  if ((*(a1 + 36) & 0x20) != 0)
  {
    return (*(a2 + 36) & 0x20) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::GyroOscarEmu::hash_value(CMMsl::GyroOscarEmu *this)
{
  if ((*(this + 36) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v3 = 0;
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v5 = 0;
    if ((*(this + 36) & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v7 = 0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v8 = 0;
    if ((*(this + 36) & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v9 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8 ^ v9;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 36) & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v8 = *(this + 4);
  if ((*(this + 36) & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v9 = *(this + 32);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8 ^ v9;
}

double CMMsl::GyroScaleEstimate::GyroScaleEstimate(CMMsl::GyroScaleEstimate *this)
{
  *this = &unk_286C208C0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C208C0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::GyroScaleEstimate::~GyroScaleEstimate(CMMsl::GyroScaleEstimate *this)
{
  *this = &unk_286C208C0;
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
  CMMsl::GyroScaleEstimate::~GyroScaleEstimate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::GyroScaleEstimate *CMMsl::GyroScaleEstimate::GyroScaleEstimate(CMMsl::GyroScaleEstimate *this, const CMMsl::GyroScaleEstimate *a2)
{
  *this = &unk_286C208C0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 80) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 80) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 8) == 0)
  {
    if ((*(a2 + 80) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(a2 + 18);
    *(this + 80) |= 4u;
    *(this + 18) = v10;
    if ((*(a2 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 76);
  *(this + 80) |= 8u;
  *(this + 76) = v9;
  v6 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v7 = *(a2 + 7);
    *(this + 80) |= 1u;
    *(this + 7) = v7;
  }

  return this;
}

uint64_t CMMsl::GyroScaleEstimate::operator=(uint64_t a1, const CMMsl::GyroScaleEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroScaleEstimate::GyroScaleEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::GyroScaleEstimate::~GyroScaleEstimate(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GyroScaleEstimate *a2, CMMsl::GyroScaleEstimate *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
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
  LOBYTE(v10) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::GyroScaleEstimate::GyroScaleEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C208C0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::GyroScaleEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroScaleEstimate::GyroScaleEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v14;
    v5 = v13;
    v6 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v14 = v4;
    LOBYTE(v3) = *(a1 + 76);
    *(a1 + 76) = v17;
    v17 = v3;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::GyroScaleEstimate::~GyroScaleEstimate(v11);
  }

  return a1;
}

uint64_t CMMsl::GyroScaleEstimate::formatText(CMMsl::GyroScaleEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "covUT", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "est", v10);
  }

  v11 = *(this + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(this + 76);
    PB::TextFormatter::format(a2, "isCandidate");
    v11 = *(this + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(this + 18);
  PB::TextFormatter::format(a2, "numSamplesInAverage");
  v11 = *(this + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "temperature", *(this + 7));
  if ((*(this + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroScaleEstimate::readFrom(CMMsl::GyroScaleEstimate *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      if (v23 == 4)
      {
        *(this + 80) |= 8u;
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

        *(this + 76) = v45;
        goto LABEL_129;
      }

      if (v23 == 5)
      {
        *(this + 80) |= 4u;
        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        v64 = *a2;
        if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
        {
          v71 = 0;
          v72 = 0;
          v67 = 0;
          v73 = (v64 + v63);
          v18 = v62 >= v63;
          v74 = v62 - v63;
          if (!v18)
          {
            v74 = 0;
          }

          v75 = v63 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v67) = 0;
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            v76 = *v73;
            *(a2 + 1) = v75;
            v67 |= (v76 & 0x7F) << v71;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            ++v73;
            --v74;
            ++v75;
            v14 = v72++ > 8;
            if (v14)
            {
LABEL_91:
              LODWORD(v67) = 0;
              goto LABEL_117;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v67) = 0;
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = (v64 + v63);
          v69 = v63 + 1;
          while (1)
          {
            *(a2 + 1) = v69;
            v70 = *v68++;
            v67 |= (v70 & 0x7F) << v65;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v69;
            v14 = v66++ > 8;
            if (v14)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_117:
        *(this + 18) = v67;
        goto LABEL_129;
      }

      if (v23 != 6)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_129;
      }

      *(this + 80) |= 1u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 7) = *(*a2 + v40);
    }

    else if (v23 == 1)
    {
      *(this + 80) |= 2u;
      v41 = *(a2 + 1);
      if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
      {
        goto LABEL_126;
      }

      *(this + 8) = *(*a2 + v41);
    }

    else
    {
      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_135:
            v103 = 0;
            return v103 & 1;
          }

          v46 = *(a2 + 1);
          v47 = *(a2 + 2);
          while (v46 < v47 && (*(a2 + 24) & 1) == 0)
          {
            v49 = *(this + 5);
            v48 = *(this + 6);
            if (v49 >= v48)
            {
              v51 = *(this + 4);
              v52 = v49 - v51;
              v53 = (v49 - v51) >> 3;
              v54 = v53 + 1;
              if ((v53 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v55 = v48 - v51;
              if (v55 >> 2 > v54)
              {
                v54 = v55 >> 2;
              }

              if (v55 >= 0x7FFFFFFFFFFFFFF8)
              {
                v56 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v54;
              }

              if (v56)
              {
                sub_25AD28710(v56);
              }

              v57 = (v49 - v51) >> 3;
              v58 = (8 * v53);
              v59 = (8 * v53 - 8 * v57);
              *v58 = 0;
              v50 = v58 + 1;
              memcpy(v59, v51, v52);
              v60 = *(this + 4);
              *(this + 4) = v59;
              *(this + 5) = v50;
              *(this + 6) = 0;
              if (v60)
              {
                operator delete(v60);
              }
            }

            else
            {
              *v49 = 0;
              v50 = v49 + 8;
            }

            *(this + 5) = v50;
            v61 = *(a2 + 1);
            if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
            {
LABEL_96:
              *(a2 + 24) = 1;
              goto LABEL_97;
            }

            *(v50 - 1) = *(*a2 + v61);
            v47 = *(a2 + 2);
            v46 = *(a2 + 1) + 8;
            *(a2 + 1) = v46;
          }

          goto LABEL_97;
        }

        v81 = *(this + 5);
        v80 = *(this + 6);
        if (v81 >= v80)
        {
          v88 = *(this + 4);
          v89 = v81 - v88;
          v90 = (v81 - v88) >> 3;
          v91 = v90 + 1;
          if ((v90 + 1) >> 61)
          {
LABEL_137:
            sub_25AAE66B8();
          }

          v92 = v80 - v88;
          if (v92 >> 2 > v91)
          {
            v91 = v92 >> 2;
          }

          if (v92 >= 0x7FFFFFFFFFFFFFF8)
          {
            v93 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v91;
          }

          if (v93)
          {
            sub_25AD28710(v93);
          }

          v98 = (v81 - v88) >> 3;
          v99 = (8 * v90);
          v100 = (8 * v90 - 8 * v98);
          *v99 = 0;
          v79 = v99 + 1;
          memcpy(v100, v88, v89);
          v101 = *(this + 4);
          *(this + 4) = v100;
          *(this + 5) = v79;
          *(this + 6) = 0;
          if (v101)
          {
            operator delete(v101);
          }
        }

        else
        {
          *v81 = 0;
          v79 = v81 + 8;
        }

        *(this + 5) = v79;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_135;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_137;
              }

              v33 = v26 - v29;
              if (v33 >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_25AD28710(v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v27 = 0;
              v28 = v27 + 8;
            }

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_96;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_97:
          PB::Reader::recallMark();
          goto LABEL_129;
        }

        v78 = *(this + 2);
        v77 = *(this + 3);
        if (v78 >= v77)
        {
          v82 = *(this + 1);
          v83 = v78 - v82;
          v84 = (v78 - v82) >> 3;
          v85 = v84 + 1;
          if ((v84 + 1) >> 61)
          {
            goto LABEL_137;
          }

          v86 = v77 - v82;
          if (v86 >> 2 > v85)
          {
            v85 = v86 >> 2;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v87 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = v85;
          }

          if (v87)
          {
            sub_25AD28710(v87);
          }

          v94 = (v78 - v82) >> 3;
          v95 = (8 * v84);
          v96 = (8 * v84 - 8 * v94);
          *v95 = 0;
          v79 = v95 + 1;
          memcpy(v96, v82, v83);
          v97 = *(this + 1);
          *(this + 1) = v96;
          *(this + 2) = v79;
          *(this + 3) = 0;
          if (v97)
          {
            operator delete(v97);
          }
        }

        else
        {
          *v78 = 0;
          v79 = v78 + 8;
        }

        *(this + 2) = v79;
      }

      v102 = *(a2 + 1);
      if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
      {
LABEL_126:
        *(a2 + 24) = 1;
        goto LABEL_129;
      }

      *(v79 - 1) = *(*a2 + v102);
    }

    *(a2 + 1) += 8;
LABEL_129:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}