uint64_t sub_245D8107C(uint64_t result)
{
  *result = &unk_2858CC818;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_245D810A4(void **a1)
{
  *a1 = &unk_2858CC818;
  v2 = a1 + 1;
  sub_245DF837C(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_245D81100(void **a1)
{
  *a1 = &unk_2858CC818;
  v3 = a1 + 1;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x24C194490]();
}

uint64_t sub_245D81170(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC818;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  v2 = *(a2 + 8);
  if (v2 != *(a2 + 16))
  {
    v3 = *v2;
    sub_245D81230();
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 40);
    *(result + 48) |= 2u;
    *(result + 40) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 32);
    *(result + 48) |= 1u;
    *(result + 32) = v6;
  }

  return result;
}

uint64_t sub_245D81388(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "blendShapeCoefficients");
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 32));
    v8 = *(a1 + 48);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D81460(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_245D816CC();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 32) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_245D81818(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_245D818B0(uint64_t result)
{
  *result = &unk_2858CC850;
  *(result + 20) = 0;
  return result;
}

void sub_245D818D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D81910(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC850;
  *(result + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(result + 20) = 1;
    *(result + 8) = v3;
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
    v4 = *(a2 + 16);
    *(result + 20) = v2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_245D81974(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "isCovered");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D819F0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_38;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 >= *(this + 2))
        {
          v23 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v22 = *(*this + v2++);
          *(this + 1) = v2;
          v23 = v22 != 0;
        }

        *(a1 + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_245D81BFC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

double sub_245D81C68(uint64_t a1)
{
  *a1 = &unk_2858CC888;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245D81C9C(PB::Base *this)
{
  *this = &unk_2858CC888;
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

void sub_245D81D10(PB::Base *a1)
{
  sub_245D81C9C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D81D48(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CC888;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if ((*(a2 + 96) & 2) != 0)
  {
    v5 = *(a2 + 64);
    *(a1 + 96) = 2;
    *(a1 + 64) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v6 = *(a2 + 96);
  if ((v6 & 8) != 0)
  {
    v9 = *(a2 + 76);
    *(a1 + 96) |= 8u;
    *(a1 + 76) = v9;
    v6 = *(a2 + 96);
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

  v10 = *(a2 + 80);
  *(a1 + 96) |= 0x10u;
  *(a1 + 80) = v10;
  v6 = *(a2 + 96);
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
  *(a1 + 96) |= 0x80u;
  *(a1 + 92) = v11;
  v6 = *(a2 + 96);
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
  *(a1 + 96) |= 0x100u;
  *(a1 + 93) = v12;
  v6 = *(a2 + 96);
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
  v13 = *(a2 + 72);
  *(a1 + 96) |= 4u;
  *(a1 + 72) = v13;
  v6 = *(a2 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v15 = *(a2 + 88);
    *(a1 + 96) |= 0x40u;
    *(a1 + 88) = v15;
    if ((*(a2 + 96) & 1) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_20:
  v14 = *(a2 + 84);
  *(a1 + 96) |= 0x20u;
  *(a1 + 84) = v14;
  v6 = *(a2 + 96);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v6)
  {
LABEL_13:
    v7 = *(a2 + 56);
    *(a1 + 96) |= 1u;
    *(a1 + 56) = v7;
  }

  return a1;
}

uint64_t sub_245D81EFC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accel", v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelFiltered", v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    PB::TextFormatter::format(this, "faceDownLookbackTimestamp", *(a1 + 56));
    v11 = *(a1 + 96);
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

  v12 = *(a1 + 72);
  PB::TextFormatter::format(this, "faceDownState");
  v11 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "gravityAngle", *(a1 + 76));
  v11 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "gravityAngleVar", *(a1 + 80));
  v11 = *(a1 + 96);
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
  v13 = *(a1 + 92);
  PB::TextFormatter::format(this, "isFaceDown");
  v11 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 84));
  v11 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "pocketProbabilityVar", *(a1 + 88));
  v11 = *(a1 + 96);
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
  v14 = *(a1 + 93);
  PB::TextFormatter::format(this, "shouldSuppress");
  if ((*(a1 + 96) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_15:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D820C8(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            *(a1 + 96) |= 2u;
            v51 = *(this + 1);
            if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
            {
LABEL_154:
              *(this + 24) = 1;
              goto LABEL_158;
            }

            *(a1 + 64) = *(*this + v51);
LABEL_72:
            v52 = *(this + 1) + 8;
            goto LABEL_157;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_164;
              }

              v35 = *(this + 1);
              v36 = *(this + 2);
              while (v35 < v36 && (*(this + 24) & 1) == 0)
              {
                v38 = *(a1 + 40);
                v37 = *(a1 + 48);
                if (v38 >= v37)
                {
                  v40 = *(a1 + 32);
                  v41 = v38 - v40;
                  v42 = (v38 - v40) >> 2;
                  v43 = v42 + 1;
                  if ((v42 + 1) >> 62)
                  {
                    goto LABEL_165;
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
                    sub_245DF85BC(a1 + 32, v45);
                  }

                  v46 = (v38 - v40) >> 2;
                  v47 = (4 * v42);
                  v48 = (4 * v42 - 4 * v46);
                  *v47 = 0;
                  v39 = v47 + 1;
                  memcpy(v48, v40, v41);
                  v49 = *(a1 + 32);
                  *(a1 + 32) = v48;
                  *(a1 + 40) = v39;
                  *(a1 + 48) = 0;
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

                *(a1 + 40) = v39;
                v50 = *(this + 1);
                if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
                {
LABEL_124:
                  *(this + 24) = 1;
                  break;
                }

                *(v39 - 1) = *(*this + v50);
                v36 = *(this + 2);
                v35 = *(this + 1) + 4;
                *(this + 1) = v35;
              }

LABEL_125:
              PB::Reader::recallMark();
              goto LABEL_158;
            }

            v81 = *(a1 + 40);
            v80 = *(a1 + 48);
            if (v81 >= v80)
            {
              v91 = *(a1 + 32);
              v92 = v81 - v91;
              v93 = (v81 - v91) >> 2;
              v94 = v93 + 1;
              if ((v93 + 1) >> 62)
              {
                goto LABEL_165;
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
                sub_245DF85BC(a1 + 32, v96);
              }

              v103 = (v81 - v91) >> 2;
              v104 = (4 * v93);
              v105 = (4 * v93 - 4 * v103);
              *v104 = 0;
              v82 = v104 + 1;
              memcpy(v105, v91, v92);
              v106 = *(a1 + 32);
              *(a1 + 32) = v105;
              *(a1 + 40) = v82;
              *(a1 + 48) = 0;
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

            *(a1 + 40) = v82;
LABEL_152:
            v111 = *(this + 1);
            if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(v82 - 1) = *(*this + v111);
LABEL_156:
            v52 = *(this + 1) + 4;
LABEL_157:
            *(this + 1) = v52;
            goto LABEL_158;
          }
        }

        else
        {
          switch(v23)
          {
            case 3:
              if (v22 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_164;
                }

                v59 = *(this + 1);
                v60 = *(this + 2);
                while (v59 < v60 && (*(this + 24) & 1) == 0)
                {
                  v62 = *(a1 + 16);
                  v61 = *(a1 + 24);
                  if (v62 >= v61)
                  {
                    v64 = *(a1 + 8);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_165;
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
                      sub_245DF85BC(a1 + 8, v69);
                    }

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(a1 + 8);
                    *(a1 + 8) = v72;
                    *(a1 + 16) = v63;
                    *(a1 + 24) = 0;
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

                  *(a1 + 16) = v63;
                  v74 = *(this + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
                  {
                    goto LABEL_124;
                  }

                  *(v63 - 1) = *(*this + v74);
                  v60 = *(this + 2);
                  v59 = *(this + 1) + 4;
                  *(this + 1) = v59;
                }

                goto LABEL_125;
              }

              v84 = *(a1 + 16);
              v83 = *(a1 + 24);
              if (v84 >= v83)
              {
                v97 = *(a1 + 8);
                v98 = v84 - v97;
                v99 = (v84 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
LABEL_165:
                  sub_245DF85A4();
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
                  sub_245DF85BC(a1 + 8, v102);
                }

                v107 = (v84 - v97) >> 2;
                v108 = (4 * v99);
                v109 = (4 * v99 - 4 * v107);
                *v108 = 0;
                v82 = v108 + 1;
                memcpy(v109, v97, v98);
                v110 = *(a1 + 8);
                *(a1 + 8) = v109;
                *(a1 + 16) = v82;
                *(a1 + 24) = 0;
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

              *(a1 + 16) = v82;
              goto LABEL_152;
            case 4:
              *(a1 + 96) |= 8u;
              v53 = *(this + 1);
              if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 76) = *(*this + v53);
              goto LABEL_156;
            case 5:
              *(a1 + 96) |= 0x10u;
              v33 = *(this + 1);
              if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 80) = *(*this + v33);
              goto LABEL_156;
          }
        }
      }

      else if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            *(a1 + 96) |= 0x20u;
            v79 = *(this + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 84) = *(*this + v79);
            goto LABEL_156;
          case 0xA:
            *(a1 + 96) |= 0x40u;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 88) = *(*this + v58);
            goto LABEL_156;
          case 0xB:
            *(a1 + 96) |= 1u;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 56) = *(*this + v34);
            goto LABEL_72;
        }
      }

      else
      {
        switch(v23)
        {
          case 6:
            *(a1 + 96) |= 0x80u;
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

            *(a1 + 92) = v78;
            goto LABEL_158;
          case 7:
            *(a1 + 96) |= 0x100u;
            v54 = *(this + 1);
            if (v54 >= *(this + 2))
            {
              v57 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v55 = v54 + 1;
              v56 = *(*this + v54);
              *(this + 1) = v55;
              v57 = v56 != 0;
            }

            *(a1 + 93) = v57;
            goto LABEL_158;
          case 8:
            *(a1 + 96) |= 4u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v85 = 0;
              v86 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v87 = v24 - v25;
              if (!v17)
              {
                v87 = 0;
              }

              v88 = (v26 + v25);
              v89 = v25 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_145;
                }

                v90 = *v88;
                *(this + 1) = v89;
                v29 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                ++v89;
                v14 = v86++ > 8;
                if (v14)
                {
LABEL_121:
                  LODWORD(v29) = 0;
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
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
                *(this + 1) = v31;
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
                  goto LABEL_121;
                }
              }
            }

LABEL_145:
            *(a1 + 72) = v29;
            goto LABEL_158;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_164:
        v112 = 0;
        return v112 & 1;
      }

LABEL_158:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v112 = v4 ^ 1;
  return v112 & 1;
}

uint64_t sub_245D82934(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 96) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 96);
  if ((v10 & 8) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 76));
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

  result = PB::Writer::write(this, *(v3 + 80));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 96);
  if ((v10 & 0x20) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 88));
    if ((*(v3 + 96) & 1) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 84));
  v10 = *(v3 + 96);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  v14 = *(v3 + 56);

  return PB::Writer::write(this, v14);
}

uint64_t sub_245D82AB0(uint64_t result)
{
  *result = &unk_2858CC8C0;
  *(result + 140) = 0;
  return result;
}

void sub_245D82AD8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D82B10(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC8C0;
  *(result + 140) = 0;
  v2 = *(a2 + 140);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 140) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 140);
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
    v5 = *(a2 + 120);
    v3 |= 0x4000000u;
    *(result + 140) = v3;
    *(result + 120) = v5;
    v2 = *(a2 + 140);
  }

LABEL_6:
  if ((v2 & 0x20000) != 0)
  {
    v6 = *(a2 + 84);
    v3 |= 0x20000u;
    *(result + 140) = v3;
    *(result + 84) = v6;
    v2 = *(a2 + 140);
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

  v7 = *(a2 + 96);
  v3 |= 0x100000u;
  *(result + 140) = v3;
  *(result + 96) = v7;
  v2 = *(a2 + 140);
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
  v8 = *(a2 + 100);
  v3 |= 0x200000u;
  *(result + 140) = v3;
  *(result + 100) = v8;
  v2 = *(a2 + 140);
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
  v9 = *(a2 + 104);
  v3 |= 0x400000u;
  *(result + 140) = v3;
  *(result + 104) = v9;
  v2 = *(a2 + 140);
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
  v10 = *(a2 + 92);
  v3 |= 0x80000u;
  *(result + 140) = v3;
  *(result + 92) = v10;
  v2 = *(a2 + 140);
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
  v11 = *(a2 + 124);
  v3 |= 0x8000000u;
  *(result + 140) = v3;
  *(result + 124) = v11;
  v2 = *(a2 + 140);
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
  v12 = *(a2 + 128);
  v3 |= 0x10000000u;
  *(result + 140) = v3;
  *(result + 128) = v12;
  v2 = *(a2 + 140);
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
  v13 = *(a2 + 132);
  v3 |= 0x20000000u;
  *(result + 140) = v3;
  *(result + 132) = v13;
  v2 = *(a2 + 140);
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
  v14 = *(a2 + 76);
  v3 |= 0x8000u;
  *(result + 140) = v3;
  *(result + 76) = v14;
  v2 = *(a2 + 140);
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
  v15 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 140) = v3;
  *(result + 36) = v15;
  v2 = *(a2 + 140);
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
  v16 = *(a2 + 56);
  v3 |= 0x400u;
  *(result + 140) = v3;
  *(result + 56) = v16;
  v2 = *(a2 + 140);
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
  v17 = *(a2 + 24);
  v3 |= 4u;
  *(result + 140) = v3;
  *(result + 24) = v17;
  v2 = *(a2 + 140);
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
  v18 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 140) = v3;
  *(result + 32) = v18;
  v2 = *(a2 + 140);
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
  v19 = *(a2 + 88);
  v3 |= 0x40000u;
  *(result + 140) = v3;
  *(result + 88) = v19;
  v2 = *(a2 + 140);
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
  v20 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 140) = v3;
  *(result + 40) = v20;
  v2 = *(a2 + 140);
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
  v21 = *(a2 + 8);
  v3 |= 1u;
  *(result + 140) = v3;
  *(result + 8) = v21;
  v2 = *(a2 + 140);
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
  *(result + 140) = v3;
  *(result + 137) = v22;
  v2 = *(a2 + 140);
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
  *(result + 140) = v3;
  *(result + 136) = v23;
  v2 = *(a2 + 140);
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
  v24 = *(a2 + 28);
  v3 |= 8u;
  *(result + 140) = v3;
  *(result + 28) = v24;
  v2 = *(a2 + 140);
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
  v25 = *(a2 + 72);
  v3 |= 0x4000u;
  *(result + 140) = v3;
  *(result + 72) = v25;
  v2 = *(a2 + 140);
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
  v26 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 140) = v3;
  *(result + 44) = v26;
  v2 = *(a2 + 140);
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
  v27 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 140) = v3;
  *(result + 48) = v27;
  v2 = *(a2 + 140);
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
  v28 = *(a2 + 52);
  v3 |= 0x200u;
  *(result + 140) = v3;
  *(result + 52) = v28;
  v2 = *(a2 + 140);
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
  v29 = *(a2 + 60);
  v3 |= 0x800u;
  *(result + 140) = v3;
  *(result + 60) = v29;
  v2 = *(a2 + 140);
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
  v30 = *(a2 + 64);
  v3 |= 0x1000u;
  *(result + 140) = v3;
  *(result + 64) = v30;
  v2 = *(a2 + 140);
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
  v31 = *(a2 + 68);
  v3 |= 0x2000u;
  *(result + 140) = v3;
  *(result + 68) = v31;
  v2 = *(a2 + 140);
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
  v32 = *(a2 + 108);
  v3 |= 0x800000u;
  *(result + 140) = v3;
  *(result + 108) = v32;
  v2 = *(a2 + 140);
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
  v33 = *(a2 + 112);
  v3 |= 0x1000000u;
  *(result + 140) = v3;
  *(result + 112) = v33;
  v2 = *(a2 + 140);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

LABEL_66:
    v35 = *(a2 + 80);
    *(result + 140) = v3 | 0x10000;
    *(result + 80) = v35;
    return result;
  }

LABEL_65:
  v34 = *(a2 + 116);
  v3 |= 0x2000000u;
  *(result + 140) = v3;
  *(result + 116) = v34;
  if ((*(a2 + 140) & 0x10000) != 0)
  {
    goto LABEL_66;
  }

  return result;
}

uint64_t sub_245D82EBC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 140);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "aperture", *(a1 + 24));
    v5 = *(a1 + 140);
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

  PB::TextFormatter::format(this, "confidence", *(a1 + 28));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "ev", *(a1 + 32));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "exposureDuration", *(a1 + 36));
  v5 = *(a1 + 140);
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
  v6 = *(a1 + 40);
  PB::TextFormatter::format(this, "failureCode");
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "gaze_x", *(a1 + 44));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "gaze_y", *(a1 + 48));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "gaze_z", *(a1 + 52));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "iso", *(a1 + 56));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "left_eye_x", *(a1 + 60));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "left_eye_y", *(a1 + 64));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "left_eye_z", *(a1 + 68));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "lidAngle", *(a1 + 72));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "lux", *(a1 + 76));
  v5 = *(a1 + 140);
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
  v7 = *(a1 + 80);
  PB::TextFormatter::format(this, "numberOfDetectedFaces");
  v5 = *(a1 + 140);
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
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "orientation");
  v5 = *(a1 + 140);
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
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "poseLibrary");
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "qw", *(a1 + 92));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "qx", *(a1 + 96));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "qy", *(a1 + 100));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "qz", *(a1 + 104));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "right_eye_x", *(a1 + 108));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "right_eye_y", *(a1 + 112));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "right_eye_z", *(a1 + 116));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "rollValue", *(a1 + 8));
  v5 = *(a1 + 140);
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
  v10 = *(a1 + 136);
  PB::TextFormatter::format(this, "sensorCovered");
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  v5 = *(a1 + 140);
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
  v11 = *(a1 + 137);
  PB::TextFormatter::format(this, "tooDark");
  v5 = *(a1 + 140);
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
  v12 = *(a1 + 120);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "x", *(a1 + 124));
  v5 = *(a1 + 140);
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
  PB::TextFormatter::format(this, "y", *(a1 + 128));
  if ((*(a1 + 140) & 0x20000000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(this, "z", *(a1 + 132));
  }

LABEL_34:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D83300(uint64_t a1, PB::Reader *this)
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_216;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 140) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_94;
        case 2u:
          *(a1 + 140) |= 0x4000000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v46;
            v90 = (v47 + v46);
            v91 = v46 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_210;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v50 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_209:
                v2 = v92;
                goto LABEL_210;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_209;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_210;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_210:
          *(a1 + 120) = v50;
          goto LABEL_187;
        case 3u:
          *(a1 + 140) |= 0x20000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v30;
            v76 = (v31 + v30);
            v77 = v30 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_202;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v34 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_201:
                v2 = v78;
                goto LABEL_202;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_201;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_202;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_202:
          *(a1 + 84) = v34;
          goto LABEL_187;
        case 4u:
          *(a1 + 140) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_185;
        case 5u:
          *(a1 + 140) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_185;
        case 6u:
          *(a1 + 140) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_185;
        case 7u:
          *(a1 + 140) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_185;
        case 8u:
          *(a1 + 140) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 124) = *(*this + v2);
          goto LABEL_185;
        case 9u:
          *(a1 + 140) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_185;
        case 0xAu:
          *(a1 + 140) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 132) = *(*this + v2);
          goto LABEL_185;
        case 0xBu:
          *(a1 + 140) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_185;
        case 0xCu:
          *(a1 + 140) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_185;
        case 0xDu:
          *(a1 + 140) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_185;
        case 0xEu:
          *(a1 + 140) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_185;
        case 0xFu:
          *(a1 + 140) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_185;
        case 0x10u:
          *(a1 + 140) |= 0x40000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v38;
            v83 = (v39 + v38);
            v84 = v38 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_206;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v42 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              --v82;
              ++v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_205:
                v2 = v85;
                goto LABEL_206;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_205;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_206;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_206:
          *(a1 + 88) = v42;
          goto LABEL_187;
        case 0x11u:
          *(a1 + 140) |= 0x40u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v22;
            v69 = (v23 + v22);
            v70 = v22 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_198;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v26 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_197:
                v2 = v71;
                goto LABEL_198;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_197;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_198;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_198:
          *(a1 + 40) = v26;
          goto LABEL_187;
        case 0x12u:
          *(a1 + 140) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_94:
          v2 = *(this + 1) + 8;
          goto LABEL_186;
        case 0x13u:
          *(a1 + 140) |= 0x80000000;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v63 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v62 = *(*this + v2++);
            *(this + 1) = v2;
            v63 = v62 != 0;
          }

          *(a1 + 137) = v63;
          goto LABEL_187;
        case 0x14u:
          *(a1 + 140) |= 0x40000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 136) = v65;
          goto LABEL_187;
        case 0x15u:
          *(a1 + 140) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_185;
        case 0x16u:
          *(a1 + 140) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_185;
        case 0x17u:
          *(a1 + 140) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_185;
        case 0x18u:
          *(a1 + 140) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_185;
        case 0x19u:
          *(a1 + 140) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_185;
        case 0x1Au:
          *(a1 + 140) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_185;
        case 0x1Bu:
          *(a1 + 140) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_185;
        case 0x1Cu:
          *(a1 + 140) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_185;
        case 0x1Du:
          *(a1 + 140) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_185;
        case 0x1Eu:
          *(a1 + 140) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_185;
        case 0x1Fu:
          *(a1 + 140) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_139:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 116) = *(*this + v2);
LABEL_185:
            v2 = *(this + 1) + 4;
LABEL_186:
            *(this + 1) = v2;
          }

          goto LABEL_187;
        case 0x20u:
          *(a1 + 140) |= 0x10000u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v54;
            v97 = (v55 + v54);
            v98 = v54 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v58) = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v58 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_213:
                v2 = v99;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_213;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(this + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_214:
          *(a1 + 80) = v58;
          goto LABEL_187;
        default:
          if (!PB::Reader::skip(this))
          {
            v101 = 0;
            return v101 & 1;
          }

          v2 = *(this + 1);
LABEL_187:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_216;
          }

          break;
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

LABEL_216:
  v101 = v4 ^ 1;
  return v101 & 1;
}

uint64_t sub_245D8405C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 140);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 96));
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
  result = PB::Writer::write(this, *(v3 + 100));
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
  result = PB::Writer::write(this, *(v3 + 104));
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
  result = PB::Writer::write(this, *(v3 + 92));
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
  result = PB::Writer::write(this, *(v3 + 124));
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
  result = PB::Writer::write(this, *(v3 + 128));
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
  result = PB::Writer::write(this, *(v3 + 132));
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
  result = PB::Writer::write(this, *(v3 + 76));
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
  result = PB::Writer::write(this, *(v3 + 36));
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
  result = PB::Writer::write(this, *(v3 + 56));
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
  result = PB::Writer::write(this, *(v3 + 24));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this, *(v3 + 28));
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
  result = PB::Writer::write(this, *(v3 + 72));
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
  result = PB::Writer::write(this, *(v3 + 44));
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
  result = PB::Writer::write(this, *(v3 + 48));
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
  result = PB::Writer::write(this, *(v3 + 52));
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
  result = PB::Writer::write(this, *(v3 + 60));
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
  result = PB::Writer::write(this, *(v3 + 64));
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
  result = PB::Writer::write(this, *(v3 + 68));
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
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 140);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 116));
    if ((*(v3 + 140) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 140);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_65:
  v11 = *(v3 + 80);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245D84414(uint64_t result)
{
  *result = &unk_2858CC8F8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245D8443C(PB::Base *this)
{
  *this = &unk_2858CC8F8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245D844C0(PB::Base *a1)
{
  sub_245D8443C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D844F8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC8F8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
    v3 = *(a2 + 16);
    *(result + 32) = 2;
    *(result + 16) = v3;
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
    v4 = *(a2 + 8);
    *(result + 32) = v2;
    *(result + 8) = v4;
  }

LABEL_6:
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245D845E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
    v5 = *(a1 + 32);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D84698(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
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
        *(a1 + 32) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 32) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_245D84970(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 8));
  }

  v5 = *(v3 + 24);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_245D849F0(uint64_t result)
{
  *result = &unk_2858CC930;
  *(result + 32) = 0;
  return result;
}

void sub_245D84A18(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D84A50(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CC930;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = v4;
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
    *(a1 + 32) = v3;
    *(a1 + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 32) = v3;
    *(a1 + 16) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 24);
      *(a1 + 32) = v3 | 8;
      *(a1 + 24) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 32) = v3;
  *(a1 + 20) = v7;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245D84B08(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "cyclingState");
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

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "cyclingStateSummary");
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
  PB::TextFormatter::format(this, "distanceTraveledOverTimeWindow", *(a1 + 24));
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
  PB::TextFormatter::format(this, "motionType");
  if (*(a1 + 32))
  {
LABEL_6:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D84BEC(uint64_t a1, PB::Reader *this)
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
            v69 = 0;
            v70 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(this + 1);
            }

            v71 = v2 - v47;
            v72 = (v48 + v47);
            v73 = v47 + 1;
            while (1)
            {
              if (!v71)
              {
                v51 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v74 = v73;
              v75 = *v72;
              *(this + 1) = v74;
              v51 |= (v75 & 0x7F) << v69;
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
                v51 = 0;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              v51 = 0;
            }

LABEL_108:
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

LABEL_109:
          *(a1 + 8) = v51;
          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 0x10u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v23;
            v79 = (v24 + v23);
            v80 = v23 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v27 |= (v82 & 0x7F) << v76;
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
                LODWORD(v27) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_112:
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

LABEL_113:
          *(a1 + 28) = v27;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 2u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v55 = 0;
              v56 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v57 = v2 - v31;
              v58 = (v32 + v31);
              v59 = v31 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_101;
                }

                v60 = v59;
                v61 = *v58;
                *(this + 1) = v60;
                v35 |= (v61 & 0x7F) << v55;
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
                  LODWORD(v35) = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_100:
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

LABEL_101:
            *(a1 + 16) = v35;
            goto LABEL_114;
          case 4:
            *(a1 + 32) |= 4u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v39;
              v65 = (v40 + v39);
              v66 = v39 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_105;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v43 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v43) = 0;
                  goto LABEL_104;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_104:
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

LABEL_105:
            *(a1 + 20) = v43;
            goto LABEL_114;
          case 5:
            *(a1 + 32) |= 8u;
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

uint64_t sub_245D851E4(uint64_t result, PB::Writer *this)
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
      if ((v4 & 2) == 0)
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
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 24);

  return PB::Writer::write(this, v9);
}

void *sub_245D852A8(void *result)
{
  *result = &unk_2858CC968;
  *(result + 156) = 0;
  return result;
}

void sub_245D852D0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D85308(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CC968;
  *(a1 + 156) = 0;
  v2 = *(a2 + 156);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 156) = 1;
    *(a1 + 8) = v4;
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
    v5 = *(a2 + 24);
    v3 |= 4uLL;
    *(a1 + 156) = v3;
    *(a1 + 24) = v5;
    v2 = *(a2 + 156);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2uLL;
    *(a1 + 156) = v3;
    *(a1 + 16) = v6;
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

  LODWORD(v4) = *(a2 + 44);
  v3 |= 0x40uLL;
  *(a1 + 156) = v3;
  *(a1 + 44) = v4;
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
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x20uLL;
  *(a1 + 156) = v3;
  *(a1 + 40) = v4;
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
  LODWORD(v4) = *(a2 + 88);
  v3 |= 0x20000uLL;
  *(a1 + 156) = v3;
  *(a1 + 88) = v4;
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
  LODWORD(v4) = *(a2 + 72);
  v3 |= 0x2000uLL;
  *(a1 + 156) = v3;
  *(a1 + 72) = v4;
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
  LODWORD(v4) = *(a2 + 84);
  v3 |= 0x10000uLL;
  *(a1 + 156) = v3;
  *(a1 + 84) = v4;
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
  LODWORD(v4) = *(a2 + 96);
  v3 |= 0x80000uLL;
  *(a1 + 156) = v3;
  *(a1 + 96) = v4;
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
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x10uLL;
  *(a1 + 156) = v3;
  *(a1 + 36) = v4;
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
  LODWORD(v4) = *(a2 + 80);
  v3 |= 0x8000uLL;
  *(a1 + 156) = v3;
  *(a1 + 80) = v4;
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
  LODWORD(v4) = *(a2 + 76);
  v3 |= 0x4000uLL;
  *(a1 + 156) = v3;
  *(a1 + 76) = v4;
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
  LODWORD(v4) = *(a2 + 124);
  v3 |= 0x4000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 124) = v4;
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
  LODWORD(v4) = *(a2 + 132);
  v3 |= 0x10000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 132) = v4;
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
  LODWORD(v4) = *(a2 + 140);
  v3 |= 0x40000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 140) = v4;
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
  LODWORD(v4) = *(a2 + 136);
  v3 |= 0x20000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 136) = v4;
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
  v7 = *(a2 + 48);
  v3 |= 0x80uLL;
  *(a1 + 156) = v3;
  *(a1 + 48) = v7;
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
  LODWORD(v4) = *(a2 + 128);
  v3 |= 0x8000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 128) = v4;
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
  *(a1 + 156) = v3;
  *(a1 + 152) = v8;
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
  v9 = *(a2 + 148);
  v3 |= 0x100000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 148) = v9;
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
  LODWORD(v4) = *(a2 + 144);
  v3 |= 0x80000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 144) = v4;
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
  LODWORD(v4) = *(a2 + 60);
  v3 |= 0x400uLL;
  *(a1 + 156) = v3;
  *(a1 + 60) = v4;
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
  LODWORD(v4) = *(a2 + 64);
  v3 |= 0x800uLL;
  *(a1 + 156) = v3;
  *(a1 + 64) = v4;
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
  LODWORD(v4) = *(a2 + 68);
  v3 |= 0x1000uLL;
  *(a1 + 156) = v3;
  *(a1 + 68) = v4;
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
  *(a1 + 156) = v3;
  *(a1 + 153) = v10;
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
  LODWORD(v4) = *(a2 + 112);
  v3 |= 0x800000uLL;
  *(a1 + 156) = v3;
  *(a1 + 112) = v4;
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
  LODWORD(v4) = *(a2 + 108);
  v3 |= 0x400000uLL;
  *(a1 + 156) = v3;
  *(a1 + 108) = v4;
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
  LODWORD(v4) = *(a2 + 116);
  v3 |= 0x1000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 116) = v4;
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
  LODWORD(v4) = *(a2 + 104);
  v3 |= 0x200000uLL;
  *(a1 + 156) = v3;
  *(a1 + 104) = v4;
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
  *(a1 + 156) = v3;
  *(a1 + 155) = v11;
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
  LODWORD(v4) = *(a2 + 100);
  v3 |= 0x100000uLL;
  *(a1 + 156) = v3;
  *(a1 + 100) = v4;
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
  v12 = *(a2 + 120);
  v3 |= 0x2000000uLL;
  *(a1 + 156) = v3;
  *(a1 + 120) = v12;
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
  LODWORD(v4) = *(a2 + 56);
  v3 |= 0x200uLL;
  *(a1 + 156) = v3;
  *(a1 + 56) = v4;
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
  LODWORD(v4) = *(a2 + 52);
  v3 |= 0x100uLL;
  *(a1 + 156) = v3;
  *(a1 + 52) = v4;
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
  *(a1 + 156) = v3;
  *(a1 + 154) = v13;
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
  LODWORD(v4) = *(a2 + 92);
  v3 |= 0x40000uLL;
  *(a1 + 156) = v3;
  *(a1 + 92) = v4;
  if ((*(a2 + 156) & 8) == 0)
  {
    return *&v4;
  }

LABEL_76:
  LODWORD(v4) = *(a2 + 32);
  *(a1 + 156) = v3 | 8;
  *(a1 + 32) = v4;
  return *&v4;
}

uint64_t sub_245D85740(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 156);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "abruptGravityChangeAngle", *(a1 + 32));
    v5 = *(a1 + 156);
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

  PB::TextFormatter::format(this, "accelPathLength", *(a1 + 36));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "angleChangePostImpact", *(a1 + 40));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "angleChangePreImpact", *(a1 + 44));
  v5 = *(a1 + 156);
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
  v7 = *(a1 + 48);
  PB::TextFormatter::format(this, "crown");
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "crownVariance", *(a1 + 52));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "gravityVariance", *(a1 + 56));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "iostime", *(a1 + 8));
  v5 = *(a1 + 156);
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
  v8 = *(a1 + 152);
  PB::TextFormatter::format(this, "isFall");
  v5 = *(a1 + 156);
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
  v9 = *(a1 + 153);
  PB::TextFormatter::format(this, "isNearFall");
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAbsX", *(a1 + 60));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAbsY", *(a1 + 64));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAbsZ", *(a1 + 68));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAccelNorm", *(a1 + 72));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAngleChangePostImpact", *(a1 + 76));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxAngleChangePreImpact", *(a1 + 80));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxJerkVM", *(a1 + 84));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "maxMinusMin", *(a1 + 88));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "medianAbsGravityY", *(a1 + 92));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "minInertialZ", *(a1 + 96));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "minInertialZHighFreq", *(a1 + 100));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "multiPeakAccelPathLengthWithPeak", *(a1 + 104));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "multiPeakPathLengthDecorrelation", *(a1 + 108));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "multiPeakPathLengthDelaySpread", *(a1 + 112));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "multiPeakPathLengthHarmonicMean", *(a1 + 116));
  v5 = *(a1 + 156);
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
  v10 = *(a1 + 120);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 156);
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
  v11 = *(a1 + 16);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "poseAtImpact", *(a1 + 124));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "posteriorRatio", *(a1 + 128));
  v5 = *(a1 + 156);
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
  v12 = *(a1 + 24);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "sumDeltaAngles", *(a1 + 132));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "swingAngle", *(a1 + 136));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "tiltAngle", *(a1 + 140));
  v5 = *(a1 + 156);
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
  PB::TextFormatter::format(this, "timeto3rdZC", *(a1 + 144));
  v5 = *(a1 + 156);
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
  v13 = *(a1 + 148);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 156);
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
  v14 = *(a1 + 154);
  PB::TextFormatter::format(this, "withinCyclingImpactThresholds");
  if ((*(a1 + 156) & 0x1000000000) != 0)
  {
LABEL_38:
    v6 = *(a1 + 155);
    PB::TextFormatter::format(this, "withinHardThresholds");
  }

LABEL_39:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D85C24(uint64_t a1, PB::Reader *this)
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_232;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 156) |= 1uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_202;
        case 2u:
          *(a1 + 156) |= 4uLL;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(this + 1);
            }

            v86 = v2 - v42;
            v87 = (v43 + v42);
            v88 = v42 + 1;
            while (1)
            {
              if (!v86)
              {
                v46 = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v89 = v88;
              v90 = *v87;
              *(this + 1) = v89;
              v46 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              --v86;
              ++v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                v46 = 0;
LABEL_221:
                v2 = v89;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              v46 = 0;
            }

            goto LABEL_221;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(this + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          v46 = 0;
LABEL_222:
          *(a1 + 24) = v46;
          goto LABEL_203;
        case 3u:
          *(a1 + 156) |= 2uLL;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v79 = v2 - v34;
            v80 = (v35 + v34);
            v81 = v34 + 1;
            while (1)
            {
              if (!v79)
              {
                v38 = 0;
                *(this + 24) = 1;
                goto LABEL_218;
              }

              v82 = v81;
              v83 = *v80;
              *(this + 1) = v82;
              v38 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              --v79;
              ++v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                v38 = 0;
LABEL_217:
                v2 = v82;
                goto LABEL_218;
              }
            }

            if (*(this + 24))
            {
              v38 = 0;
            }

            goto LABEL_217;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          v38 = 0;
LABEL_218:
          *(a1 + 16) = v38;
          goto LABEL_203;
        case 4u:
          *(a1 + 156) |= 0x40uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_201;
        case 5u:
          *(a1 + 156) |= 0x20uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_201;
        case 6u:
          *(a1 + 156) |= 0x20000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_201;
        case 7u:
          *(a1 + 156) |= 0x2000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_201;
        case 8u:
          *(a1 + 156) |= 0x10000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_201;
        case 9u:
          *(a1 + 156) |= 0x80000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_201;
        case 0xAu:
          *(a1 + 156) |= 0x10uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_201;
        case 0xBu:
          *(a1 + 156) |= 0x8000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_201;
        case 0xCu:
          *(a1 + 156) |= 0x4000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_201;
        case 0xDu:
          *(a1 + 156) |= 0x4000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 124) = *(*this + v2);
          goto LABEL_201;
        case 0xEu:
          *(a1 + 156) |= 0x10000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 132) = *(*this + v2);
          goto LABEL_201;
        case 0xFu:
          *(a1 + 156) |= 0x40000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 140) = *(*this + v2);
          goto LABEL_201;
        case 0x10u:
          *(a1 + 156) |= 0x20000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_201;
        case 0x11u:
          *(a1 + 156) |= 0x80uLL;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v24;
            v73 = (v25 + v24);
            v74 = v24 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v28 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              --v72;
              ++v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_213:
                v2 = v75;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_213;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_214:
          *(a1 + 48) = v28;
          goto LABEL_203;
        case 0x12u:
          *(a1 + 156) |= 0x8000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_201;
        case 0x13u:
          *(a1 + 156) |= 0x200000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v59 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v58 = *(*this + v2++);
            *(this + 1) = v2;
            v59 = v58 != 0;
          }

          *(a1 + 152) = v59;
          goto LABEL_203;
        case 0x14u:
          *(a1 + 156) |= 0x100000000uLL;
          v60 = *(this + 1);
          v2 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v98 = 0;
            v99 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(this + 1);
            }

            v100 = v2 - v60;
            v101 = (v61 + v60);
            v102 = v60 + 1;
            while (1)
            {
              if (!v100)
              {
                LODWORD(v64) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v103 = v102;
              v104 = *v101;
              *(this + 1) = v103;
              v64 |= (v104 & 0x7F) << v98;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v98 += 7;
              --v100;
              ++v101;
              v102 = v103 + 1;
              v14 = v99++ > 8;
              if (v14)
              {
                LODWORD(v64) = 0;
LABEL_229:
                v2 = v103;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v64) = 0;
            }

            goto LABEL_229;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(this + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          LODWORD(v64) = 0;
LABEL_230:
          *(a1 + 148) = v64;
          goto LABEL_203;
        case 0x15u:
          *(a1 + 156) |= 0x80000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_201;
        case 0x16u:
          *(a1 + 156) |= 0x400uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_201;
        case 0x17u:
          *(a1 + 156) |= 0x800uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_201;
        case 0x18u:
          *(a1 + 156) |= 0x1000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_201;
        case 0x19u:
          *(a1 + 156) |= 0x400000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 153) = v33;
          goto LABEL_203;
        case 0x1Au:
          *(a1 + 156) |= 0x800000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_201;
        case 0x1Bu:
          *(a1 + 156) |= 0x400000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_201;
        case 0x1Cu:
          *(a1 + 156) |= 0x1000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_201;
        case 0x1Du:
          *(a1 + 156) |= 0x200000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_201;
        case 0x1Eu:
          *(a1 + 156) |= 0x1000000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v69 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v68 = *(*this + v2++);
            *(this + 1) = v2;
            v69 = v68 != 0;
          }

          *(a1 + 155) = v69;
          goto LABEL_203;
        case 0x1Fu:
          *(a1 + 156) |= 0x100000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_201;
        case 0x20u:
          *(a1 + 156) |= 0x2000000uLL;
          v50 = *(this + 1);
          v2 = *(this + 2);
          v51 = *this;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v54 = 0;
            if (v2 <= v50)
            {
              v2 = *(this + 1);
            }

            v93 = v2 - v50;
            v94 = (v51 + v50);
            v95 = v50 + 1;
            while (1)
            {
              if (!v93)
              {
                LODWORD(v54) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v96 = v95;
              v97 = *v94;
              *(this + 1) = v96;
              v54 |= (v97 & 0x7F) << v91;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              --v93;
              ++v94;
              v95 = v96 + 1;
              v14 = v92++ > 8;
              if (v14)
              {
                LODWORD(v54) = 0;
LABEL_225:
                v2 = v96;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v54) = 0;
            }

            goto LABEL_225;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = (v51 + v50);
          v56 = v50 + 1;
          do
          {
            v2 = v56;
            *(this + 1) = v56;
            v57 = *v55++;
            v54 |= (v57 & 0x7F) << v52;
            if ((v57 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v52 += 7;
            ++v56;
            v14 = v53++ > 8;
          }

          while (!v14);
          LODWORD(v54) = 0;
LABEL_226:
          *(a1 + 120) = v54;
          goto LABEL_203;
        case 0x21u:
          *(a1 + 156) |= 0x200uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_201;
        case 0x22u:
          *(a1 + 156) |= 0x100uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_201;
        case 0x23u:
          *(a1 + 156) |= 0x800000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 154) = v23;
          goto LABEL_203;
        case 0x24u:
          *(a1 + 156) |= 0x40000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_201;
        case 0x25u:
          *(a1 + 156) |= 8uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_149:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 32) = *(*this + v2);
LABEL_201:
            v2 = *(this + 1) + 4;
LABEL_202:
            *(this + 1) = v2;
          }

          goto LABEL_203;
        default:
          if (!PB::Reader::skip(this))
          {
            v105 = 0;
            return v105 & 1;
          }

          v2 = *(this + 1);
LABEL_203:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_232;
          }

          break;
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

LABEL_232:
  v105 = v4 ^ 1;
  return v105 & 1;
}

uint64_t sub_245D86ACC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 156);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 156);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 156);
  if ((v4 & 0x20000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 156);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 156);
  if ((v4 & 0x10000) == 0)
  {
LABEL_9:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 156);
  if ((v4 & 0x80000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 156);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 156);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 156);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 156);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 156);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 156);
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v7 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 156);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v8 = *(v3 + 152);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v9 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_23:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 156);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v10 = *(v3 + 153);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 156);
  if ((v4 & 0x400000) == 0)
  {
LABEL_28:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 156);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(v3 + 155);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 156);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  v12 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 156);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 156);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    result = PB::Writer::write(this, *(v3 + 92));
    if ((*(v3 + 156) & 8) == 0)
    {
      return result;
    }

    goto LABEL_75;
  }

LABEL_73:
  v13 = *(v3 + 154);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_74;
  }

LABEL_37:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_75:
  v14 = *(v3 + 32);

  return PB::Writer::write(this, v14);
}

uint64_t sub_245D86F10(uint64_t result)
{
  *result = &unk_2858CC9A0;
  *(result + 20) = 0;
  return result;
}

void sub_245D86F38(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D86F70(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC9A0;
  *(result + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(result + 20) = 1;
    *(result + 8) = v3;
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
    v4 = *(a2 + 16);
    *(result + 20) = v2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_245D86FD4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "gyroOn");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D87050(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_56;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v3 = *(this + 1);
        v2 = *(this + 2);
        if (v3 >= v2)
        {
          v32 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v31 = *(*this + v3++);
          *(this + 1) = v3;
          v32 = v31 != 0;
        }

        *(a1 + 16) = v32;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v33 = 0;
          v34 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v35 = v3 - v23;
          v36 = (v24 + v23);
          v37 = v23 + 1;
          while (1)
          {
            if (!v35)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_51;
            }

            v38 = v37;
            v39 = *v36;
            *(this + 1) = v38;
            v27 |= (v39 & 0x7F) << v33;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            v37 = v38 + 1;
            v14 = v34++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_50:
          v3 = v38;
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

LABEL_51:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v40 = 0;
          return v40 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_56:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245D87310(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245D8737C(uint64_t result)
{
  *result = &unk_2858CC9D8;
  *(result + 52) = 0;
  return result;
}

void sub_245D873A4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D873DC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CC9D8;
  *(result + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 52) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 52);
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(result + 52) = v3;
    *(result + 24) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 8);
    v3 |= 1u;
    *(result + 52) = v3;
    *(result + 8) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 52) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 40);
  v3 |= 0x20u;
  *(result + 52) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 36);
  v3 |= 0x10u;
  *(result + 52) = v3;
  *(result + 36) = v9;
  v2 = *(a2 + 52);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 50);
  v3 |= 0x1000u;
  *(result + 52) = v3;
  *(result + 50) = v10;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 44);
  v3 |= 0x40u;
  *(result + 52) = v3;
  *(result + 44) = v11;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 45);
  v3 |= 0x80u;
  *(result + 52) = v3;
  *(result + 45) = v12;
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 46);
  v3 |= 0x100u;
  *(result + 52) = v3;
  *(result + 46) = v13;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 47);
  v3 |= 0x200u;
  *(result + 52) = v3;
  *(result + 47) = v14;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_28:
    v16 = *(a2 + 49);
    *(result + 52) = v3 | 0x800;
    *(result + 49) = v16;
    return result;
  }

LABEL_27:
  v15 = *(a2 + 48);
  v3 |= 0x400u;
  *(result + 52) = v3;
  *(result + 48) = v15;
  if ((*(a2 + 52) & 0x800) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_245D87574(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if ((v5 & 0x40) != 0)
  {
    v7 = *(a1 + 44);
    PB::TextFormatter::format(this, "consideredAlert");
    v5 = *(a1 + 52);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 45);
  PB::TextFormatter::format(this, "consideredRecovery");
  v5 = *(a1 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 46);
  PB::TextFormatter::format(this, "consideredSOS");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 47);
  PB::TextFormatter::format(this, "droppedAlert");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "droppedRecovery");
  v5 = *(a1 + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a1 + 49);
  PB::TextFormatter::format(this, "droppedSOS");
  v5 = *(a1 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a1 + 8);
  PB::TextFormatter::format(this, "fallTime");
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = *(a1 + 32);
  PB::TextFormatter::format(this, "impactOperatingMode");
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "iostime", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = *(a1 + 50);
  PB::TextFormatter::format(this, "isOtherStateMachineProcessingNearbyImpact");
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a1 + 36);
  PB::TextFormatter::format(this, "refereeCyclingStateDecision");
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v17 = *(a1 + 40);
  PB::TextFormatter::format(this, "refereeOperatingMode");
  if ((*(a1 + 52) & 4) != 0)
  {
LABEL_14:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sensorTime");
  }

LABEL_15:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D87758(uint64_t a1, PB::Reader *this)
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_161;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 52) |= 2u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 16) = *(*this + v2);
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_157;
        case 2u:
          *(a1 + 52) |= 4u;
          v60 = *(this + 1);
          v2 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v104 = 0;
            v105 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(this + 1);
            }

            v106 = v2 - v60;
            v107 = (v61 + v60);
            v108 = v60 + 1;
            while (1)
            {
              if (!v106)
              {
                v64 = 0;
                *(this + 24) = 1;
                goto LABEL_156;
              }

              v109 = v108;
              v110 = *v107;
              *(this + 1) = v109;
              v64 |= (v110 & 0x7F) << v104;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              --v106;
              ++v107;
              v108 = v109 + 1;
              v14 = v105++ > 8;
              if (v14)
              {
                v64 = 0;
LABEL_155:
                v2 = v109;
                goto LABEL_156;
              }
            }

            if (*(this + 24))
            {
              v64 = 0;
            }

            goto LABEL_155;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(this + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_156;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          v64 = 0;
LABEL_156:
          *(a1 + 24) = v64;
          goto LABEL_157;
        case 3u:
          *(a1 + 52) |= 1u;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v97 = 0;
            v98 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v99 = v2 - v52;
            v100 = (v53 + v52);
            v101 = v52 + 1;
            while (1)
            {
              if (!v99)
              {
                v56 = 0;
                *(this + 24) = 1;
                goto LABEL_152;
              }

              v102 = v101;
              v103 = *v100;
              *(this + 1) = v102;
              v56 |= (v103 & 0x7F) << v97;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              --v99;
              ++v100;
              v101 = v102 + 1;
              v14 = v98++ > 8;
              if (v14)
              {
                v56 = 0;
LABEL_151:
                v2 = v102;
                goto LABEL_152;
              }
            }

            if (*(this + 24))
            {
              v56 = 0;
            }

            goto LABEL_151;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_152;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          v56 = 0;
LABEL_152:
          *(a1 + 8) = v56;
          goto LABEL_157;
        case 4u:
          *(a1 + 52) |= 8u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v92 = v2 - v44;
            v93 = (v45 + v44);
            v94 = v44 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_148;
              }

              v95 = v94;
              v96 = *v93;
              *(this + 1) = v95;
              v48 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_147:
                v2 = v95;
                goto LABEL_148;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_147;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_148;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_148:
          *(a1 + 32) = v48;
          goto LABEL_157;
        case 5u:
          *(a1 + 52) |= 0x20u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v24;
            v79 = (v25 + v24);
            v80 = v24 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_140;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v28 |= (v82 & 0x7F) << v76;
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
                LODWORD(v28) = 0;
LABEL_139:
                v2 = v81;
                goto LABEL_140;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_139;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_140;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_140:
          *(a1 + 40) = v28;
          goto LABEL_157;
        case 6u:
          *(a1 + 52) |= 0x10u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v85 = v2 - v34;
            v86 = (v35 + v34);
            v87 = v34 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_144;
              }

              v88 = v87;
              v89 = *v86;
              *(this + 1) = v88;
              v38 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              --v85;
              ++v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_143:
                v2 = v88;
                goto LABEL_144;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_143;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_144;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_144:
          *(a1 + 36) = v38;
          goto LABEL_157;
        case 7u:
          *(a1 + 52) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v69 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v68 = *(*this + v2++);
            *(this + 1) = v2;
            v69 = v68 != 0;
          }

          *(a1 + 50) = v69;
          goto LABEL_157;
        case 0xBu:
          *(a1 + 52) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 44) = v71;
          goto LABEL_157;
        case 0xCu:
          *(a1 + 52) |= 0x80u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v75 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v74 = *(*this + v2++);
            *(this + 1) = v2;
            v75 = v74 != 0;
          }

          *(a1 + 45) = v75;
          goto LABEL_157;
        case 0xDu:
          *(a1 + 52) |= 0x100u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v73 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v72 = *(*this + v2++);
            *(this + 1) = v2;
            v73 = v72 != 0;
          }

          *(a1 + 46) = v73;
          goto LABEL_157;
        case 0x15u:
          *(a1 + 52) |= 0x200u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 47) = v23;
          goto LABEL_157;
        case 0x16u:
          *(a1 + 52) |= 0x400u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 48) = v43;
          goto LABEL_157;
        case 0x17u:
          *(a1 + 52) |= 0x800u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 49) = v33;
          goto LABEL_157;
        default:
          if (!PB::Reader::skip(this))
          {
            v111 = 0;
            return v111 & 1;
          }

          v2 = *(this + 1);
LABEL_157:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_161;
          }

          break;
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

LABEL_161:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t sub_245D88088(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(v3 + 50);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(v3 + 44);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(v3 + 45);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(v3 + 46);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v15 = *(v3 + 48);
    result = PB::Writer::write(this);
    if ((*(v3 + 52) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v14 = *(v3 + 47);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_27:
  v16 = *(v3 + 49);

  return PB::Writer::write(this);
}

void *sub_245D8822C(void *result)
{
  *result = &unk_2858CCA10;
  *(result + 364) = 0;
  return result;
}

void sub_245D88258(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245D88290(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCA10;
  v2 = (a1 + 364);
  *(a1 + 364) = 0;
  v3 = (a2 + 364);
  v4 = *(a2 + 364);
  if ((v4 & 0x40000000) != 0)
  {
    v6 = *(a2 + 248);
    v5 = 0x40000000;
    *v2 = 0x40000000;
    *(a1 + 248) = v6;
    v4 = *v3;
    if ((*v3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_5:
    v7 = *(a2 + 256);
    v5 |= 0x80000000uLL;
    *v2 = v5;
    *(a1 + 256) = v7;
    v4 = *v3;
  }

LABEL_6:
  if ((v4 & 0x80000) != 0)
  {
    v8 = *(a2 + 160);
    v5 |= 0x80000uLL;
    *v2 = v5;
    *(a1 + 160) = v8;
    v4 = *v3;
    if ((*v3 & 0x100000) == 0)
    {
LABEL_8:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 168);
  v5 |= 0x100000uLL;
  *v2 = v5;
  *(a1 + 168) = v9;
  v4 = *v3;
  if ((*v3 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v10 = *(a2 + 176);
  v5 |= 0x200000uLL;
  *v2 = v5;
  *(a1 + 176) = v10;
  v4 = *v3;
  if ((*v3 & 0x8000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a2 + 320);
  v5 |= 0x8000000000uLL;
  *v2 = v5;
  *(a1 + 320) = v11;
  v4 = *v3;
  if ((*v3 & 0x40000000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(a2 + 344);
  v5 |= 0x40000000000uLL;
  *v2 = v5;
  *(a1 + 344) = v12;
  v4 = *v3;
  if ((*v3 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(a2 + 328);
  v5 |= 0x10000000000uLL;
  *v2 = v5;
  *(a1 + 328) = v13;
  v4 = *v3;
  if ((*v3 & 0x20000000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 336);
  v5 |= 0x20000000000uLL;
  *v2 = v5;
  *(a1 + 336) = v14;
  v4 = *v3;
  if ((*v3 & 0x80000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 352);
  v5 |= 0x80000000000uLL;
  *v2 = v5;
  *(a1 + 352) = v15;
  v4 = *v3;
  if ((*v3 & 0x100000000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  v16 = *(a2 + 360);
  v5 |= 0x100000000000uLL;
  *v2 = v5;
  *(a1 + 360) = v16;
  v4 = *v3;
  if ((*v3 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  v17 = *(a2 + 200);
  v5 |= 0x1000000uLL;
  *v2 = v5;
  *(a1 + 200) = v17;
  v4 = *v3;
  if ((*v3 & 0x8000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18 = *(a2 + 224);
  v5 |= 0x8000000uLL;
  *v2 = v5;
  *(a1 + 224) = v18;
  v4 = *v3;
  if ((*v3 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 208);
  v5 |= 0x2000000uLL;
  *v2 = v5;
  *(a1 + 208) = v19;
  v4 = *v3;
  if ((*v3 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 216);
  v5 |= 0x4000000uLL;
  *v2 = v5;
  *(a1 + 216) = v20;
  v4 = *v3;
  if ((*v3 & 0x400000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 184);
  v5 |= 0x400000uLL;
  *v2 = v5;
  *(a1 + 184) = v21;
  v4 = *v3;
  if ((*v3 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 192);
  v5 |= 0x800000uLL;
  *v2 = v5;
  *(a1 + 192) = v22;
  v4 = *v3;
  if ((*v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v4 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a2 + 48);
  v5 |= 0x20uLL;
  *v2 = v5;
  *(a1 + 48) = v23;
  v4 = *v3;
  if ((*v3 & 8) == 0)
  {
LABEL_23:
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(a2 + 32);
  v5 |= 8uLL;
  *v2 = v5;
  *(a1 + 32) = v24;
  v4 = *v3;
  if ((*v3 & 1) == 0)
  {
LABEL_24:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  v25 = *(a2 + 8);
  v5 |= 1uLL;
  *v2 = v5;
  *(a1 + 8) = v25;
  v4 = *v3;
  if ((*v3 & 0x40) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  v26 = *(a2 + 56);
  v5 |= 0x40uLL;
  *v2 = v5;
  *(a1 + 56) = v26;
  v4 = *v3;
  if ((*v3 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  v27 = *(a2 + 72);
  v5 |= 0x100uLL;
  *v2 = v5;
  *(a1 + 72) = v27;
  v4 = *v3;
  if ((*v3 & 0x10) == 0)
  {
LABEL_27:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28 = *(a2 + 40);
  v5 |= 0x10uLL;
  *v2 = v5;
  *(a1 + 40) = v28;
  v4 = *v3;
  if ((*v3 & 0x200) == 0)
  {
LABEL_28:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  v29 = *(a2 + 80);
  v5 |= 0x200uLL;
  *v2 = v5;
  *(a1 + 80) = v29;
  v4 = *v3;
  if ((*v3 & 0x400) == 0)
  {
LABEL_29:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  v30 = *(a2 + 88);
  v5 |= 0x400uLL;
  *v2 = v5;
  *(a1 + 88) = v30;
  v4 = *v3;
  if ((*v3 & 0x800) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  v31 = *(a2 + 96);
  v5 |= 0x800uLL;
  *v2 = v5;
  *(a1 + 96) = v31;
  v4 = *v3;
  if ((*v3 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v32 = *(a2 + 120);
  v5 |= 0x4000uLL;
  *v2 = v5;
  *(a1 + 120) = v32;
  v4 = *v3;
  if ((*v3 & 2) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = *(a2 + 16);
  v5 |= 2uLL;
  *v2 = v5;
  *(a1 + 16) = v33;
  v4 = *v3;
  if ((*v3 & 0x8000) == 0)
  {
LABEL_33:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(a2 + 128);
  v5 |= 0x8000uLL;
  *v2 = v5;
  *(a1 + 128) = v34;
  v4 = *v3;
  if ((*v3 & 0x800000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = *(a2 + 288);
  v5 |= 0x800000000uLL;
  *v2 = v5;
  *(a1 + 288) = v35;
  v4 = *v3;
  if ((*v3 & 0x400000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v36 = *(a2 + 280);
  v5 |= 0x400000000uLL;
  *v2 = v5;
  *(a1 + 280) = v36;
  v4 = *v3;
  if ((*v3 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v37 = *(a2 + 272);
  v5 |= 0x200000000uLL;
  *v2 = v5;
  *(a1 + 272) = v37;
  v4 = *v3;
  if ((*v3 & 0x100000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = *(a2 + 264);
  v5 |= 0x100000000uLL;
  *v2 = v5;
  *(a1 + 264) = v38;
  v4 = *v3;
  if ((*v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v39 = *(a2 + 240);
  v5 |= 0x20000000uLL;
  *v2 = v5;
  *(a1 + 240) = v39;
  v4 = *v3;
  if ((*v3 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = *(a2 + 232);
  v5 |= 0x10000000uLL;
  *v2 = v5;
  *(a1 + 232) = v40;
  v4 = *v3;
  if ((*v3 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v41 = *(a2 + 112);
  v5 |= 0x2000uLL;
  *v2 = v5;
  *(a1 + 112) = v41;
  v4 = *v3;
  if ((*v3 & 0x10000) == 0)
  {
LABEL_41:
    if ((v4 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v42 = *(a2 + 136);
  v5 |= 0x10000uLL;
  *v2 = v5;
  *(a1 + 136) = v42;
  v4 = *v3;
  if ((*v3 & 4) == 0)
  {
LABEL_42:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  v43 = *(a2 + 24);
  v5 |= 4uLL;
  *v2 = v5;
  *(a1 + 24) = v43;
  v4 = *v3;
  if ((*v3 & 0x40000) == 0)
  {
LABEL_43:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_87;
  }

LABEL_86:
  v44 = *(a2 + 152);
  v5 |= 0x40000uLL;
  *v2 = v5;
  *(a1 + 152) = v44;
  v4 = *v3;
  if ((*v3 & 0x20000) == 0)
  {
LABEL_44:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_87:
  v45 = *(a2 + 144);
  v5 |= 0x20000uLL;
  *v2 = v5;
  *(a1 + 144) = v45;
  v4 = *v3;
  if ((*v3 & 0x80) == 0)
  {
LABEL_45:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  v46 = *(a2 + 64);
  v5 |= 0x80uLL;
  *v2 = v5;
  *(a1 + 64) = v46;
  v4 = *v3;
  if ((*v3 & 0x1000) == 0)
  {
LABEL_46:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  v47 = *(a2 + 104);
  v5 |= 0x1000uLL;
  *v2 = v5;
  *(a1 + 104) = v47;
  v4 = *v3;
  if ((*v3 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_91;
  }

LABEL_90:
  v48 = *(a2 + 312);
  v5 |= 0x4000000000uLL;
  *v2 = v5;
  *(a1 + 312) = v48;
  v4 = *v3;
  if ((*v3 & 0x1000000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x2000000000) == 0)
    {
      return result;
    }

LABEL_92:
    result = *(a2 + 304);
    *v2 = v5 | 0x2000000000;
    *(a1 + 304) = result;
    return result;
  }

LABEL_91:
  v49 = *(a2 + 296);
  v5 |= 0x1000000000uLL;
  *v2 = v5;
  *(a1 + 296) = v49;
  if ((*v3 & 0x2000000000) != 0)
  {
    goto LABEL_92;
  }

  return result;
}

uint64_t sub_245D887B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = (a1 + 364);
  v6 = *(a1 + 364);
  if (v6)
  {
    v8 = *(a1 + 8);
    PB::TextFormatter::format(this, "alertCanceledBecauseOfAbsenceOfQuiessence");
    v6 = *v5;
    if ((*v5 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfActive");
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfChargerState");
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfCyclingPostImpact");
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfDecimatedLowFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(a1 + 48);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfDistanceTraveledPostImpact");
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a1 + 56);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfHighFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfLockedNoMotionPre");
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v16 = *(a1 + 72);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfLowFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  v17 = *(a1 + 80);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfNumberOfPeaksFFT");
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18 = *(a1 + 88);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfOffBody");
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a1 + 96);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfRepetitiveMotion");
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a1 + 104);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfRetraction");
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a1 + 112);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfSimilarPeaks");
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a1 + 120);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfStand");
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a1 + 128);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfSteps");
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(a1 + 136);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristState");
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  v25 = *(a1 + 144);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristStatePost");
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  v26 = *(a1 + 152);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristStatePre");
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  v27 = *(a1 + 160);
  PB::TextFormatter::format(this, "fallStatsDispatchResetOnAccelSensorTime");
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28 = *(a1 + 168);
  PB::TextFormatter::format(this, "fallStatsDispatchRestoredOnAccelSensorTime");
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  v29 = *(a1 + 176);
  PB::TextFormatter::format(this, "hkWorkoutId");
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  v30 = *(a1 + 184);
  PB::TextFormatter::format(this, "impactCanceledBecauseOfExistingAlert");
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  v31 = *(a1 + 192);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfCyclingImpactThresholds");
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  v32 = *(a1 + 200);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfMaxAccelNormThreshold");
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = *(a1 + 208);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfMultiPeaks");
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(a1 + 216);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfNaiveBayesClassifier");
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = *(a1 + 224);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfOtherHardThresholds");
  v6 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  v36 = *(a1 + 232);
  PB::TextFormatter::format(this, "leavingImpactBecauseOfNewImpactNewImpact");
  v6 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  v37 = *(a1 + 240);
  PB::TextFormatter::format(this, "leavingImpactBecauseOfNewImpactOldImpact");
  v6 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = *(a1 + 360);
  PB::TextFormatter::format(this, "operatingMode");
  v6 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  v39 = *(a1 + 248);
  PB::TextFormatter::format(this, "skippedFallStatsSensorTime");
  v6 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = *(a1 + 256);
  PB::TextFormatter::format(this, "skippedGyroSensorTime");
  v6 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  v41 = *(a1 + 264);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfAbsenceOfLongLie");
  v6 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  v42 = *(a1 + 272);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfActive");
  v6 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  v43 = *(a1 + 280);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfStand");
  v6 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  v44 = *(a1 + 288);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfSteps");
  v6 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  v45 = *(a1 + 296);
  PB::TextFormatter::format(this, "sosConsideredFallTimestamp");
  v6 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "sosConsideredIOSTime", *(a1 + 304));
  v6 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  v46 = *(a1 + 312);
  PB::TextFormatter::format(this, "sosConsideredSensorTime");
  v6 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  v47 = *(a1 + 320);
  PB::TextFormatter::format(this, "workoutId");
  v6 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = *(a1 + 328);
  PB::TextFormatter::format(this, "workoutTransitionPause");
  v6 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  v49 = *(a1 + 336);
  PB::TextFormatter::format(this, "workoutTransitionResume");
  v6 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_93:
  v50 = *(a1 + 344);
  PB::TextFormatter::format(this, "workoutTransitionStart");
  if ((*v5 & 0x80000000000) != 0)
  {
LABEL_46:
    v7 = *(a1 + 352);
    PB::TextFormatter::format(this, "workoutTransitionStop");
  }

LABEL_47:

  return MEMORY[0x2821A4560](this);
}