float CMMsl::FaceBlendShapeCoefficients::FaceBlendShapeCoefficients(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FB30;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_286C1FB30;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

_DWORD *CMMsl::FaceBlendShapeCoefficients::operator=(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C1FB30;
    v3 = a2[4];
    a2[4] = 0;
    v4 = a2[2];
    v5 = a2[3];
    v6 = a1[4];
    a1[4] = v3;
    v13 = v6;
    v7 = a1[2];
    a1[2] = v4;
    v11 = v7;
    v8 = a1[3];
    a1[3] = v5;
    v12 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::FaceBlendShapeCoefficients::formatText(CMMsl::FaceBlendShapeCoefficients *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "name");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "value", *(this + 3));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FaceBlendShapeCoefficients::readFrom(CMMsl::FaceBlendShapeCoefficients *this, PB::Reader *a2)
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
        *(this + 16) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 3) = *(*a2 + v2);
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
        *(this + 16) |= 1u;
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
        *(this + 2) = v26;
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

uint64_t CMMsl::FaceBlendShapeCoefficients::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::write(a2, v6);
  }

  return this;
}

BOOL CMMsl::FaceBlendShapeCoefficients::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::FaceBlendShapeCoefficients::hash_value(CMMsl::FaceBlendShapeCoefficients *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 2);
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_7;
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

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::FaceBlendShapeCoefficientsSample(uint64_t this)
{
  *this = &unk_286C1FB68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C1FB68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

void CMMsl::FaceBlendShapeCoefficientsSample::~FaceBlendShapeCoefficientsSample(CMMsl::FaceBlendShapeCoefficientsSample *this)
{
  *this = &unk_286C1FB68;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1FB68;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1FB68;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::FaceBlendShapeCoefficientsSample(uint64_t this, const CMMsl::FaceBlendShapeCoefficientsSample *a2)
{
  *this = &unk_286C1FB68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 5);
    *(this + 48) |= 2u;
    *(this + 40) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 4);
    *(this + 48) |= 1u;
    *(this + 32) = v6;
  }

  return this;
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::operator=(uint64_t a1, const CMMsl::FaceBlendShapeCoefficientsSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::FaceBlendShapeCoefficientsSample::FaceBlendShapeCoefficientsSample(&v8, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    v8 = &unk_286C1FB68;
    v13 = &v9;
    sub_25AD28930(&v13);
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FaceBlendShapeCoefficientsSample *a2, CMMsl::FaceBlendShapeCoefficientsSample *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::FaceBlendShapeCoefficientsSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FB68;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
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
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FaceBlendShapeCoefficientsSample::FaceBlendShapeCoefficientsSample(&v8, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    v8 = &unk_286C1FB68;
    v13 = &v9;
    sub_25AD28930(&v13);
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::formatText(CMMsl::FaceBlendShapeCoefficientsSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "blendShapeCoefficients");
  }

  v8 = *(this + 48);
  if (v8)
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 4));
    v8 = *(this + 48);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 5));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::readFrom(CMMsl::FaceBlendShapeCoefficientsSample *this, PB::Reader *a2)
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
        goto LABEL_36;
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
        goto LABEL_36;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 5) = *(*a2 + v23);
LABEL_31:
        *(a2 + 1) += 8;
        goto LABEL_32;
      }

      if (v22 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_32:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_36;
      }
    }

    *(this + 48) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_32;
    }

    *(this + 4) = *(*a2 + v24);
    goto LABEL_31;
  }

LABEL_36:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(a2, v8);
  }

  return this;
}

BOOL CMMsl::FaceBlendShapeCoefficientsSample::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = CMMsl::FaceBlendShapeCoefficients::operator==(*v2, *v4);
    if (!result)
    {
      return result;
    }

    ++v2;
    ++v4;
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  result = (*(a2 + 48) & 1) == 0;
  if ((*(a1 + 48) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 48) & 1) != 0 && *(a1 + 32) == *(a2 + 32);
}

uint64_t CMMsl::FaceBlendShapeCoefficientsSample::hash_value(CMMsl::FaceBlendShapeCoefficientsSample *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v5 = *v1++;
      v4 = v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 8);
      if ((v6 & 1) == 0)
      {
        v7 = 0;
      }

      v8 = v6 & 2;
      v9 = *(v4 + 12);
      v10 = v9 == 0.0 || v8 == 0;
      v11 = LODWORD(v9);
      if (v10)
      {
        v11 = 0;
      }

      v3 ^= v7 ^ v11;
    }

    while (v1 != v2);
  }

  if ((*(this + 48) & 2) != 0)
  {
    v12 = *(this + 5);
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_15;
    }

LABEL_21:
    v13 = 0.0;
    return *&v12 ^ v3 ^ *&v13;
  }

  v12 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v13 = *(this + 4);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  return *&v12 ^ v3 ^ *&v13;
}

uint64_t CMMsl::FaceCovered::FaceCovered(uint64_t this)
{
  *this = &unk_286C1FBA0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1FBA0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::FaceCovered::~FaceCovered(CMMsl::FaceCovered *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FaceCovered::FaceCovered(uint64_t this, const CMMsl::FaceCovered *a2)
{
  *this = &unk_286C1FBA0;
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

uint64_t CMMsl::FaceCovered::operator=(uint64_t a1, const CMMsl::FaceCovered *a2)
{
  if (a1 != a2)
  {
    CMMsl::FaceCovered::FaceCovered(v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::FaceCovered *a2, CMMsl::FaceCovered *a3)
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

double CMMsl::FaceCovered::FaceCovered(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FBA0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1FBA0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::FaceCovered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C1FBA0;
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

uint64_t CMMsl::FaceCovered::formatText(CMMsl::FaceCovered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "isCovered");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FaceCovered::readFrom(CMMsl::FaceCovered *this, PB::Reader *a2)
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

uint64_t CMMsl::FaceCovered::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::FaceCovered::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::FaceCovered::hash_value(CMMsl::FaceCovered *this)
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

double CMMsl::FaceDownDetection::FaceDownDetection(CMMsl::FaceDownDetection *this)
{
  *this = &unk_286C1FBD8;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C1FBD8;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::FaceDownDetection::~FaceDownDetection(CMMsl::FaceDownDetection *this)
{
  *this = &unk_286C1FBD8;
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
  CMMsl::FaceDownDetection::~FaceDownDetection(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::FaceDownDetection *CMMsl::FaceDownDetection::FaceDownDetection(CMMsl::FaceDownDetection *this, const CMMsl::FaceDownDetection *a2)
{
  *this = &unk_286C1FBD8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 48) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 48) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v6 = *(a2 + 48);
  if ((v6 & 8) != 0)
  {
    v9 = *(a2 + 19);
    *(this + 48) |= 8u;
    *(this + 19) = v9;
    v6 = *(a2 + 48);
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 20);
  *(this + 48) |= 0x10u;
  *(this + 20) = v10;
  v6 = *(a2 + 48);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a2 + 92);
  *(this + 48) |= 0x80u;
  *(this + 92) = v11;
  v6 = *(a2 + 48);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(a2 + 93);
  *(this + 48) |= 0x100u;
  *(this + 93) = v12;
  v6 = *(a2 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a2 + 18);
  *(this + 48) |= 4u;
  *(this + 18) = v13;
  v6 = *(a2 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v15 = *(a2 + 22);
    *(this + 48) |= 0x40u;
    *(this + 22) = v15;
    if ((*(a2 + 48) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_20:
  v14 = *(a2 + 21);
  *(this + 48) |= 0x20u;
  *(this + 21) = v14;
  v6 = *(a2 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v6)
  {
LABEL_13:
    v7 = *(a2 + 7);
    *(this + 48) |= 1u;
    *(this + 7) = v7;
  }

  return this;
}

CMMsl *CMMsl::FaceDownDetection::operator=(CMMsl *a1, const CMMsl::FaceDownDetection *a2)
{
  if (a1 != a2)
  {
    CMMsl::FaceDownDetection::FaceDownDetection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FaceDownDetection::~FaceDownDetection(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FaceDownDetection *a2, CMMsl::FaceDownDetection *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
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
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LOBYTE(v10) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v10;
  LOBYTE(v10) = *(this + 93);
  *(this + 93) = *(a2 + 93);
  *(a2 + 93) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::FaceDownDetection::FaceDownDetection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FBD8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

CMMsl *CMMsl::FaceDownDetection::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FaceDownDetection::FaceDownDetection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::FaceDownDetection::~FaceDownDetection(v5);
  }

  return a1;
}

uint64_t CMMsl::FaceDownDetection::formatText(CMMsl::FaceDownDetection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  v6 = *(this + 5);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "accel", v7);
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "accelFiltered", v10);
  }

  v11 = *(this + 48);
  if (v11)
  {
    PB::TextFormatter::format(a2, "faceDownLookbackTimestamp", *(this + 7));
    v11 = *(this + 48);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(this + 18);
  PB::TextFormatter::format(a2, "faceDownState");
  v11 = *(this + 48);
  if ((v11 & 8) == 0)
  {
LABEL_8:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "gravityAngle", *(this + 19));
  v11 = *(this + 48);
  if ((v11 & 0x10) == 0)
  {
LABEL_9:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "gravityAngleVar", *(this + 20));
  v11 = *(this + 48);
  if ((v11 & 0x80) == 0)
  {
LABEL_10:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(this + 92);
  PB::TextFormatter::format(a2, "isFaceDown");
  v11 = *(this + 48);
  if ((v11 & 0x20) == 0)
  {
LABEL_11:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "pocketProbability", *(this + 21));
  v11 = *(this + 48);
  if ((v11 & 0x40) == 0)
  {
LABEL_12:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "pocketProbabilityVar", *(this + 22));
  v11 = *(this + 48);
  if ((v11 & 0x100) == 0)
  {
LABEL_13:
    if ((v11 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  v14 = *(this + 93);
  PB::TextFormatter::format(a2, "shouldSuppress");
  if ((*(this + 48) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FaceDownDetection::readFrom(CMMsl::FaceDownDetection *this, PB::Reader *a2)
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
        goto LABEL_158;
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
        goto LABEL_158;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        break;
      }

      if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            *(this + 48) |= 0x20u;
            v79 = *(a2 + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(a2 + 2))
            {
              goto LABEL_150;
            }

            *(this + 21) = *(*a2 + v79);
            break;
          case 0xA:
            *(this + 48) |= 0x40u;
            v58 = *(a2 + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
            {
              goto LABEL_150;
            }

            *(this + 22) = *(*a2 + v58);
            break;
          case 0xB:
            *(this + 48) |= 1u;
            v34 = *(a2 + 1);
            if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(a2 + 2))
            {
LABEL_150:
              *(a2 + 24) = 1;
              goto LABEL_154;
            }

            *(this + 7) = *(*a2 + v34);
LABEL_70:
            v52 = *(a2 + 1) + 8;
LABEL_153:
            *(a2 + 1) = v52;
            goto LABEL_154;
          default:
            goto LABEL_17;
        }

        goto LABEL_152;
      }

      switch(v23)
      {
        case 6:
          *(this + 48) |= 0x80u;
          v75 = *(a2 + 1);
          if (v75 >= *(a2 + 2))
          {
            v78 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v76 = v75 + 1;
            v77 = *(*a2 + v75);
            *(a2 + 1) = v76;
            v78 = v77 != 0;
          }

          *(this + 92) = v78;
          break;
        case 7:
          *(this + 48) |= 0x100u;
          v54 = *(a2 + 1);
          if (v54 >= *(a2 + 2))
          {
            v57 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v55 = v54 + 1;
            v56 = *(*a2 + v54);
            *(a2 + 1) = v55;
            v57 = v56 != 0;
          }

          *(this + 93) = v57;
          break;
        case 8:
          *(this + 48) |= 4u;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v85 = 0;
            v86 = 0;
            v29 = 0;
            v87 = (v26 + v25);
            v18 = v24 >= v25;
            v88 = v24 - v25;
            if (!v18)
            {
              v88 = 0;
            }

            v89 = v25 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_141;
              }

              v90 = *v87;
              *(a2 + 1) = v89;
              v29 |= (v90 & 0x7F) << v85;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              ++v87;
              --v88;
              ++v89;
              v14 = v86++ > 8;
              if (v14)
              {
LABEL_117:
                LODWORD(v29) = 0;
                goto LABEL_141;
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
                goto LABEL_117;
              }
            }
          }

LABEL_141:
          *(this + 18) = v29;
          break;
        default:
          goto LABEL_17;
      }

LABEL_154:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_158;
      }
    }

    if (v23 <= 2)
    {
      if (v23 == 1)
      {
        *(this + 48) |= 2u;
        v51 = *(a2 + 1);
        if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(a2 + 2))
        {
          goto LABEL_150;
        }

        *(this + 8) = *(*a2 + v51);
        goto LABEL_70;
      }

      if (v23 != 2)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_154;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_160;
        }

        v35 = *(a2 + 1);
        v36 = *(a2 + 2);
        while (v35 < v36 && (*(a2 + 24) & 1) == 0)
        {
          v38 = *(this + 5);
          v37 = *(this + 6);
          if (v38 >= v37)
          {
            v40 = *(this + 4);
            v41 = v38 - v40;
            v42 = (v38 - v40) >> 2;
            v43 = v42 + 1;
            if ((v42 + 1) >> 62)
            {
              goto LABEL_162;
            }

            v44 = v37 - v40;
            if (v44 >> 1 > v43)
            {
              v43 = v44 >> 1;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v45 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              sub_25AD288E8(v45);
            }

            v46 = (v38 - v40) >> 2;
            v47 = (4 * v42);
            v48 = (4 * v42 - 4 * v46);
            *v47 = 0;
            v39 = v47 + 1;
            memcpy(v48, v40, v41);
            v49 = *(this + 4);
            *(this + 4) = v48;
            *(this + 5) = v39;
            *(this + 6) = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            *v38 = 0;
            v39 = v38 + 4;
          }

          *(this + 5) = v39;
          v50 = *(a2 + 1);
          if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(a2 + 2))
          {
LABEL_120:
            *(a2 + 24) = 1;
            break;
          }

          *(v39 - 1) = *(*a2 + v50);
          v36 = *(a2 + 2);
          v35 = *(a2 + 1) + 4;
          *(a2 + 1) = v35;
        }

LABEL_121:
        PB::Reader::recallMark();
        goto LABEL_154;
      }

      v81 = *(this + 5);
      v80 = *(this + 6);
      if (v81 >= v80)
      {
        v91 = *(this + 4);
        v92 = v81 - v91;
        v93 = (v81 - v91) >> 2;
        v94 = v93 + 1;
        if ((v93 + 1) >> 62)
        {
          goto LABEL_162;
        }

        v95 = v80 - v91;
        if (v95 >> 1 > v94)
        {
          v94 = v95 >> 1;
        }

        if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v96 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v96 = v94;
        }

        if (v96)
        {
          sub_25AD288E8(v96);
        }

        v103 = (v81 - v91) >> 2;
        v104 = (4 * v93);
        v105 = (4 * v93 - 4 * v103);
        *v104 = 0;
        v82 = v104 + 1;
        memcpy(v105, v91, v92);
        v106 = *(this + 4);
        *(this + 4) = v105;
        *(this + 5) = v82;
        *(this + 6) = 0;
        if (v106)
        {
          operator delete(v106);
        }
      }

      else
      {
        *v81 = 0;
        v82 = v81 + 4;
      }

      *(this + 5) = v82;
    }

    else
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {
          *(this + 48) |= 8u;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
          {
            goto LABEL_150;
          }

          *(this + 19) = *(*a2 + v53);
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_17;
          }

          *(this + 48) |= 0x10u;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
            goto LABEL_150;
          }

          *(this + 20) = *(*a2 + v33);
        }

        goto LABEL_152;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_160:
          v112 = 0;
          return v112 & 1;
        }

        v59 = *(a2 + 1);
        v60 = *(a2 + 2);
        while (v59 < v60 && (*(a2 + 24) & 1) == 0)
        {
          v62 = *(this + 2);
          v61 = *(this + 3);
          if (v62 >= v61)
          {
            v64 = *(this + 1);
            v65 = v62 - v64;
            v66 = (v62 - v64) >> 2;
            v67 = v66 + 1;
            if ((v66 + 1) >> 62)
            {
              goto LABEL_162;
            }

            v68 = v61 - v64;
            if (v68 >> 1 > v67)
            {
              v67 = v68 >> 1;
            }

            if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v69 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v69 = v67;
            }

            if (v69)
            {
              sub_25AD288E8(v69);
            }

            v70 = (v62 - v64) >> 2;
            v71 = (4 * v66);
            v72 = (4 * v66 - 4 * v70);
            *v71 = 0;
            v63 = v71 + 1;
            memcpy(v72, v64, v65);
            v73 = *(this + 1);
            *(this + 1) = v72;
            *(this + 2) = v63;
            *(this + 3) = 0;
            if (v73)
            {
              operator delete(v73);
            }
          }

          else
          {
            *v62 = 0;
            v63 = v62 + 4;
          }

          *(this + 2) = v63;
          v74 = *(a2 + 1);
          if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(v63 - 1) = *(*a2 + v74);
          v60 = *(a2 + 2);
          v59 = *(a2 + 1) + 4;
          *(a2 + 1) = v59;
        }

        goto LABEL_121;
      }

      v84 = *(this + 2);
      v83 = *(this + 3);
      if (v84 >= v83)
      {
        v97 = *(this + 1);
        v98 = v84 - v97;
        v99 = (v84 - v97) >> 2;
        v100 = v99 + 1;
        if ((v99 + 1) >> 62)
        {
LABEL_162:
          sub_25AAE66B8();
        }

        v101 = v83 - v97;
        if (v101 >> 1 > v100)
        {
          v100 = v101 >> 1;
        }

        if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v102 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v102 = v100;
        }

        if (v102)
        {
          sub_25AD288E8(v102);
        }

        v107 = (v84 - v97) >> 2;
        v108 = (4 * v99);
        v109 = (4 * v99 - 4 * v107);
        *v108 = 0;
        v82 = v108 + 1;
        memcpy(v109, v97, v98);
        v110 = *(this + 1);
        *(this + 1) = v109;
        *(this + 2) = v82;
        *(this + 3) = 0;
        if (v110)
        {
          operator delete(v110);
        }
      }

      else
      {
        *v84 = 0;
        v82 = v84 + 4;
      }

      *(this + 2) = v82;
    }

    v111 = *(a2 + 1);
    if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(a2 + 2))
    {
      goto LABEL_150;
    }

    *(v82 - 1) = *(*a2 + v111);
LABEL_152:
    v52 = *(a2 + 1) + 4;
    goto LABEL_153;
  }

LABEL_158:
  v112 = v4 ^ 1;
  return v112 & 1;
}

uint64_t CMMsl::FaceDownDetection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 96) & 2) != 0)
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

  v10 = *(v3 + 96);
  if ((v10 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 76));
    v10 = *(v3 + 96);
    if ((v10 & 0x10) == 0)
    {
LABEL_11:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this = PB::Writer::write(a2, *(v3 + 80));
  v10 = *(v3 + 96);
  if ((v10 & 0x80) == 0)
  {
LABEL_12:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(v3 + 92);
  this = PB::Writer::write(a2);
  v10 = *(v3 + 96);
  if ((v10 & 0x100) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = *(v3 + 93);
  this = PB::Writer::write(a2);
  v10 = *(v3 + 96);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 96);
  if ((v10 & 0x20) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 88));
    if ((*(v3 + 96) & 1) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 84));
  v10 = *(v3 + 96);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_25:
  v14 = *(v3 + 56);

  return PB::Writer::write(a2, v14);
}

BOOL CMMsl::FaceDownDetection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 96);
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

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 32);
  if (v4 - v5 != *(a2 + 40) - v6)
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

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
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

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 76) != *(a2 + 76))
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
    if ((v3 & 0x10) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 96) & 0x100) != 0)
  {
    if ((*(a2 + 96) & 0x100) == 0 || *(a1 + 93) != *(a2 + 93))
    {
      return 0;
    }
  }

  else if ((*(a2 + 96) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
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
    if ((v3 & 0x20) == 0 || *(a1 + 84) != *(a2 + 84))
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
    if ((v3 & 0x40) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v10 = (v3 & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v10;
}

uint64_t CMMsl::FaceDownDetection::hash_value(CMMsl::FaceDownDetection *this)
{
  if ((*(this + 48) & 2) != 0)
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
  v9 = *(this + 48);
  if ((v9 & 8) == 0)
  {
    v10 = 0;
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    v12 = 0;
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v21 = *(this + 19);
  v10 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v10 = 0;
  }

  if ((v9 & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  v11 = *(this + 20);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v9 & 0x80) != 0)
  {
LABEL_11:
    v13 = *(this + 92);
    if ((*(this + 48) & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*(this + 48) & 0x100) != 0)
  {
LABEL_12:
    v14 = *(this + 93);
    if ((v9 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((v9 & 4) != 0)
  {
LABEL_13:
    v15 = *(this + 18);
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    v17 = 0;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v16 = *(this + 21);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v9 & 0x40) != 0)
  {
LABEL_17:
    v18 = *(this + 22);
    v19 = LODWORD(v18);
    if (v18 == 0.0)
    {
      v19 = 0;
    }

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_32:
    v20 = 0.0;
    return v5 ^ v2 ^ v8 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v17 ^ v19 ^ *&v20;
  }

LABEL_31:
  v19 = 0;
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v20 = *(this + 7);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v17 ^ v19 ^ *&v20;
}

uint64_t CMMsl::FacePose::FacePose(uint64_t this)
{
  *this = &unk_286C1FC10;
  *(this + 140) = 0;
  return this;
}

{
  *this = &unk_286C1FC10;
  *(this + 140) = 0;
  return this;
}

void CMMsl::FacePose::~FacePose(CMMsl::FacePose *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FacePose::FacePose(uint64_t this, const CMMsl::FacePose *a2)
{
  *this = &unk_286C1FC10;
  *(this + 140) = 0;
  v2 = *(a2 + 35);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 140) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 35);
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x4000000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 30);
    v3 |= 0x4000000u;
    *(this + 140) = v3;
    *(this + 120) = v5;
    v2 = *(a2 + 35);
  }

LABEL_6:
  if ((v2 & 0x20000) != 0)
  {
    v6 = *(a2 + 21);
    v3 |= 0x20000u;
    *(this + 140) = v3;
    *(this + 84) = v6;
    v2 = *(a2 + 35);
    if ((v2 & 0x100000) == 0)
    {
LABEL_8:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 0x100000u;
  *(this + 140) = v3;
  *(this + 96) = v7;
  v2 = *(a2 + 35);
  if ((v2 & 0x200000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 25);
  v3 |= 0x200000u;
  *(this + 140) = v3;
  *(this + 100) = v8;
  v2 = *(a2 + 35);
  if ((v2 & 0x400000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 26);
  v3 |= 0x400000u;
  *(this + 140) = v3;
  *(this + 104) = v9;
  v2 = *(a2 + 35);
  if ((v2 & 0x80000) == 0)
  {
LABEL_11:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(a2 + 23);
  v3 |= 0x80000u;
  *(this + 140) = v3;
  *(this + 92) = v10;
  v2 = *(a2 + 35);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 31);
  v3 |= 0x8000000u;
  *(this + 140) = v3;
  *(this + 124) = v11;
  v2 = *(a2 + 35);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 32);
  v3 |= 0x10000000u;
  *(this + 140) = v3;
  *(this + 128) = v12;
  v2 = *(a2 + 35);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v13 = *(a2 + 33);
  v3 |= 0x20000000u;
  *(this + 140) = v3;
  *(this + 132) = v13;
  v2 = *(a2 + 35);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = *(a2 + 19);
  v3 |= 0x8000u;
  *(this + 140) = v3;
  *(this + 76) = v14;
  v2 = *(a2 + 35);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v15 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 140) = v3;
  *(this + 36) = v15;
  v2 = *(a2 + 35);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v16 = *(a2 + 14);
  v3 |= 0x400u;
  *(this + 140) = v3;
  *(this + 56) = v16;
  v2 = *(a2 + 35);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v17 = *(a2 + 6);
  v3 |= 4u;
  *(this + 140) = v3;
  *(this + 24) = v17;
  v2 = *(a2 + 35);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 140) = v3;
  *(this + 32) = v18;
  v2 = *(a2 + 35);
  if ((v2 & 0x40000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(a2 + 22);
  v3 |= 0x40000u;
  *(this + 140) = v3;
  *(this + 88) = v19;
  v2 = *(a2 + 35);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 140) = v3;
  *(this + 40) = v20;
  v2 = *(a2 + 35);
  if ((v2 & 1) == 0)
  {
LABEL_22:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(a2 + 1);
  v3 |= 1u;
  *(this + 140) = v3;
  *(this + 8) = v21;
  v2 = *(a2 + 35);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = *(a2 + 137);
  v3 |= 0x80000000;
  *(this + 140) = v3;
  *(this + 137) = v22;
  v2 = *(a2 + 35);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = *(a2 + 136);
  v3 |= 0x40000000u;
  *(this + 140) = v3;
  *(this + 136) = v23;
  v2 = *(a2 + 35);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(a2 + 7);
  v3 |= 8u;
  *(this + 140) = v3;
  *(this + 28) = v24;
  v2 = *(a2 + 35);
  if ((v2 & 0x4000) == 0)
  {
LABEL_26:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(a2 + 18);
  v3 |= 0x4000u;
  *(this + 140) = v3;
  *(this + 72) = v25;
  v2 = *(a2 + 35);
  if ((v2 & 0x80) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 140) = v3;
  *(this + 44) = v26;
  v2 = *(a2 + 35);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 140) = v3;
  *(this + 48) = v27;
  v2 = *(a2 + 35);
  if ((v2 & 0x200) == 0)
  {
LABEL_29:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 13);
  v3 |= 0x200u;
  *(this + 140) = v3;
  *(this + 52) = v28;
  v2 = *(a2 + 35);
  if ((v2 & 0x800) == 0)
  {
LABEL_30:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 15);
  v3 |= 0x800u;
  *(this + 140) = v3;
  *(this + 60) = v29;
  v2 = *(a2 + 35);
  if ((v2 & 0x1000) == 0)
  {
LABEL_31:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = *(a2 + 16);
  v3 |= 0x1000u;
  *(this + 140) = v3;
  *(this + 64) = v30;
  v2 = *(a2 + 35);
  if ((v2 & 0x2000) == 0)
  {
LABEL_32:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = *(a2 + 17);
  v3 |= 0x2000u;
  *(this + 140) = v3;
  *(this + 68) = v31;
  v2 = *(a2 + 35);
  if ((v2 & 0x800000) == 0)
  {
LABEL_33:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = *(a2 + 27);
  v3 |= 0x800000u;
  *(this + 140) = v3;
  *(this + 108) = v32;
  v2 = *(a2 + 35);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = *(a2 + 28);
  v3 |= 0x1000000u;
  *(this + 140) = v3;
  *(this + 112) = v33;
  v2 = *(a2 + 35);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x10000) == 0)
    {
      return this;
    }

LABEL_66:
    v35 = *(a2 + 20);
    *(this + 140) = v3 | 0x10000;
    *(this + 80) = v35;
    return this;
  }

LABEL_65:
  v34 = *(a2 + 29);
  v3 |= 0x2000000u;
  *(this + 140) = v3;
  *(this + 116) = v34;
  if ((*(a2 + 35) & 0x10000) != 0)
  {
    goto LABEL_66;
  }

  return this;
}

CMMsl *CMMsl::FacePose::operator=(CMMsl *a1, const CMMsl::FacePose *a2)
{
  if (a1 != a2)
  {
    CMMsl::FacePose::FacePose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FacePose *a2, CMMsl::FacePose *a3)
{
  v3 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v5;
  v6 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v6;
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
  LODWORD(v4) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v4) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v7 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  LOBYTE(v8) = *(this + 137);
  *(this + 137) = *(a2 + 137);
  *(a2 + 137) = v8;
  LOBYTE(v8) = *(this + 136);
  *(this + 136) = *(a2 + 136);
  *(a2 + 136) = v8;
  LODWORD(v9) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  LODWORD(v9) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  LODWORD(v9) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  LODWORD(v9) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  LODWORD(v9) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  LODWORD(v9) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v9;
  LODWORD(v9) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  LODWORD(v9) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v9;
  LODWORD(v9) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v9;
  LODWORD(v9) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v9;
  result = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = result;
  v11 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v11;
  return result;
}

float CMMsl::FacePose::FacePose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FC10;
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 140) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  result = *(a2 + 116);
  *(a1 + 116) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

CMMsl *CMMsl::FacePose::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FacePose::FacePose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FacePose::formatText(CMMsl::FacePose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 35);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "aperture", *(this + 6));
    v5 = *(this + 35);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "confidence", *(this + 7));
  v5 = *(this + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "ev", *(this + 8));
  v5 = *(this + 35);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "exposureDuration", *(this + 9));
  v5 = *(this + 35);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(this + 10);
  PB::TextFormatter::format(a2, "failureCode");
  v5 = *(this + 35);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "gaze_x", *(this + 11));
  v5 = *(this + 35);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "gaze_y", *(this + 12));
  v5 = *(this + 35);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "gaze_z", *(this + 13));
  v5 = *(this + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "iso", *(this + 14));
  v5 = *(this + 35);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "left_eye_x", *(this + 15));
  v5 = *(this + 35);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "left_eye_y", *(this + 16));
  v5 = *(this + 35);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "left_eye_z", *(this + 17));
  v5 = *(this + 35);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "lidAngle", *(this + 18));
  v5 = *(this + 35);
  if ((v5 & 0x8000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "lux", *(this + 19));
  v5 = *(this + 35);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = *(this + 20);
  PB::TextFormatter::format(a2, "numberOfDetectedFaces");
  v5 = *(this + 35);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v8 = *(this + 21);
  PB::TextFormatter::format(a2, "orientation");
  v5 = *(this + 35);
  if ((v5 & 0x40000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v9 = *(this + 22);
  PB::TextFormatter::format(a2, "poseLibrary");
  v5 = *(this + 35);
  if ((v5 & 0x80000) == 0)
  {
LABEL_19:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "qw", *(this + 23));
  v5 = *(this + 35);
  if ((v5 & 0x100000) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "qx", *(this + 24));
  v5 = *(this + 35);
  if ((v5 & 0x200000) == 0)
  {
LABEL_21:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "qy", *(this + 25));
  v5 = *(this + 35);
  if ((v5 & 0x400000) == 0)
  {
LABEL_22:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "qz", *(this + 26));
  v5 = *(this + 35);
  if ((v5 & 0x800000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "right_eye_x", *(this + 27));
  v5 = *(this + 35);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "right_eye_y", *(this + 28));
  v5 = *(this + 35);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "right_eye_z", *(this + 29));
  v5 = *(this + 35);
  if ((v5 & 1) == 0)
  {
LABEL_26:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "rollValue", *(this + 1));
  v5 = *(this + 35);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_27:
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v10 = *(this + 136);
  PB::TextFormatter::format(a2, "sensorCovered");
  v5 = *(this + 35);
  if ((v5 & 2) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  v5 = *(this + 35);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = *(this + 137);
  PB::TextFormatter::format(a2, "tooDark");
  v5 = *(this + 35);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v12 = *(this + 30);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 35);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "x", *(this + 31));
  v5 = *(this + 35);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "y", *(this + 32));
  if ((*(this + 35) & 0x20000000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(a2, "z", *(this + 33));
  }

LABEL_34:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FacePose::readFrom(CMMsl::FacePose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_212:
    v101 = v4 ^ 1;
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
        goto LABEL_212;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 35) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_92;
        case 2u:
          *(this + 35) |= 0x4000000u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v89 = (v47 + v46);
            v90 = v2 - v46;
            v91 = v46 + 1;
            while (1)
            {
              if (!v90)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_206;
              }

              v92 = v91;
              v93 = *v89;
              *(a2 + 1) = v92;
              v50 |= (v93 & 0x7F) << v87;
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
                LODWORD(v50) = 0;
LABEL_205:
                v2 = v92;
                goto LABEL_206;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_205;
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
              goto LABEL_206;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_206:
          *(this + 30) = v50;
          break;
        case 3u:
          *(this + 35) |= 0x20000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v75 = (v31 + v30);
            v76 = v2 - v30;
            v77 = v30 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_198;
              }

              v78 = v77;
              v79 = *v75;
              *(a2 + 1) = v78;
              v34 |= (v79 & 0x7F) << v73;
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
                LODWORD(v34) = 0;
LABEL_197:
                v2 = v78;
                goto LABEL_198;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_197;
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
              goto LABEL_198;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_198:
          *(this + 21) = v34;
          break;
        case 4u:
          *(this + 35) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_181;
        case 5u:
          *(this + 35) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_181;
        case 6u:
          *(this + 35) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_181;
        case 7u:
          *(this + 35) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_181;
        case 8u:
          *(this + 35) |= 0x8000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 31) = *(*a2 + v2);
          goto LABEL_181;
        case 9u:
          *(this + 35) |= 0x10000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 32) = *(*a2 + v2);
          goto LABEL_181;
        case 0xAu:
          *(this + 35) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 33) = *(*a2 + v2);
          goto LABEL_181;
        case 0xBu:
          *(this + 35) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_181;
        case 0xCu:
          *(this + 35) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_181;
        case 0xDu:
          *(this + 35) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_181;
        case 0xEu:
          *(this + 35) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_181;
        case 0xFu:
          *(this + 35) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_181;
        case 0x10u:
          *(this + 35) |= 0x40000u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v82 = (v39 + v38);
            v83 = v2 - v38;
            v84 = v38 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_202;
              }

              v85 = v84;
              v86 = *v82;
              *(a2 + 1) = v85;
              v42 |= (v86 & 0x7F) << v80;
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
                LODWORD(v42) = 0;
LABEL_201:
                v2 = v85;
                goto LABEL_202;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_201;
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
              goto LABEL_202;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_202:
          *(this + 22) = v42;
          break;
        case 0x11u:
          *(this + 35) |= 0x40u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v68 = (v23 + v22);
            v69 = v2 - v22;
            v70 = v22 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_194;
              }

              v71 = v70;
              v72 = *v68;
              *(a2 + 1) = v71;
              v26 |= (v72 & 0x7F) << v66;
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
                LODWORD(v26) = 0;
LABEL_193:
                v2 = v71;
                goto LABEL_194;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_193;
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
              goto LABEL_194;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_194:
          *(this + 10) = v26;
          break;
        case 0x12u:
          *(this + 35) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_92:
          v2 = *(a2 + 1) + 8;
          goto LABEL_182;
        case 0x13u:
          *(this + 35) |= 0x80000000;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v63 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v62 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v63 = v62 != 0;
          }

          *(this + 137) = v63;
          break;
        case 0x14u:
          *(this + 35) |= 0x40000000u;
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

          *(this + 136) = v65;
          break;
        case 0x15u:
          *(this + 35) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_181;
        case 0x16u:
          *(this + 35) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_181;
        case 0x17u:
          *(this + 35) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_181;
        case 0x18u:
          *(this + 35) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_181;
        case 0x19u:
          *(this + 35) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Au:
          *(this + 35) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Bu:
          *(this + 35) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Cu:
          *(this + 35) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Du:
          *(this + 35) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Eu:
          *(this + 35) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_181;
        case 0x1Fu:
          *(this + 35) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_135:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 29) = *(*a2 + v2);
LABEL_181:
            v2 = *(a2 + 1) + 4;
LABEL_182:
            *(a2 + 1) = v2;
          }

          break;
        case 0x20u:
          *(this + 35) |= 0x10000u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v96 = (v55 + v54);
            v97 = v2 - v54;
            v98 = v54 + 1;
            while (1)
            {
              if (!v97)
              {
                LODWORD(v58) = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v99 = v98;
              v100 = *v96;
              *(a2 + 1) = v99;
              v58 |= (v100 & 0x7F) << v94;
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
                LODWORD(v58) = 0;
LABEL_209:
                v2 = v99;
                goto LABEL_210;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_209;
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
              goto LABEL_210;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_210:
          *(this + 20) = v58;
          break;
        default:
          goto LABEL_17;
      }

LABEL_183:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_212;
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
        goto LABEL_212;
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
      goto LABEL_183;
    }

    v101 = 0;
  }

  return v101 & 1;
}

uint64_t CMMsl::FacePose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 140);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 140);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x20000) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = *(v3 + 84);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 140);
  if ((v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 140);
  if ((v4 & 0x400000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 140);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 140);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 140);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 140);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 140);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 140);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 140);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 140);
  if ((v4 & 4) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 140);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 140);
  if ((v4 & 0x40000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v7 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x40) == 0)
  {
LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 1) == 0)
  {
LABEL_19:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 140);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v9 = *(v3 + 137);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v10 = *(v3 + 136);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 140);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 140);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 140);
  if ((v4 & 0x80) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 140);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 140);
  if ((v4 & 0x200) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 140);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 140);
  if ((v4 & 0x1000) == 0)
  {
LABEL_28:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 140);
  if ((v4 & 0x2000) == 0)
  {
LABEL_29:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 140);
  if ((v4 & 0x800000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 140);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    this = PB::Writer::write(a2, *(v3 + 116));
    if ((*(v3 + 140) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_65;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 140);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x10000) == 0)
  {
    return this;
  }

LABEL_65:
  v11 = *(v3 + 80);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::FacePose::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 140);
  v4 = *(a2 + 140);
  if ((v3 & 2) != 0)
  {
    if ((v4 & 2) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v4 & 2) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000000) != 0)
  {
    if ((v4 & 0x4000000) == 0)
    {
      return 0;
    }

    v5 = *(a1 + 120);
    v6 = *(a2 + 120);
    v2 = __OFSUB__(v5, v6);
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000) != 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 84);
    v8 = *(a2 + 84);
    v2 = __OFSUB__(v7, v8);
    if (v7 != v8)
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100000) != 0)
  {
    if ((v4 & 0x100000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200000) != 0)
  {
    if ((v4 & 0x200000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400000) != 0)
  {
    if ((v4 & 0x400000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) != 0)
  {
    if ((v4 & 0x80000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000000) != 0)
  {
    if ((v4 & 0x8000000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000000) != 0)
  {
    if ((v4 & 0x10000000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000000) != 0)
  {
    if ((v4 & 0x20000000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000) != 0)
  {
    if ((v4 & 0x8000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v4 & 0x20) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400) != 0)
  {
    if ((v4 & 0x400) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400) != 0)
  {
    return 0;
  }

  if ((v3 & 4) != 0)
  {
    if ((v4 & 4) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v4 & 4) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    if ((v4 & 0x10) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000) != 0)
  {
    if ((v4 & 0x40000) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 88);
    v10 = *(a2 + 88);
    v2 = __OFSUB__(v9, v10);
    if (v9 != v10)
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    if ((v4 & 0x40) == 0)
    {
      return 0;
    }

    v11 = *(a1 + 40);
    v12 = *(a2 + 40);
    v2 = __OFSUB__(v11, v12);
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((v4 & v3) < 0 != v2)
  {
    if (*(a1 + 137) != *(a2 + 137))
    {
      return 0;
    }
  }

  else if ((v4 | v3) < 0)
  {
    return 0;
  }

  if ((v3 & 0x40000000) != 0)
  {
    if ((v4 & 0x40000000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v3 & 8) != 0)
  {
    if ((v4 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v4 & 8) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000) != 0)
  {
    if ((v4 & 0x4000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200) != 0)
  {
    if ((v4 & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800) != 0)
  {
    if ((v4 & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000) != 0)
  {
    if ((v4 & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000) != 0)
  {
    if ((v4 & 0x2000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800000) != 0)
  {
    if ((v4 & 0x800000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000000) != 0)
  {
    if ((v4 & 0x1000000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000000) != 0)
  {
    if ((v4 & 0x2000000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000000) != 0)
  {
    return 0;
  }

  v13 = (v4 & 0x10000) == 0;
  if ((v3 & 0x10000) != 0)
  {
    return (v4 & 0x10000) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return v13;
}

uint64_t CMMsl::FacePose::hash_value(CMMsl::FacePose *this)
{
  v1 = *(this + 35);
  if ((v1 & 2) != 0)
  {
    if (*(this + 2) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x4000000) != 0)
  {
    v60 = *(this + 30);
    if ((v1 & 0x20000) != 0)
    {
LABEL_8:
      v59 = *(this + 21);
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_9;
      }

LABEL_105:
      v58 = 0;
      if ((v1 & 0x200000) != 0)
      {
        goto LABEL_12;
      }

LABEL_106:
      v57 = 0;
      if ((v1 & 0x400000) != 0)
      {
        goto LABEL_15;
      }

LABEL_107:
      v56 = 0;
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_18;
      }

LABEL_108:
      v10 = 0;
      if ((v1 & 0x8000000) != 0)
      {
        goto LABEL_22;
      }

LABEL_109:
      v12 = 0;
      if ((v1 & 0x10000000) != 0)
      {
        goto LABEL_26;
      }

LABEL_110:
      v14 = 0;
      if ((v1 & 0x20000000) != 0)
      {
        goto LABEL_30;
      }

LABEL_111:
      v16 = 0;
      if ((v1 & 0x8000) != 0)
      {
        goto LABEL_34;
      }

LABEL_112:
      v18 = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_38;
      }

LABEL_113:
      v20 = 0;
      if ((v1 & 0x400) != 0)
      {
        goto LABEL_42;
      }

LABEL_114:
      v22 = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_46;
      }

LABEL_115:
      v24 = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_50;
      }

LABEL_116:
      v26 = 0;
      if ((v1 & 0x40000) != 0)
      {
        goto LABEL_54;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v60 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_8;
    }
  }

  v59 = 0;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_105;
  }

LABEL_9:
  v3 = *(this + 24);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v58 = v4;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_106;
  }

LABEL_12:
  v5 = *(this + 25);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v57 = v6;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_107;
  }

LABEL_15:
  v7 = *(this + 26);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v56 = v8;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_108;
  }

LABEL_18:
  v9 = *(this + 23);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = LODWORD(v9);
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_22:
  v11 = *(this + 31);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_110;
  }

LABEL_26:
  v13 = *(this + 32);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_30:
  v15 = *(this + 33);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_112;
  }

LABEL_34:
  v17 = *(this + 19);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = LODWORD(v17);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_113;
  }

LABEL_38:
  v19 = *(this + 9);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_114;
  }

LABEL_42:
  v21 = *(this + 14);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = LODWORD(v21);
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_115;
  }

LABEL_46:
  v23 = *(this + 6);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = LODWORD(v23);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_116;
  }

LABEL_50:
  v25 = *(this + 8);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = LODWORD(v25);
  }

  if ((v1 & 0x40000) != 0)
  {
LABEL_54:
    v27 = *(this + 22);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_118;
  }

LABEL_117:
  v27 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_55:
    v28 = *(this + 10);
    if (v1)
    {
      goto LABEL_56;
    }

LABEL_119:
    v29 = 0;
    if (v1 < 0)
    {
      goto LABEL_60;
    }

    goto LABEL_120;
  }

LABEL_118:
  v28 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_56:
  if (*(this + 1) == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(this + 1);
  }

  if (v1 < 0)
  {
LABEL_60:
    v30 = *(this + 137);
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_121;
  }

LABEL_120:
  v30 = 0;
  if ((v1 & 0x40000000) != 0)
  {
LABEL_61:
    v31 = *(this + 136);
    if ((v1 & 8) != 0)
    {
      goto LABEL_62;
    }

LABEL_122:
    v33 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_66;
    }

LABEL_123:
    v35 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_70;
    }

LABEL_124:
    v37 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_74;
    }

LABEL_125:
    v39 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    v41 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_82;
    }

LABEL_127:
    v43 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_86;
    }

LABEL_128:
    v45 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_90;
    }

LABEL_129:
    v47 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_93;
    }

LABEL_130:
    v49 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_131:
    v51 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_99;
    }

    goto LABEL_132;
  }

LABEL_121:
  v31 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_122;
  }

LABEL_62:
  v32 = *(this + 7);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = LODWORD(v32);
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_123;
  }

LABEL_66:
  v34 = *(this + 18);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  else
  {
    v35 = LODWORD(v34);
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_124;
  }

LABEL_70:
  v36 = *(this + 11);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_125;
  }

LABEL_74:
  v38 = *(this + 12);
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
    goto LABEL_126;
  }

LABEL_78:
  v40 = *(this + 13);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_127;
  }

LABEL_82:
  v42 = *(this + 15);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  else
  {
    v43 = LODWORD(v42);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_128;
  }

LABEL_86:
  v44 = *(this + 16);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  else
  {
    v45 = LODWORD(v44);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_129;
  }

LABEL_90:
  v46 = *(this + 17);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_130;
  }

LABEL_93:
  v48 = *(this + 27);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_96:
  v50 = *(this + 28);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_99:
    v52 = *(this + 29);
    v53 = LODWORD(v52);
    if (v52 == 0.0)
    {
      v53 = 0;
    }

    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_102;
    }

LABEL_133:
    v54 = 0;
    return v60 ^ v2 ^ v59 ^ v58 ^ v57 ^ v56 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54;
  }

LABEL_132:
  v53 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_133;
  }

LABEL_102:
  v54 = *(this + 20);
  return v60 ^ v2 ^ v59 ^ v58 ^ v57 ^ v56 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54;
}

uint64_t CMMsl::FacePoseSynchronized::FacePoseSynchronized(uint64_t this)
{
  *this = &unk_286C1FC48;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C1FC48;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::FacePoseSynchronized::~FacePoseSynchronized(CMMsl::FacePoseSynchronized *this)
{
  *this = &unk_286C1FC48;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FacePoseSynchronized::~FacePoseSynchronized(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FacePoseSynchronized::FacePoseSynchronized(uint64_t this, const CMMsl::FacePoseSynchronized *a2)
{
  *this = &unk_286C1FC48;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
    v3 = *(a2 + 2);
    *(this + 32) = 2;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 32))
  {
LABEL_5:
    v4 = *(a2 + 1);
    *(this + 32) = v2;
    *(this + 8) = v4;
  }

LABEL_6:
  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FacePoseSynchronized::operator=(uint64_t a1, const CMMsl::FacePoseSynchronized *a2)
{
  if (a1 != a2)
  {
    CMMsl::FacePoseSynchronized::FacePoseSynchronized(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::FacePoseSynchronized::~FacePoseSynchronized(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FacePoseSynchronized *a2, CMMsl::FacePoseSynchronized *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t CMMsl::FacePoseSynchronized::FacePoseSynchronized(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FC48;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::FacePoseSynchronized::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FacePoseSynchronized::FacePoseSynchronized(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::FacePoseSynchronized::~FacePoseSynchronized(v7);
  }

  return a1;
}

uint64_t CMMsl::FacePoseSynchronized::formatText(CMMsl::FacePoseSynchronized *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
    v5 = *(this + 32);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FacePoseSynchronized::readFrom(CMMsl::FacePoseSynchronized *this, PB::Reader *a2)
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
        goto LABEL_36;
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
        goto LABEL_36;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v23);
LABEL_31:
        *(a2 + 1) += 8;
        goto LABEL_32;
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_32:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_36;
      }
    }

    *(this + 32) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_32;
    }

    *(this + 1) = *(*a2 + v24);
    goto LABEL_31;
  }

LABEL_36:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::FacePoseSynchronized::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 8));
  }

  v5 = *(v3 + 24);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

BOOL CMMsl::FacePoseSynchronized::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  result = v4 == 0;
  if (v3)
  {
    return v4 && CMMsl::FacePose::operator==(v3, v4);
  }

  return result;
}

unint64_t CMMsl::FacePoseSynchronized::hash_value(CMMsl::FacePoseSynchronized *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    if (*(this + 2) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 2);
    }

    if (*(this + 32))
    {
      goto LABEL_3;
    }

LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  v1 = 0;
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (*(this + 1) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 1);
  }

LABEL_11:
  v3 = *(this + 3);
  if (v3)
  {
    v3 = CMMsl::FacePose::hash_value(v3);
  }

  return v2 ^ v1 ^ v3;
}

uint64_t CMMsl::FacePoseSynchronized::makeSuper(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::FallDetectionActivityClassifierReplay(uint64_t this)
{
  *this = &unk_286C1FC80;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C1FC80;
  *(this + 32) = 0;
  return this;
}

void CMMsl::FallDetectionActivityClassifierReplay::~FallDetectionActivityClassifierReplay(CMMsl::FallDetectionActivityClassifierReplay *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FallDetectionActivityClassifierReplay::FallDetectionActivityClassifierReplay(CMMsl::FallDetectionActivityClassifierReplay *this, const CMMsl::FallDetectionActivityClassifierReplay *a2)
{
  *this = &unk_286C1FC80;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = v4;
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
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 7) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 4) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 6);
      *(this + 32) = v3 | 8;
      *(this + 6) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 5) = v7;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::operator=(uint64_t a1, const CMMsl::FallDetectionActivityClassifierReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionActivityClassifierReplay::FallDetectionActivityClassifierReplay(v9, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v3;
    v4 = *(a1 + 28);
    LODWORD(v3) = *(a1 + 32);
    v5 = v14;
    *(a1 + 28) = v13;
    *(a1 + 32) = v5;
    v13 = v4;
    v14 = v3;
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallDetectionActivityClassifierReplay *a2, CMMsl::FallDetectionActivityClassifierReplay *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
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

float CMMsl::FallDetectionActivityClassifierReplay::FallDetectionActivityClassifierReplay(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FC80;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C1FC80;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 28);
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v6 = *(a2 + 24);
    v11[0] = &unk_286C1FC80;
    v11[1] = v5;
    v7 = *(a1 + 32);
    v13 = *(a1 + 28);
    v14 = v7;
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    *(a1 + 28) = v4;
    *(a1 + 32) = v3;
    *(a1 + 16) = v9;
    v11[2] = v8;
    LODWORD(v8) = *(a1 + 24);
    *(a1 + 24) = v6;
    v12 = v8;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::formatText(CMMsl::FallDetectionActivityClassifierReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "cyclingState");
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "cyclingStateSummary");
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "distanceTraveledOverTimeWindow", *(this + 6));
  v5 = *(this + 32);
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
  v9 = *(this + 7);
  PB::TextFormatter::format(a2, "motionType");
  if (*(this + 32))
  {
LABEL_6:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::readFrom(CMMsl::FallDetectionActivityClassifierReplay *this, PB::Reader *a2)
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v47 = *(a2 + 1);
        v2 = *(a2 + 2);
        v48 = *a2;
        if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
        {
          v69 = 0;
          v70 = 0;
          v51 = 0;
          if (v2 <= v47)
          {
            v2 = *(a2 + 1);
          }

          v71 = (v48 + v47);
          v72 = v2 - v47;
          v73 = v47 + 1;
          while (1)
          {
            if (!v72)
            {
              v51 = 0;
              *(a2 + 24) = 1;
              goto LABEL_108;
            }

            v74 = v73;
            v75 = *v71;
            *(a2 + 1) = v74;
            v51 |= (v75 & 0x7F) << v69;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            ++v71;
            --v72;
            v73 = v74 + 1;
            v14 = v70++ > 8;
            if (v14)
            {
              v51 = 0;
              goto LABEL_107;
            }
          }

          if (*(a2 + 24))
          {
            v51 = 0;
          }

LABEL_107:
          v2 = v74;
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
            *(a2 + 1) = v53;
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

LABEL_108:
        *(this + 1) = v51;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 0x10u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v76 = 0;
          v77 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v78 = (v24 + v23);
          v79 = v2 - v23;
          v80 = v23 + 1;
          while (1)
          {
            if (!v79)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_112;
            }

            v81 = v80;
            v82 = *v78;
            *(a2 + 1) = v81;
            v27 |= (v82 & 0x7F) << v76;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            ++v78;
            --v79;
            v80 = v81 + 1;
            v14 = v77++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_111;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_111:
          v2 = v81;
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

LABEL_112:
        *(this + 7) = v27;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 2u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v57 = (v32 + v31);
            v58 = v2 - v31;
            v59 = v31 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v60 = v59;
              v61 = *v57;
              *(a2 + 1) = v60;
              v35 |= (v61 & 0x7F) << v55;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              ++v57;
              --v58;
              v59 = v60 + 1;
              v14 = v56++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_99:
            v2 = v60;
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

LABEL_100:
          *(this + 4) = v35;
          goto LABEL_19;
        case 4:
          *(this + 32) |= 4u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v64 = (v40 + v39);
            v65 = v2 - v39;
            v66 = v39 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v67 = v66;
              v68 = *v64;
              *(a2 + 1) = v67;
              v43 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v64;
              --v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_103;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_103:
            v2 = v67;
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

LABEL_104:
          *(this + 5) = v43;
          goto LABEL_19;
        case 5:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 6) = *(*a2 + v2);
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v83 = 0;
      return v83 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v9 = *(v3 + 24);

  return PB::Writer::write(a2, v9);
}

BOOL CMMsl::FallDetectionActivityClassifierReplay::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::FallDetectionActivityClassifierReplay::hash_value(CMMsl::FallDetectionActivityClassifierReplay *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 7);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 4);
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 5);
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v6 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v6;
  }

LABEL_12:
  v4 = 0;
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v5 = *(this + 6);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  return v2 ^ v1 ^ v3 ^ v4 ^ v6;
}

void *CMMsl::FallDetectionDetector::FallDetectionDetector(void *this)
{
  *this = &unk_286C1FCB8;
  *(this + 156) = 0;
  return this;
}

{
  *this = &unk_286C1FCB8;
  *(this + 156) = 0;
  return this;
}

void CMMsl::FallDetectionDetector::~FallDetectionDetector(CMMsl::FallDetectionDetector *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FallDetectionDetector::FallDetectionDetector(CMMsl::FallDetectionDetector *this, const CMMsl::FallDetectionDetector *a2)
{
  *this = &unk_286C1FCB8;
  *(this + 156) = 0;
  v2 = *(a2 + 156);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 156) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 156);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 4uLL;
    *(this + 156) = v3;
    *(this + 3) = v5;
    v2 = *(a2 + 156);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 156) = v3;
    *(this + 2) = v6;
    v2 = *(a2 + 156);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x40uLL;
  *(this + 156) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x20uLL;
  *(this + 156) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x20000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 22);
  v3 |= 0x20000uLL;
  *(this + 156) = v3;
  *(this + 22) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x2000uLL;
  *(this + 156) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x10000) == 0)
  {
LABEL_12:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 21);
  v3 |= 0x10000uLL;
  *(this + 156) = v3;
  *(this + 21) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x80000) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 0x80000uLL;
  *(this + 156) = v3;
  *(this + 24) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x10uLL;
  *(this + 156) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x8000uLL;
  *(this + 156) = v3;
  *(this + 20) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x4000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  LODWORD(v4) = *(a2 + 19);
  v3 |= 0x4000uLL;
  *(this + 156) = v3;
  *(this + 19) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(v4) = *(a2 + 31);
  v3 |= 0x4000000uLL;
  *(this + 156) = v3;
  *(this + 31) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  LODWORD(v4) = *(a2 + 33);
  v3 |= 0x10000000uLL;
  *(this + 156) = v3;
  *(this + 33) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  LODWORD(v4) = *(a2 + 35);
  v3 |= 0x40000000uLL;
  *(this + 156) = v3;
  *(this + 35) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  LODWORD(v4) = *(a2 + 34);
  v3 |= 0x20000000uLL;
  *(this + 156) = v3;
  *(this + 34) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x80) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v7 = *(a2 + 12);
  v3 |= 0x80uLL;
  *(this + 156) = v3;
  *(this + 12) = v7;
  v2 = *(a2 + 156);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  LODWORD(v4) = *(a2 + 32);
  v3 |= 0x8000000uLL;
  *(this + 156) = v3;
  *(this + 32) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  v8 = *(a2 + 152);
  v3 |= 0x200000000uLL;
  *(this + 156) = v3;
  *(this + 152) = v8;
  v2 = *(a2 + 156);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  v9 = *(a2 + 37);
  v3 |= 0x100000000uLL;
  *(this + 156) = v3;
  *(this + 37) = v9;
  v2 = *(a2 + 156);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x80000000uLL;
  *(this + 156) = v3;
  *(this + 36) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x400) == 0)
  {
LABEL_26:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x400uLL;
  *(this + 156) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x800) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x800uLL;
  *(this + 156) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x1000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x1000uLL;
  *(this + 156) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v10 = *(a2 + 153);
  v3 |= 0x400000000uLL;
  *(this + 156) = v3;
  *(this + 153) = v10;
  v2 = *(a2 + 156);
  if ((v2 & 0x800000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x800000uLL;
  *(this + 156) = v3;
  *(this + 28) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x400000) == 0)
  {
LABEL_31:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  LODWORD(v4) = *(a2 + 27);
  v3 |= 0x400000uLL;
  *(this + 156) = v3;
  *(this + 27) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  LODWORD(v4) = *(a2 + 29);
  v3 |= 0x1000000uLL;
  *(this + 156) = v3;
  *(this + 29) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x200000) == 0)
  {
LABEL_33:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  LODWORD(v4) = *(a2 + 26);
  v3 |= 0x200000uLL;
  *(this + 156) = v3;
  *(this + 26) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  v11 = *(a2 + 155);
  v3 |= 0x1000000000uLL;
  *(this + 156) = v3;
  *(this + 155) = v11;
  v2 = *(a2 + 156);
  if ((v2 & 0x100000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  LODWORD(v4) = *(a2 + 25);
  v3 |= 0x100000uLL;
  *(this + 156) = v3;
  *(this + 25) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v12 = *(a2 + 30);
  v3 |= 0x2000000uLL;
  *(this + 156) = v3;
  *(this + 30) = v12;
  v2 = *(a2 + 156);
  if ((v2 & 0x200) == 0)
  {
LABEL_37:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x200uLL;
  *(this + 156) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x100) == 0)
  {
LABEL_38:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_74;
  }

LABEL_73:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x100uLL;
  *(this + 156) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 156);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_74:
  v13 = *(a2 + 154);
  v3 |= 0x800000000uLL;
  *(this + 156) = v3;
  *(this + 154) = v13;
  v2 = *(a2 + 156);
  if ((v2 & 0x40000) == 0)
  {
LABEL_40:
    if ((v2 & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_76;
  }

LABEL_75:
  LODWORD(v4) = *(a2 + 23);
  v3 |= 0x40000uLL;
  *(this + 156) = v3;
  *(this + 23) = v4;
  if ((*(a2 + 156) & 8) == 0)
  {
    return *&v4;
  }

LABEL_76:
  LODWORD(v4) = *(a2 + 8);
  *(this + 156) = v3 | 8;
  *(this + 8) = v4;
  return *&v4;
}

CMMsl *CMMsl::FallDetectionDetector::operator=(CMMsl *a1, const CMMsl::FallDetectionDetector *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionDetector::FallDetectionDetector(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallDetectionDetector *a2, CMMsl::FallDetectionDetector *a3)
{
  v3 = *(this + 156);
  *(this + 156) = *(a2 + 156);
  *(a2 + 156) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  LODWORD(v4) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v4;
  LODWORD(v4) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  LODWORD(v4) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v4;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LOBYTE(v6) = *(this + 152);
  *(this + 152) = *(a2 + 152);
  *(a2 + 152) = v6;
  LODWORD(v6) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v6;
  LODWORD(v4) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LOBYTE(v6) = *(this + 153);
  *(this + 153) = *(a2 + 153);
  *(a2 + 153) = v6;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LOBYTE(v6) = *(this + 155);
  *(this + 155) = *(a2 + 155);
  *(a2 + 155) = v6;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v6) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v6;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LOBYTE(v6) = *(this + 154);
  *(this + 154) = *(a2 + 154);
  *(a2 + 154) = v6;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

float CMMsl::FallDetectionDetector::FallDetectionDetector(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FCB8;
  *(a1 + 156) = *(a2 + 156);
  *(a2 + 156) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 92) = *(a2 + 92);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

CMMsl *CMMsl::FallDetectionDetector::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallDetectionDetector::FallDetectionDetector(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallDetectionDetector::formatText(CMMsl::FallDetectionDetector *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 156);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "abruptGravityChangeAngle", *(this + 8));
    v5 = *(this + 156);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelPathLength", *(this + 9));
  v5 = *(this + 156);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "angleChangePostImpact", *(this + 10));
  v5 = *(this + 156);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "angleChangePreImpact", *(this + 11));
  v5 = *(this + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(this + 12);
  PB::TextFormatter::format(a2, "crown");
  v5 = *(this + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "crownVariance", *(this + 13));
  v5 = *(this + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "gravityVariance", *(this + 14));
  v5 = *(this + 156);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "iostime", *(this + 1));
  v5 = *(this + 156);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = *(this + 152);
  PB::TextFormatter::format(a2, "isFall");
  v5 = *(this + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = *(this + 153);
  PB::TextFormatter::format(a2, "isNearFall");
  v5 = *(this + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "maxAbsX", *(this + 15));
  v5 = *(this + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "maxAbsY", *(this + 16));
  v5 = *(this + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "maxAbsZ", *(this + 17));
  v5 = *(this + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "maxAccelNorm", *(this + 18));
  v5 = *(this + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "maxAngleChangePostImpact", *(this + 19));
  v5 = *(this + 156);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "maxAngleChangePreImpact", *(this + 20));
  v5 = *(this + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "maxJerkVM", *(this + 21));
  v5 = *(this + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "maxMinusMin", *(this + 22));
  v5 = *(this + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "medianAbsGravityY", *(this + 23));
  v5 = *(this + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "minInertialZ", *(this + 24));
  v5 = *(this + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "minInertialZHighFreq", *(this + 25));
  v5 = *(this + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "multiPeakAccelPathLengthWithPeak", *(this + 26));
  v5 = *(this + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "multiPeakPathLengthDecorrelation", *(this + 27));
  v5 = *(this + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "multiPeakPathLengthDelaySpread", *(this + 28));
  v5 = *(this + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "multiPeakPathLengthHarmonicMean", *(this + 29));
  v5 = *(this + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(this + 30);
  PB::TextFormatter::format(a2, "operatingMode");
  v5 = *(this + 156);
  if ((v5 & 2) == 0)
  {
LABEL_28:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(this + 2);
  PB::TextFormatter::format(a2, "peakTimestamp");
  v5 = *(this + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "poseAtImpact", *(this + 31));
  v5 = *(this + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_30:
    if ((v5 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "posteriorRatio", *(this + 32));
  v5 = *(this + 156);
  if ((v5 & 4) == 0)
  {
LABEL_31:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  v12 = *(this + 3);
  PB::TextFormatter::format(a2, "sensorTime");
  v5 = *(this + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "sumDeltaAngles", *(this + 33));
  v5 = *(this + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "swingAngle", *(this + 34));
  v5 = *(this + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "tiltAngle", *(this + 35));
  v5 = *(this + 156);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "timeto3rdZC", *(this + 36));
  v5 = *(this + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v13 = *(this + 37);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 156);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_77:
  v14 = *(this + 154);
  PB::TextFormatter::format(a2, "withinCyclingImpactThresholds");
  if ((*(this + 156) & 0x1000000000) != 0)
  {
LABEL_38:
    v6 = *(this + 155);
    PB::TextFormatter::format(a2, "withinHardThresholds");
  }

LABEL_39:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FallDetectionDetector::readFrom(CMMsl::FallDetectionDetector *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_228:
    v105 = v4 ^ 1;
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
        goto LABEL_228;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 156) |= 1uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_198;
        case 2u:
          *(this + 156) |= 4uLL;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(a2 + 1);
            }

            v86 = (v43 + v42);
            v87 = v2 - v42;
            v88 = v42 + 1;
            while (1)
            {
              if (!v87)
              {
                v46 = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v89 = v88;
              v90 = *v86;
              *(a2 + 1) = v89;
              v46 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v86;
              --v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                v46 = 0;
LABEL_217:
                v2 = v89;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              v46 = 0;
            }

            goto LABEL_217;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          v46 = 0;
LABEL_218:
          *(this + 3) = v46;
          break;
        case 3u:
          *(this + 156) |= 2uLL;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v79 = (v35 + v34);
            v80 = v2 - v34;
            v81 = v34 + 1;
            while (1)
            {
              if (!v80)
              {
                v38 = 0;
                *(a2 + 24) = 1;
                goto LABEL_214;
              }

              v82 = v81;
              v83 = *v79;
              *(a2 + 1) = v82;
              v38 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                v38 = 0;
LABEL_213:
                v2 = v82;
                goto LABEL_214;
              }
            }

            if (*(a2 + 24))
            {
              v38 = 0;
            }

            goto LABEL_213;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          v38 = 0;
LABEL_214:
          *(this + 2) = v38;
          break;
        case 4u:
          *(this + 156) |= 0x40uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_197;
        case 5u:
          *(this + 156) |= 0x20uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_197;
        case 6u:
          *(this + 156) |= 0x20000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_197;
        case 7u:
          *(this + 156) |= 0x2000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_197;
        case 8u:
          *(this + 156) |= 0x10000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_197;
        case 9u:
          *(this + 156) |= 0x80000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_197;
        case 0xAu:
          *(this + 156) |= 0x10uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_197;
        case 0xBu:
          *(this + 156) |= 0x8000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_197;
        case 0xCu:
          *(this + 156) |= 0x4000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_197;
        case 0xDu:
          *(this + 156) |= 0x4000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 31) = *(*a2 + v2);
          goto LABEL_197;
        case 0xEu:
          *(this + 156) |= 0x10000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 33) = *(*a2 + v2);
          goto LABEL_197;
        case 0xFu:
          *(this + 156) |= 0x40000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 35) = *(*a2 + v2);
          goto LABEL_197;
        case 0x10u:
          *(this + 156) |= 0x20000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 34) = *(*a2 + v2);
          goto LABEL_197;
        case 0x11u:
          *(this + 156) |= 0x80uLL;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v25 + v24);
            v73 = v2 - v24;
            v74 = v24 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v28 |= (v76 & 0x7F) << v70;
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
                LODWORD(v28) = 0;
LABEL_209:
                v2 = v75;
                goto LABEL_210;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_209;
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
              goto LABEL_210;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_210:
          *(this + 12) = v28;
          break;
        case 0x12u:
          *(this + 156) |= 0x8000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 32) = *(*a2 + v2);
          goto LABEL_197;
        case 0x13u:
          *(this + 156) |= 0x200000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v59 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v58 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v59 = v58 != 0;
          }

          *(this + 152) = v59;
          break;
        case 0x14u:
          *(this + 156) |= 0x100000000uLL;
          v60 = *(a2 + 1);
          v2 = *(a2 + 2);
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v98 = 0;
            v99 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(a2 + 1);
            }

            v100 = (v61 + v60);
            v101 = v2 - v60;
            v102 = v60 + 1;
            while (1)
            {
              if (!v101)
              {
                LODWORD(v64) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v103 = v102;
              v104 = *v100;
              *(a2 + 1) = v103;
              v64 |= (v104 & 0x7F) << v98;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v98 += 7;
              ++v100;
              --v101;
              v102 = v103 + 1;
              v14 = v99++ > 8;
              if (v14)
              {
                LODWORD(v64) = 0;
LABEL_225:
                v2 = v103;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v64) = 0;
            }

            goto LABEL_225;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(a2 + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          LODWORD(v64) = 0;
LABEL_226:
          *(this + 37) = v64;
          break;
        case 0x15u:
          *(this + 156) |= 0x80000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 36) = *(*a2 + v2);
          goto LABEL_197;
        case 0x16u:
          *(this + 156) |= 0x400uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_197;
        case 0x17u:
          *(this + 156) |= 0x800uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_197;
        case 0x18u:
          *(this + 156) |= 0x1000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_197;
        case 0x19u:
          *(this + 156) |= 0x400000000uLL;
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

          *(this + 153) = v33;
          break;
        case 0x1Au:
          *(this + 156) |= 0x800000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_197;
        case 0x1Bu:
          *(this + 156) |= 0x400000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_197;
        case 0x1Cu:
          *(this + 156) |= 0x1000000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_197;
        case 0x1Du:
          *(this + 156) |= 0x200000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_197;
        case 0x1Eu:
          *(this + 156) |= 0x1000000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v69 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v68 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v69 = v68 != 0;
          }

          *(this + 155) = v69;
          break;
        case 0x1Fu:
          *(this + 156) |= 0x100000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_197;
        case 0x20u:
          *(this + 156) |= 0x2000000uLL;
          v50 = *(a2 + 1);
          v2 = *(a2 + 2);
          v51 = *a2;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v54 = 0;
            if (v2 <= v50)
            {
              v2 = *(a2 + 1);
            }

            v93 = (v51 + v50);
            v94 = v2 - v50;
            v95 = v50 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v54) = 0;
                *(a2 + 24) = 1;
                goto LABEL_222;
              }

              v96 = v95;
              v97 = *v93;
              *(a2 + 1) = v96;
              v54 |= (v97 & 0x7F) << v91;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              ++v93;
              --v94;
              v95 = v96 + 1;
              v14 = v92++ > 8;
              if (v14)
              {
                LODWORD(v54) = 0;
LABEL_221:
                v2 = v96;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v54) = 0;
            }

            goto LABEL_221;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = (v51 + v50);
          v56 = v50 + 1;
          do
          {
            v2 = v56;
            *(a2 + 1) = v56;
            v57 = *v55++;
            v54 |= (v57 & 0x7F) << v52;
            if ((v57 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v52 += 7;
            ++v56;
            v14 = v53++ > 8;
          }

          while (!v14);
          LODWORD(v54) = 0;
LABEL_222:
          *(this + 30) = v54;
          break;
        case 0x21u:
          *(this + 156) |= 0x200uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_197;
        case 0x22u:
          *(this + 156) |= 0x100uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_197;
        case 0x23u:
          *(this + 156) |= 0x800000000uLL;
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

          *(this + 154) = v23;
          break;
        case 0x24u:
          *(this + 156) |= 0x40000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_197;
        case 0x25u:
          *(this + 156) |= 8uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_147:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 8) = *(*a2 + v2);
LABEL_197:
            v2 = *(a2 + 1) + 4;
LABEL_198:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_199:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_228;
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
        goto LABEL_228;
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
      goto LABEL_199;
    }

    v105 = 0;
  }

  return v105 & 1;
}