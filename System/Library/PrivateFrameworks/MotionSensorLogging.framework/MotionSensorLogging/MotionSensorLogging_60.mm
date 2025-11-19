void CMMsl::ViewObstructedMachineLearningProbabilities::~ViewObstructedMachineLearningProbabilities(CMMsl::ViewObstructedMachineLearningProbabilities *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ViewObstructedMachineLearningProbabilities::ViewObstructedMachineLearningProbabilities(CMMsl::ViewObstructedMachineLearningProbabilities *this, const CMMsl::ViewObstructedMachineLearningProbabilities *a2)
{
  *this = &unk_286C24440;
  *(this + 16) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 32);
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
    result = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 32);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 32) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 32) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 32) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 32) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 32) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 4);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 32) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 32) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_28:
    result = *(a2 + 10);
    *(this + 32) = v3 | 0x80;
    *(this + 10) = result;
    return result;
  }

LABEL_27:
  result = *(a2 + 6);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 6) = result;
  if ((*(a2 + 32) & 0x80) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

CMMsl *CMMsl::ViewObstructedMachineLearningProbabilities::operator=(CMMsl *a1, const CMMsl::ViewObstructedMachineLearningProbabilities *a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningProbabilities::ViewObstructedMachineLearningProbabilities(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ViewObstructedMachineLearningProbabilities *a2, CMMsl::ViewObstructedMachineLearningProbabilities *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v15;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  return result;
}

float CMMsl::ViewObstructedMachineLearningProbabilities::ViewObstructedMachineLearningProbabilities(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24440;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

CMMsl *CMMsl::ViewObstructedMachineLearningProbabilities::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningProbabilities::ViewObstructedMachineLearningProbabilities(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ViewObstructedMachineLearningProbabilities::formatText(CMMsl::ViewObstructedMachineLearningProbabilities *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "bagObstructed", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "closeCoveredBagObstructed", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "closeCoveredObstructed", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "closeCoveredPocketObstructed", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "inHandObstructed", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "looseCoveredBagObstructed", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "looseCoveredObstructed", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "looseCoveredPocketObstructed", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "obstructed", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "otherObstructed", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "pocketObstructed", *(this + 14));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v6 = *(this + 1);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 32) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "visible", *(this + 15));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ViewObstructedMachineLearningProbabilities::readFrom(CMMsl::ViewObstructedMachineLearningProbabilities *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_83:
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
        goto LABEL_83;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 1u;
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
                goto LABEL_78;
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
LABEL_77:
                v2 = v35;
                goto LABEL_78;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_77;
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
              goto LABEL_78;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_78:
          *(this + 1) = v26;
          break;
        case 2u:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_73;
        case 3u:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_73;
        case 4u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_73;
        case 5u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_73;
        case 6u:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_73;
        case 7u:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_73;
        case 8u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_73;
        case 9u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_73;
        case 0xAu:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_73;
        case 0xBu:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_73;
        case 0xCu:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_73;
        case 0xDu:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_63:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v2);
LABEL_73:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_79:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_83;
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
        goto LABEL_83;
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
      goto LABEL_79;
    }

    v37 = 0;
  }

  return v37 & 1;
}

uint64_t CMMsl::ViewObstructedMachineLearningProbabilities::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
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

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_27:
  v6 = *(v3 + 40);

  return PB::Writer::write(a2, v6);
}

uint64_t CMMsl::ViewObstructedMachineLearningProbabilities::hash_value(CMMsl::ViewObstructedMachineLearningProbabilities *this)
{
  v1 = *(this + 32);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_40:
    v4 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_41:
    v6 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    v8 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_43:
    v10 = 0;
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_44:
    v12 = 0;
    if ((*(this + 32) & 0x1000) != 0)
    {
      goto LABEL_18;
    }

LABEL_45:
    v14 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_21;
    }

LABEL_46:
    v16 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_47:
    v18 = 0;
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_27;
    }

LABEL_48:
    v20 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_30;
    }

LABEL_49:
    v22 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

  v2 = *(this + 1);
  if ((v1 & 4) == 0)
  {
    goto LABEL_40;
  }

LABEL_3:
  v3 = *(this + 5);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_6:
  v5 = *(this + 7);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  v7 = *(this + 8);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v9 = *(this + 9);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((*(this + 32) & 0x400) == 0)
  {
    goto LABEL_44;
  }

LABEL_15:
  v11 = *(this + 13);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 32) & 0x1000) == 0)
  {
    goto LABEL_45;
  }

LABEL_18:
  v13 = *(this + 15);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_46;
  }

LABEL_21:
  v15 = *(this + 12);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_24:
  v17 = *(this + 4);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((*(this + 32) & 0x800) == 0)
  {
    goto LABEL_48;
  }

LABEL_27:
  v19 = *(this + 14);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_49;
  }

LABEL_30:
  v21 = *(this + 11);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_33:
    v23 = *(this + 6);
    v24 = LODWORD(v23);
    if (v23 == 0.0)
    {
      v24 = 0;
    }

    if ((v1 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_51:
    v26 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26;
  }

LABEL_50:
  v24 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_36:
  v25 = *(this + 10);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26;
}

void CMMsl::ViewObstructedState::~ViewObstructedState(CMMsl::ViewObstructedState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ViewObstructedState::ViewObstructedState(uint64_t this, const CMMsl::ViewObstructedState *a2)
{
  *this = &unk_286C24478;
  *(this + 84) = 0;
  v2 = *(a2 + 21);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 84) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 21);
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 80);
    v3 |= 0x20000u;
    *(this + 84) = v3;
    *(this + 80) = v5;
    v2 = *(a2 + 21);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 84) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 21);
    if ((v2 & 0x2000) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 84) = v3;
  *(this + 64) = v7;
  v2 = *(a2 + 21);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 84) = v3;
  *(this + 60) = v8;
  v2 = *(a2 + 21);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 84) = v3;
  *(this + 48) = v9;
  v2 = *(a2 + 21);
  if ((v2 & 0x10000) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 84) = v3;
  *(this + 76) = v10;
  v2 = *(a2 + 21);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 84) = v3;
  *(this + 52) = v11;
  v2 = *(a2 + 21);
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 84) = v3;
  *(this + 56) = v12;
  v2 = *(a2 + 21);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 84) = v3;
  *(this + 36) = v13;
  v2 = *(a2 + 21);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 84) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 21);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = *(a2 + 6);
  v3 |= 8u;
  *(this + 84) = v3;
  *(this + 24) = v15;
  v2 = *(a2 + 21);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 84) = v3;
  *(this + 28) = v16;
  v2 = *(a2 + 21);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 84) = v3;
  *(this + 32) = v17;
  v2 = *(a2 + 21);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 84) = v3;
  *(this + 68) = v18;
  v2 = *(a2 + 21);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 84) = v3;
  *(this + 72) = v19;
  v2 = *(a2 + 21);
  if ((v2 & 0x100) == 0)
  {
LABEL_21:
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 84) = v3;
  *(this + 44) = v20;
  v2 = *(a2 + 21);
  if ((v2 & 2) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      return this;
    }

LABEL_40:
    v22 = *(a2 + 81);
    *(this + 84) = v3 | 0x40000;
    *(this + 81) = v22;
    return this;
  }

LABEL_39:
  v21 = *(a2 + 4);
  v3 |= 2u;
  *(this + 84) = v3;
  *(this + 16) = v21;
  if ((*(a2 + 21) & 0x40000) != 0)
  {
    goto LABEL_40;
  }

  return this;
}

CMMsl *CMMsl::ViewObstructedState::operator=(CMMsl *a1, const CMMsl::ViewObstructedState *a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedState::ViewObstructedState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ViewObstructedState *a2, CMMsl::ViewObstructedState *a3)
{
  v3 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  v7 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  v8 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v14;
  v15 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v15;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v4;
  return result;
}

float CMMsl::ViewObstructedState::ViewObstructedState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24478;
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 81) = *(a2 + 81);
  return result;
}

CMMsl *CMMsl::ViewObstructedState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedState::ViewObstructedState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ViewObstructedState::formatText(CMMsl::ViewObstructedState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 21);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "currentEventTag");
    v5 = *(this + 21);
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

  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "currentState");
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "filteredGravityX", *(this + 6));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "filteredGravityY", *(this + 7));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "filteredGravityZ", *(this + 8));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "gravityAngle", *(this + 9));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "gravityShift", *(this + 10));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "isMovingFiltered", *(this + 11));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "lux", *(this + 12));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "luxBaseline", *(this + 13));
  v5 = *(this + 21);
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
  PB::TextFormatter::format(a2, "luxShift", *(this + 14));
  v5 = *(this + 21);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(this + 15);
  PB::TextFormatter::format(a2, "motionType");
  v5 = *(this + 21);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(this + 16);
  PB::TextFormatter::format(a2, "orientation");
  v5 = *(this + 21);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "pocketProbEnter", *(this + 17));
  v5 = *(this + 21);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "pocketProbExit", *(this + 18));
  v5 = *(this + 21);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "pocketProbability", *(this + 19));
  v5 = *(this + 21);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v11 = *(this + 80);
  PB::TextFormatter::format(a2, "shouldSuppress");
  v5 = *(this + 21);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  v12 = *(this + 81);
  PB::TextFormatter::format(a2, "sufficientMotion");
  if (*(this + 21))
  {
LABEL_20:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ViewObstructedState::readFrom(CMMsl::ViewObstructedState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_171:
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
        goto LABEL_171;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 21) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v89 = (v23 + v22);
            v90 = v2 - v22;
            v91 = v22 + 1;
            while (1)
            {
              if (!v90)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_162;
              }

              v92 = v91;
              v93 = *v89;
              *(a2 + 1) = v92;
              v26 |= (v93 & 0x7F) << v87;
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
                v26 = 0;
LABEL_161:
                v2 = v92;
                goto LABEL_162;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_161;
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
              goto LABEL_162;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_162:
          *(this + 1) = v26;
          break;
        case 2u:
          *(this + 21) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v55 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v54 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v55 = v54 != 0;
          }

          *(this + 80) = v55;
          break;
        case 3u:
          *(this + 21) |= 4u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v75 = (v39 + v38);
            v76 = v2 - v38;
            v77 = v38 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              v78 = v77;
              v79 = *v75;
              *(a2 + 1) = v78;
              v42 |= (v79 & 0x7F) << v73;
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
                LODWORD(v42) = 0;
LABEL_153:
                v2 = v78;
                goto LABEL_154;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_153;
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
              goto LABEL_154;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_154:
          *(this + 5) = v42;
          break;
        case 4u:
          *(this + 21) |= 0x2000u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v82 = (v47 + v46);
            v83 = v2 - v46;
            v84 = v46 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_158;
              }

              v85 = v84;
              v86 = *v82;
              *(a2 + 1) = v85;
              v50 |= (v86 & 0x7F) << v80;
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
                LODWORD(v50) = 0;
LABEL_157:
                v2 = v85;
                goto LABEL_158;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_157;
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
              goto LABEL_158;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_158:
          *(this + 16) = v50;
          break;
        case 5u:
          *(this + 21) |= 0x1000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v68 = (v31 + v30);
            v69 = v2 - v30;
            v70 = v30 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_150;
              }

              v71 = v70;
              v72 = *v68;
              *(a2 + 1) = v71;
              v34 |= (v72 & 0x7F) << v66;
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
                LODWORD(v34) = 0;
LABEL_149:
                v2 = v71;
                goto LABEL_150;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_149;
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
              goto LABEL_150;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_150:
          *(this + 15) = v34;
          break;
        case 6u:
          *(this + 21) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_141;
        case 7u:
          *(this + 21) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_141;
        case 8u:
          *(this + 21) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_141;
        case 9u:
          *(this + 21) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_141;
        case 0xAu:
          *(this + 21) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_141;
        case 0xBu:
          *(this + 21) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_141;
        case 0xCu:
          *(this + 21) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_141;
        case 0xDu:
          *(this + 21) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_141;
        case 0xEu:
          *(this + 21) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_141;
        case 0xFu:
          *(this + 21) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_141;
        case 0x10u:
          *(this + 21) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_141;
        case 0x11u:
          *(this + 21) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_95:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 11) = *(*a2 + v2);
LABEL_141:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        case 0x12u:
          *(this + 21) |= 2u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v96 = (v57 + v56);
            v97 = v2 - v56;
            v98 = v56 + 1;
            while (1)
            {
              if (!v97)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_166;
              }

              v99 = v98;
              v100 = *v96;
              *(a2 + 1) = v99;
              v60 |= (v100 & 0x7F) << v94;
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
                LODWORD(v60) = 0;
LABEL_165:
                v2 = v99;
                goto LABEL_166;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_165;
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
              goto LABEL_166;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_166:
          *(this + 4) = v60;
          break;
        case 0x13u:
          *(this + 21) |= 0x40000u;
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

          *(this + 81) = v65;
          break;
        default:
          goto LABEL_17;
      }

LABEL_167:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_171;
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
        goto LABEL_171;
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
      goto LABEL_167;
    }

    v101 = 0;
  }

  return v101 & 1;
}

uint64_t CMMsl::ViewObstructedState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 84);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 84);
    if ((v4 & 0x20000) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 80);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(v3 + 60);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 84);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 84);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 84);
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 84);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 84);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 84);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 84);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 84);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 84);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 84);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v10 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 84) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 84);
  if ((v4 & 2) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x40000) == 0)
  {
    return this;
  }

LABEL_39:
  v11 = *(v3 + 81);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::ViewObstructedState::hash_value(CMMsl::ViewObstructedState *this)
{
  v1 = *(this + 21);
  if (v1)
  {
    v2 = *(this + 1);
    if ((v1 & 0x20000) != 0)
    {
LABEL_3:
      v3 = *(this + 80);
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_4:
    v4 = *(this + 5);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_5:
    v5 = *(this + 16);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_6:
    v6 = *(this + 15);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_7;
    }

LABEL_45:
    v8 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_10;
    }

LABEL_46:
    v10 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_13;
    }

LABEL_47:
    v12 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_16;
    }

LABEL_48:
    v14 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_19;
    }

LABEL_49:
    v16 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_22;
    }

LABEL_50:
    v18 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    v20 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_28;
    }

LABEL_52:
    v22 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_53:
    v24 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_54;
  }

LABEL_44:
  v6 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_7:
  v7 = *(this + 12);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_46;
  }

LABEL_10:
  v9 = *(this + 19);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_47;
  }

LABEL_13:
  v11 = *(this + 13);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  v13 = *(this + 14);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v15 = *(this + 9);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_50;
  }

LABEL_22:
  v17 = *(this + 10);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  v19 = *(this + 6);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_52;
  }

LABEL_28:
  v21 = *(this + 7);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_53;
  }

LABEL_31:
  v23 = *(this + 8);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x4000) != 0)
  {
LABEL_34:
    v25 = *(this + 17);
    v26 = LODWORD(v25);
    if (v25 == 0.0)
    {
      v26 = 0;
    }

    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_37;
    }

LABEL_55:
    v28 = 0;
    goto LABEL_56;
  }

LABEL_54:
  v26 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_55;
  }

LABEL_37:
  v27 = *(this + 18);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

LABEL_56:
  if ((v1 & 0x100) == 0)
  {
    v29 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_58;
    }

LABEL_63:
    v30 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_59;
    }

LABEL_64:
    v31 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31;
  }

  v32 = *(this + 11);
  v29 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v29 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  v30 = *(this + 4);
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_64;
  }

LABEL_59:
  v31 = *(this + 81);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31;
}

void CMMsl::VisionCompassBias::~VisionCompassBias(CMMsl::VisionCompassBias *this)
{
  *this = &unk_286C244B0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VisionCompassBias::~VisionCompassBias(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VisionCompassBias *CMMsl::VisionCompassBias::VisionCompassBias(CMMsl::VisionCompassBias *this, const CMMsl::VisionCompassBias *a2)
{
  *this = &unk_286C244B0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 19) = 0;
  v5 = *(a2 + 38);
  if (v5)
  {
    v7 = *(a2 + 4);
    v6 = 1;
    *(this + 38) = 1;
    *(this + 4) = v7;
    v5 = *(a2 + 38);
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 2) != 0)
  {
LABEL_5:
    v8 = *(a2 + 5);
    v6 |= 2u;
    *(this + 38) = v6;
    *(this + 5) = v8;
    v5 = *(a2 + 38);
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
    v13 = *(a2 + 12);
    v6 |= 4u;
    *(this + 38) = v6;
    *(this + 12) = v13;
    v5 = *(a2 + 38);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 14);
  v6 |= 0x10u;
  *(this + 38) = v6;
  *(this + 14) = v14;
  if ((*(a2 + 38) & 8) != 0)
  {
LABEL_9:
    v9 = *(a2 + 13);
    *(this + 38) = v6 | 8;
    *(this + 13) = v9;
  }

LABEL_10:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v10 = *(a2 + 38);
  if ((v10 & 0x40) != 0)
  {
    v15 = *(a2 + 16);
    *(this + 38) |= 0x40u;
    *(this + 16) = v15;
    v10 = *(a2 + 38);
    if ((v10 & 0x80) == 0)
    {
LABEL_14:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v17 = *(a2 + 18);
      *(this + 38) |= 0x100u;
      *(this + 18) = v17;
      if ((*(a2 + 38) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_16;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a2 + 17);
  *(this + 38) |= 0x80u;
  *(this + 17) = v16;
  v10 = *(a2 + 38);
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v10 & 0x20) != 0)
  {
LABEL_16:
    v11 = *(a2 + 15);
    *(this + 38) |= 0x20u;
    *(this + 15) = v11;
  }

  return this;
}

CMMsl *CMMsl::VisionCompassBias::operator=(CMMsl *a1, const CMMsl::VisionCompassBias *a2)
{
  if (a1 != a2)
  {
    CMMsl::VisionCompassBias::VisionCompassBias(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisionCompassBias::~VisionCompassBias(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::VisionCompassBias *a2, CMMsl::VisionCompassBias *a3)
{
  v3 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LODWORD(v5) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v5) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  LODWORD(v5) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v5) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  LODWORD(v8) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  LODWORD(v8) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v8;
  return result;
}

uint64_t CMMsl::VisionCompassBias::VisionCompassBias(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C244B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 76) = *(a2 + 76);
  *(a2 + 76) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  sub_25AD28758(a1 + 8, (a2 + 8));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

CMMsl *CMMsl::VisionCompassBias::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VisionCompassBias::VisionCompassBias(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisionCompassBias::~VisionCompassBias(v5);
  }

  return a1;
}

uint64_t CMMsl::VisionCompassBias::formatText(CMMsl::VisionCompassBias *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 38);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "compassBias", *(this + 12));
    v5 = *(this + 38);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "estimatedBiasUncertainty", *(this + 13));
  v5 = *(this + 38);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "estimatedHeading", *(this + 14));
  if ((*(this + 38) & 0x20) != 0)
  {
LABEL_5:
    v6 = *(this + 15);
    PB::TextFormatter::format(a2, "globalReferenceFrame");
  }

LABEL_6:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "lslGlobalToDeviceFrameRotationMatrix", v9);
  }

  v10 = *(this + 38);
  if ((v10 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "lslHeadingAccuracy", *(this + 16));
    v10 = *(this + 38);
    if ((v10 & 0x80) == 0)
    {
LABEL_10:
      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_10;
  }

  PB::TextFormatter::format(a2, "lslHeadingConfidence", *(this + 17));
  v10 = *(this + 38);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 4));
  v10 = *(this + 38);
  if ((v10 & 0x100) == 0)
  {
LABEL_12:
    if ((v10 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  v11 = *(this + 18);
  PB::TextFormatter::format(a2, "roadID");
  if ((*(this + 38) & 2) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VisionCompassBias::readFrom(CMMsl::VisionCompassBias *this, PB::Reader *a2)
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
        goto LABEL_137;
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
        goto LABEL_137;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 38) |= 1u;
            v35 = *(a2 + 1);
            if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
            {
              goto LABEL_129;
            }

            *(this + 4) = *(*a2 + v35);
            goto LABEL_52;
          }

          if (v22 == 2)
          {
            *(this + 38) |= 2u;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
            {
              goto LABEL_129;
            }

            *(this + 5) = *(*a2 + v33);
LABEL_52:
            v36 = *(a2 + 1) + 8;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 38) |= 4u;
              v53 = *(a2 + 1);
              if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
              {
                goto LABEL_129;
              }

              *(this + 12) = *(*a2 + v53);
              goto LABEL_131;
            case 4:
              *(this + 38) |= 0x10u;
              v55 = *(a2 + 1);
              if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(a2 + 2))
              {
                goto LABEL_129;
              }

              *(this + 14) = *(*a2 + v55);
              goto LABEL_131;
            case 5:
              *(this + 38) |= 8u;
              v23 = *(a2 + 1);
              if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
              {
                goto LABEL_129;
              }

              *(this + 13) = *(*a2 + v23);
              goto LABEL_131;
          }
        }

        goto LABEL_17;
      }

      if (v22 > 7)
      {
        break;
      }

      if (v22 != 6)
      {
        if (v22 == 7)
        {
          *(this + 38) |= 0x40u;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 16) = *(*a2 + v34);
          goto LABEL_131;
        }

        goto LABEL_17;
      }

      if ((v10 & 7) != 2)
      {
        v66 = *(this + 2);
        v65 = *(this + 3);
        if (v66 >= v65)
        {
          v80 = *(this + 1);
          v81 = v66 - v80;
          v82 = (v66 - v80) >> 2;
          v83 = v82 + 1;
          if ((v82 + 1) >> 62)
          {
LABEL_141:
            sub_25AAE66B8();
          }

          v84 = v65 - v80;
          if (v84 >> 1 > v83)
          {
            v83 = v84 >> 1;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v85 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            sub_25AD288E8(v85);
          }

          v86 = (v66 - v80) >> 2;
          v87 = (4 * v82);
          v88 = (4 * v82 - 4 * v86);
          *v87 = 0;
          v67 = v87 + 1;
          memcpy(v88, v80, v81);
          v89 = *(this + 1);
          *(this + 1) = v88;
          *(this + 2) = v67;
          *(this + 3) = 0;
          if (v89)
          {
            operator delete(v89);
          }
        }

        else
        {
          *v66 = 0;
          v67 = v66 + 4;
        }

        *(this + 2) = v67;
        v90 = *(a2 + 1);
        if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(a2 + 2))
        {
LABEL_129:
          *(a2 + 24) = 1;
          goto LABEL_133;
        }

        *(v67 - 1) = *(*a2 + v90);
LABEL_131:
        v36 = *(a2 + 1) + 4;
LABEL_132:
        *(a2 + 1) = v36;
        goto LABEL_133;
      }

      if (PB::Reader::placeMark())
      {
LABEL_139:
        v91 = 0;
        return v91 & 1;
      }

      v37 = *(a2 + 1);
      v38 = *(a2 + 2);
      while (v37 < v38 && (*(a2 + 24) & 1) == 0)
      {
        v40 = *(this + 2);
        v39 = *(this + 3);
        if (v40 >= v39)
        {
          v42 = *(this + 1);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 2;
          v45 = v44 + 1;
          if ((v44 + 1) >> 62)
          {
            goto LABEL_141;
          }

          v46 = v39 - v42;
          if (v46 >> 1 > v45)
          {
            v45 = v46 >> 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v47 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_25AD288E8(v47);
          }

          v48 = (v40 - v42) >> 2;
          v49 = (4 * v44);
          v50 = (4 * v44 - 4 * v48);
          *v49 = 0;
          v41 = v49 + 1;
          memcpy(v50, v42, v43);
          v51 = *(this + 1);
          *(this + 1) = v50;
          *(this + 2) = v41;
          *(this + 3) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v40 = 0;
          v41 = v40 + 4;
        }

        *(this + 2) = v41;
        v52 = *(a2 + 1);
        if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*a2 + v52);
        v38 = *(a2 + 2);
        v37 = *(a2 + 1) + 4;
        *(a2 + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_133:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_137;
      }
    }

    switch(v22)
    {
      case 8:
        *(this + 38) |= 0x80u;
        v54 = *(a2 + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
        {
          goto LABEL_129;
        }

        *(this + 17) = *(*a2 + v54);
        goto LABEL_131;
      case 9:
        *(this + 38) |= 0x100u;
        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        v58 = *a2;
        if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
        {
          v74 = 0;
          v75 = 0;
          v61 = 0;
          v76 = (v58 + v57);
          v18 = v56 >= v57;
          v77 = v56 - v57;
          if (!v18)
          {
            v77 = 0;
          }

          v78 = v57 + 1;
          while (1)
          {
            if (!v77)
            {
              LODWORD(v61) = 0;
              *(a2 + 24) = 1;
              goto LABEL_122;
            }

            v79 = *v76;
            *(a2 + 1) = v78;
            v61 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            ++v76;
            --v77;
            ++v78;
            v14 = v75++ > 8;
            if (v14)
            {
LABEL_106:
              LODWORD(v61) = 0;
              goto LABEL_122;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v61) = 0;
          }
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
            *(a2 + 1) = v63;
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
              goto LABEL_106;
            }
          }
        }

LABEL_122:
        *(this + 18) = v61;
        goto LABEL_133;
      case 0xA:
        *(this + 38) |= 0x20u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v68 = 0;
          v69 = 0;
          v29 = 0;
          v70 = (v26 + v25);
          v18 = v24 >= v25;
          v71 = v24 - v25;
          if (!v18)
          {
            v71 = 0;
          }

          v72 = v25 + 1;
          while (1)
          {
            if (!v71)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_119;
            }

            v73 = *v70;
            *(a2 + 1) = v72;
            v29 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            ++v70;
            --v71;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
LABEL_98:
              LODWORD(v29) = 0;
              goto LABEL_119;
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
              goto LABEL_98;
            }
          }
        }

LABEL_119:
        *(this + 15) = v29;
        goto LABEL_133;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_133;
  }

LABEL_137:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t CMMsl::VisionCompassBias::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 76);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 76);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 56));
    if ((*(v3 + 76) & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 76);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v4 & 8) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 52));
  }

LABEL_7:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 76);
  if ((v8 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 64));
    v8 = *(v3 + 76);
    if ((v8 & 0x80) == 0)
    {
LABEL_12:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v9 = *(v3 + 72);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 76) & 0x20) == 0)
      {
        return this;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  this = PB::Writer::write(a2, *(v3 + 68));
  v8 = *(v3 + 76);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 0x20) == 0)
  {
    return this;
  }

LABEL_23:
  v10 = *(v3 + 60);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::VisionCompassBias::hash_value(CMMsl::VisionCompassBias *this)
{
  v2 = *(this + 38);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v4 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v6 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if (*(this + 4) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (*(this + 5) == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 5);
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  v5 = *(this + 12);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = LODWORD(v5);
  }

  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = *(this + 14);
    if (v7 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = LODWORD(v7);
    }

    if ((v2 & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v8 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v9 = *(this + 13);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = LODWORD(v9);
  }

LABEL_26:
  v11 = *(this + 1);
  v12 = *(this + 2);
  v13 = PBHashBytes();
  v14 = *(this + 38);
  if ((v14 & 0x40) == 0)
  {
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    v17 = 0;
    if ((*(this + 38) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v18 = 0;
    if ((v14 & 0x20) != 0)
    {
      goto LABEL_32;
    }

LABEL_38:
    v19 = 0;
    return v4 ^ v3 ^ v6 ^ v8 ^ v10 ^ v15 ^ v17 ^ v18 ^ v13 ^ v19;
  }

  v20 = *(this + 16);
  v15 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v15 = 0;
  }

  if ((v14 & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v16 = *(this + 17);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((*(this + 38) & 0x100) == 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  v18 = *(this + 18);
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  v19 = *(this + 15);
  return v4 ^ v3 ^ v6 ^ v8 ^ v10 ^ v15 ^ v17 ^ v18 ^ v13 ^ v19;
}

void CMMsl::VisualLocalization::~VisualLocalization(CMMsl::VisualLocalization *this)
{
  *this = &unk_286C244E8;
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
  CMMsl::VisualLocalization::~VisualLocalization(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VisualLocalization *CMMsl::VisualLocalization::VisualLocalization(CMMsl::VisualLocalization *this, const CMMsl::VisualLocalization *a2)
{
  *this = &unk_286C244E8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 25) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 100);
  if ((v5 & 0x10) != 0)
  {
    v7 = *(a2 + 11);
    v6 = 16;
    *(this + 100) = 16;
    *(this + 11) = v7;
    v5 = *(a2 + 100);
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 100) & 4) != 0)
  {
LABEL_5:
    v8 = *(a2 + 9);
    v6 |= 4u;
    *(this + 100) = v6;
    *(this + 9) = v8;
    v5 = *(a2 + 100);
  }

LABEL_6:
  if ((v5 & 8) != 0)
  {
    v12 = *(a2 + 10);
    v6 |= 8u;
    *(this + 100) = v6;
    *(this + 10) = v12;
    v5 = *(a2 + 100);
    if ((v5 & 1) == 0)
    {
LABEL_8:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 7);
  v6 |= 1u;
  *(this + 100) = v6;
  *(this + 7) = v13;
  if ((*(a2 + 100) & 2) != 0)
  {
LABEL_9:
    v9 = *(a2 + 8);
    *(this + 100) = v6 | 2;
    *(this + 8) = v9;
  }

LABEL_10:
  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 100) & 0x20) != 0)
  {
    v10 = *(a2 + 24);
    *(this + 100) |= 0x20u;
    *(this + 24) = v10;
  }

  return this;
}

CMMsl *CMMsl::VisualLocalization::operator=(CMMsl *a1, const CMMsl::VisualLocalization *a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualLocalization::VisualLocalization(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisualLocalization::~VisualLocalization(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::VisualLocalization *a2, CMMsl::VisualLocalization *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  result = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t CMMsl::VisualLocalization::VisualLocalization(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C244E8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

CMMsl *CMMsl::VisualLocalization::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualLocalization::VisualLocalization(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisualLocalization::~VisualLocalization(v5);
  }

  return a1;
}

uint64_t CMMsl::VisualLocalization::formatText(CMMsl::VisualLocalization *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 100);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitudeOfLocalizedPoseInEcefCoordinate", *(this + 7));
    v5 = *(this + 100);
  }

  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 24));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "covariance", v8);
  }

  v9 = *(this + 100);
  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "horizontalAccuracyOfLocalizedPoseInEcefCoordinate", *(this + 8));
    v9 = *(this + 100);
    if ((v9 & 4) == 0)
    {
LABEL_9:
      if ((v9 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*(this + 100) & 4) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "latitudeOfLocalizedPoseInEcefCoordinate", *(this + 9));
  v9 = *(this + 100);
  if ((v9 & 8) == 0)
  {
LABEL_10:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "longitudeOfLocalizedPoseInEcefCoordinate", *(this + 10));
  if ((*(this + 100) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "timestamp", *(this + 11));
  }

LABEL_12:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "transformMatrixFromCameraToEcefCoordinate", v12);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VisualLocalization::readFrom(CMMsl::VisualLocalization *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v23 > 6)
      {
        if (v23 == 7)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_131:
              v91 = 0;
              return v91 & 1;
            }

            v46 = *(a2 + 1);
            v47 = *(a2 + 2);
            while (v46 < v47 && (*(a2 + 24) & 1) == 0)
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
                  goto LABEL_133;
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
              v61 = *(a2 + 1);
              if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
              {
LABEL_93:
                *(a2 + 24) = 1;
                goto LABEL_94;
              }

              *(v50 - 1) = *(*a2 + v61);
              v47 = *(a2 + 2);
              v46 = *(a2 + 1) + 4;
              *(a2 + 1) = v46;
            }

            goto LABEL_94;
          }

          v63 = *(this + 2);
          v62 = *(this + 3);
          if (v63 >= v62)
          {
            v68 = *(this + 1);
            v69 = v63 - v68;
            v70 = (v63 - v68) >> 2;
            v71 = v70 + 1;
            if ((v70 + 1) >> 62)
            {
LABEL_133:
              sub_25AAE66B8();
            }

            v72 = v62 - v68;
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

            v80 = (v63 - v68) >> 2;
            v81 = (4 * v70);
            v82 = (4 * v70 - 4 * v80);
            *v81 = 0;
            v64 = v81 + 1;
            memcpy(v82, v68, v69);
            v83 = *(this + 1);
            *(this + 1) = v82;
            *(this + 2) = v64;
            *(this + 3) = 0;
            if (v83)
            {
              operator delete(v83);
            }
          }

          else
          {
            *v63 = 0;
            v64 = v63 + 4;
          }

          *(this + 2) = v64;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
LABEL_121:
            *(a2 + 24) = 1;
            goto LABEL_125;
          }

          *(v64 - 1) = *(*a2 + v84);
LABEL_116:
          v85 = *(a2 + 1) + 4;
LABEL_124:
          *(a2 + 1) = v85;
          goto LABEL_125;
        }

        if (v23 == 8)
        {
          *(this + 100) |= 0x20u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 24) = *(*a2 + v42);
          goto LABEL_116;
        }
      }

      else
      {
        if (v23 == 5)
        {
          *(this + 100) |= 2u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 8) = *(*a2 + v44);
          goto LABEL_123;
        }

        if (v23 == 6)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_131;
            }

            v25 = *(a2 + 1);
            v26 = *(a2 + 2);
            while (v25 < v26 && (*(a2 + 24) & 1) == 0)
            {
              v28 = *(this + 5);
              v27 = *(this + 6);
              if (v28 >= v27)
              {
                v30 = *(this + 4);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 3;
                v33 = v32 + 1;
                if ((v32 + 1) >> 61)
                {
                  goto LABEL_134;
                }

                v34 = v27 - v30;
                if (v34 >> 2 > v33)
                {
                  v33 = v34 >> 2;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v35 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_25AD28710(v35);
                }

                v36 = (v28 - v30) >> 3;
                v37 = (8 * v32);
                v38 = (8 * v32 - 8 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(this + 4);
                *(this + 4) = v38;
                *(this + 5) = v29;
                *(this + 6) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 8;
              }

              *(this + 5) = v29;
              v40 = *(a2 + 1);
              if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
              {
                goto LABEL_93;
              }

              *(v29 - 1) = *(*a2 + v40);
              v26 = *(a2 + 2);
              v25 = *(a2 + 1) + 8;
              *(a2 + 1) = v25;
            }

LABEL_94:
            PB::Reader::recallMark();
            goto LABEL_125;
          }

          v66 = *(this + 5);
          v65 = *(this + 6);
          if (v66 >= v65)
          {
            v74 = *(this + 4);
            v75 = v66 - v74;
            v76 = (v66 - v74) >> 3;
            v77 = v76 + 1;
            if ((v76 + 1) >> 61)
            {
LABEL_134:
              sub_25AAE66B8();
            }

            v78 = v65 - v74;
            if (v78 >> 2 > v77)
            {
              v77 = v78 >> 2;
            }

            if (v78 >= 0x7FFFFFFFFFFFFFF8)
            {
              v79 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v79 = v77;
            }

            if (v79)
            {
              sub_25AD28710(v79);
            }

            v86 = (v66 - v74) >> 3;
            v87 = (8 * v76);
            v88 = (8 * v76 - 8 * v86);
            *v87 = 0;
            v67 = v87 + 1;
            memcpy(v88, v74, v75);
            v89 = *(this + 4);
            *(this + 4) = v88;
            *(this + 5) = v67;
            *(this + 6) = 0;
            if (v89)
            {
              operator delete(v89);
            }
          }

          else
          {
            *v66 = 0;
            v67 = v66 + 8;
          }

          *(this + 5) = v67;
          v90 = *(a2 + 1);
          if (v90 > 0xFFFFFFFFFFFFFFF7 || v90 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(v67 - 1) = *(*a2 + v90);
          goto LABEL_123;
        }
      }
    }

    else if (v23 > 2)
    {
      if (v23 == 3)
      {
        *(this + 100) |= 8u;
        v45 = *(a2 + 1);
        if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
        {
          goto LABEL_121;
        }

        *(this + 10) = *(*a2 + v45);
        goto LABEL_123;
      }

      if (v23 == 4)
      {
        *(this + 100) |= 1u;
        v41 = *(a2 + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
        {
          goto LABEL_121;
        }

        *(this + 7) = *(*a2 + v41);
        goto LABEL_123;
      }
    }

    else
    {
      if (v23 == 1)
      {
        *(this + 100) |= 0x10u;
        v43 = *(a2 + 1);
        if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
        {
          goto LABEL_121;
        }

        *(this + 11) = *(*a2 + v43);
        goto LABEL_123;
      }

      if (v23 == 2)
      {
        *(this + 100) |= 4u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
        {
          goto LABEL_121;
        }

        *(this + 9) = *(*a2 + v24);
LABEL_123:
        v85 = *(a2 + 1) + 8;
        goto LABEL_124;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_131;
    }

LABEL_125:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t CMMsl::VisualLocalization::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 100);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 88));
    v4 = *(v3 + 100);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 100) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 56));
    if ((*(v3 + 100) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 100);
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 64));
  }

LABEL_7:
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

  if ((*(v3 + 100) & 0x20) != 0)
  {
    v11 = *(v3 + 96);

    return PB::Writer::write(a2, v11);
  }

  return this;
}

uint64_t CMMsl::VisualLocalization::hash_value(CMMsl::VisualLocalization *this)
{
  if ((*(this + 100) & 0x10) == 0)
  {
    v2 = 0;
    if ((*(this + 100) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0;
    if ((*(this + 100) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v4 = 0;
    if (*(this + 100))
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if (*(this + 11) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 11);
  }

  if ((*(this + 100) & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (*(this + 9) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 9);
  }

  if ((*(this + 100) & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (*(this + 10) == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 10);
  }

  if (*(this + 100))
  {
LABEL_11:
    if (*(this + 7) == 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(this + 7);
    }

    if ((*(this + 100) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v5 = 0;
  if ((*(this + 100) & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  if (*(this + 8) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 8);
  }

LABEL_26:
  v7 = *(this + 4);
  v8 = *(this + 5);
  v9 = PBHashBytes();
  v10 = *(this + 1);
  v11 = *(this + 2);
  v12 = PBHashBytes();
  if ((*(this + 100) & 0x20) != 0)
  {
    v14 = *(this + 24);
    v13 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v9 ^ v12 ^ v13;
}

void CMMsl::VisualLocalizationAttitudeConstraints::~VisualLocalizationAttitudeConstraints(CMMsl::VisualLocalizationAttitudeConstraints *this)
{
  *this = &unk_286C24520;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VisualLocalizationAttitudeConstraints::~VisualLocalizationAttitudeConstraints(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VisualLocalizationAttitudeConstraints *CMMsl::VisualLocalizationAttitudeConstraints::VisualLocalizationAttitudeConstraints(CMMsl::VisualLocalizationAttitudeConstraints *this, const CMMsl::VisualLocalizationAttitudeConstraints *a2)
{
  *this = &unk_286C24520;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 15) = 0;
  v5 = *(a2 + 60);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 5);
    v6 = 2;
    *(this + 60) = 2;
    *(this + 5) = v7;
    v5 = *(a2 + 60);
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (*(a2 + 60))
  {
LABEL_5:
    v8 = *(a2 + 4);
    v6 |= 1u;
    *(this + 60) = v6;
    *(this + 4) = v8;
    v5 = *(a2 + 60);
  }

LABEL_6:
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = *(a2 + 14);
  v6 |= 0x10u;
  *(this + 60) = v6;
  *(this + 14) = v12;
  if ((*(a2 + 60) & 8) != 0)
  {
LABEL_8:
    v9 = *(a2 + 13);
    *(this + 60) = v6 | 8;
    *(this + 13) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 60) & 4) != 0)
  {
    v10 = *(a2 + 12);
    *(this + 60) |= 4u;
    *(this + 12) = v10;
  }

  return this;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::operator=(uint64_t a1, const CMMsl::VisualLocalizationAttitudeConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualLocalizationAttitudeConstraints::VisualLocalizationAttitudeConstraints(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v15;
    v15 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    *&v6 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v6;
    CMMsl::VisualLocalizationAttitudeConstraints::~VisualLocalizationAttitudeConstraints(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::VisualLocalizationAttitudeConstraints *a2, CMMsl::VisualLocalizationAttitudeConstraints *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  LODWORD(v5) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  LODWORD(v5) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::VisualLocalizationAttitudeConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24520;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  sub_25AD28758(a1 + 8, (a2 + 8));
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualLocalizationAttitudeConstraints::VisualLocalizationAttitudeConstraints(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v15;
    v15 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    *&v6 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v6;
    CMMsl::VisualLocalizationAttitudeConstraints::~VisualLocalizationAttitudeConstraints(&v9);
  }

  return a1;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::formatText(CMMsl::VisualLocalizationAttitudeConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 60);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "deltaHeading", *(this + 12));
    v5 = *(this + 60);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 60) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gravityZ", *(this + 13));
  v5 = *(this + 60);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "lastStateTimestamp", *(this + 4));
  if ((*(this + 60) & 0x10) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "meanRotRate", *(this + 14));
  }

LABEL_6:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "quaternion", v8);
  }

  if ((*(this + 60) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::readFrom(CMMsl::VisualLocalizationAttitudeConstraints *this, PB::Reader *a2)
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
        goto LABEL_87;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 == 4)
      {
        *(this + 60) |= 8u;
        v26 = *(a2 + 1);
        if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(a2 + 2))
        {
          goto LABEL_79;
        }

        *(this + 13) = *(*a2 + v26);
        goto LABEL_81;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          *(this + 60) |= 4u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_79;
          }

          *(this + 12) = *(*a2 + v24);
          goto LABEL_81;
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_83;
      }

      if ((v10 & 7) != 2)
      {
        v46 = *(this + 2);
        v45 = *(this + 3);
        if (v46 >= v45)
        {
          v48 = *(this + 1);
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
LABEL_91:
            sub_25AAE66B8();
          }

          v52 = v45 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            sub_25AD288E8(v53);
          }

          v54 = (v46 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = 0;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v57 = *(this + 1);
          *(this + 1) = v56;
          *(this + 2) = v47;
          *(this + 3) = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v46 = 0;
          v47 = v46 + 4;
        }

        *(this + 2) = v47;
        v58 = *(a2 + 1);
        if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
        {
LABEL_79:
          *(a2 + 24) = 1;
          goto LABEL_83;
        }

        *(v47 - 1) = *(*a2 + v58);
LABEL_81:
        v28 = *(a2 + 1) + 4;
LABEL_82:
        *(a2 + 1) = v28;
        goto LABEL_83;
      }

      if (PB::Reader::placeMark())
      {
LABEL_89:
        v59 = 0;
        return v59 & 1;
      }

      v29 = *(a2 + 1);
      v30 = *(a2 + 2);
      while (v29 < v30 && (*(a2 + 24) & 1) == 0)
      {
        v32 = *(this + 2);
        v31 = *(this + 3);
        if (v32 >= v31)
        {
          v34 = *(this + 1);
          v35 = v32 - v34;
          v36 = (v32 - v34) >> 2;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            goto LABEL_91;
          }

          v38 = v31 - v34;
          if (v38 >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v39 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            sub_25AD288E8(v39);
          }

          v40 = (v32 - v34) >> 2;
          v41 = (4 * v36);
          v42 = (4 * v36 - 4 * v40);
          *v41 = 0;
          v33 = v41 + 1;
          memcpy(v42, v34, v35);
          v43 = *(this + 1);
          *(this + 1) = v42;
          *(this + 2) = v33;
          *(this + 3) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v32 = 0;
          v33 = v32 + 4;
        }

        *(this + 2) = v33;
        v44 = *(a2 + 1);
        if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v33 - 1) = *(*a2 + v44);
        v30 = *(a2 + 2);
        v29 = *(a2 + 1) + 4;
        *(a2 + 1) = v29;
      }

      PB::Reader::recallMark();
LABEL_83:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_87;
      }
    }

    switch(v22)
    {
      case 1:
        *(this + 60) |= 2u;
        v25 = *(a2 + 1);
        if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
        {
          goto LABEL_79;
        }

        *(this + 5) = *(*a2 + v25);
        goto LABEL_42;
      case 2:
        *(this + 60) |= 1u;
        v27 = *(a2 + 1);
        if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
        {
          goto LABEL_79;
        }

        *(this + 4) = *(*a2 + v27);
LABEL_42:
        v28 = *(a2 + 1) + 8;
        goto LABEL_82;
      case 3:
        *(this + 60) |= 0x10u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_79;
        }

        *(this + 14) = *(*a2 + v23);
        goto LABEL_81;
    }

    goto LABEL_17;
  }

LABEL_87:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 60);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      this = PB::Writer::write(a2, *(v3 + 56));
      if ((*(v3 + 60) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 60) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    this = PB::Writer::write(a2, *(v3 + 52));
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  if ((*(v3 + 60) & 4) != 0)
  {
    v8 = *(v3 + 48);

    return PB::Writer::write(a2, v8);
  }

  return this;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::hash_value(CMMsl::VisualLocalizationAttitudeConstraints *this)
{
  if ((*(this + 60) & 2) == 0)
  {
    v2 = 0;
    if (*(this + 60))
    {
      goto LABEL_3;
    }

LABEL_18:
    v3 = 0;
    if ((*(this + 60) & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (*(this + 5) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 5);
  }

  if ((*(this + 60) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (*(this + 4) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 4);
  }

  if ((*(this + 60) & 0x10) != 0)
  {
LABEL_7:
    v4 = *(this + 14);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = LODWORD(v4);
    }

    if ((*(this + 60) & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v5 = 0;
  if ((*(this + 60) & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *(this + 13);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

LABEL_21:
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = PBHashBytes();
  if ((*(this + 60) & 4) != 0)
  {
    v12 = *(this + 12);
    v11 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v2 ^ v5 ^ v7 ^ v11 ^ v10;
}

void CMMsl::VisualLocalizationAttitudeCorrection::~VisualLocalizationAttitudeCorrection(CMMsl::VisualLocalizationAttitudeCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24558;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VisualLocalizationAttitudeCorrection::~VisualLocalizationAttitudeCorrection(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::VisualLocalizationAttitudeCorrection::VisualLocalizationAttitudeCorrection(void *this, const CMMsl::VisualLocalizationAttitudeCorrection *a2)
{
  *this = &unk_286C24558;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::VisualLocalizationAttitudeCorrection *CMMsl::VisualLocalizationAttitudeCorrection::operator=(const CMMsl::VisualLocalizationAttitudeCorrection *a1, const CMMsl::VisualLocalizationAttitudeCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualLocalizationAttitudeCorrection::VisualLocalizationAttitudeCorrection(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::VisualLocalizationAttitudeCorrection::~VisualLocalizationAttitudeCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::VisualLocalizationAttitudeCorrection *a2, CMMsl::VisualLocalizationAttitudeCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::VisualLocalizationAttitudeCorrection::VisualLocalizationAttitudeCorrection(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24558;
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
  *a1 = &unk_286C24558;
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

uint64_t CMMsl::VisualLocalizationAttitudeCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24558;
    v6[1] = v4;
    CMMsl::VisualLocalizationAttitudeCorrection::~VisualLocalizationAttitudeCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::VisualLocalizationAttitudeCorrection::formatText(CMMsl::VisualLocalizationAttitudeCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VisualLocalizationAttitudeCorrection::readFrom(CMMsl::VisualLocalizationAttitudeCorrection *this, PB::Reader *a2)
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

uint64_t CMMsl::VisualLocalizationAttitudeCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::DeviceMotionCorrection *CMMsl::VisualLocalizationAttitudeCorrection::hash_value(CMMsl::VisualLocalizationAttitudeCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::VisualLocalizationAttitudeCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::VisualStateMeasurement::~VisualStateMeasurement(CMMsl::VisualStateMeasurement *this)
{
  *this = &unk_286C24590;
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
  CMMsl::VisualStateMeasurement::~VisualStateMeasurement(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VisualStateMeasurement *CMMsl::VisualStateMeasurement::VisualStateMeasurement(CMMsl::VisualStateMeasurement *this, const CMMsl::VisualStateMeasurement *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = &unk_286C24590;
  *(this + 24) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if (*(a2 + 96))
  {
    v5 = *(a2 + 10);
    *(this + 96) = 1;
    *(this + 10) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v6 = *(a2 + 96);
  if ((v6 & 4) != 0)
  {
    v7 = *(a2 + 92);
    *(this + 96) |= 4u;
    *(this + 92) = v7;
    v6 = *(a2 + 96);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 22);
    *(this + 96) |= 2u;
    *(this + 22) = v8;
  }

  return this;
}

CMMsl *CMMsl::VisualStateMeasurement::operator=(CMMsl *a1, const CMMsl::VisualStateMeasurement *a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualStateMeasurement::VisualStateMeasurement(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisualStateMeasurement::~VisualStateMeasurement(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VisualStateMeasurement *a2, CMMsl::VisualStateMeasurement *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
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
  LOBYTE(v13) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v13;
  LODWORD(v13) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v13;
  return result;
}

uint64_t CMMsl::VisualStateMeasurement::VisualStateMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24590;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 56));
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

CMMsl *CMMsl::VisualStateMeasurement::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VisualStateMeasurement::VisualStateMeasurement(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VisualStateMeasurement::~VisualStateMeasurement(v5);
  }

  return a1;
}

uint64_t CMMsl::VisualStateMeasurement::formatText(CMMsl::VisualStateMeasurement *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  v8 = *(this + 96);
  if ((v8 & 4) != 0)
  {
    v16 = *(this + 92);
    PB::TextFormatter::format(a2, "isInitFinished");
    v8 = *(this + 96);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 96) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  if ((*(this + 96) & 2) != 0)
  {
LABEL_6:
    v9 = *(this + 22);
    PB::TextFormatter::format(a2, "trackingState");
  }

LABEL_7:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "translation", v12);
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "velocity", v15);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VisualStateMeasurement::readFrom(CMMsl::VisualStateMeasurement *this, PB::Reader *a2)
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
        goto LABEL_162;
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
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        goto LABEL_162;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      switch(v23)
      {
        case 4:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v50 = *(a2 + 1);
            v51 = *(a2 + 2);
            while (v50 < v51 && (*(a2 + 24) & 1) == 0)
            {
              v53 = *(this + 8);
              v52 = *(this + 9);
              if (v53 >= v52)
              {
                v55 = *(this + 7);
                v56 = v53 - v55;
                v57 = (v53 - v55) >> 3;
                v58 = v57 + 1;
                if ((v57 + 1) >> 61)
                {
                  goto LABEL_166;
                }

                v59 = v52 - v55;
                if (v59 >> 2 > v58)
                {
                  v58 = v59 >> 2;
                }

                if (v59 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v60 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v60 = v58;
                }

                if (v60)
                {
                  sub_25AD28710(v60);
                }

                v61 = (v53 - v55) >> 3;
                v62 = (8 * v57);
                v63 = (8 * v57 - 8 * v61);
                *v62 = 0;
                v54 = v62 + 1;
                memcpy(v63, v55, v56);
                v64 = *(this + 7);
                *(this + 7) = v63;
                *(this + 8) = v54;
                *(this + 9) = 0;
                if (v64)
                {
                  operator delete(v64);
                }
              }

              else
              {
                *v53 = 0;
                v54 = v53 + 8;
              }

              *(this + 8) = v54;
              v65 = *(a2 + 1);
              if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(a2 + 2))
              {
LABEL_117:
                *(a2 + 24) = 1;
                goto LABEL_118;
              }

              *(v54 - 1) = *(*a2 + v65);
              v51 = *(a2 + 2);
              v50 = *(a2 + 1) + 8;
              *(a2 + 1) = v50;
            }

            goto LABEL_118;
          }

          v87 = *(this + 8);
          v86 = *(this + 9);
          if (v87 >= v86)
          {
            v99 = *(this + 7);
            v100 = v87 - v99;
            v101 = (v87 - v99) >> 3;
            v102 = v101 + 1;
            if ((v101 + 1) >> 61)
            {
              goto LABEL_166;
            }

            v103 = v86 - v99;
            if (v103 >> 2 > v102)
            {
              v102 = v103 >> 2;
            }

            if (v103 >= 0x7FFFFFFFFFFFFFF8)
            {
              v104 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v104 = v102;
            }

            if (v104)
            {
              sub_25AD28710(v104);
            }

            v117 = (v87 - v99) >> 3;
            v118 = (8 * v101);
            v119 = (8 * v101 - 8 * v117);
            *v118 = 0;
            v88 = v118 + 1;
            memcpy(v119, v99, v100);
            v120 = *(this + 7);
            *(this + 7) = v119;
            *(this + 8) = v88;
            *(this + 9) = 0;
            if (v120)
            {
              operator delete(v120);
            }
          }

          else
          {
            *v87 = 0;
            v88 = v87 + 8;
          }

          *(this + 8) = v88;
LABEL_156:
          v129 = *(a2 + 1);
          if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(a2 + 2))
          {
            goto LABEL_158;
          }

          *(v88 - 1) = *(*a2 + v129);
          goto LABEL_160;
        case 5:
          *(this + 96) |= 4u;
          v82 = *(a2 + 1);
          if (v82 >= *(a2 + 2))
          {
            v85 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v83 = v82 + 1;
            v84 = *(*a2 + v82);
            *(a2 + 1) = v83;
            v85 = v84 != 0;
          }

          *(this + 92) = v85;
          break;
        case 6:
          *(this + 96) |= 2u;
          v41 = *(a2 + 1);
          v40 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
          {
            v89 = 0;
            v90 = 0;
            v45 = 0;
            v91 = (v42 + v41);
            v18 = v40 >= v41;
            v92 = v40 - v41;
            if (!v18)
            {
              v92 = 0;
            }

            v93 = v41 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v45) = 0;
                *(a2 + 24) = 1;
                goto LABEL_146;
              }

              v94 = *v91;
              *(a2 + 1) = v93;
              v45 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              ++v91;
              --v92;
              ++v93;
              v14 = v90++ > 8;
              if (v14)
              {
LABEL_110:
                LODWORD(v45) = 0;
                goto LABEL_146;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v45) = 0;
            }
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
              *(a2 + 1) = v47;
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
                goto LABEL_110;
              }
            }
          }

LABEL_146:
          *(this + 22) = v45;
          break;
        default:
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_164;
          }

          break;
      }

LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_162;
      }
    }

    if (v23 != 1)
    {
      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_164:
            v130 = 0;
            return v130 & 1;
          }

          v66 = *(a2 + 1);
          v67 = *(a2 + 2);
          while (v66 < v67 && (*(a2 + 24) & 1) == 0)
          {
            v69 = *(this + 2);
            v68 = *(this + 3);
            if (v69 >= v68)
            {
              v71 = *(this + 1);
              v72 = v69 - v71;
              v73 = (v69 - v71) >> 3;
              v74 = v73 + 1;
              if ((v73 + 1) >> 61)
              {
                goto LABEL_166;
              }

              v75 = v68 - v71;
              if (v75 >> 2 > v74)
              {
                v74 = v75 >> 2;
              }

              if (v75 >= 0x7FFFFFFFFFFFFFF8)
              {
                v76 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v76 = v74;
              }

              if (v76)
              {
                sub_25AD28710(v76);
              }

              v77 = (v69 - v71) >> 3;
              v78 = (8 * v73);
              v79 = (8 * v73 - 8 * v77);
              *v78 = 0;
              v70 = v78 + 1;
              memcpy(v79, v71, v72);
              v80 = *(this + 1);
              *(this + 1) = v79;
              *(this + 2) = v70;
              *(this + 3) = 0;
              if (v80)
              {
                operator delete(v80);
              }
            }

            else
            {
              *v69 = 0;
              v70 = v69 + 8;
            }

            *(this + 2) = v70;
            v81 = *(a2 + 1);
            if (v81 > 0xFFFFFFFFFFFFFFF7 || v81 + 8 > *(a2 + 2))
            {
              goto LABEL_117;
            }

            *(v70 - 1) = *(*a2 + v81);
            v67 = *(a2 + 2);
            v66 = *(a2 + 1) + 8;
            *(a2 + 1) = v66;
          }

          goto LABEL_118;
        }

        v98 = *(this + 2);
        v97 = *(this + 3);
        if (v98 >= v97)
        {
          v111 = *(this + 1);
          v112 = v98 - v111;
          v113 = (v98 - v111) >> 3;
          v114 = v113 + 1;
          if ((v113 + 1) >> 61)
          {
LABEL_166:
            sub_25AAE66B8();
          }

          v115 = v97 - v111;
          if (v115 >> 2 > v114)
          {
            v114 = v115 >> 2;
          }

          if (v115 >= 0x7FFFFFFFFFFFFFF8)
          {
            v116 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = v114;
          }

          if (v116)
          {
            sub_25AD28710(v116);
          }

          v125 = (v98 - v111) >> 3;
          v126 = (8 * v113);
          v127 = (8 * v113 - 8 * v125);
          *v126 = 0;
          v88 = v126 + 1;
          memcpy(v127, v111, v112);
          v128 = *(this + 1);
          *(this + 1) = v127;
          *(this + 2) = v88;
          *(this + 3) = 0;
          if (v128)
          {
            operator delete(v128);
          }
        }

        else
        {
          *v98 = 0;
          v88 = v98 + 8;
        }

        *(this + 2) = v88;
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
            goto LABEL_164;
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
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_166;
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
              v28 = v27 + 8;
            }

            *(this + 5) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_117;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_118:
          PB::Reader::recallMark();
          goto LABEL_18;
        }

        v96 = *(this + 5);
        v95 = *(this + 6);
        if (v96 >= v95)
        {
          v105 = *(this + 4);
          v106 = v96 - v105;
          v107 = (v96 - v105) >> 3;
          v108 = v107 + 1;
          if ((v107 + 1) >> 61)
          {
            goto LABEL_166;
          }

          v109 = v95 - v105;
          if (v109 >> 2 > v108)
          {
            v108 = v109 >> 2;
          }

          if (v109 >= 0x7FFFFFFFFFFFFFF8)
          {
            v110 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v110 = v108;
          }

          if (v110)
          {
            sub_25AD28710(v110);
          }

          v121 = (v96 - v105) >> 3;
          v122 = (8 * v107);
          v123 = (8 * v107 - 8 * v121);
          *v122 = 0;
          v88 = v122 + 1;
          memcpy(v123, v105, v106);
          v124 = *(this + 4);
          *(this + 4) = v123;
          *(this + 5) = v88;
          *(this + 6) = 0;
          if (v124)
          {
            operator delete(v124);
          }
        }

        else
        {
          *v96 = 0;
          v88 = v96 + 8;
        }

        *(this + 5) = v88;
      }

      goto LABEL_156;
    }

    *(this + 96) |= 1u;
    v49 = *(a2 + 1);
    if (v49 > 0xFFFFFFFFFFFFFFF7 || v49 + 8 > *(a2 + 2))
    {
LABEL_158:
      *(a2 + 24) = 1;
      goto LABEL_18;
    }

    *(this + 10) = *(*a2 + v49);
LABEL_160:
    *(a2 + 1) += 8;
    goto LABEL_18;
  }

LABEL_162:
  v130 = v4 ^ 1;
  return v130 & 1;
}

uint64_t CMMsl::VisualStateMeasurement::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 96))
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

  v13 = *(v3 + 96);
  if ((v13 & 4) != 0)
  {
    v14 = *(v3 + 92);
    this = PB::Writer::write(a2);
    v13 = *(v3 + 96);
  }

  if ((v13 & 2) != 0)
  {
    v15 = *(v3 + 88);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::VisualStateMeasurement::hash_value(CMMsl::VisualStateMeasurement *this)
{
  if (*(this + 96))
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
  if ((*(this + 96) & 4) != 0)
  {
    v12 = *(this + 92);
    if ((*(this + 96) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v13 = 0;
    return v5 ^ v2 ^ v8 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*(this + 96) & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v13 = *(this + 22);
  return v5 ^ v2 ^ v8 ^ v11 ^ v12 ^ v13;
}

void CMMsl::WakeGestureNotification::~WakeGestureNotification(CMMsl::WakeGestureNotification *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::WakeGestureNotification::WakeGestureNotification(CMMsl::WakeGestureNotification *this, const CMMsl::WakeGestureNotification *a2)
{
  *this = &unk_286C245C8;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 44) = 2;
    *(this + 2) = result;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 3) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 9) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 1);
    *(this + 44) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_13:
  v8 = *(a2 + 40);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 40) = v8;
  if (*(a2 + 44))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::WakeGestureNotification::operator=(uint64_t a1, const CMMsl::WakeGestureNotification *a2)
{
  if (a1 != a2)
  {
    CMMsl::WakeGestureNotification::WakeGestureNotification(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    LOBYTE(v4) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WakeGestureNotification *a2, CMMsl::WakeGestureNotification *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::WakeGestureNotification::WakeGestureNotification(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C245C8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C245C8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::WakeGestureNotification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C245C8;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    v16 = *(a1 + 44);
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v13 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    v14 = v7;
    LOBYTE(v4) = *(a1 + 40);
    *(a1 + 40) = v5;
    v15 = v4;
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    *(a1 + 44) = v3;
    *(a1 + 8) = v9;
    v12 = v8;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::WakeGestureNotification::formatText(CMMsl::WakeGestureNotification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 8) != 0)
  {
    v7 = *(this + 8);
    PB::TextFormatter::format(a2, "gestureType");
    v5 = *(this + 44);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 40);
  PB::TextFormatter::format(a2, "hostPowerState");
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "machContinuousTime", *(this + 1));
  v5 = *(this + 44);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "receivedTime", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v9 = *(this + 9);
  PB::TextFormatter::format(a2, "state");
  if ((*(this + 44) & 4) != 0)
  {
LABEL_7:
    v6 = *(this + 3);
    PB::TextFormatter::format(a2, "timestampPossible");
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WakeGestureNotification::readFrom(CMMsl::WakeGestureNotification *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 44) |= 8u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v51 = (v32 + v31);
            v52 = v2 - v31;
            v53 = v31 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_93;
              }

              v54 = v53;
              v55 = *v51;
              *(a2 + 1) = v54;
              v35 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v51;
              --v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_92;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_92:
            v2 = v54;
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

LABEL_93:
          *(this + 8) = v35;
          goto LABEL_19;
        case 5:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v48 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v47 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v48 = v47 != 0;
          }

          *(this + 40) = v48;
          goto LABEL_19;
        case 6:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_42:
            *(a2 + 24) = 1;
            goto LABEL_19;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_86;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_42;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_86:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_19;
        case 2:
          *(this + 44) |= 4u;
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
                v43 = 0;
                *(a2 + 24) = 1;
                goto LABEL_101;
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
                v43 = 0;
                goto LABEL_100;
              }
            }

            if (*(a2 + 24))
            {
              v43 = 0;
            }

LABEL_100:
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
                v43 = 0;
                break;
              }
            }
          }

LABEL_101:
          *(this + 3) = v43;
          goto LABEL_19;
        case 3:
          *(this + 44) |= 0x10u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v58 = (v24 + v23);
            v59 = v2 - v23;
            v60 = v23 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_97;
              }

              v61 = v60;
              v62 = *v58;
              *(a2 + 1) = v61;
              v27 |= (v62 & 0x7F) << v56;
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
                LODWORD(v27) = 0;
                goto LABEL_96;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_96:
            v2 = v61;
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

LABEL_97:
          *(this + 9) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v70 = 0;
      return v70 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::WakeGestureNotification::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v3 + 40);
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_13:
  v9 = *(v3 + 8);

  return PB::Writer::write(a2, v9);
}

uint64_t CMMsl::WakeGestureNotification::hash_value(CMMsl::WakeGestureNotification *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 44) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 3);
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 44) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 9);
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v3 = 0;
  if ((*(this + 44) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 8);
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 44) & 0x20) != 0)
  {
LABEL_6:
    v5 = *(this + 40);
    if (*(this + 44))
    {
      goto LABEL_7;
    }

LABEL_17:
    v6 = 0.0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ *&v6;
}

void CMMsl::WakeGestureSample::~WakeGestureSample(CMMsl::WakeGestureSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WakeGestureSample::WakeGestureSample(uint64_t this, const CMMsl::WakeGestureSample *a2)
{
  *this = &unk_286C24600;
  *(this + 84) = 0;
  v2 = *(a2 + 21);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 84) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 21);
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
    *(this + 84) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 21);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 17);
    v3 |= 0x200u;
    *(this + 84) = v3;
    *(this + 68) = v6;
    v2 = *(a2 + 21);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 18);
  v3 |= 0x400u;
  *(this + 84) = v3;
  *(this + 72) = v7;
  v2 = *(a2 + 21);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a2 + 76);
  v3 |= 0x800u;
  *(this + 84) = v3;
  *(this + 76) = v8;
  v2 = *(a2 + 21);
  if ((v2 & 0x10000) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 81);
  v3 |= 0x10000u;
  *(this + 84) = v3;
  *(this + 81) = v9;
  v2 = *(a2 + 21);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 79);
  v3 |= 0x4000u;
  *(this + 84) = v3;
  *(this + 79) = v10;
  v2 = *(a2 + 21);
  if ((v2 & 0x8000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a2 + 80);
  v3 |= 0x8000u;
  *(this + 84) = v3;
  *(this + 80) = v11;
  v2 = *(a2 + 21);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 78);
  v3 |= 0x2000u;
  *(this + 84) = v3;
  *(this + 78) = v12;
  v2 = *(a2 + 21);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(a2 + 82);
  v3 |= 0x20000u;
  *(this + 84) = v3;
  *(this + 82) = v13;
  v2 = *(a2 + 21);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(a2 + 77);
  v3 |= 0x1000u;
  *(this + 84) = v3;
  *(this + 77) = v14;
  v2 = *(a2 + 21);
  if ((v2 & 2) == 0)
  {
LABEL_16:
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(a2 + 2);
  v3 |= 2u;
  *(this + 84) = v3;
  *(this + 16) = v15;
  v2 = *(a2 + 21);
  if ((v2 & 1) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 1);
  v3 |= 1u;
  *(this + 84) = v3;
  *(this + 8) = v16;
  v2 = *(a2 + 21);
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 15);
  v3 |= 0x80u;
  *(this + 84) = v3;
  *(this + 60) = v17;
  v2 = *(a2 + 21);
  if ((v2 & 8) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 4);
  v3 |= 8u;
  *(this + 84) = v3;
  *(this + 32) = v18;
  v2 = *(a2 + 21);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 16);
  v3 |= 0x100u;
  *(this + 84) = v3;
  *(this + 64) = v19;
  v2 = *(a2 + 21);
  if ((v2 & 4) == 0)
  {
LABEL_21:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_38:
    v21 = *(a2 + 14);
    *(this + 84) = v3 | 0x40;
    *(this + 56) = v21;
    return this;
  }

LABEL_37:
  v20 = *(a2 + 3);
  v3 |= 4u;
  *(this + 84) = v3;
  *(this + 24) = v20;
  if ((*(a2 + 21) & 0x40) != 0)
  {
    goto LABEL_38;
  }

  return this;
}

CMMsl *CMMsl::WakeGestureSample::operator=(CMMsl *a1, const CMMsl::WakeGestureSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::WakeGestureSample::WakeGestureSample(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WakeGestureSample *a2, CMMsl::WakeGestureSample *a3)
{
  v3 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  v7 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  LOBYTE(v7) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v7;
  LOBYTE(v7) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v7;
  LOBYTE(v7) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v7;
  LOBYTE(v7) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  LOBYTE(v7) = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v7;
  LOBYTE(v7) = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v7;
  LOBYTE(v7) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v14 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v14;
  return result;
}

double CMMsl::WakeGestureSample::WakeGestureSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24600;
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

CMMsl *CMMsl::WakeGestureSample::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::WakeGestureSample::WakeGestureSample(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::WakeGestureSample::formatText(CMMsl::WakeGestureSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 21);
  if ((v5 & 0x40) != 0)
  {
    v7 = *(this + 14);
    PB::TextFormatter::format(a2, "detectionMode");
    v5 = *(this + 21);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 76);
  PB::TextFormatter::format(a2, "detectorRunning");
  v5 = *(this + 21);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(this + 77);
  PB::TextFormatter::format(a2, "enableStateDetected");
  v5 = *(this + 21);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(this + 78);
  PB::TextFormatter::format(a2, "fireAll");
  v5 = *(this + 21);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "gestureDetectionDelay", *(this + 1));
  v5 = *(this + 21);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(this + 79);
  PB::TextFormatter::format(a2, "gyroInUse");
  v5 = *(this + 21);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(this + 80);
  PB::TextFormatter::format(a2, "hostAwake");
  v5 = *(this + 21);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(this + 15);
  PB::TextFormatter::format(a2, "hostWakeCount");
  v5 = *(this + 21);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "hostWakeDelay", *(this + 2));
  v5 = *(this + 21);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(this + 81);
  PB::TextFormatter::format(a2, "invertSensors");
  v5 = *(this + 21);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "runningModeDuration", *(this + 3));
  v5 = *(this + 21);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "runningModeStartTime", *(this + 4));
  v5 = *(this + 21);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(this + 16);
  PB::TextFormatter::format(a2, "runningSwitchCount");
  v5 = *(this + 21);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = *(this + 17);
  PB::TextFormatter::format(a2, "state");
  v5 = *(this + 21);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  v5 = *(this + 21);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "timestampPossible", *(this + 6));
  v5 = *(this + 21);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v17 = *(this + 18);
  PB::TextFormatter::format(a2, "type");
  if ((*(this + 21) & 0x20000) != 0)
  {
LABEL_19:
    v6 = *(this + 82);
    PB::TextFormatter::format(a2, "wakePending");
  }

LABEL_20:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WakeGestureSample::readFrom(CMMsl::WakeGestureSample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_173:
    v111 = v4 ^ 1;
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

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_173;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 21) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_146;
        case 2u:
          *(this + 21) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_146;
        case 3u:
          *(this + 21) |= 0x200u;
          v26 = *(a2 + 1);
          v2 = *(a2 + 2);
          v27 = *a2;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(a2 + 1);
            }

            v78 = (v27 + v26);
            v79 = v2 - v26;
            v80 = v26 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v30) = 0;
                *(a2 + 24) = 1;
                goto LABEL_155;
              }

              v81 = v80;
              v82 = *v78;
              *(a2 + 1) = v81;
              v30 |= (v82 & 0x7F) << v76;
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
                LODWORD(v30) = 0;
LABEL_154:
                v2 = v81;
                goto LABEL_155;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_154;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          do
          {
            v2 = v32;
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              goto LABEL_155;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_155:
          *(this + 17) = v30;
          break;
        case 4u:
          *(this + 21) |= 0x400u;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(a2 + 1);
            }

            v92 = (v43 + v42);
            v93 = v2 - v42;
            v94 = v42 + 1;
            while (1)
            {
              if (!v93)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_163;
              }

              v95 = v94;
              v96 = *v92;
              *(a2 + 1) = v95;
              v46 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              ++v92;
              --v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
LABEL_162:
                v2 = v95;
                goto LABEL_163;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }

            goto LABEL_162;
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
              goto LABEL_163;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          LODWORD(v46) = 0;
LABEL_163:
          *(this + 18) = v46;
          break;
        case 5u:
          *(this + 21) |= 0x800u;
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
        case 6u:
          *(this + 21) |= 0x10000u;
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

          *(this + 81) = v61;
          break;
        case 7u:
          *(this + 21) |= 0x4000u;
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

          *(this + 79) = v71;
          break;
        case 8u:
          *(this + 21) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v50 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v51 = v50 != 0;
          }

          *(this + 80) = v51;
          break;
        case 9u:
          *(this + 21) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v75 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v74 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v75 = v74 != 0;
          }

          *(this + 78) = v75;
          break;
        case 0xAu:
          *(this + 21) |= 0x20000u;
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

          *(this + 82) = v25;
          break;
        case 0xBu:
          *(this + 21) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v73 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v72 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v73 = v72 != 0;
          }

          *(this + 77) = v73;
          break;
        case 0xCu:
          *(this + 21) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_146;
        case 0xDu:
          *(this + 21) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_146;
        case 0xEu:
          *(this + 21) |= 0x80u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v104 = 0;
            v105 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v106 = (v63 + v62);
            v107 = v2 - v62;
            v108 = v62 + 1;
            while (1)
            {
              if (!v107)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_171;
              }

              v109 = v108;
              v110 = *v106;
              *(a2 + 1) = v109;
              v66 |= (v110 & 0x7F) << v104;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              ++v106;
              --v107;
              v108 = v109 + 1;
              v14 = v105++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_170:
                v2 = v109;
                goto LABEL_171;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_170;
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
              goto LABEL_171;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_171:
          *(this + 15) = v66;
          break;
        case 0xFu:
          *(this + 21) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_146;
        case 0x10u:
          *(this + 21) |= 0x100u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v85 = (v35 + v34);
            v86 = v2 - v34;
            v87 = v34 + 1;
            while (1)
            {
              if (!v86)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_159;
              }

              v88 = v87;
              v89 = *v85;
              *(a2 + 1) = v88;
              v38 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              ++v85;
              --v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_158:
                v2 = v88;
                goto LABEL_159;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_158;
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
              goto LABEL_159;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_159:
          *(this + 16) = v38;
          break;
        case 0x11u:
          *(this + 21) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_68:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 3) = *(*a2 + v2);
LABEL_146:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        case 0x12u:
          *(this + 21) |= 0x40u;
          v52 = *(a2 + 1);
          v2 = *(a2 + 2);
          v53 = *a2;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v97 = 0;
            v98 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(a2 + 1);
            }

            v99 = (v53 + v52);
            v100 = v2 - v52;
            v101 = v52 + 1;
            while (1)
            {
              if (!v100)
              {
                LODWORD(v56) = 0;
                *(a2 + 24) = 1;
                goto LABEL_167;
              }

              v102 = v101;
              v103 = *v99;
              *(a2 + 1) = v102;
              v56 |= (v103 & 0x7F) << v97;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              ++v99;
              --v100;
              v101 = v102 + 1;
              v14 = v98++ > 8;
              if (v14)
              {
                LODWORD(v56) = 0;
LABEL_166:
                v2 = v102;
                goto LABEL_167;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_166;
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
              goto LABEL_167;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_167:
          *(this + 14) = v56;
          break;
        default:
          goto LABEL_17;
      }

LABEL_19:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_173;
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
        goto LABEL_173;
      }

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
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_19;
    }

    v111 = 0;
  }

  return v111 & 1;
}

uint64_t CMMsl::WakeGestureSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 84);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 84);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 84);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(v3 + 76);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(v3 + 81);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(v3 + 79);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(v3 + 80);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(v3 + 78);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(v3 + 82);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(v3 + 77);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 84);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 84);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(v3 + 60);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 84);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 84) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  v15 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 84);
  if ((v4 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_37:
  v16 = *(v3 + 56);

  return PB::Writer::writeVarInt(a2);
}