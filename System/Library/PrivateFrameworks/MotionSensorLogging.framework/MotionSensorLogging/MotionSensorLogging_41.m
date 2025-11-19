uint64_t CMMsl::KeyboardKeyPress::hash_value(CMMsl::KeyboardKeyPress *this)
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

void CMMsl::KeyboardMotionFeatures::~KeyboardMotionFeatures(CMMsl::KeyboardMotionFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(CMMsl::KeyboardMotionFeatures *this, const CMMsl::KeyboardMotionFeatures *a2)
{
  *this = &unk_286C217A0;
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

uint64_t CMMsl::KeyboardMotionFeatures::operator=(uint64_t a1, const CMMsl::KeyboardMotionFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(&v9, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionFeatures *a2, CMMsl::KeyboardMotionFeatures *a3)
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

float CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C217A0;
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
  *a1 = &unk_286C217A0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::KeyboardMotionFeatures::operator=(uint64_t a1, uint64_t a2)
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
    v9[0] = &unk_286C217A0;
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

uint64_t CMMsl::KeyboardMotionFeatures::formatText(CMMsl::KeyboardMotionFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accelFilterX", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelFilterY", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "accelFilterZ", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KeyboardMotionFeatures::readFrom(CMMsl::KeyboardMotionFeatures *this, PB::Reader *a2)
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

uint64_t CMMsl::KeyboardMotionFeatures::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::KeyboardMotionFeatures::hash_value(CMMsl::KeyboardMotionFeatures *this)
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

void CMMsl::KeyboardMotionState::~KeyboardMotionState(CMMsl::KeyboardMotionState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KeyboardMotionState::KeyboardMotionState(uint64_t this, const CMMsl::KeyboardMotionState *a2)
{
  *this = &unk_286C217D8;
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

const CMMsl::KeyboardMotionState *CMMsl::KeyboardMotionState::operator=(const CMMsl::KeyboardMotionState *a1, const CMMsl::KeyboardMotionState *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionState::KeyboardMotionState(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionState *a2, CMMsl::KeyboardMotionState *a3)
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

double CMMsl::KeyboardMotionState::KeyboardMotionState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C217D8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C217D8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardMotionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C217D8;
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

uint64_t CMMsl::KeyboardMotionState::formatText(CMMsl::KeyboardMotionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "state");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KeyboardMotionState::readFrom(CMMsl::KeyboardMotionState *this, PB::Reader *a2)
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

uint64_t CMMsl::KeyboardMotionState::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::KeyboardMotionState::hash_value(CMMsl::KeyboardMotionState *this)
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

void CMMsl::KeyboardMotionTrackpad::~KeyboardMotionTrackpad(CMMsl::KeyboardMotionTrackpad *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(uint64_t this, const CMMsl::KeyboardMotionTrackpad *a2)
{
  *this = &unk_286C21810;
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

uint64_t CMMsl::KeyboardMotionTrackpad::operator=(uint64_t a1, const CMMsl::KeyboardMotionTrackpad *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionTrackpad *a2, CMMsl::KeyboardMotionTrackpad *a3)
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

double CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21810;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C21810;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardMotionTrackpad::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C21810;
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

uint64_t CMMsl::KeyboardMotionTrackpad::formatText(CMMsl::KeyboardMotionTrackpad *this, PB::TextFormatter *a2, const char *a3)
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
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "touchActive");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KeyboardMotionTrackpad::readFrom(CMMsl::KeyboardMotionTrackpad *this, PB::Reader *a2)
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

uint64_t CMMsl::KeyboardMotionTrackpad::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::KeyboardMotionTrackpad::hash_value(CMMsl::KeyboardMotionTrackpad *this)
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

void CMMsl::LSLHeadingEstimation::~LSLHeadingEstimation(CMMsl::LSLHeadingEstimation *this)
{
  *this = &unk_286C21848;
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
  CMMsl::LSLHeadingEstimation::~LSLHeadingEstimation(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::LSLHeadingEstimation *CMMsl::LSLHeadingEstimation::LSLHeadingEstimation(CMMsl::LSLHeadingEstimation *this, const CMMsl::LSLHeadingEstimation *a2)
{
  *this = &unk_286C21848;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  *(this + 23) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  v6 = *(a2 + 96);
  if ((v6 & 0x4000) != 0)
  {
    v8 = *(a2 + 47);
    v7 = 0x4000;
    *(this + 96) = 0x4000;
    *(this + 47) = v8;
    v6 = *(a2 + 96);
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if ((*(a2 + 96) & 0x1000) != 0)
  {
LABEL_5:
    v9 = *(a2 + 22);
    v7 |= 0x1000u;
    *(this + 96) = v7;
    *(this + 22) = v9;
    v6 = *(a2 + 96);
  }

LABEL_6:
  if ((v6 & 0x40) != 0)
  {
    v10 = *(a2 + 16);
    *(this + 96) = v7 | 0x40;
    *(this + 16) = v10;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v11 = *(a2 + 96);
  if ((v11 & 2) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 96) |= 2u;
    *(this + 11) = v14;
    v11 = *(a2 + 96);
    if ((v11 & 0x2000) == 0)
    {
LABEL_12:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 96) & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a2 + 46);
  *(this + 96) |= 0x2000u;
  *(this + 46) = v15;
  v11 = *(a2 + 96);
  if ((v11 & 4) == 0)
  {
LABEL_13:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = *(a2 + 12);
  *(this + 96) |= 4u;
  *(this + 12) = v16;
  v11 = *(a2 + 96);
  if ((v11 & 0x10) == 0)
  {
LABEL_14:
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = *(a2 + 14);
  *(this + 96) |= 0x10u;
  *(this + 14) = v17;
  v11 = *(a2 + 96);
  if ((v11 & 1) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = *(a2 + 10);
  *(this + 96) |= 1u;
  *(this + 10) = v18;
  v11 = *(a2 + 96);
  if ((v11 & 8) == 0)
  {
LABEL_16:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = *(a2 + 13);
  *(this + 96) |= 8u;
  *(this + 13) = v19;
  v11 = *(a2 + 96);
  if ((v11 & 0x20) == 0)
  {
LABEL_17:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = *(a2 + 15);
  *(this + 96) |= 0x20u;
  *(this + 15) = v20;
  v11 = *(a2 + 96);
  if ((v11 & 0x800) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = *(a2 + 21);
  *(this + 96) |= 0x800u;
  *(this + 21) = v21;
  v11 = *(a2 + 96);
  if ((v11 & 0x80) == 0)
  {
LABEL_19:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = *(a2 + 17);
  *(this + 96) |= 0x80u;
  *(this + 17) = v22;
  v11 = *(a2 + 96);
  if ((v11 & 0x100) == 0)
  {
LABEL_20:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_34:
    v24 = *(a2 + 19);
    *(this + 96) |= 0x200u;
    *(this + 19) = v24;
    if ((*(a2 + 96) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_22;
  }

LABEL_33:
  v23 = *(a2 + 18);
  *(this + 96) |= 0x100u;
  *(this + 18) = v23;
  v11 = *(a2 + 96);
  if ((v11 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v11 & 0x400) != 0)
  {
LABEL_22:
    v12 = *(a2 + 20);
    *(this + 96) |= 0x400u;
    *(this + 20) = v12;
  }

  return this;
}

CMMsl *CMMsl::LSLHeadingEstimation::operator=(CMMsl *a1, const CMMsl::LSLHeadingEstimation *a2)
{
  if (a1 != a2)
  {
    CMMsl::LSLHeadingEstimation::LSLHeadingEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::LSLHeadingEstimation::~LSLHeadingEstimation(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::LSLHeadingEstimation *a2, CMMsl::LSLHeadingEstimation *a3)
{
  v3 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  v4 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v15;
  v16 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v16;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v18;
  v19 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v19;
  v20 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v20;
  v21 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v21;
  v22 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v22;
  v23 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v23;
  v24 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v24;
  v25 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v25;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  return result;
}

uint64_t CMMsl::LSLHeadingEstimation::LSLHeadingEstimation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21848;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 72) = 0;
  *(a1 + 184) = 0xFFFFFFFFLL;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 128) = *(a2 + 128);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v5, (a2 + 8));
  sub_25AD28758(v4, (a2 + 56));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

CMMsl *CMMsl::LSLHeadingEstimation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::LSLHeadingEstimation::LSLHeadingEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::LSLHeadingEstimation::~LSLHeadingEstimation(v5);
  }

  return a1;
}

uint64_t CMMsl::LSLHeadingEstimation::formatText(CMMsl::LSLHeadingEstimation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 96);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 10));
    v5 = *(this + 96);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "confidence", *(this + 11));
  v5 = *(this + 96);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = *(this + 46);
  PB::TextFormatter::format(a2, "globalReferenceFrame");
  v5 = *(this + 96);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "latitude", *(this + 12));
  v5 = *(this + 96);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "locationTimestamp", *(this + 13));
  v5 = *(this + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "longitude", *(this + 14));
  v5 = *(this + 96);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "machContinuousLocationTimestamp", *(this + 15));
  v5 = *(this + 96);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 16));
  v5 = *(this + 96);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "polylinesLocation1Latitude", *(this + 17));
  v5 = *(this + 96);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "polylinesLocation1Longitude", *(this + 18));
  v5 = *(this + 96);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "polylinesLocation2Latitude", *(this + 19));
  v5 = *(this + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "polylinesLocation2Longitude", *(this + 20));
  if ((*(this + 96) & 0x800) != 0)
  {
LABEL_14:
    v6 = *(this + 21);
    PB::TextFormatter::format(a2, "roadID");
  }

LABEL_15:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "rotationFromGlobalToCameraFrame", v9);
  }

  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "rotationFromGlobalToDeviceFrame", v12);
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "rotationalAccuracyInRadians", v15);
  }

  v16 = *(this + 96);
  if ((v16 & 0x4000) != 0)
  {
    v17 = *(this + 47);
    PB::TextFormatter::format(a2, "status");
    v16 = *(this + 96);
  }

  if ((v16 & 0x1000) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 22));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LSLHeadingEstimation::readFrom(CMMsl::LSLHeadingEstimation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_224;
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
          *(this + 96) |= 0x4000u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_202;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_155:
            LODWORD(v28) = 0;
            goto LABEL_202;
          }

          v119 = 0;
          v120 = 0;
          v28 = 0;
          v121 = (v25 + v24);
          v18 = v23 >= v24;
          v122 = v23 - v24;
          if (!v18)
          {
            v122 = 0;
          }

          v123 = v24 + 1;
          while (2)
          {
            if (v122)
            {
              v124 = *v121;
              *(a2 + 1) = v123;
              v28 |= (v124 & 0x7F) << v119;
              if (v124 < 0)
              {
                v119 += 7;
                ++v121;
                --v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  goto LABEL_155;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_202:
          *(this + 47) = v28;
          goto LABEL_220;
        case 2u:
          *(this + 96) |= 0x1000u;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 22) = *(*a2 + v80);
          goto LABEL_219;
        case 3u:
          *(this + 96) |= 0x40u;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 16) = *(*a2 + v53);
          goto LABEL_219;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_226;
            }

            v55 = *(a2 + 1);
            v56 = *(a2 + 2);
            while (v55 < v56 && (*(a2 + 24) & 1) == 0)
            {
              v58 = *(this + 5);
              v57 = *(this + 6);
              if (v58 >= v57)
              {
                v60 = *(this + 4);
                v61 = v58 - v60;
                v62 = (v58 - v60) >> 3;
                v63 = v62 + 1;
                if ((v62 + 1) >> 61)
                {
                  goto LABEL_228;
                }

                v64 = v57 - v60;
                if (v64 >> 2 > v63)
                {
                  v63 = v64 >> 2;
                }

                if (v64 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v63;
                }

                if (v65)
                {
                  sub_25AD28710(v65);
                }

                v66 = (v58 - v60) >> 3;
                v67 = (8 * v62);
                v68 = (8 * v62 - 8 * v66);
                *v67 = 0;
                v59 = v67 + 1;
                memcpy(v68, v60, v61);
                v69 = *(this + 4);
                *(this + 4) = v68;
                *(this + 5) = v59;
                *(this + 6) = 0;
                if (v69)
                {
                  operator delete(v69);
                }
              }

              else
              {
                *v58 = 0;
                v59 = v58 + 8;
              }

              *(this + 5) = v59;
              v70 = *(a2 + 1);
              if (v70 > 0xFFFFFFFFFFFFFFF7 || v70 + 8 > *(a2 + 2))
              {
                goto LABEL_168;
              }

              *(v59 - 1) = *(*a2 + v70);
              v56 = *(a2 + 2);
              v55 = *(a2 + 1) + 8;
              *(a2 + 1) = v55;
            }

            goto LABEL_169;
          }

          v126 = *(this + 5);
          v125 = *(this + 6);
          if (v126 < v125)
          {
            *v126 = 0;
            v112 = v126 + 8;
LABEL_211:
            *(this + 5) = v112;
            goto LABEL_215;
          }

          v141 = *(this + 4);
          v142 = v126 - v141;
          v143 = (v126 - v141) >> 3;
          v144 = v143 + 1;
          if (!((v143 + 1) >> 61))
          {
            v145 = v125 - v141;
            if (v145 >> 2 > v144)
            {
              v144 = v145 >> 2;
            }

            if (v145 >= 0x7FFFFFFFFFFFFFF8)
            {
              v146 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v146 = v144;
            }

            if (v146)
            {
              sub_25AD28710(v146);
            }

            v157 = (v126 - v141) >> 3;
            v158 = (8 * v143);
            v159 = (8 * v143 - 8 * v157);
            *v158 = 0;
            v112 = v158 + 1;
            memcpy(v159, v141, v142);
            v160 = *(this + 4);
            *(this + 4) = v159;
            *(this + 5) = v112;
            *(this + 6) = 0;
            if (v160)
            {
              operator delete(v160);
            }

            goto LABEL_211;
          }

          goto LABEL_228;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_226;
            }

            v35 = *(a2 + 1);
            v36 = *(a2 + 2);
            while (v35 < v36 && (*(a2 + 24) & 1) == 0)
            {
              v38 = *(this + 2);
              v37 = *(this + 3);
              if (v38 >= v37)
              {
                v40 = *(this + 1);
                v41 = v38 - v40;
                v42 = (v38 - v40) >> 3;
                v43 = v42 + 1;
                if ((v42 + 1) >> 61)
                {
                  goto LABEL_228;
                }

                v44 = v37 - v40;
                if (v44 >> 2 > v43)
                {
                  v43 = v44 >> 2;
                }

                if (v44 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v45 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v45 = v43;
                }

                if (v45)
                {
                  sub_25AD28710(v45);
                }

                v46 = (v38 - v40) >> 3;
                v47 = (8 * v42);
                v48 = (8 * v42 - 8 * v46);
                *v47 = 0;
                v39 = v47 + 1;
                memcpy(v48, v40, v41);
                v49 = *(this + 1);
                *(this + 1) = v48;
                *(this + 2) = v39;
                *(this + 3) = 0;
                if (v49)
                {
                  operator delete(v49);
                }
              }

              else
              {
                *v38 = 0;
                v39 = v38 + 8;
              }

              *(this + 2) = v39;
              v50 = *(a2 + 1);
              if (v50 > 0xFFFFFFFFFFFFFFF7 || v50 + 8 > *(a2 + 2))
              {
                goto LABEL_168;
              }

              *(v39 - 1) = *(*a2 + v50);
              v36 = *(a2 + 2);
              v35 = *(a2 + 1) + 8;
              *(a2 + 1) = v35;
            }

LABEL_169:
            PB::Reader::recallMark();
            goto LABEL_220;
          }

          v111 = *(this + 2);
          v110 = *(this + 3);
          if (v111 < v110)
          {
            *v111 = 0;
            v112 = v111 + 8;
LABEL_208:
            *(this + 2) = v112;
LABEL_215:
            v165 = *(a2 + 1);
            if (v165 <= 0xFFFFFFFFFFFFFFF7 && v165 + 8 <= *(a2 + 2))
            {
              *(v112 - 1) = *(*a2 + v165);
LABEL_219:
              *(a2 + 1) += 8;
            }

            else
            {
LABEL_217:
              *(a2 + 24) = 1;
            }

            goto LABEL_220;
          }

          v135 = *(this + 1);
          v136 = v111 - v135;
          v137 = (v111 - v135) >> 3;
          v138 = v137 + 1;
          if (!((v137 + 1) >> 61))
          {
            v139 = v110 - v135;
            if (v139 >> 2 > v138)
            {
              v138 = v139 >> 2;
            }

            if (v139 >= 0x7FFFFFFFFFFFFFF8)
            {
              v140 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v140 = v138;
            }

            if (v140)
            {
              sub_25AD28710(v140);
            }

            v153 = (v111 - v135) >> 3;
            v154 = (8 * v137);
            v155 = (8 * v137 - 8 * v153);
            *v154 = 0;
            v112 = v154 + 1;
            memcpy(v155, v135, v136);
            v156 = *(this + 1);
            *(this + 1) = v155;
            *(this + 2) = v112;
            *(this + 3) = 0;
            if (v156)
            {
              operator delete(v156);
            }

            goto LABEL_208;
          }

          goto LABEL_228;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_226;
            }

            v82 = *(a2 + 1);
            v83 = *(a2 + 2);
            while (v82 < v83 && (*(a2 + 24) & 1) == 0)
            {
              v85 = *(this + 8);
              v84 = *(this + 9);
              if (v85 >= v84)
              {
                v87 = *(this + 7);
                v88 = v85 - v87;
                v89 = (v85 - v87) >> 3;
                v90 = v89 + 1;
                if ((v89 + 1) >> 61)
                {
                  goto LABEL_228;
                }

                v91 = v84 - v87;
                if (v91 >> 2 > v90)
                {
                  v90 = v91 >> 2;
                }

                if (v91 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v92 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v92 = v90;
                }

                if (v92)
                {
                  sub_25AD28710(v92);
                }

                v93 = (v85 - v87) >> 3;
                v94 = (8 * v89);
                v95 = (8 * v89 - 8 * v93);
                *v94 = 0;
                v86 = v94 + 1;
                memcpy(v95, v87, v88);
                v96 = *(this + 7);
                *(this + 7) = v95;
                *(this + 8) = v86;
                *(this + 9) = 0;
                if (v96)
                {
                  operator delete(v96);
                }
              }

              else
              {
                *v85 = 0;
                v86 = v85 + 8;
              }

              *(this + 8) = v86;
              v97 = *(a2 + 1);
              if (v97 > 0xFFFFFFFFFFFFFFF7 || v97 + 8 > *(a2 + 2))
              {
LABEL_168:
                *(a2 + 24) = 1;
                goto LABEL_169;
              }

              *(v86 - 1) = *(*a2 + v97);
              v83 = *(a2 + 2);
              v82 = *(a2 + 1) + 8;
              *(a2 + 1) = v82;
            }

            goto LABEL_169;
          }

          v134 = *(this + 8);
          v133 = *(this + 9);
          if (v134 >= v133)
          {
            v147 = *(this + 7);
            v148 = v134 - v147;
            v149 = (v134 - v147) >> 3;
            v150 = v149 + 1;
            if ((v149 + 1) >> 61)
            {
LABEL_228:
              sub_25AAE66B8();
            }

            v151 = v133 - v147;
            if (v151 >> 2 > v150)
            {
              v150 = v151 >> 2;
            }

            if (v151 >= 0x7FFFFFFFFFFFFFF8)
            {
              v152 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v152 = v150;
            }

            if (v152)
            {
              sub_25AD28710(v152);
            }

            v161 = (v134 - v147) >> 3;
            v162 = (8 * v149);
            v163 = (8 * v149 - 8 * v161);
            *v162 = 0;
            v112 = v162 + 1;
            memcpy(v163, v147, v148);
            v164 = *(this + 7);
            *(this + 7) = v163;
            *(this + 8) = v112;
            *(this + 9) = 0;
            if (v164)
            {
              operator delete(v164);
            }
          }

          else
          {
            *v134 = 0;
            v112 = v134 + 8;
          }

          *(this + 8) = v112;
          goto LABEL_215;
        case 7u:
          *(this + 96) |= 2u;
          v107 = *(a2 + 1);
          if (v107 > 0xFFFFFFFFFFFFFFF7 || v107 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 11) = *(*a2 + v107);
          goto LABEL_219;
        case 8u:
          *(this + 96) |= 0x2000u;
          v72 = *(a2 + 1);
          v71 = *(a2 + 2);
          v73 = *a2;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(a2 + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_199;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_147:
            LODWORD(v76) = 0;
            goto LABEL_199;
          }

          v113 = 0;
          v114 = 0;
          v76 = 0;
          v115 = (v73 + v72);
          v18 = v71 >= v72;
          v116 = v71 - v72;
          if (!v18)
          {
            v116 = 0;
          }

          v117 = v72 + 1;
          while (2)
          {
            if (v116)
            {
              v118 = *v115;
              *(a2 + 1) = v117;
              v76 |= (v118 & 0x7F) << v113;
              if (v118 < 0)
              {
                v113 += 7;
                ++v115;
                --v116;
                ++v117;
                v14 = v114++ > 8;
                if (v14)
                {
                  goto LABEL_147;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v76) = 0;
              }
            }

            else
            {
              LODWORD(v76) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_199:
          *(this + 46) = v76;
          goto LABEL_220;
        case 9u:
          *(this + 96) |= 4u;
          v109 = *(a2 + 1);
          if (v109 > 0xFFFFFFFFFFFFFFF7 || v109 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 12) = *(*a2 + v109);
          goto LABEL_219;
        case 0xAu:
          *(this + 96) |= 0x10u;
          v52 = *(a2 + 1);
          if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 14) = *(*a2 + v52);
          goto LABEL_219;
        case 0xBu:
          *(this + 96) |= 1u;
          v108 = *(a2 + 1);
          if (v108 > 0xFFFFFFFFFFFFFFF7 || v108 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 10) = *(*a2 + v108);
          goto LABEL_219;
        case 0xCu:
          *(this + 96) |= 8u;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 13) = *(*a2 + v34);
          goto LABEL_219;
        case 0xDu:
          *(this + 96) |= 0x20u;
          v51 = *(a2 + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 15) = *(*a2 + v51);
          goto LABEL_219;
        case 0xEu:
          *(this + 96) |= 0x800u;
          v99 = *(a2 + 1);
          v98 = *(a2 + 2);
          v100 = *a2;
          if (v99 <= 0xFFFFFFFFFFFFFFF5 && v99 + 10 <= v98)
          {
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v104 = (v100 + v99);
            v105 = v99 + 1;
            do
            {
              *(a2 + 1) = v105;
              v106 = *v104++;
              v103 |= (v106 & 0x7F) << v101;
              if ((v106 & 0x80) == 0)
              {
                goto LABEL_205;
              }

              v101 += 7;
              ++v105;
              v14 = v102++ > 8;
            }

            while (!v14);
LABEL_165:
            v103 = 0;
            goto LABEL_205;
          }

          v127 = 0;
          v128 = 0;
          v103 = 0;
          v129 = (v100 + v99);
          v18 = v98 >= v99;
          v130 = v98 - v99;
          if (!v18)
          {
            v130 = 0;
          }

          v131 = v99 + 1;
          while (2)
          {
            if (v130)
            {
              v132 = *v129;
              *(a2 + 1) = v131;
              v103 |= (v132 & 0x7F) << v127;
              if (v132 < 0)
              {
                v127 += 7;
                ++v129;
                --v130;
                ++v131;
                v14 = v128++ > 8;
                if (v14)
                {
                  goto LABEL_165;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v103 = 0;
              }
            }

            else
            {
              v103 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_205:
          *(this + 21) = v103;
          goto LABEL_220;
        case 0xFu:
          *(this + 96) |= 0x80u;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 17) = *(*a2 + v33);
          goto LABEL_219;
        case 0x10u:
          *(this + 96) |= 0x100u;
          v54 = *(a2 + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 18) = *(*a2 + v54);
          goto LABEL_219;
        case 0x11u:
          *(this + 96) |= 0x200u;
          v32 = *(a2 + 1);
          if (v32 > 0xFFFFFFFFFFFFFFF7 || v32 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 19) = *(*a2 + v32);
          goto LABEL_219;
        case 0x12u:
          *(this + 96) |= 0x400u;
          v81 = *(a2 + 1);
          if (v81 > 0xFFFFFFFFFFFFFFF7 || v81 + 8 > *(a2 + 2))
          {
            goto LABEL_217;
          }

          *(this + 20) = *(*a2 + v81);
          goto LABEL_219;
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
        goto LABEL_224;
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
LABEL_226:
      v166 = 0;
      return v166 & 1;
    }

LABEL_220:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_224:
  v166 = v4 ^ 1;
  return v166 & 1;
}

uint64_t CMMsl::LSLHeadingEstimation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 192);
  if ((v4 & 0x4000) == 0)
  {
    if ((*(this + 192) & 0x1000) == 0)
    {
      goto LABEL_3;
    }

LABEL_28:
    this = PB::Writer::write(a2, *(v3 + 176));
    if ((*(v3 + 192) & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(this + 188);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  if ((v4 & 0x40) != 0)
  {
LABEL_4:
    this = PB::Writer::write(a2, *(v3 + 128));
  }

LABEL_5:
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

  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13);
  }

  v14 = *(v3 + 192);
  if ((v14 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 88));
    v14 = *(v3 + 192);
    if ((v14 & 0x2000) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((*(v3 + 192) & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(v3 + 184);
  this = PB::Writer::writeVarInt(a2);
  v14 = *(v3 + 192);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 96));
  v14 = *(v3 + 192);
  if ((v14 & 0x10) == 0)
  {
LABEL_18:
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 112));
  v14 = *(v3 + 192);
  if ((v14 & 1) == 0)
  {
LABEL_19:
    if ((v14 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 80));
  v14 = *(v3 + 192);
  if ((v14 & 8) == 0)
  {
LABEL_20:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 104));
  v14 = *(v3 + 192);
  if ((v14 & 0x20) == 0)
  {
LABEL_21:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 120));
  v14 = *(v3 + 192);
  if ((v14 & 0x800) == 0)
  {
LABEL_22:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = *(v3 + 168);
  this = PB::Writer::writeVarInt(a2);
  v14 = *(v3 + 192);
  if ((v14 & 0x80) == 0)
  {
LABEL_23:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 136));
  v14 = *(v3 + 192);
  if ((v14 & 0x100) == 0)
  {
LABEL_24:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_25;
    }

LABEL_40:
    this = PB::Writer::write(a2, *(v3 + 152));
    if ((*(v3 + 192) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 144));
  v14 = *(v3 + 192);
  if ((v14 & 0x200) != 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  if ((v14 & 0x400) == 0)
  {
    return this;
  }

LABEL_41:
  v18 = *(v3 + 160);

  return PB::Writer::write(a2, v18);
}

uint64_t CMMsl::LSLHeadingEstimation::hash_value(CMMsl::LSLHeadingEstimation *this)
{
  v2 = *(this + 96);
  if ((v2 & 0x4000) != 0)
  {
    v3 = *(this + 47);
    if ((*(this + 96) & 0x1000) != 0)
    {
LABEL_3:
      if (*(this + 22) == 0.0)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(this + 22);
      }

      if ((v2 & 0x40) != 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 96) & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(this + 16) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 16);
  }

LABEL_13:
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = PBHashBytes();
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = PBHashBytes();
  v12 = *(this + 7);
  v13 = *(this + 8);
  v14 = PBHashBytes();
  v15 = *(this + 96);
  if ((v15 & 2) != 0)
  {
    v16 = *(this + 11);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((*(this + 96) & 0x2000) != 0)
    {
LABEL_15:
      v17 = *(this + 46);
      if ((v15 & 4) != 0)
      {
        goto LABEL_16;
      }

LABEL_48:
      v18 = 0.0;
      if ((v15 & 0x10) != 0)
      {
        goto LABEL_19;
      }

LABEL_49:
      v19 = 0.0;
      if (v15)
      {
        goto LABEL_22;
      }

LABEL_50:
      v20 = 0.0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_25;
      }

LABEL_51:
      v21 = 0.0;
      if ((v15 & 0x20) != 0)
      {
        goto LABEL_28;
      }

LABEL_52:
      v22 = 0.0;
      if ((*(this + 96) & 0x800) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v16 = 0.0;
    if ((*(this + 96) & 0x2000) != 0)
    {
      goto LABEL_15;
    }
  }

  v17 = 0;
  if ((v15 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  v18 = *(this + 12);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v15 & 0x10) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v19 = *(this + 14);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_22:
  v20 = *(this + 10);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v15 & 8) == 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  v21 = *(this + 13);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v15 & 0x20) == 0)
  {
    goto LABEL_52;
  }

LABEL_28:
  v22 = *(this + 15);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((*(this + 96) & 0x800) != 0)
  {
LABEL_31:
    v23 = *(this + 21);
    if ((v15 & 0x80) != 0)
    {
      goto LABEL_32;
    }

LABEL_54:
    v24 = 0.0;
    if ((*(this + 96) & 0x100) != 0)
    {
      goto LABEL_35;
    }

LABEL_55:
    v25 = 0.0;
    if ((*(this + 96) & 0x200) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_53:
  v23 = 0;
  if ((v15 & 0x80) == 0)
  {
    goto LABEL_54;
  }

LABEL_32:
  v24 = *(this + 17);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((*(this + 96) & 0x100) == 0)
  {
    goto LABEL_55;
  }

LABEL_35:
  v25 = *(this + 18);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((*(this + 96) & 0x200) != 0)
  {
LABEL_38:
    v26 = *(this + 19);
    if (v26 == 0.0)
    {
      v26 = 0.0;
    }

    if ((*(this + 96) & 0x400) != 0)
    {
      goto LABEL_41;
    }

LABEL_57:
    v27 = 0.0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v11 ^ v14 ^ *&v16 ^ v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27;
  }

LABEL_56:
  v26 = 0.0;
  if ((*(this + 96) & 0x400) == 0)
  {
    goto LABEL_57;
  }

LABEL_41:
  v27 = *(this + 20);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v11 ^ v14 ^ *&v16 ^ v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27;
}

void CMMsl::LegacyALS5CHInput::~LegacyALS5CHInput(CMMsl::LegacyALS5CHInput *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::LegacyALS5CHInput::LegacyALS5CHInput(CMMsl::LegacyALS5CHInput *this, const CMMsl::LegacyALS5CHInput *a2)
{
  *this = &unk_286C21880;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 4) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 5) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 6) = v7;
  v2 = *(a2 + 40);
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
  v8 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 7) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 40) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 9);
  *(this + 40) = v3 | 0x40;
  *(this + 9) = v4;
  return *&v4;
}

uint64_t CMMsl::LegacyALS5CHInput::operator=(uint64_t a1, const CMMsl::LegacyALS5CHInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::LegacyALS5CHInput::LegacyALS5CHInput(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    LODWORD(v4) = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::LegacyALS5CHInput *a2, CMMsl::LegacyALS5CHInput *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::LegacyALS5CHInput::LegacyALS5CHInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21880;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

{
  *a1 = &unk_286C21880;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

uint64_t CMMsl::LegacyALS5CHInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = &unk_286C21880;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 36);
    v16 = *(a1 + 40);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 16) = v9;
    v13 = v8;
    v10 = *(a1 + 32);
    *(a1 + 32) = v5;
    v14 = v10;
    LODWORD(v8) = *(a1 + 36);
    *(a1 + 36) = v6;
    v15 = v8;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::LegacyALS5CHInput::formatText(CMMsl::LegacyALS5CHInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "ch0");
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 5);
  PB::TextFormatter::format(a2, "ch1");
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(this + 6);
  PB::TextFormatter::format(a2, "ch2");
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(this + 7);
  PB::TextFormatter::format(a2, "ch3");
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(this + 8);
  PB::TextFormatter::format(a2, "ch4");
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "lux", *(this + 9));
  if (*(this + 40))
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LegacyALS5CHInput::readFrom(CMMsl::LegacyALS5CHInput *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_51:
            *(a2 + 24) = 1;
            goto LABEL_19;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_114;
        case 2:
          *(this + 40) |= 2u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v2 = *(a2 + 1);
            }

            v93 = (v56 + v55);
            v94 = v2 - v55;
            v95 = v55 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v59) = 0;
                *(a2 + 24) = 1;
                goto LABEL_139;
              }

              v96 = v95;
              v97 = *v93;
              *(a2 + 1) = v96;
              v59 |= (v97 & 0x7F) << v91;
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
                LODWORD(v59) = 0;
                goto LABEL_138;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v59) = 0;
            }

LABEL_138:
            v2 = v96;
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v56 + v55);
            v61 = v55 + 1;
            while (1)
            {
              v2 = v61;
              *(a2 + 1) = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v61;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                break;
              }
            }
          }

LABEL_139:
          *(this + 4) = v59;
          goto LABEL_19;
        case 3:
          *(this + 40) |= 4u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v86 = (v32 + v31);
            v87 = v2 - v31;
            v88 = v31 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_135;
              }

              v89 = v88;
              v90 = *v86;
              *(a2 + 1) = v89;
              v35 |= (v90 & 0x7F) << v84;
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
                LODWORD(v35) = 0;
                goto LABEL_134;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_134:
            v2 = v89;
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

LABEL_135:
          *(this + 5) = v35;
          goto LABEL_19;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 0x20u;
        v47 = *(a2 + 1);
        v2 = *(a2 + 2);
        v48 = *a2;
        if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
        {
          v70 = 0;
          v71 = 0;
          v51 = 0;
          if (v2 <= v47)
          {
            v2 = *(a2 + 1);
          }

          v72 = (v48 + v47);
          v73 = v2 - v47;
          v74 = v47 + 1;
          while (1)
          {
            if (!v73)
            {
              LODWORD(v51) = 0;
              *(a2 + 24) = 1;
              goto LABEL_127;
            }

            v75 = v74;
            v76 = *v72;
            *(a2 + 1) = v75;
            v51 |= (v76 & 0x7F) << v70;
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
              LODWORD(v51) = 0;
              goto LABEL_126;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v51) = 0;
          }

LABEL_126:
          v2 = v75;
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
              LODWORD(v51) = 0;
              break;
            }
          }
        }

LABEL_127:
        *(this + 8) = v51;
        goto LABEL_19;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_51;
        }

        *(this + 9) = *(*a2 + v2);
        v2 = *(a2 + 1) + 4;
LABEL_114:
        *(a2 + 1) = v2;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v63 = 0;
          v64 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v2 = *(a2 + 1);
          }

          v65 = (v40 + v39);
          v66 = v2 - v39;
          v67 = v39 + 1;
          while (1)
          {
            if (!v66)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_123;
            }

            v68 = v67;
            v69 = *v65;
            *(a2 + 1) = v68;
            v43 |= (v69 & 0x7F) << v63;
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
              LODWORD(v43) = 0;
              goto LABEL_122;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_122:
          v2 = v68;
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

LABEL_123:
        *(this + 6) = v43;
        goto LABEL_19;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 0x10u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v77 = 0;
          v78 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v79 = (v24 + v23);
          v80 = v2 - v23;
          v81 = v23 + 1;
          while (1)
          {
            if (!v80)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_131;
            }

            v82 = v81;
            v83 = *v79;
            *(a2 + 1) = v82;
            v27 |= (v83 & 0x7F) << v77;
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
              LODWORD(v27) = 0;
              goto LABEL_130;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_130:
          v2 = v82;
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

LABEL_131:
        *(this + 7) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v98 = 0;
      return v98 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t CMMsl::LegacyALS5CHInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v10 = *(v3 + 36);

  return PB::Writer::write(a2, v10);
}

uint64_t CMMsl::LegacyALS5CHInput::hash_value(CMMsl::LegacyALS5CHInput *this)
{
  if (*(this + 40))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 40) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      if ((*(this + 40) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 40) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 5);
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v3 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 6);
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = 0;
  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_6:
    v5 = *(this + 7);
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 8);
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v8 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v8;
  }

LABEL_18:
  v6 = 0;
  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v7 = *(this + 9);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v8;
}

void CMMsl::LiftToWakeFeaturesNeo::~LiftToWakeFeaturesNeo(CMMsl::LiftToWakeFeaturesNeo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::LiftToWakeFeaturesNeo::LiftToWakeFeaturesNeo(CMMsl::LiftToWakeFeaturesNeo *this, const CMMsl::LiftToWakeFeaturesNeo *a2)
{
  *this = &unk_286C218B8;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
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
    LODWORD(v4) = *(a2 + 8);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return *&v4;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 3);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 3) = v4;
  if ((*(a2 + 40) & 0x10) == 0)
  {
    return *&v4;
  }

LABEL_12:
  LODWORD(v4) = *(a2 + 9);
  *(this + 40) = v3 | 0x10;
  *(this + 9) = v4;
  return *&v4;
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::operator=(uint64_t a1, const CMMsl::LiftToWakeFeaturesNeo *a2)
{
  if (a1 != a2)
  {
    CMMsl::LiftToWakeFeaturesNeo::LiftToWakeFeaturesNeo(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    *&v3 = v11;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *(a1 + 24) = v10;
    *(a1 + 32) = v3;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v10 = v4;
    v11 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::LiftToWakeFeaturesNeo *a2, CMMsl::LiftToWakeFeaturesNeo *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::LiftToWakeFeaturesNeo::LiftToWakeFeaturesNeo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C218B8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

{
  *a1 = &unk_286C218B8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C218B8;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v13 = *(a1 + 40);
    v4 = *(a1 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 8) = *(a2 + 8);
    v10 = v4;
    *&v4 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 40) = v3;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    v11 = v4;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::formatText(CMMsl::LiftToWakeFeaturesNeo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "gravityBufferDeltaToCurrentMax", *(this + 8));
    v5 = *(this + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gravityFilterDeltaToHeadUp", *(this + 9));
  v5 = *(this + 40);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 40);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "timestampGravityBufferFront", *(this + 2));
  if ((*(this + 40) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestampTimerRef", *(this + 3));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::readFrom(CMMsl::LiftToWakeFeaturesNeo *this, PB::Reader *a2)
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
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_41:
          *(a2 + 24) = 1;
          goto LABEL_45;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_43;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_41;
        }

        *(this + 8) = *(*a2 + v2);
LABEL_32:
        v2 = *(a2 + 1) + 4;
LABEL_44:
        *(a2 + 1) = v2;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_43;
        case 4:
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_43:
          v2 = *(a2 + 1) + 8;
          goto LABEL_44;
        case 5:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_41;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_32;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_45:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 36);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::hash_value(CMMsl::LiftToWakeFeaturesNeo *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v3 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    v4 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 8);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 40) & 4) != 0)
  {
LABEL_9:
    v5 = *(this + 3);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v7 = 0;
    return v3 ^ *&v1 ^ *&v4 ^ *&v5 ^ v7;
  }

LABEL_20:
  v5 = 0.0;
  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v6 = *(this + 9);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ *&v4 ^ *&v5 ^ v7;
}

void CMMsl::LiftToWakeOnHeadStatus::~LiftToWakeOnHeadStatus(CMMsl::LiftToWakeOnHeadStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::LiftToWakeOnHeadStatus::LiftToWakeOnHeadStatus(CMMsl::LiftToWakeOnHeadStatus *this, const CMMsl::LiftToWakeOnHeadStatus *a2)
{
  *this = &unk_286C218F0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 6) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 28) = v3 | 2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::operator=(uint64_t a1, const CMMsl::LiftToWakeOnHeadStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::LiftToWakeOnHeadStatus::LiftToWakeOnHeadStatus(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::LiftToWakeOnHeadStatus *a2, CMMsl::LiftToWakeOnHeadStatus *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::LiftToWakeOnHeadStatus::LiftToWakeOnHeadStatus(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C218F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C218F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C218F0;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v9 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::formatText(CMMsl::LiftToWakeOnHeadStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "status");
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestampArrival", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::readFrom(CMMsl::LiftToWakeOnHeadStatus *this, PB::Reader *a2)
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
        goto LABEL_55;
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
        goto LABEL_55;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
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
              goto LABEL_50;
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
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_49:
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

LABEL_50:
        *(this + 6) = v27;
        goto LABEL_51;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_35;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_45:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_51;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_51:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_55;
      }
    }

    *(this + 28) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_35:
      *(a2 + 24) = 1;
      goto LABEL_51;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_45;
  }

LABEL_55:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 28) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 28);
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
  v6 = *(v3 + 16);

  return PB::Writer::write(a2, v6);
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::hash_value(CMMsl::LiftToWakeOnHeadStatus *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = 0.0;
      return v2 ^ *&v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return v2 ^ *&v1 ^ *&v3;
}

void CMMsl::LiftToWakeState::~LiftToWakeState(CMMsl::LiftToWakeState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::LiftToWakeState::LiftToWakeState(CMMsl::LiftToWakeState *this, const CMMsl::LiftToWakeState *a2)
{
  *this = &unk_286C21928;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 6) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 28) = v3 | 2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::LiftToWakeState::operator=(uint64_t a1, const CMMsl::LiftToWakeState *a2)
{
  if (a1 != a2)
  {
    CMMsl::LiftToWakeState::LiftToWakeState(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::LiftToWakeState *a2, CMMsl::LiftToWakeState *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::LiftToWakeState::LiftToWakeState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21928;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C21928;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::LiftToWakeState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C21928;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v9 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::LiftToWakeState::formatText(CMMsl::LiftToWakeState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "state");
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestampGestureBegin", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LiftToWakeState::readFrom(CMMsl::LiftToWakeState *this, PB::Reader *a2)
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
        goto LABEL_55;
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
        goto LABEL_55;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
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
              goto LABEL_50;
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
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_49:
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

LABEL_50:
        *(this + 6) = v27;
        goto LABEL_51;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_35;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_45:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_51;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_51:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_55;
      }
    }

    *(this + 28) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_35:
      *(a2 + 24) = 1;
      goto LABEL_51;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_45;
  }

LABEL_55:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::LiftToWakeState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 28) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 28);
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
  v6 = *(v3 + 16);

  return PB::Writer::write(a2, v6);
}

uint64_t CMMsl::LiftToWakeState::hash_value(CMMsl::LiftToWakeState *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = 0.0;
      return v2 ^ *&v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return v2 ^ *&v1 ^ *&v3;
}

void CMMsl::LiftToWakeStatusNeo::~LiftToWakeStatusNeo(CMMsl::LiftToWakeStatusNeo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::LiftToWakeStatusNeo::LiftToWakeStatusNeo(uint64_t this, const CMMsl::LiftToWakeStatusNeo *a2)
{
  *this = &unk_286C21960;
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
    v5 = *(a2 + 60);
    v3 |= 0x800u;
    *(this + 64) = v3;
    *(this + 60) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 14);
    v3 |= 0x400u;
    *(this + 64) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 61);
  v3 |= 0x1000u;
  *(this + 64) = v3;
  *(this + 61) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 40) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 44) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 7);
  v3 |= 8u;
  *(this + 64) = v3;
  *(this + 28) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 32) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 36) = v14;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      return this;
    }

LABEL_28:
    v16 = *(a2 + 13);
    *(this + 64) = v3 | 0x200;
    *(this + 52) = v16;
    return this;
  }

LABEL_27:
  v15 = *(a2 + 6);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v15;
  if ((*(a2 + 32) & 0x200) != 0)
  {
    goto LABEL_28;
  }

  return this;
}

CMMsl *CMMsl::LiftToWakeStatusNeo::operator=(CMMsl *a1, const CMMsl::LiftToWakeStatusNeo *a2)
{
  if (a1 != a2)
  {
    CMMsl::LiftToWakeStatusNeo::LiftToWakeStatusNeo(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::LiftToWakeStatusNeo *a2, CMMsl::LiftToWakeStatusNeo *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v3) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v3;
  v5 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v5) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v5;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LODWORD(v6) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  LODWORD(v6) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  return result;
}

float CMMsl::LiftToWakeStatusNeo::LiftToWakeStatusNeo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21960;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 52);
  return result;
}

CMMsl *CMMsl::LiftToWakeStatusNeo::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::LiftToWakeStatusNeo::LiftToWakeStatusNeo(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::LiftToWakeStatusNeo::formatText(CMMsl::LiftToWakeStatusNeo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "classificationType");
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "intervalSleepBeginToSleepDetected", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "intervalSleepDetectedToGazeDetected", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "intervalSleepDetectedToWakeDetected", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "intervalWakeBeginToWakeDetected", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "intervalWakeDetectedToGazeDetected", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "intervalWakeDetectedToSleepDetected", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(this + 60);
  PB::TextFormatter::format(a2, "shouldNotify");
  v5 = *(this + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(this + 61);
  PB::TextFormatter::format(a2, "shouldNotifyStats");
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(this + 13);
  PB::TextFormatter::format(a2, "sleepType");
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(this + 14);
  PB::TextFormatter::format(a2, "state");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "timestampGestureBegin", *(this + 2));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LiftToWakeStatusNeo::readFrom(CMMsl::LiftToWakeStatusNeo *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_121:
    v71 = v4 ^ 1;
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
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_53;
        case 2u:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v49 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v48 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v49 = v48 != 0;
          }

          *(this + 60) = v49;
          break;
        case 3u:
          *(this + 32) |= 0x400u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v66 = (v41 + v40);
            v67 = v2 - v40;
            v68 = v40 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_116;
              }

              v69 = v68;
              v70 = *v66;
              *(a2 + 1) = v69;
              v44 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              ++v66;
              --v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_115:
                v2 = v69;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_115;
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
              goto LABEL_116;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_116:
          *(this + 14) = v44;
          break;
        case 4u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_53:
          v2 = *(a2 + 1) + 8;
          goto LABEL_101;
        case 5u:
          *(this + 32) |= 0x1000u;
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

          *(this + 61) = v31;
          break;
        case 6u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_100;
        case 7u:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_100;
        case 8u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_100;
        case 9u:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_100;
        case 0xAu:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_100;
        case 0xBu:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_70:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 9) = *(*a2 + v2);
LABEL_100:
            v2 = *(a2 + 1) + 4;
LABEL_101:
            *(a2 + 1) = v2;
          }

          break;
        case 0xCu:
          *(this + 32) |= 4u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v50 = 0;
            v51 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v52 = (v23 + v22);
            v53 = v2 - v22;
            v54 = v22 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v55 = v54;
              v56 = *v52;
              *(a2 + 1) = v55;
              v26 |= (v56 & 0x7F) << v50;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              ++v52;
              --v53;
              v54 = v55 + 1;
              v14 = v51++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_107:
                v2 = v55;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_107;
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
              goto LABEL_108;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_108:
          *(this + 6) = v26;
          break;
        case 0xDu:
          *(this + 32) |= 0x200u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v59 = (v33 + v32);
            v60 = v2 - v32;
            v61 = v32 + 1;
            while (1)
            {
              if (!v60)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v62 = v61;
              v63 = *v59;
              *(a2 + 1) = v62;
              v36 |= (v63 & 0x7F) << v57;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v59;
              --v60;
              v61 = v62 + 1;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_111:
                v2 = v62;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_111;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_112:
          *(this + 13) = v36;
          break;
        default:
          goto LABEL_17;
      }

LABEL_117:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_121;
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
        goto LABEL_121;
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
      goto LABEL_117;
    }

    v71 = 0;
  }

  return v71 & 1;
}

uint64_t CMMsl::LiftToWakeStatusNeo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 64);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 64) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 60);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(v3 + 61);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v8 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 64) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_27:
  v9 = *(v3 + 52);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::LiftToWakeStatusNeo::hash_value(CMMsl::LiftToWakeStatusNeo *this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((*(this + 32) & 0x800) != 0)
    {
LABEL_3:
      v3 = *(this + 60);
      if ((*(this + 32) & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v2 = 0.0;
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 32) & 0x400) != 0)
  {
LABEL_4:
    v4 = *(this + 14);
    if ((v1 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_34:
    v5 = 0.0;
    if ((*(this + 32) & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_33:
  v4 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_34;
  }

LABEL_5:
  v5 = *(this + 2);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 32) & 0x1000) != 0)
  {
LABEL_8:
    v6 = *(this + 61);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_36:
    v8 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    v10 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_38:
    v12 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_39:
    v14 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_21;
    }

LABEL_40:
    v16 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v18 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_42:
    v19 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_28;
    }

LABEL_43:
    v20 = 0;
    return v3 ^ *&v2 ^ v4 ^ *&v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20;
  }

LABEL_35:
  v6 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v7 = *(this + 10);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_37;
  }

LABEL_12:
  v9 = *(this + 11);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_38;
  }

LABEL_15:
  v11 = *(this + 12);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v13 = *(this + 7);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  v15 = *(this + 8);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v17 = *(this + 9);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v19 = *(this + 6);
  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_28:
  v20 = *(this + 13);
  return v3 ^ *&v2 ^ v4 ^ *&v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20;
}

void CMMsl::LocationOscarEmu::~LocationOscarEmu(CMMsl::LocationOscarEmu *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::LocationOscarEmu::LocationOscarEmu(uint64_t this, const CMMsl::LocationOscarEmu *a2)
{
  *this = &unk_286C21998;
  *(this + 100) = 0;
  v2 = *(a2 + 50);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 9);
    v3 = 256;
    *(this + 100) = 256;
    *(this + 72) = v4;
    v2 = *(a2 + 50);
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 50) & 0x1000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 24);
    v3 |= 0x1000u;
    *(this + 100) = v3;
    *(this + 96) = v5;
    v2 = *(a2 + 50);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 100) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 50);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 100) = v3;
  *(this + 64) = v7;
  v2 = *(a2 + 50);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 100) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 50);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 100) = v3;
  *(this + 48) = v9;
  v2 = *(a2 + 50);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 4);
  v3 |= 8u;
  *(this + 100) = v3;
  *(this + 32) = v10;
  v2 = *(a2 + 50);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 1);
  v3 |= 1u;
  *(this + 100) = v3;
  *(this + 8) = v11;
  v2 = *(a2 + 50);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 100) = v3;
  *(this + 80) = v12;
  v2 = *(a2 + 50);
  if ((v2 & 2) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 2);
  v3 |= 2u;
  *(this + 100) = v3;
  *(this + 16) = v13;
  v2 = *(a2 + 50);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 3);
  v3 |= 4u;
  *(this + 100) = v3;
  *(this + 24) = v14;
  v2 = *(a2 + 50);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_28:
    v16 = *(a2 + 23);
    *(this + 100) = v3 | 0x800;
    *(this + 92) = v16;
    return this;
  }

LABEL_27:
  v15 = *(a2 + 22);
  v3 |= 0x400u;
  *(this + 100) = v3;
  *(this + 88) = v15;
  if ((*(a2 + 50) & 0x800) != 0)
  {
    goto LABEL_28;
  }

  return this;
}

CMMsl *CMMsl::LocationOscarEmu::operator=(CMMsl *a1, const CMMsl::LocationOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::LocationOscarEmu::LocationOscarEmu(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::LocationOscarEmu *a2, CMMsl::LocationOscarEmu *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v15 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v15;
  v16 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v16;
  return result;
}

double CMMsl::LocationOscarEmu::LocationOscarEmu(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21998;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return result;
}

CMMsl *CMMsl::LocationOscarEmu::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::LocationOscarEmu::LocationOscarEmu(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::LocationOscarEmu::formatText(CMMsl::LocationOscarEmu *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 50);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 50);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(this + 50) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 22);
  PB::TextFormatter::format(a2, "confidence");
  v5 = *(this + 50);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 50);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 50);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 4));
  v5 = *(this + 50);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "latitude", *(this + 5));
  v5 = *(this + 50);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(this + 23);
  PB::TextFormatter::format(a2, "locationLoggingEnabled");
  v5 = *(this + 50);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "longitude", *(this + 6));
  v5 = *(this + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "speed", *(this + 7));
  v5 = *(this + 50);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 8));
  v5 = *(this + 50);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "timestamp", *(this + 9));
  v5 = *(this + 50);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v8 = *(this + 24);
  PB::TextFormatter::format(a2, "type");
  if ((*(this + 50) & 0x200) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 10));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LocationOscarEmu::readFrom(CMMsl::LocationOscarEmu *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_117:
    v67 = v4 ^ 1;
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
        goto LABEL_117;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 50) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_97;
        case 2u:
          *(this + 50) |= 0x1000u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v60 = 0;
            v61 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v62 = (v39 + v38);
            v63 = v2 - v38;
            v64 = v38 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v65 = v64;
              v66 = *v62;
              *(a2 + 1) = v65;
              v42 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              ++v62;
              --v63;
              v64 = v65 + 1;
              v14 = v61++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_111:
                v2 = v65;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_111;
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
              goto LABEL_112;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_112:
          *(this + 24) = v42;
          break;
        case 3u:
          *(this + 50) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_97;
        case 4u:
          *(this + 50) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_97;
        case 5u:
          *(this + 50) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_97;
        case 6u:
          *(this + 50) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_97;
        case 7u:
          *(this + 50) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_97;
        case 8u:
          *(this + 50) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_97;
        case 9u:
          *(this + 50) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_97;
        case 0xAu:
          *(this + 50) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_97;
        case 0xBu:
          *(this + 50) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_71:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 3) = *(*a2 + v2);
LABEL_97:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        case 0xCu:
          *(this + 50) |= 0x400u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v23 + v22);
            v49 = v2 - v22;
            v50 = v22 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v26 |= (v52 & 0x7F) << v46;
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
                LODWORD(v26) = 0;
LABEL_103:
                v2 = v51;
                goto LABEL_104;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_103;
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
              goto LABEL_104;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_104:
          *(this + 22) = v26;
          break;
        case 0xDu:
          *(this + 50) |= 0x800u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v55 = (v31 + v30);
            v56 = v2 - v30;
            v57 = v30 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v58 = v57;
              v59 = *v55;
              *(a2 + 1) = v58;
              v34 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v55;
              --v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_107:
                v2 = v58;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_107;
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
              goto LABEL_108;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_108:
          *(this + 23) = v34;
          break;
        default:
          goto LABEL_17;
      }

LABEL_113:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_117;
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
        goto LABEL_117;
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
      goto LABEL_113;
    }

    v67 = 0;
  }

  return v67 & 1;
}

uint64_t CMMsl::LocationOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 100);
  if ((v4 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(this + 72));
    v4 = *(v3 + 100);
    if ((v4 & 0x1000) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 100) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 96);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v6 = *(v3 + 88);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 100) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x800) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = *(v3 + 92);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::LocationOscarEmu::hash_value(CMMsl::LocationOscarEmu *this)
{
  v1 = *(this + 50);
  if ((v1 & 0x100) != 0)
  {
    v2 = *(this + 9);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((*(this + 50) & 0x1000) != 0)
    {
LABEL_3:
      v3 = *(this + 24);
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_4;
      }

LABEL_37:
      v4 = 0.0;
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_7;
      }

LABEL_38:
      v5 = 0.0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_10;
      }

LABEL_39:
      v6 = 0.0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_13;
      }

LABEL_40:
      v7 = 0.0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_16;
      }

LABEL_41:
      v8 = 0.0;
      if (v1)
      {
        goto LABEL_19;
      }

LABEL_42:
      v9 = 0.0;
      if ((*(this + 50) & 0x200) != 0)
      {
        goto LABEL_22;
      }

LABEL_43:
      v10 = 0.0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_25;
      }

LABEL_44:
      v11 = 0.0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_28;
      }

LABEL_45:
      v12 = 0.0;
      if ((*(this + 50) & 0x400) != 0)
      {
        goto LABEL_31;
      }

LABEL_46:
      v13 = 0;
      if ((*(this + 50) & 0x800) != 0)
      {
        goto LABEL_32;
      }

LABEL_47:
      v14 = 0;
      return v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13 ^ v14;
    }
  }

  else
  {
    v2 = 0.0;
    if ((*(this + 50) & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_4:
  v4 = *(this + 7);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_7:
  v5 = *(this + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  v6 = *(this + 5);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_13:
  v7 = *(this + 6);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_41;
  }

LABEL_16:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_19:
  v9 = *(this + 1);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 50) & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  v10 = *(this + 10);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_25:
  v11 = *(this + 2);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  v12 = *(this + 3);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((*(this + 50) & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_31:
  v13 = *(this + 22);
  if ((*(this + 50) & 0x800) == 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  v14 = *(this + 23);
  return v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13 ^ v14;
}

void CMMsl::LockScreenStatus::~LockScreenStatus(CMMsl::LockScreenStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::LockScreenStatus::LockScreenStatus(uint64_t this, const CMMsl::LockScreenStatus *a2)
{
  *this = &unk_286C219D0;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::LockScreenStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C219D0;
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
    v7 = &unk_286C219D0;
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

uint64_t CMMsl::swap(uint64_t this, CMMsl::LockScreenStatus *a2, CMMsl::LockScreenStatus *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::LockScreenStatus::formatText(CMMsl::LockScreenStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "lockScreen");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::LockScreenStatus::readFrom(CMMsl::LockScreenStatus *this, PB::Reader *a2)
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

uint64_t CMMsl::LockScreenStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::LockScreenStatus::hash_value(CMMsl::LockScreenStatus *this)
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

void CMMsl::MLBasedBioMotionClassification::~MLBasedBioMotionClassification(CMMsl::MLBasedBioMotionClassification *this)
{
  v2 = *(this + 1);
  *this = &unk_286C21A08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MLBasedBioMotionClassification::~MLBasedBioMotionClassification(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::MLBasedBioMotionClassification::MLBasedBioMotionClassification(void *this, const CMMsl::MLBasedBioMotionClassification *a2)
{
  *this = &unk_286C21A08;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::MLBasedBioMotionClassification *CMMsl::MLBasedBioMotionClassification::operator=(const CMMsl::MLBasedBioMotionClassification *a1, const CMMsl::MLBasedBioMotionClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::MLBasedBioMotionClassification::MLBasedBioMotionClassification(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::MLBasedBioMotionClassification::~MLBasedBioMotionClassification(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MLBasedBioMotionClassification *a2, CMMsl::MLBasedBioMotionClassification *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::MLBasedBioMotionClassification::MLBasedBioMotionClassification(void *a1, uint64_t a2)
{
  *a1 = &unk_286C21A08;
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
  *a1 = &unk_286C21A08;
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

uint64_t CMMsl::MLBasedBioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C21A08;
    v6[1] = v4;
    CMMsl::MLBasedBioMotionClassification::~MLBasedBioMotionClassification(v6);
  }

  return a1;
}

uint64_t CMMsl::MLBasedBioMotionClassification::formatText(CMMsl::MLBasedBioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MLBasedBioMotionClassification::readFrom(CMMsl::MLBasedBioMotionClassification *this, PB::Reader *a2)
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

uint64_t CMMsl::MLBasedBioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::BioMotionClassification *CMMsl::MLBasedBioMotionClassification::hash_value(CMMsl::MLBasedBioMotionClassification *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionClassification::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::MLBasedBioMotionClassification::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::MagicMountState::~MagicMountState(CMMsl::MagicMountState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MagicMountState::MagicMountState(uint64_t this, const CMMsl::MagicMountState *a2)
{
  *this = &unk_286C21A40;
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

uint64_t CMMsl::MagicMountState::operator=(uint64_t a1, const CMMsl::MagicMountState *a2)
{
  if (a1 != a2)
  {
    CMMsl::MagicMountState::MagicMountState(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MagicMountState *a2, CMMsl::MagicMountState *a3)
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

uint64_t CMMsl::MagicMountState::MagicMountState(uint64_t result, uint64_t a2)
{
  *result = &unk_286C21A40;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C21A40;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::MagicMountState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = &unk_286C21A40;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::MagicMountState::formatText(CMMsl::MagicMountState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "state");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MagicMountState::readFrom(CMMsl::MagicMountState *this, PB::Reader *a2)
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
        *(this + 20) |= 2u;
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
        *(this + 4) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
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
              v26 = 0;
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
              v26 = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
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
              v26 = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 1) = v26;
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

uint64_t CMMsl::MagicMountState::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::MagicMountState::hash_value(CMMsl::MagicMountState *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ v1;
}

void CMMsl::MagneticAccessoryType1::~MagneticAccessoryType1(CMMsl::MagneticAccessoryType1 *this)
{
  v2 = *(this + 1);
  *this = &unk_286C21A78;
  *(this + 1) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MagneticAccessoryType1::~MagneticAccessoryType1(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MagneticAccessoryType1::MagneticAccessoryType1(uint64_t this, const CMMsl::MagneticAccessoryType1 *a2)
{
  *this = &unk_286C21A78;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 4);
    *(this + 24) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 24);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 20);
    *(this + 24) |= 2u;
    *(this + 20) = v4;
  }

  return this;
}

uint64_t CMMsl::MagneticAccessoryType1::operator=(uint64_t a1, const CMMsl::MagneticAccessoryType1 *a2)
{
  if (a1 != a2)
  {
    CMMsl::MagneticAccessoryType1::MagneticAccessoryType1(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    LOBYTE(v4) = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v4;
    CMMsl::MagneticAccessoryType1::~MagneticAccessoryType1(&v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MagneticAccessoryType1 *a2, CMMsl::MagneticAccessoryType1 *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  return this;
}

uint64_t CMMsl::MagneticAccessoryType1::MagneticAccessoryType1(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21A78;
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
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t CMMsl::MagneticAccessoryType1::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MagneticAccessoryType1::MagneticAccessoryType1(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    LOBYTE(v4) = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v4;
    CMMsl::MagneticAccessoryType1::~MagneticAccessoryType1(&v6);
  }

  return a1;
}

uint64_t CMMsl::MagneticAccessoryType1::formatText(CMMsl::MagneticAccessoryType1 *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "accessoryType");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 20);
    PB::TextFormatter::format(a2, "isAttached");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MagneticAccessoryType1::readFrom(CMMsl::MagneticAccessoryType1 *this, PB::Reader *a2)
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

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_50;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 2u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2))
        {
          v35 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v33 = v32 + 1;
          v34 = *(*a2 + v32);
          *(a2 + 1) = v33;
          v35 = v34 != 0;
        }

        *(this + 20) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v36 = 0;
          v37 = 0;
          v28 = 0;
          v38 = (v25 + v24);
          v18 = v23 >= v24;
          v39 = v23 - v24;
          if (!v18)
          {
            v39 = 0;
          }

          v40 = v24 + 1;
          while (1)
          {
            if (!v39)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_48;
            }

            v41 = *v38;
            *(a2 + 1) = v40;
            v28 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            ++v38;
            --v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_42:
              LODWORD(v28) = 0;
              goto LABEL_48;
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
              goto LABEL_42;
            }
          }
        }

LABEL_48:
        *(this + 4) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v42 = 0;
          return v42 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_50;
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
  }

LABEL_50:
  v42 = v4 ^ 1;
  return v42 & 1;
}