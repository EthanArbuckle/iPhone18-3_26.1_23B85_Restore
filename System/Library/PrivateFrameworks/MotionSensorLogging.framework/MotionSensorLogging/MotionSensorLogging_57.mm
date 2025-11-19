uint64_t CMMsl::StepCountEntry::makeAccelerometerPace(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::StepCountEntry::makeMovementStats(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

void CMMsl::StepCountEntryAddition::~StepCountEntryAddition(CMMsl::StepCountEntryAddition *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::StepCountEntryAddition::StepCountEntryAddition(uint64_t this, const CMMsl::StepCountEntryAddition *a2)
{
  *this = &unk_286C23D08;
  *(this + 72) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 32;
    *(this + 72) = 32;
    *(this + 48) = v4;
    v2 = *(a2 + 36);
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
    v5 = *(a2 + 16);
    v3 |= 0x80u;
    *(this + 72) = v3;
    *(this + 64) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 72) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 72) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 72) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 69);
  v3 |= 0x200u;
  *(this + 72) = v3;
  *(this + 69) = v9;
  v2 = *(a2 + 36);
  if ((v2 & 1) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 1);
  v3 |= 1u;
  *(this + 72) = v3;
  *(this + 8) = v10;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 72) = v3;
  *(this + 56) = v11;
  v2 = *(a2 + 36);
  if ((v2 & 0x400) == 0)
  {
LABEL_13:
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 70);
  v3 |= 0x400u;
  *(this + 72) = v3;
  *(this + 70) = v12;
  v2 = *(a2 + 36);
  if ((v2 & 2) == 0)
  {
LABEL_14:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

LABEL_24:
    v14 = *(a2 + 68);
    *(this + 72) = v3 | 0x100;
    *(this + 68) = v14;
    return this;
  }

LABEL_23:
  v13 = *(a2 + 2);
  v3 |= 2u;
  *(this + 72) = v3;
  *(this + 16) = v13;
  if ((*(a2 + 36) & 0x100) != 0)
  {
    goto LABEL_24;
  }

  return this;
}

CMMsl *CMMsl::StepCountEntryAddition::operator=(CMMsl *a1, const CMMsl::StepCountEntryAddition *a2)
{
  if (a1 != a2)
  {
    CMMsl::StepCountEntryAddition::StepCountEntryAddition(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StepCountEntryAddition *a2, CMMsl::StepCountEntryAddition *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LOBYTE(v5) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v5;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LOBYTE(v5) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v5) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v5;
  return result;
}

double CMMsl::StepCountEntryAddition::StepCountEntryAddition(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23D08;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 69) = *(a2 + 69);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 70) = *(a2 + 70);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 68) = *(a2 + 68);
  return result;
}

CMMsl *CMMsl::StepCountEntryAddition::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::StepCountEntryAddition::StepCountEntryAddition(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::StepCountEntryAddition::formatText(CMMsl::StepCountEntryAddition *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "calibratedDistance", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "energyDeltaDistance", *(this + 2));
  v5 = *(this + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(this + 68);
  PB::TextFormatter::format(a2, "energyIsCalibrated");
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "incrementalActiveTime", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(this + 16);
  PB::TextFormatter::format(a2, "incrementalSteps");
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "lastStepTime", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "odometerSpeed", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "rawPace", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(this + 69);
  PB::TextFormatter::format(a2, "rawPaceDidJump");
  v5 = *(this + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "stepCadenceDeltaDistance", *(this + 7));
  if ((*(this + 36) & 0x400) != 0)
  {
LABEL_12:
    v6 = *(this + 70);
    PB::TextFormatter::format(a2, "stepCadenceIsCalibrated");
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StepCountEntryAddition::readFrom(CMMsl::StepCountEntryAddition *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 36) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_63:
            *(a2 + 24) = 1;
            goto LABEL_89;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_83;
        }

        if (v22 == 2)
        {
          *(this + 36) |= 0x80u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v37 = 0;
            v38 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v39 = (v26 + v25);
            v40 = v2 - v25;
            v41 = v25 + 1;
            while (1)
            {
              if (!v40)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_88;
              }

              v42 = v41;
              v43 = *v39;
              *(a2 + 1) = v42;
              v29 |= (v43 & 0x7F) << v37;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              ++v39;
              --v40;
              v41 = v42 + 1;
              v14 = v38++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_87;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_87:
            v2 = v42;
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

LABEL_88:
          *(this + 16) = v29;
          goto LABEL_89;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 36) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_63;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_83;
          case 4:
            *(this + 36) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_63;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_83;
          case 5:
            *(this + 36) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_63;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_83;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 36) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v36 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v35 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v36 = v35 != 0;
          }

          *(this + 70) = v36;
          goto LABEL_89;
        case 0xA:
          *(this + 36) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_83;
        case 0xB:
          *(this + 36) |= 0x100u;
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

          *(this + 68) = v24;
          goto LABEL_89;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 36) |= 0x200u;
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

          *(this + 69) = v34;
          goto LABEL_89;
        case 7:
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_83;
        case 8:
          *(this + 36) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_83:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_89;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v44 = 0;
      return v44 & 1;
    }

    v2 = *(a2 + 1);
LABEL_89:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v44 = v4 ^ 1;
  return v44 & 1;
}

uint64_t CMMsl::StepCountEntryAddition::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48));
    v4 = *(v3 + 72);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 69);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 72) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  v7 = *(v3 + 70);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 72);
  if ((v4 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v3 + 68);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::StepCountEntryAddition::hash_value(CMMsl::StepCountEntryAddition *this)
{
  v1 = *(this + 36);
  if ((v1 & 0x20) != 0)
  {
    v2 = *(this + 6);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x80) != 0)
    {
LABEL_3:
      v3 = *(this + 16);
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_29:
      v4 = 0.0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_30:
      v5 = 0.0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_10;
      }

LABEL_31:
      v6 = 0.0;
      if ((*(this + 36) & 0x200) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_7:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  v6 = *(this + 5);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 36) & 0x200) != 0)
  {
LABEL_13:
    v7 = *(this + 69);
    if (v1)
    {
      goto LABEL_14;
    }

LABEL_33:
    v8 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v9 = 0.0;
    if ((*(this + 36) & 0x400) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_32:
  v7 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  v8 = *(this + 1);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 36) & 0x400) != 0)
  {
LABEL_20:
    v10 = *(this + 70);
    if ((v1 & 2) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_21:
    v11 = *(this + 2);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    if ((*(this + 36) & 0x100) != 0)
    {
      goto LABEL_24;
    }

LABEL_37:
    v12 = 0;
    return v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ v10 ^ *&v11 ^ v12;
  }

LABEL_36:
  v11 = 0.0;
  if ((*(this + 36) & 0x100) == 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  v12 = *(this + 68);
  return v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ v10 ^ *&v11 ^ v12;
}

void CMMsl::StepDistanceFusionResult::~StepDistanceFusionResult(CMMsl::StepDistanceFusionResult *this)
{
  *this = &unk_286C23D40;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StepDistanceFusionResult::~StepDistanceFusionResult(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::StepDistanceFusionResult::StepDistanceFusionResult(uint64_t this, const CMMsl::StepDistanceFusionResult *a2)
{
  *this = &unk_286C23D40;
  *(this + 8) = 0;
  *(this + 100) = 0;
  *(this + 16) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 50);
  if (v2)
  {
    v4 = *(a2 + 3);
    *(this + 100) |= 1u;
    *(this + 24) = v4;
    v2 = *(a2 + 50);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 4);
  *(this + 100) |= 2u;
  *(this + 32) = v5;
  v2 = *(a2 + 50);
  if ((v2 & 0x80) == 0)
  {
LABEL_8:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(a2 + 10);
  *(this + 100) |= 0x80u;
  *(this + 80) = v6;
  v2 = *(a2 + 50);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(a2 + 8);
  *(this + 100) |= 0x20u;
  *(this + 64) = v7;
  v2 = *(a2 + 50);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a2 + 9);
  *(this + 100) |= 0x40u;
  *(this + 72) = v8;
  v2 = *(a2 + 50);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 5);
  *(this + 100) |= 4u;
  *(this + 40) = v9;
  v2 = *(a2 + 50);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 6);
  *(this + 100) |= 8u;
  *(this + 48) = v10;
  v2 = *(a2 + 50);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a2 + 7);
  *(this + 100) |= 0x10u;
  *(this + 56) = v11;
  v2 = *(a2 + 50);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(a2 + 96);
  *(this + 100) |= 0x400u;
  *(this + 96) = v12;
  v2 = *(a2 + 50);
  if ((v2 & 0x200) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_16;
  }

LABEL_27:
  v13 = *(a2 + 23);
  *(this + 100) |= 0x200u;
  *(this + 92) = v13;
  if ((*(a2 + 50) & 0x100) == 0)
  {
    return this;
  }

LABEL_16:
  v3 = *(a2 + 22);
  *(this + 100) |= 0x100u;
  *(this + 88) = v3;
  return this;
}

CMMsl *CMMsl::StepDistanceFusionResult::operator=(CMMsl *a1, const CMMsl::StepDistanceFusionResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::StepDistanceFusionResult::StepDistanceFusionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::StepDistanceFusionResult::~StepDistanceFusionResult(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StepDistanceFusionResult *a2, CMMsl::StepDistanceFusionResult *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  LOBYTE(v5) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v5;
  LODWORD(v5) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v5;
  LODWORD(v5) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v5;
  return result;
}

uint64_t CMMsl::StepDistanceFusionResult::StepDistanceFusionResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23D40;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

CMMsl *CMMsl::StepDistanceFusionResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::StepDistanceFusionResult::StepDistanceFusionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::StepDistanceFusionResult::~StepDistanceFusionResult(v5);
  }

  return a1;
}

uint64_t CMMsl::StepDistanceFusionResult::formatText(CMMsl::StepDistanceFusionResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "addition");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "fused");
  }

  v7 = *(this + 50);
  if ((v7 & 0x400) != 0)
  {
    v8 = *(this + 96);
    PB::TextFormatter::format(a2, "isVehicular");
    v7 = *(this + 50);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "odometerDeltaDistance", *(this + 3));
  v7 = *(this + 50);
  if ((v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(this + 22);
  PB::TextFormatter::format(a2, "odometerQuality");
  v7 = *(this + 50);
  if ((v7 & 2) == 0)
  {
LABEL_9:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "odometerSmoothMeanPace", *(this + 4));
  v7 = *(this + 50);
  if ((v7 & 0x200) == 0)
  {
LABEL_10:
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(this + 23);
  PB::TextFormatter::format(a2, "pedometerDistanceSource");
  v7 = *(this + 50);
  if ((v7 & 4) == 0)
  {
LABEL_11:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "speedStdDevOdometer", *(this + 5));
  v7 = *(this + 50);
  if ((v7 & 8) == 0)
  {
LABEL_12:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "speedStdDevPedometer", *(this + 6));
  v7 = *(this + 50);
  if ((v7 & 0x10) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "speedStdDevResidualTolerance", *(this + 7));
  v7 = *(this + 50);
  if ((v7 & 0x20) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "totalDistanceCalibratedPedometer", *(this + 8));
  v7 = *(this + 50);
  if ((v7 & 0x40) == 0)
  {
LABEL_15:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "totalDistanceFused", *(this + 9));
  if ((*(this + 50) & 0x80) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "totalDistanceOdometer", *(this + 10));
  }

LABEL_17:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StepDistanceFusionResult::readFrom(CMMsl::StepDistanceFusionResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_95:
    v65 = v4 ^ 1;
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
        goto LABEL_95;
      }

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          operator new();
        case 3u:
          *(this + 50) |= 1u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 3) = *(*a2 + v42);
          goto LABEL_82;
        case 4u:
          *(this + 50) |= 2u;
          v43 = *(a2 + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 4) = *(*a2 + v43);
          goto LABEL_82;
        case 5u:
          *(this + 50) |= 0x80u;
          v31 = *(a2 + 1);
          if (v31 > 0xFFFFFFFFFFFFFFF7 || v31 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 10) = *(*a2 + v31);
          goto LABEL_82;
        case 6u:
          *(this + 50) |= 0x20u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 8) = *(*a2 + v45);
          goto LABEL_82;
        case 7u:
          *(this + 50) |= 0x40u;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 9) = *(*a2 + v46);
          goto LABEL_82;
        case 8u:
          *(this + 50) |= 4u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 5) = *(*a2 + v44);
          goto LABEL_82;
        case 9u:
          *(this + 50) |= 8u;
          v51 = *(a2 + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 6) = *(*a2 + v51);
          goto LABEL_82;
        case 0xAu:
          *(this + 50) |= 0x10u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 7) = *(*a2 + v41);
LABEL_82:
            *(a2 + 1) += 8;
          }

          goto LABEL_91;
        case 0xBu:
          *(this + 50) |= 0x400u;
          v47 = *(a2 + 1);
          if (v47 >= *(a2 + 2))
          {
            v50 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v48 = v47 + 1;
            v49 = *(*a2 + v47);
            *(a2 + 1) = v48;
            v50 = v49 != 0;
          }

          *(this + 96) = v50;
          goto LABEL_91;
        case 0xCu:
          *(this + 50) |= 0x200u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_87;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_70:
            LODWORD(v27) = 0;
            goto LABEL_87;
          }

          v52 = 0;
          v53 = 0;
          v27 = 0;
          v54 = (v24 + v23);
          v18 = v22 >= v23;
          v55 = v22 - v23;
          if (!v18)
          {
            v55 = 0;
          }

          v56 = v23 + 1;
          while (2)
          {
            if (v55)
            {
              v57 = *v54;
              *(a2 + 1) = v56;
              v27 |= (v57 & 0x7F) << v52;
              if (v57 < 0)
              {
                v52 += 7;
                ++v54;
                --v55;
                ++v56;
                v14 = v53++ > 8;
                if (v14)
                {
                  goto LABEL_70;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_87:
          *(this + 23) = v27;
          goto LABEL_91;
        case 0xDu:
          *(this + 50) |= 0x100u;
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
                goto LABEL_90;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_78:
            LODWORD(v37) = 0;
            goto LABEL_90;
          }

          v58 = 0;
          v59 = 0;
          v37 = 0;
          v60 = (v34 + v33);
          v18 = v32 >= v33;
          v61 = v32 - v33;
          if (!v18)
          {
            v61 = 0;
          }

          v62 = v33 + 1;
          break;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v61)
        {
          LODWORD(v37) = 0;
          *(a2 + 24) = 1;
          goto LABEL_90;
        }

        v63 = *v60;
        *(a2 + 1) = v62;
        v37 |= (v63 & 0x7F) << v58;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        ++v60;
        --v61;
        ++v62;
        v14 = v59++ > 8;
        if (v14)
        {
          goto LABEL_78;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v37) = 0;
      }

LABEL_90:
      *(this + 22) = v37;
LABEL_91:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_95;
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
        goto LABEL_95;
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
      goto LABEL_91;
    }

    v65 = 0;
  }

  return v65 & 1;
}

uint64_t CMMsl::StepDistanceFusionResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 100);
  if (v6)
  {
    this = PB::Writer::write(a2, *(v3 + 24));
    v6 = *(v3 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v6 = *(v3 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 80));
  v6 = *(v3 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 64));
  v6 = *(v3 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 72));
  v6 = *(v3 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 40));
  v6 = *(v3 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 48));
  v6 = *(v3 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 56));
  v6 = *(v3 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v8 = *(v3 + 92);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 100) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  v7 = *(v3 + 96);
  this = PB::Writer::write(a2);
  v6 = *(v3 + 100);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_27:
  v9 = *(v3 + 88);

  return PB::Writer::writeVarInt(a2);
}

unint64_t CMMsl::StepDistanceFusionResult::hash_value(CMMsl::StepDistanceFusionResult *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = CMMsl::StepCountEntry::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v4 = CMMsl::StepCountEntryAddition::hash_value(v4);
  }

  v5 = *(this + 50);
  if ((v5 & 1) == 0)
  {
    v6 = 0.0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    v7 = 0.0;
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_36:
    v8 = 0.0;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_37:
    v9 = 0.0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_38:
    v10 = 0.0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    v11 = 0.0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_23;
    }

LABEL_40:
    v12 = 0.0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_26;
    }

LABEL_41:
    v13 = 0.0;
    if ((*(this + 50) & 0x400) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

  v6 = *(this + 3);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  v7 = *(this + 4);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v5 & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_11:
  v8 = *(this + 10);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_14:
  v9 = *(this + 8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v5 & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_17:
  v10 = *(this + 9);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_39;
  }

LABEL_20:
  v11 = *(this + 5);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v5 & 8) == 0)
  {
    goto LABEL_40;
  }

LABEL_23:
  v12 = *(this + 6);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v5 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_26:
  v13 = *(this + 7);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((*(this + 50) & 0x400) != 0)
  {
LABEL_29:
    v14 = *(this + 96);
    if ((*(this + 50) & 0x200) != 0)
    {
      goto LABEL_30;
    }

LABEL_43:
    v15 = 0;
    if ((*(this + 50) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_44:
    v16 = 0;
    return v4 ^ v3 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_42:
  v14 = 0;
  if ((*(this + 50) & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_30:
  v15 = *(this + 23);
  if ((*(this + 50) & 0x100) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v16 = *(this + 22);
  return v4 ^ v3 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16;
}

uint64_t CMMsl::StepDistanceFusionResult::makeFused(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::StepDistanceFusionResult::makeAddition(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::StepLikelihoodFeatures::~StepLikelihoodFeatures(CMMsl::StepLikelihoodFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::StepLikelihoodFeatures::StepLikelihoodFeatures(CMMsl::StepLikelihoodFeatures *this, const CMMsl::StepLikelihoodFeatures *a2)
{
  *this = &unk_286C23D78;
  *(this + 24) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 0x40) != 0)
  {
    result = *(a2 + 7);
    v3 = 64;
    *(this + 48) = 64;
    *(this + 7) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x400) != 0)
  {
LABEL_5:
    result = *(a2 + 11);
    v3 |= 0x400u;
    *(this + 48) = v3;
    *(this + 11) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 48) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 48);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 48) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 48) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 48) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 48);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 48) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x80) == 0)
  {
LABEL_14:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 1);
    *(this + 48) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 48) = v3;
  *(this + 8) = result;
  if (*(a2 + 48))
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::StepLikelihoodFeatures::operator=(CMMsl *a1, const CMMsl::StepLikelihoodFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::StepLikelihoodFeatures::StepLikelihoodFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StepLikelihoodFeatures *a2, CMMsl::StepLikelihoodFeatures *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::StepLikelihoodFeatures::StepLikelihoodFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23D78;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::StepLikelihoodFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::StepLikelihoodFeatures::StepLikelihoodFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::StepLikelihoodFeatures::formatText(CMMsl::StepLikelihoodFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "bobbiness", *(this + 1));
    v5 = *(this + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "bufferAvgSampleRateHz", *(this + 2));
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "concavityDeltaDeg", *(this + 3));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "deltaInertialZVel", *(this + 4));
  v5 = *(this + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "horizontalDisplacement", *(this + 5));
  v5 = *(this + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "impulseDurationSec", *(this + 6));
  v5 = *(this + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "likelihoodRatio", *(this + 7));
  v5 = *(this + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "peakiness", *(this + 8));
  v5 = *(this + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "thetaPitchFaceDeg", *(this + 9));
  v5 = *(this + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "thetaRollFaceDeg", *(this + 10));
  if ((*(this + 48) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "timeSinceLastStepSec", *(this + 11));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StepLikelihoodFeatures::readFrom(CMMsl::StepLikelihoodFeatures *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 48) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 2)
        {
          *(this + 48) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_68;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 48) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_68;
          case 4:
            *(this + 48) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_68;
          case 5:
            *(this + 48) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_68;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 48) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_68;
        case 0xA:
          *(this + 48) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_68;
        case 0xB:
          *(this + 48) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_68;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 48) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_68;
        case 7:
          *(this + 48) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_68;
        case 8:
          *(this + 48) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_68:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_69;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_69:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::StepLikelihoodFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 96);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 96);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 96) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 96);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 96);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 64));
    if ((*(v3 + 96) & 1) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::StepLikelihoodFeatures::hash_value(CMMsl::StepLikelihoodFeatures *this)
{
  v1 = *(this + 48);
  if ((v1 & 0x40) == 0)
  {
    v2 = 0.0;
    if ((*(this + 48) & 0x400) != 0)
    {
      goto LABEL_3;
    }

LABEL_36:
    v3 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_37:
    v4 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_38:
    v5 = 0.0;
    if ((*(this + 48) & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v6 = 0.0;
    if ((*(this + 48) & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v7 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v9 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_43:
    v10 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v2 = *(this + 7);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 48) & 0x400) == 0)
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = *(this + 11);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_38;
  }

LABEL_9:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 48) & 0x200) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v6 = *(this + 10);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 48) & 0x100) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v7 = *(this + 9);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  v8 = *(this + 5);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  v9 = *(this + 3);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  v10 = *(this + 2);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_27:
    v11 = *(this + 8);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    if (v1)
    {
      goto LABEL_30;
    }

LABEL_45:
    v12 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12;
  }

LABEL_44:
  v11 = 0.0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  v12 = *(this + 1);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12;
}

void CMMsl::StreamingHeartRateData::~StreamingHeartRateData(CMMsl::StreamingHeartRateData *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23DB0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StreamingHeartRateData::~StreamingHeartRateData(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::StreamingHeartRateData::StreamingHeartRateData(void *this, const CMMsl::StreamingHeartRateData *a2)
{
  *this = &unk_286C23DB0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::StreamingHeartRateData *CMMsl::StreamingHeartRateData::operator=(const CMMsl::StreamingHeartRateData *a1, const CMMsl::StreamingHeartRateData *a2)
{
  if (a1 != a2)
  {
    CMMsl::StreamingHeartRateData::StreamingHeartRateData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::StreamingHeartRateData::~StreamingHeartRateData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::StreamingHeartRateData *a2, CMMsl::StreamingHeartRateData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::StreamingHeartRateData::StreamingHeartRateData(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23DB0;
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
  *a1 = &unk_286C23DB0;
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

uint64_t CMMsl::StreamingHeartRateData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23DB0;
    v6[1] = v4;
    CMMsl::StreamingHeartRateData::~StreamingHeartRateData(v6);
  }

  return a1;
}

uint64_t CMMsl::StreamingHeartRateData::formatText(CMMsl::StreamingHeartRateData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StreamingHeartRateData::readFrom(CMMsl::StreamingHeartRateData *this, PB::Reader *a2)
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

uint64_t CMMsl::StreamingHeartRateData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::StreamingHeartRateData::hash_value(CMMsl::StreamingHeartRateData *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::StreamingHeartRateData::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::StreamingHeartRateDataWatch::~StreamingHeartRateDataWatch(CMMsl::StreamingHeartRateDataWatch *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23DE8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StreamingHeartRateDataWatch::~StreamingHeartRateDataWatch(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::StreamingHeartRateDataWatch::StreamingHeartRateDataWatch(void *this, const CMMsl::StreamingHeartRateDataWatch *a2)
{
  *this = &unk_286C23DE8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::StreamingHeartRateDataWatch *CMMsl::StreamingHeartRateDataWatch::operator=(const CMMsl::StreamingHeartRateDataWatch *a1, const CMMsl::StreamingHeartRateDataWatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::StreamingHeartRateDataWatch::StreamingHeartRateDataWatch(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::StreamingHeartRateDataWatch::~StreamingHeartRateDataWatch(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::StreamingHeartRateDataWatch *a2, CMMsl::StreamingHeartRateDataWatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::StreamingHeartRateDataWatch::StreamingHeartRateDataWatch(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23DE8;
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
  *a1 = &unk_286C23DE8;
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

uint64_t CMMsl::StreamingHeartRateDataWatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23DE8;
    v6[1] = v4;
    CMMsl::StreamingHeartRateDataWatch::~StreamingHeartRateDataWatch(v6);
  }

  return a1;
}

uint64_t CMMsl::StreamingHeartRateDataWatch::formatText(CMMsl::StreamingHeartRateDataWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StreamingHeartRateDataWatch::readFrom(CMMsl::StreamingHeartRateDataWatch *this, PB::Reader *a2)
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

uint64_t CMMsl::StreamingHeartRateDataWatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::StreamingHeartRateDataWatch::hash_value(CMMsl::StreamingHeartRateDataWatch *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::StreamingHeartRateDataWatch::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::StreamingHighFrequencyHeartRateData::~StreamingHighFrequencyHeartRateData(CMMsl::StreamingHighFrequencyHeartRateData *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23E20;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StreamingHighFrequencyHeartRateData::~StreamingHighFrequencyHeartRateData(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::StreamingHighFrequencyHeartRateData::StreamingHighFrequencyHeartRateData(void *this, const CMMsl::StreamingHighFrequencyHeartRateData *a2)
{
  *this = &unk_286C23E20;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::StreamingHighFrequencyHeartRateData *CMMsl::StreamingHighFrequencyHeartRateData::operator=(const CMMsl::StreamingHighFrequencyHeartRateData *a1, const CMMsl::StreamingHighFrequencyHeartRateData *a2)
{
  if (a1 != a2)
  {
    CMMsl::StreamingHighFrequencyHeartRateData::StreamingHighFrequencyHeartRateData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::StreamingHighFrequencyHeartRateData::~StreamingHighFrequencyHeartRateData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::StreamingHighFrequencyHeartRateData *a2, CMMsl::StreamingHighFrequencyHeartRateData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::StreamingHighFrequencyHeartRateData::StreamingHighFrequencyHeartRateData(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23E20;
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
  *a1 = &unk_286C23E20;
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

uint64_t CMMsl::StreamingHighFrequencyHeartRateData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23E20;
    v6[1] = v4;
    CMMsl::StreamingHighFrequencyHeartRateData::~StreamingHighFrequencyHeartRateData(v6);
  }

  return a1;
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateData::formatText(CMMsl::StreamingHighFrequencyHeartRateData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateData::readFrom(CMMsl::StreamingHighFrequencyHeartRateData *this, PB::Reader *a2)
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

uint64_t CMMsl::StreamingHighFrequencyHeartRateData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::StreamingHighFrequencyHeartRateData::hash_value(CMMsl::StreamingHighFrequencyHeartRateData *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateData::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::StreamingHighFrequencyHeartRateDataWatch::~StreamingHighFrequencyHeartRateDataWatch(CMMsl::StreamingHighFrequencyHeartRateDataWatch *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23E58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StreamingHighFrequencyHeartRateDataWatch::~StreamingHighFrequencyHeartRateDataWatch(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::StreamingHighFrequencyHeartRateDataWatch::StreamingHighFrequencyHeartRateDataWatch(void *this, const CMMsl::StreamingHighFrequencyHeartRateDataWatch *a2)
{
  *this = &unk_286C23E58;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::StreamingHighFrequencyHeartRateDataWatch *CMMsl::StreamingHighFrequencyHeartRateDataWatch::operator=(const CMMsl::StreamingHighFrequencyHeartRateDataWatch *a1, const CMMsl::StreamingHighFrequencyHeartRateDataWatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::StreamingHighFrequencyHeartRateDataWatch::StreamingHighFrequencyHeartRateDataWatch(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::StreamingHighFrequencyHeartRateDataWatch::~StreamingHighFrequencyHeartRateDataWatch(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::StreamingHighFrequencyHeartRateDataWatch *a2, CMMsl::StreamingHighFrequencyHeartRateDataWatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::StreamingHighFrequencyHeartRateDataWatch::StreamingHighFrequencyHeartRateDataWatch(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23E58;
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
  *a1 = &unk_286C23E58;
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

uint64_t CMMsl::StreamingHighFrequencyHeartRateDataWatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23E58;
    v6[1] = v4;
    CMMsl::StreamingHighFrequencyHeartRateDataWatch::~StreamingHighFrequencyHeartRateDataWatch(v6);
  }

  return a1;
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateDataWatch::formatText(CMMsl::StreamingHighFrequencyHeartRateDataWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateDataWatch::readFrom(CMMsl::StreamingHighFrequencyHeartRateDataWatch *this, PB::Reader *a2)
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

uint64_t CMMsl::StreamingHighFrequencyHeartRateDataWatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::StreamingHighFrequencyHeartRateDataWatch::hash_value(CMMsl::StreamingHighFrequencyHeartRateDataWatch *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::StreamingHighFrequencyHeartRateDataWatch::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::StrideCalBin::~StrideCalBin(CMMsl::StrideCalBin *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::StrideCalBin::StrideCalBin(CMMsl::StrideCalBin *this, const CMMsl::StrideCalBin *a2)
{
  *this = &unk_286C23E90;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 8;
    *(this + 40) = 8;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 40))
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 40) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 3);
      *(this + 40) = v3 | 4;
      *(this + 3) = result;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 9) = v6;
  if ((*(a2 + 40) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::StrideCalBin::operator=(uint64_t a1, const CMMsl::StrideCalBin *a2)
{
  if (a1 != a2)
  {
    CMMsl::StrideCalBin::StrideCalBin(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    *&v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v10 = v3;
    v11 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StrideCalBin *a2, CMMsl::StrideCalBin *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::StrideCalBin::StrideCalBin(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23E90;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C23E90;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::StrideCalBin::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23E90;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v13 = *(a1 + 40);
    v4 = *(a1 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 8) = *(a2 + 8);
    v10 = v4;
    *(a1 + 40) = v3;
    v7 = *(a1 + 24);
    *&v4 = *(a1 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    v11 = v7;
    v12 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::StrideCalBin::formatText(CMMsl::StrideCalBin *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "begin", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 8);
  PB::TextFormatter::format(a2, "bin");
  v5 = *(this + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "end", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "kValue", *(this + 3));
  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 9);
    PB::TextFormatter::format(a2, "state");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StrideCalBin::readFrom(CMMsl::StrideCalBin *this, PB::Reader *a2)
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
        *(this + 40) |= 8u;
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
              goto LABEL_76;
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
              goto LABEL_75;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_75:
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

LABEL_76:
        *(this + 8) = v35;
        goto LABEL_77;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_34:
          *(a2 + 24) = 1;
          goto LABEL_77;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_66;
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
            goto LABEL_34;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_66;
        case 4:
          *(this + 40) |= 0x10u;
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
                goto LABEL_72;
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
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
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

LABEL_72:
          *(this + 9) = v27;
          goto LABEL_77;
        case 5:
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_34;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_77;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_77:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::StrideCalBin::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 8) != 0)
  {
    v5 = *(this + 32);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(v3 + 36);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 40) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v3 + 24);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::StrideCalBin::hash_value(CMMsl::StrideCalBin *this)
{
  if ((*(this + 40) & 8) == 0)
  {
    v1 = 0;
    if (*(this + 40))
    {
      goto LABEL_3;
    }

LABEL_14:
    v2 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v3 = 0.0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v1 = *(this + 8);
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_9:
    v4 = *(this + 9);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v5 = 0.0;
    return *&v2 ^ v1 ^ *&v3 ^ v4 ^ *&v5;
  }

LABEL_16:
  v4 = 0;
  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3 ^ v4 ^ *&v5;
}

void CMMsl::StrideCalEntry::~StrideCalEntry(CMMsl::StrideCalEntry *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::StrideCalEntry::StrideCalEntry(uint64_t this, const CMMsl::StrideCalEntry *a2)
{
  *this = &unk_286C23EC8;
  *(this + 92) = 0;
  v2 = *(a2 + 46);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 9);
    v3 = 256;
    *(this + 92) = 256;
    *(this + 72) = v4;
    v2 = *(a2 + 46);
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 92) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 46);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 8u;
    *(this + 92) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 46);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 92) = v3;
  *(this + 40) = v7;
  v2 = *(a2 + 46);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 92) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 46);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 22);
  v3 |= 0x800u;
  *(this + 92) = v3;
  *(this + 88) = v9;
  v2 = *(a2 + 46);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 92) = v3;
  *(this + 84) = v10;
  v2 = *(a2 + 46);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 92) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 46);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 92) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 46);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 3);
  v3 |= 4u;
  *(this + 92) = v3;
  *(this + 24) = v13;
  v2 = *(a2 + 46);
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 20);
    *(this + 92) = v3 | 0x200;
    *(this + 80) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 92) = v3;
  *(this + 56) = v14;
  if ((*(a2 + 46) & 0x200) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::StrideCalEntry::operator=(CMMsl *a1, const CMMsl::StrideCalEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::StrideCalEntry::StrideCalEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StrideCalEntry *a2, CMMsl::StrideCalEntry *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v9;
  v10 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  return result;
}

double CMMsl::StrideCalEntry::StrideCalEntry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23EC8;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

CMMsl *CMMsl::StrideCalEntry::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::StrideCalEntry::StrideCalEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::StrideCalEntry::formatText(CMMsl::StrideCalEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 46);
  if (v5)
  {
    PB::TextFormatter::format(a2, "distance", *(this + 1));
    v5 = *(this + 46);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "endTime", *(this + 2));
  v5 = *(this + 46);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "gpsSource", *(this + 3));
  v5 = *(this + 46);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "kvalue", *(this + 4));
  v5 = *(this + 46);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "kvalueTrack", *(this + 5));
  v5 = *(this + 46);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "percentGrade", *(this + 6));
  v5 = *(this + 46);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "runningFormStrideLength", *(this + 7));
  v5 = *(this + 46);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(this + 20);
  PB::TextFormatter::format(a2, "runningFormStrideLengthMetrics");
  v5 = *(this + 46);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(this + 21);
  PB::TextFormatter::format(a2, "session");
  v5 = *(this + 46);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "speed", *(this + 8));
  v5 = *(this + 46);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "startTime", *(this + 9));
  if ((*(this + 46) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 22);
    PB::TextFormatter::format(a2, "steps");
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StrideCalEntry::readFrom(CMMsl::StrideCalEntry *this, PB::Reader *a2)
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
            *(this + 46) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_82:
              *(a2 + 24) = 1;
              goto LABEL_124;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_108;
          case 0xB:
            *(this + 46) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_82;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_108;
          case 0xC:
            *(this + 46) |= 0x200u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v56 = (v32 + v31);
              v57 = v2 - v31;
              v58 = v31 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_119;
                }

                v59 = v58;
                v60 = *v56;
                *(a2 + 1) = v59;
                v35 |= (v60 & 0x7F) << v54;
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
                  LODWORD(v35) = 0;
                  goto LABEL_118;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_118:
              v2 = v59;
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

LABEL_119:
            *(this + 20) = v35;
            goto LABEL_124;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 46) |= 0x400u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v63 = (v40 + v39);
              v64 = v2 - v39;
              v65 = v39 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_123;
                }

                v66 = v65;
                v67 = *v63;
                *(a2 + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
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
                  LODWORD(v43) = 0;
                  goto LABEL_122;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_122:
              v2 = v66;
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
            *(this + 21) = v43;
            goto LABEL_124;
          case 8:
            *(this + 46) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_82;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_108;
          case 9:
            *(this + 46) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_82;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_108;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 46) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_82;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_108;
        case 5:
          *(this + 46) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_82;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_108;
        case 6:
          *(this + 46) |= 0x800u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v49 = (v24 + v23);
            v50 = v2 - v23;
            v51 = v23 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_115;
              }

              v52 = v51;
              v53 = *v49;
              *(a2 + 1) = v52;
              v27 |= (v53 & 0x7F) << v47;
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
                LODWORD(v27) = 0;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_114:
            v2 = v52;
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

LABEL_115:
          *(this + 22) = v27;
          goto LABEL_124;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 46) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_82;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_108;
        case 2:
          *(this + 46) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_82;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_108;
        case 3:
          *(this + 46) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_82;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_108:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_124;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_124:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::StrideCalEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if ((v4 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(this + 72));
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(v3 + 84);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 56));
    if ((*(v3 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v3 + 80);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::StrideCalEntry::hash_value(CMMsl::StrideCalEntry *this)
{
  v1 = *(this + 46);
  if ((v1 & 0x100) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v3 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v4 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_36:
    v6 = 0.0;
    if ((*(this + 46) & 0x800) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v2 = *(this + 9);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v5 = *(this + 5);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 46) & 0x800) != 0)
  {
LABEL_15:
    v7 = *(this + 22);
    if ((*(this + 46) & 0x400) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
  if ((*(this + 46) & 0x400) != 0)
  {
LABEL_16:
    v8 = *(this + 21);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_39:
    v9 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v10 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_41:
    v11 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_38:
  v8 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v9 = *(this + 8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v10 = *(this + 6);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_41;
  }

LABEL_23:
  v11 = *(this + 3);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_26:
    v12 = *(this + 7);
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    if ((*(this + 46) & 0x200) != 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v13 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13;
  }

LABEL_42:
  v12 = 0.0;
  if ((*(this + 46) & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  v13 = *(this + 20);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13;
}

void CMMsl::SubStats::~SubStats(CMMsl::SubStats *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::SubStats::SubStats(CMMsl::SubStats *this, const CMMsl::SubStats *a2)
{
  *this = &unk_286C23F00;
  *(this + 14) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
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
    v5 = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 28) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 28) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 6);
  v3 |= 8u;
  *(this + 28) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 28) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 28) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(a2 + 52);
  v3 |= 0x400u;
  *(this + 28) = v3;
  *(this + 52) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a2 + 4);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 4) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 9);
    *(this + 28) = v3 | 0x40;
    *(this + 9) = result;
    return result;
  }

LABEL_23:
  v9 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 28) = v3;
  *(this + 11) = v9;
  if ((*(a2 + 28) & 0x40) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::SubStats::operator=(CMMsl *a1, const CMMsl::SubStats *a2)
{
  if (a1 != a2)
  {
    CMMsl::SubStats::SubStats(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SubStats *a2, CMMsl::SubStats *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  LOBYTE(v4) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::SubStats::SubStats(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23F00;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

CMMsl *CMMsl::SubStats::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SubStats::SubStats(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SubStats::formatText(CMMsl::SubStats *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "classifierCall");
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "featureSlope", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "maxAccel", *(this + 6));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "maxMinPressure", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(this + 8);
  PB::TextFormatter::format(a2, "model");
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "sCal", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "slopeNxCorr", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(this + 11);
  PB::TextFormatter::format(a2, "state");
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(this + 1);
  PB::TextFormatter::format(a2, "timestamp");
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "xCorr", *(this + 12));
  if ((*(this + 28) & 0x400) != 0)
  {
LABEL_12:
    v6 = *(this + 52);
    PB::TextFormatter::format(a2, "zoh");
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SubStats::readFrom(CMMsl::SubStats *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v33 = *(a2 + 1);
          v2 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(a2 + 1);
            }

            v59 = (v34 + v33);
            v60 = v2 - v33;
            v61 = v33 + 1;
            while (1)
            {
              if (!v60)
              {
                v37 = 0;
                *(a2 + 24) = 1;
                goto LABEL_125;
              }

              v62 = v61;
              v63 = *v59;
              *(a2 + 1) = v62;
              v37 |= (v63 & 0x7F) << v57;
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
                v37 = 0;
                goto LABEL_124;
              }
            }

            if (*(a2 + 24))
            {
              v37 = 0;
            }

LABEL_124:
            v2 = v62;
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
                v37 = 0;
                break;
              }
            }
          }

LABEL_125:
          *(this + 1) = v37;
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 0x20u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v66 = (v26 + v25);
            v67 = v2 - v25;
            v68 = v25 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v69 = v68;
              v70 = *v66;
              *(a2 + 1) = v69;
              v29 |= (v70 & 0x7F) << v64;
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
                LODWORD(v29) = 0;
                goto LABEL_128;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_128:
            v2 = v69;
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

LABEL_129:
          *(this + 8) = v29;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 28) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_74:
              *(a2 + 24) = 1;
              goto LABEL_138;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_117;
          case 4:
            *(this + 28) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_117;
          case 5:
            *(this + 28) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_117;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 28) |= 2u;
          v49 = *(a2 + 1);
          v2 = *(a2 + 2);
          v50 = *a2;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(a2 + 1);
            }

            v80 = (v50 + v49);
            v81 = v2 - v49;
            v82 = v49 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v53) = 0;
                *(a2 + 24) = 1;
                goto LABEL_137;
              }

              v83 = v82;
              v84 = *v80;
              *(a2 + 1) = v83;
              v53 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              ++v80;
              --v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                goto LABEL_136;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v53) = 0;
            }

LABEL_136:
            v2 = v83;
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
              *(a2 + 1) = v55;
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
                LODWORD(v53) = 0;
                break;
              }
            }
          }

LABEL_137:
          *(this + 4) = v53;
          goto LABEL_138;
        case 0xA:
          *(this + 28) |= 0x100u;
          v41 = *(a2 + 1);
          v2 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(a2 + 1);
            }

            v73 = (v42 + v41);
            v74 = v2 - v41;
            v75 = v41 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v45) = 0;
                *(a2 + 24) = 1;
                goto LABEL_133;
              }

              v76 = v75;
              v77 = *v73;
              *(a2 + 1) = v76;
              v45 |= (v77 & 0x7F) << v71;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v73;
              --v74;
              v75 = v76 + 1;
              v14 = v72++ > 8;
              if (v14)
              {
                LODWORD(v45) = 0;
                goto LABEL_132;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_132:
            v2 = v76;
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
                LODWORD(v45) = 0;
                break;
              }
            }
          }

LABEL_133:
          *(this + 11) = v45;
          goto LABEL_138;
        case 0xB:
          *(this + 28) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_117;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 28) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_117;
        case 7:
          *(this + 28) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 10) = *(*a2 + v2);
LABEL_117:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_138;
        case 8:
          *(this + 28) |= 0x400u;
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

          *(this + 52) = v24;
          goto LABEL_138;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v85 = 0;
      return v85 & 1;
    }

    v2 = *(a2 + 1);
LABEL_138:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t CMMsl::SubStats::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 56);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 56);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(v3 + 52);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = *(v3 + 44);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 56) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  v8 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 56);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_23:
  v10 = *(v3 + 36);

  return PB::Writer::write(a2, v10);
}

uint64_t CMMsl::SubStats::hash_value(CMMsl::SubStats *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    v2 = *(this + 1);
    if ((v1 & 0x20) != 0)
    {
LABEL_3:
      v3 = *(this + 8);
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      v5 = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_28:
      v7 = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_10;
      }

LABEL_29:
      v9 = 0;
      if ((*(this + 28) & 0x200) != 0)
      {
        goto LABEL_13;
      }

LABEL_30:
      v11 = 0;
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_16;
      }

LABEL_31:
      v13 = 0;
      if ((*(this + 28) & 0x400) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 28) & 0x200) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  v10 = *(this + 12);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v12 = *(this + 10);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((*(this + 28) & 0x400) != 0)
  {
LABEL_19:
    v14 = *(this + 52);
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_20:
    v15 = *(this + 4);
    if ((*(this + 28) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = 0;
  if ((*(this + 28) & 0x100) != 0)
  {
LABEL_21:
    v16 = *(this + 11);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_22;
    }

LABEL_35:
    v18 = 0;
    return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18;
  }

LABEL_34:
  v16 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v17 = *(this + 9);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18;
}

void CMMsl::SwingDoTCandidate::~SwingDoTCandidate(CMMsl::SwingDoTCandidate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SwingDoTCandidate::SwingDoTCandidate(CMMsl::SwingDoTCandidate *this, const CMMsl::SwingDoTCandidate *a2)
{
  *this = &unk_286C23F38;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 8) != 0)
  {
    LODWORD(result) = *(a2 + 7);
    v3 = 8;
    *(this + 32) = 8;
    *(this + 7) = LODWORD(result);
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 32) = v3;
  *(this + 1) = result;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::SwingDoTCandidate::operator=(uint64_t a1, const CMMsl::SwingDoTCandidate *a2)
{
  if (a1 != a2)
  {
    CMMsl::SwingDoTCandidate::SwingDoTCandidate(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::SwingDoTCandidate *a2, CMMsl::SwingDoTCandidate *a3)
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
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::SwingDoTCandidate::SwingDoTCandidate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23F38;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C23F38;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::SwingDoTCandidate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C23F38;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::SwingDoTCandidate::formatText(CMMsl::SwingDoTCandidate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dirAngleRad", *(this + 6));
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "extremaVal", *(this + 7));
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "peakTimestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "valleyTimestamp", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SwingDoTCandidate::readFrom(CMMsl::SwingDoTCandidate *this, PB::Reader *a2)
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
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_37:
          *(a2 + 24) = 1;
          goto LABEL_41;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_39:
        v2 = *(a2 + 1) + 8;
LABEL_40:
        *(a2 + 1) = v2;
        goto LABEL_41;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_39;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 7) = *(*a2 + v2);
        goto LABEL_34;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 6) = *(*a2 + v2);
LABEL_34:
        v2 = *(a2 + 1) + 4;
        goto LABEL_40;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_41:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SwingDoTCandidate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 28));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 8));
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::SwingDoTCandidate::hash_value(CMMsl::SwingDoTCandidate *this)
{
  if ((*(this + 32) & 8) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if (*(this + 32))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v6 = *(this + 7);
  v1 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if (*(this + 32))
  {
LABEL_6:
    v4 = *(this + 1);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v5 = 0.0;
    return v3 ^ v1 ^ *&v4 ^ *&v5;
  }

LABEL_16:
  v4 = 0.0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v5 = *(this + 2);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return v3 ^ v1 ^ *&v4 ^ *&v5;
}

void CMMsl::TNB::~TNB(CMMsl::TNB *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::TNB::TNB(CMMsl::TNB *this, const CMMsl::TNB *a2)
{
  *this = &unk_286C23F70;
  *(this + 23) = 0;
  v2 = *(a2 + 23);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 23) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 23);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 12);
    v3 |= 0x200u;
    *(this + 23) = v3;
    *(this + 12) = v5;
    v2 = *(a2 + 23);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 23) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 23);
    if ((v2 & 0x80000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 88);
  v3 |= 0x80000u;
  *(this + 23) = v3;
  *(this + 88) = v6;
  v2 = *(a2 + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 23) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 23) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 23) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x4000) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 23) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x8000) == 0)
  {
LABEL_13:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 23) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x10000) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 23) = v3;
  *(this + 19) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 23) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 23) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 23) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 2) == 0)
  {
LABEL_18:
    if ((v2 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 4);
  v3 |= 2u;
  *(this + 23) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 4) == 0)
  {
LABEL_19:
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 23) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 8) == 0)
  {
LABEL_20:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 23) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 23) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 23) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40000) == 0)
    {
      return *&v4;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x20000u;
  *(this + 23) = v3;
  *(this + 20) = v4;
  if ((*(a2 + 23) & 0x40000) == 0)
  {
    return *&v4;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 21);
  *(this + 23) = v3 | 0x40000;
  *(this + 21) = v4;
  return *&v4;
}

CMMsl *CMMsl::TNB::operator=(CMMsl *a1, const CMMsl::TNB *a2)
{
  if (a1 != a2)
  {
    CMMsl::TNB::TNB(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::TNB *a2, CMMsl::TNB *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LOBYTE(v5) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v5;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
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
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  result = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = result;
  return result;
}

float CMMsl::TNB::TNB(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23F70;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 84);
  *(a1 + 84) = result;
  return result;
}

CMMsl *CMMsl::TNB::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TNB::TNB(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::TNB::formatText(CMMsl::TNB *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "binormalX", *(this + 4));
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

  PB::TextFormatter::format(a2, "binormalY", *(this + 5));
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
  PB::TextFormatter::format(a2, "binormalZ", *(this + 6));
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
  PB::TextFormatter::format(a2, "centerFrequency", *(this + 7));
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
  PB::TextFormatter::format(a2, "curvature", *(this + 8));
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
  PB::TextFormatter::format(a2, "curveX", *(this + 9));
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
  PB::TextFormatter::format(a2, "curveY", *(this + 10));
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
  PB::TextFormatter::format(a2, "curveZ", *(this + 11));
  v5 = *(this + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = *(this + 12);
  PB::TextFormatter::format(a2, "idxFilter");
  v5 = *(this + 23);
  if ((v5 & 0x80000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = *(this + 88);
  PB::TextFormatter::format(a2, "isValid");
  v5 = *(this + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "normalX", *(this + 13));
  v5 = *(this + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "normalY", *(this + 14));
  v5 = *(this + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "normalZ", *(this + 15));
  v5 = *(this + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "parametricSpeed", *(this + 16));
  v5 = *(this + 23);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "tangentX", *(this + 17));
  v5 = *(this + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "tangentY", *(this + 18));
  v5 = *(this + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "tangentZ", *(this + 19));
  v5 = *(this + 23);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 23);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "torsion", *(this + 20));
  if ((*(this + 23) & 0x40000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "uncertainty", *(this + 21));
  }

LABEL_22:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TNB::readFrom(CMMsl::TNB *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_106:
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
        goto LABEL_106;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 23) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_96;
        case 2u:
          *(this + 23) |= 0x200u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v34 = (v25 + v24);
            v35 = v2 - v24;
            v36 = v24 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v37 = v36;
              v38 = *v34;
              *(a2 + 1) = v37;
              v28 |= (v38 & 0x7F) << v32;
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
                LODWORD(v28) = 0;
LABEL_103:
                v2 = v37;
                goto LABEL_104;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_103;
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
              goto LABEL_104;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_104:
          *(this + 12) = v28;
          break;
        case 3u:
          *(this + 23) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_95;
        case 4u:
          *(this + 23) |= 0x80000u;
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

          *(this + 88) = v23;
          break;
        case 5u:
          *(this + 23) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_95;
        case 6u:
          *(this + 23) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_95;
        case 7u:
          *(this + 23) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_95;
        case 8u:
          *(this + 23) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_95;
        case 9u:
          *(this + 23) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_95;
        case 0xAu:
          *(this + 23) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_95;
        case 0xBu:
          *(this + 23) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_95;
        case 0xCu:
          *(this + 23) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_95;
        case 0xDu:
          *(this + 23) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_95;
        case 0xEu:
          *(this + 23) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_95;
        case 0xFu:
          *(this + 23) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_95;
        case 0x10u:
          *(this + 23) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_95;
        case 0x11u:
          *(this + 23) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_95;
        case 0x12u:
          *(this + 23) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_95;
        case 0x13u:
          *(this + 23) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_83;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_95;
        case 0x14u:
          *(this + 23) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 21) = *(*a2 + v2);
LABEL_95:
            v2 = *(a2 + 1) + 4;
LABEL_96:
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_83:
            *(a2 + 24) = 1;
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
        goto LABEL_106;
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
        goto LABEL_106;
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

    v39 = 0;
  }

  return v39 & 1;
}

uint64_t CMMsl::TNB::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 92);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 88);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
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
  this = PB::Writer::write(a2, *(v3 + 32));
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
  v7 = *(v3 + 84);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::TNB::hash_value(CMMsl::TNB *this)
{
  v1 = *(this + 23);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x200) != 0)
    {
LABEL_3:
      v3 = *(this + 12);
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_48:
      v5 = 0;
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_4:
  v4 = *(this + 7);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_7:
    v6 = *(this + 88);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_50:
    v8 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v10 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_52:
    v12 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_17;
    }

LABEL_53:
    v14 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    v16 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_23;
    }

LABEL_55:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_26;
    }

LABEL_56:
    v20 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_57:
    v22 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    v24 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_35;
    }

LABEL_59:
    v26 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_60;
  }

LABEL_49:
  v6 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_8:
  v7 = *(this + 9);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  v9 = *(this + 10);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_14:
  v11 = *(this + 11);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_53;
  }

LABEL_17:
  v13 = *(this + 17);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  v15 = *(this + 18);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_55;
  }

LABEL_23:
  v17 = *(this + 19);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_56;
  }

LABEL_26:
  v19 = *(this + 13);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_57;
  }

LABEL_29:
  v21 = *(this + 14);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  v23 = *(this + 15);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_59;
  }

LABEL_35:
  v25 = *(this + 4);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_38:
    v27 = *(this + 5);
    v28 = LODWORD(v27);
    if (v27 == 0.0)
    {
      v28 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_41;
    }

LABEL_61:
    v30 = 0;
    goto LABEL_62;
  }

LABEL_60:
  v28 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v29 = *(this + 6);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

LABEL_62:
  if ((v1 & 0x2000) == 0)
  {
    v31 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_64;
    }

LABEL_76:
    v33 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

  v38 = *(this + 16);
  v31 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v31 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_76;
  }

LABEL_64:
  v32 = *(this + 8);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_67:
    v34 = *(this + 20);
    v35 = LODWORD(v34);
    if (v34 == 0.0)
    {
      v35 = 0;
    }

    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_70;
    }

LABEL_78:
    v37 = 0;
    return v3 ^ *&v2 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37;
  }

LABEL_77:
  v35 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_78;
  }

LABEL_70:
  v36 = *(this + 21);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  return v3 ^ *&v2 ^ v5 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v33 ^ v35 ^ v37;
}