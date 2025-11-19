uint64_t CMMsl::SafetyCompanionStatus::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::SafetyCompanionStatus::hash_value(CMMsl::SafetyCompanionStatus *this)
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

void CMMsl::SafetyHertzSample::~SafetyHertzSample(CMMsl::SafetyHertzSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t this, const CMMsl::SafetyHertzSample *a2)
{
  *this = &unk_286C23608;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(this + 28) = v3 | 8;
    *(this + 24) = v7;
    return this;
  }

  v6 = *(a2 + 4);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, const CMMsl::SafetyHertzSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyHertzSample::SafetyHertzSample(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LOBYTE(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyHertzSample *a2, CMMsl::SafetyHertzSample *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  return this;
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t result, uint64_t a2)
{
  *result = &unk_286C23608;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_286C23608;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    LOBYTE(v4) = *(a2 + 24);
    v9[0] = &unk_286C23608;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 16) = v7;
    v9[2] = v6;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyHertzSample::formatText(CMMsl::SafetyHertzSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "dramDurationMs");
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

  v8 = *(this + 24);
  PB::TextFormatter::format(a2, "hapticsOn");
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = *(this + 1);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    v6 = *(this + 5);
    PB::TextFormatter::format(a2, "vehicularFlags");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyHertzSample::readFrom(CMMsl::SafetyHertzSample *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 2u;
        v41 = *(a2 + 1);
        v2 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
        {
          v63 = 0;
          v64 = 0;
          v45 = 0;
          if (v2 <= v41)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v65 = (v42 + v41);
          v66 = v3 - v41;
          v67 = v41 + 1;
          while (1)
          {
            if (!v66)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_94;
            }

            v68 = v67;
            v69 = *v65;
            *(a2 + 1) = v68;
            v45 |= (v69 & 0x7F) << v63;
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
              LODWORD(v45) = 0;
              goto LABEL_93;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }

LABEL_93:
          v3 = v68;
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
            v3 = v47;
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

LABEL_94:
        *(this + 4) = v45;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 8u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v32 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v31 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v32 = v31 != 0;
        }

        *(this + 24) = v32;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v33 = *(a2 + 1);
        v2 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
        {
          v56 = 0;
          v57 = 0;
          v37 = 0;
          if (v2 <= v33)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v58 = (v34 + v33);
          v59 = v3 - v33;
          v60 = v33 + 1;
          while (1)
          {
            if (!v59)
            {
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_90;
            }

            v61 = v60;
            v62 = *v58;
            *(a2 + 1) = v61;
            v37 |= (v62 & 0x7F) << v56;
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
              v37 = 0;
              goto LABEL_89;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }

LABEL_89:
          v3 = v61;
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
            v3 = v39;
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

LABEL_90:
        *(this + 1) = v37;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v49 = 0;
          v50 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v51 = (v24 + v23);
          v52 = v3 - v23;
          v53 = v23 + 1;
          while (1)
          {
            if (!v52)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_86;
            }

            v54 = v53;
            v55 = *v51;
            *(a2 + 1) = v54;
            v27 |= (v55 & 0x7F) << v49;
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
              LODWORD(v27) = 0;
              goto LABEL_85;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_85:
          v3 = v54;
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

LABEL_86:
        *(this + 5) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v70 = 0;
      return v70 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::SafetyHertzSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v3 + 16);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
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
  v8 = *(v3 + 24);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::SafetyHertzSample::hash_value(CMMsl::SafetyHertzSample *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = 0;
      return v2 ^ v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(this + 4);
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 24);
  return v2 ^ v1 ^ v3 ^ v4;
}

void CMMsl::SafetyRemoteSample::~SafetyRemoteSample(CMMsl::SafetyRemoteSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t this, const CMMsl::SafetyRemoteSample *a2)
{
  *this = &unk_286C23640;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 11);
    v3 = 32;
    *(this + 52) = 32;
    *(this + 44) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 12);
    v3 |= 0x40u;
    *(this + 52) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x10u;
    *(this + 52) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
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

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 52) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 2);
    *(this + 52) = v3 | 2;
    *(this + 16) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 52) = v3;
  *(this + 24) = v9;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, const CMMsl::SafetyRemoteSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyRemoteSample::SafetyRemoteSample(v8, a2);
    v3 = v10;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v5;
    v11 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyRemoteSample *a2, CMMsl::SafetyRemoteSample *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v10;
  return this;
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t result, uint64_t a2)
{
  *result = &unk_286C23640;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C23640;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23640;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 52) = 0;
    v6 = *(a1 + 40);
    v11 = *(a1 + 24);
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyRemoteSample::formatText(CMMsl::SafetyRemoteSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "createdAtTimestamp");
    v5 = *(this + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 10);
  PB::TextFormatter::format(a2, "epochNumber");
  v5 = *(this + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(this + 2);
  PB::TextFormatter::format(a2, "epochTimestamp");
  v5 = *(this + 52);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(this + 3);
  PB::TextFormatter::format(a2, "lastRealTriggerTimestamp");
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(this + 11);
  PB::TextFormatter::format(a2, "mode");
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = *(this + 4);
  PB::TextFormatter::format(a2, "receivedAtTimestamp");
  if ((*(this + 52) & 0x40) != 0)
  {
LABEL_8:
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "sessionNumber");
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyRemoteSample::readFrom(CMMsl::SafetyRemoteSample *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      switch(v22)
      {
        case 2:
          *(this + 52) |= 0x20u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v81 = (v48 + v47);
            v82 = v3 - v47;
            v83 = v47 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v51 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              ++v81;
              --v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_153;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_153:
            v3 = v84;
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
              v3 = v53;
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

LABEL_154:
          *(this + 11) = v51;
          goto LABEL_19;
        case 3:
          *(this + 52) |= 0x40u;
          v71 = *(a2 + 1);
          v2 = *(a2 + 2);
          v72 = *a2;
          if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v2)
          {
            v121 = 0;
            v122 = 0;
            v75 = 0;
            if (v2 <= v71)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v123 = (v72 + v71);
            v124 = v3 - v71;
            v125 = v71 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v75) = 0;
                *(a2 + 24) = 1;
                goto LABEL_178;
              }

              v126 = v125;
              v127 = *v123;
              *(a2 + 1) = v126;
              v75 |= (v127 & 0x7F) << v121;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              ++v123;
              --v124;
              v125 = v126 + 1;
              v14 = v122++ > 8;
              if (v14)
              {
                LODWORD(v75) = 0;
                goto LABEL_177;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v75) = 0;
            }

LABEL_177:
            v3 = v126;
          }

          else
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = (v72 + v71);
            v77 = v71 + 1;
            while (1)
            {
              v3 = v77;
              *(a2 + 1) = v77;
              v78 = *v76++;
              v75 |= (v78 & 0x7F) << v73;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              ++v77;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v75) = 0;
                break;
              }
            }
          }

LABEL_178:
          *(this + 12) = v75;
          goto LABEL_19;
        case 4:
          *(this + 52) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v114 = 0;
            v115 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v116 = (v32 + v31);
            v117 = v3 - v31;
            v118 = v31 + 1;
            while (1)
            {
              if (!v117)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_174;
              }

              v119 = v118;
              v120 = *v116;
              *(a2 + 1) = v119;
              v35 |= (v120 & 0x7F) << v114;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              ++v116;
              --v117;
              v118 = v119 + 1;
              v14 = v115++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_173;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_173:
            v3 = v119;
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

LABEL_174:
          *(this + 10) = v35;
          goto LABEL_19;
      }
    }

    else if (v22 > 99)
    {
      if (v22 == 100)
      {
        *(this + 52) |= 4u;
        v63 = *(a2 + 1);
        v2 = *(a2 + 2);
        v64 = *a2;
        if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
        {
          v93 = 0;
          v94 = 0;
          v67 = 0;
          if (v2 <= v63)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v95 = (v64 + v63);
          v96 = v3 - v63;
          v97 = v63 + 1;
          while (1)
          {
            if (!v96)
            {
              v67 = 0;
              *(a2 + 24) = 1;
              goto LABEL_162;
            }

            v98 = v97;
            v99 = *v95;
            *(a2 + 1) = v98;
            v67 |= (v99 & 0x7F) << v93;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            ++v95;
            --v96;
            v97 = v98 + 1;
            v14 = v94++ > 8;
            if (v14)
            {
              v67 = 0;
              goto LABEL_161;
            }
          }

          if (*(a2 + 24))
          {
            v67 = 0;
          }

LABEL_161:
          v3 = v98;
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
            v3 = v69;
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
              v67 = 0;
              break;
            }
          }
        }

LABEL_162:
        *(this + 3) = v67;
        goto LABEL_19;
      }

      if (v22 == 101)
      {
        *(this + 52) |= 2u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v107 = 0;
          v108 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v109 = (v40 + v39);
          v110 = v3 - v39;
          v111 = v39 + 1;
          while (1)
          {
            if (!v110)
            {
              v43 = 0;
              *(a2 + 24) = 1;
              goto LABEL_170;
            }

            v112 = v111;
            v113 = *v109;
            *(a2 + 1) = v112;
            v43 |= (v113 & 0x7F) << v107;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v107 += 7;
            ++v109;
            --v110;
            v111 = v112 + 1;
            v14 = v108++ > 8;
            if (v14)
            {
              v43 = 0;
              goto LABEL_169;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
          }

LABEL_169:
          v3 = v112;
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
              v43 = 0;
              break;
            }
          }
        }

LABEL_170:
        *(this + 2) = v43;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 5)
      {
        *(this + 52) |= 8u;
        v55 = *(a2 + 1);
        v2 = *(a2 + 2);
        v56 = *a2;
        if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
        {
          v86 = 0;
          v87 = 0;
          v59 = 0;
          if (v2 <= v55)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v88 = (v56 + v55);
          v89 = v3 - v55;
          v90 = v55 + 1;
          while (1)
          {
            if (!v89)
            {
              v59 = 0;
              *(a2 + 24) = 1;
              goto LABEL_158;
            }

            v91 = v90;
            v92 = *v88;
            *(a2 + 1) = v91;
            v59 |= (v92 & 0x7F) << v86;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            ++v88;
            --v89;
            v90 = v91 + 1;
            v14 = v87++ > 8;
            if (v14)
            {
              v59 = 0;
              goto LABEL_157;
            }
          }

          if (*(a2 + 24))
          {
            v59 = 0;
          }

LABEL_157:
          v3 = v91;
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
            v3 = v61;
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
              v59 = 0;
              break;
            }
          }
        }

LABEL_158:
        *(this + 4) = v59;
        goto LABEL_19;
      }

      if (v22 == 6)
      {
        *(this + 52) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v100 = 0;
          v101 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v102 = (v24 + v23);
          v103 = v3 - v23;
          v104 = v23 + 1;
          while (1)
          {
            if (!v103)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_166;
            }

            v105 = v104;
            v106 = *v102;
            *(a2 + 1) = v105;
            v27 |= (v106 & 0x7F) << v100;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            ++v102;
            --v103;
            v104 = v105 + 1;
            v14 = v101++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_165;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_165:
          v3 = v105;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_166:
        *(this + 1) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v128 = 0;
      return v128 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t CMMsl::SafetyRemoteSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(this + 44);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:
  v11 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::SafetyRemoteSample::hash_value(CMMsl::SafetyRemoteSample *this)
{
  if ((*(this + 52) & 0x20) != 0)
  {
    v1 = *(this + 11);
    if ((*(this + 52) & 0x40) != 0)
    {
LABEL_3:
      v2 = *(this + 12);
      if ((*(this + 52) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 52) & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 52) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 10);
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 52) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if (*(this + 52))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*(this + 52))
  {
LABEL_6:
    v5 = *(this + 1);
    if ((*(this + 52) & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v6 = 0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_13:
  v5 = 0;
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(this + 3);
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(this + 2);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

void CMMsl::SafetyTrustedAudioResult::~SafetyTrustedAudioResult(CMMsl::SafetyTrustedAudioResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(uint64_t this, const CMMsl::SafetyTrustedAudioResult *a2)
{
  *this = &unk_286C23678;
  *(this + 212) = 0;
  v2 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 212) = 2048;
    *(this + 96) = v4;
    v2 = *(a2 + 212);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 35);
    v3 |= 0x200000uLL;
    *(this + 212) = v3;
    *(this + 140) = v5;
    v2 = *(a2 + 212);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x40uLL;
    *(this + 212) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 212);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 30);
  v3 |= 0x10000uLL;
  *(this + 212) = v3;
  *(this + 120) = v7;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 38);
  v3 |= 0x1000000uLL;
  *(this + 212) = v3;
  *(this + 152) = v8;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 34);
  v3 |= 0x100000uLL;
  *(this + 212) = v3;
  *(this + 136) = v9;
  v2 = *(a2 + 212);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 212) = v3;
  *(this + 48) = v10;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a2 + 32);
  v3 |= 0x40000uLL;
  *(this + 212) = v3;
  *(this + 128) = v11;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a2 + 37);
  v3 |= 0x800000uLL;
  *(this + 212) = v3;
  *(this + 148) = v12;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a2 + 36);
  v3 |= 0x400000uLL;
  *(this + 212) = v3;
  *(this + 144) = v13;
  v2 = *(a2 + 212);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a2 + 8);
  v3 |= 0x80uLL;
  *(this + 212) = v3;
  *(this + 64) = v14;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a2 + 31);
  v3 |= 0x20000uLL;
  *(this + 212) = v3;
  *(this + 124) = v15;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = *(a2 + 33);
  v3 |= 0x80000uLL;
  *(this + 212) = v3;
  *(this + 132) = v16;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = *(a2 + 44);
  v3 |= 0x40000000uLL;
  *(this + 212) = v3;
  *(this + 176) = v17;
  v2 = *(a2 + 212);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 212) = v3;
  *(this + 80) = v18;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = *(a2 + 39);
  v3 |= 0x2000000uLL;
  *(this + 212) = v3;
  *(this + 156) = v19;
  v2 = *(a2 + 212);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = *(a2 + 47);
  v3 |= 0x200000000uLL;
  *(this + 212) = v3;
  *(this + 188) = v20;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = *(a2 + 43);
  v3 |= 0x20000000uLL;
  *(this + 212) = v3;
  *(this + 172) = v21;
  v2 = *(a2 + 212);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 212) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = *(a2 + 41);
  v3 |= 0x8000000uLL;
  *(this + 212) = v3;
  *(this + 164) = v23;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(a2 + 46);
  v3 |= 0x100000000uLL;
  *(this + 212) = v3;
  *(this + 184) = v24;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = *(a2 + 45);
  v3 |= 0x80000000uLL;
  *(this + 212) = v3;
  *(this + 180) = v25;
  v2 = *(a2 + 212);
  if ((v2 & 0x400) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = *(a2 + 11);
  v3 |= 0x400uLL;
  *(this + 212) = v3;
  *(this + 88) = v26;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 40);
  v3 |= 0x4000000uLL;
  *(this + 212) = v3;
  *(this + 160) = v27;
  v2 = *(a2 + 212);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 42);
  v3 |= 0x10000000uLL;
  *(this + 212) = v3;
  *(this + 168) = v28;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 27);
  v3 |= 0x2000uLL;
  *(this + 212) = v3;
  *(this + 108) = v29;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 29);
  v3 |= 0x8000uLL;
  *(this + 212) = v3;
  *(this + 116) = v30;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = *(a2 + 28);
  v3 |= 0x4000uLL;
  *(this + 212) = v3;
  *(this + 112) = v31;
  v2 = *(a2 + 212);
  if ((v2 & 0x10) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 212) = v3;
  *(this + 40) = v32;
  v2 = *(a2 + 212);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 212) = v3;
  *(this + 32) = v33;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 49);
  v3 |= 0x800000000uLL;
  *(this + 212) = v3;
  *(this + 196) = v34;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 51);
  v3 |= 0x2000000000uLL;
  *(this + 212) = v3;
  *(this + 204) = v35;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 50);
  v3 |= 0x1000000000uLL;
  *(this + 212) = v3;
  *(this + 200) = v36;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 48);
  v3 |= 0x400000000uLL;
  *(this + 212) = v3;
  *(this + 192) = v37;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(a2 + 208);
  v3 |= 0x4000000000uLL;
  *(this + 212) = v3;
  *(this + 208) = v38;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(a2 + 209);
  v3 |= 0x8000000000uLL;
  *(this + 212) = v3;
  *(this + 209) = v39;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000) == 0)
  {
LABEL_41:
    if ((v2 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(a2 + 26);
  v3 |= 0x1000uLL;
  *(this + 212) = v3;
  *(this + 104) = v40;
  v2 = *(a2 + 212);
  if ((v2 & 4) == 0)
  {
LABEL_42:
    if ((v2 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 212) = v3;
  *(this + 24) = v41;
  v2 = *(a2 + 212);
  if ((v2 & 2) == 0)
  {
LABEL_43:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_82:
    v43 = *(a2 + 1);
    *(this + 212) = v3 | 1;
    *(this + 8) = v43;
    return this;
  }

LABEL_81:
  v42 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 212) = v3;
  *(this + 16) = v42;
  if (*(a2 + 212))
  {
    goto LABEL_82;
  }

  return this;
}

CMMsl *CMMsl::SafetyTrustedAudioResult::operator=(CMMsl *a1, const CMMsl::SafetyTrustedAudioResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SafetyTrustedAudioResult *a2, CMMsl::SafetyTrustedAudioResult *a3)
{
  v3 = *(this + 212);
  *(this + 212) = *(a2 + 212);
  *(a2 + 212) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v7;
  v8 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v8;
  v9 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  v12 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v12;
  v13 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v13;
  v14 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v14;
  v15 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v15;
  v16 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v16;
  v17 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v17;
  v18 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v18;
  v19 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v19;
  v20 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v20;
  v21 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v21;
  v22 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v22;
  v23 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v23;
  v24 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v24;
  v25 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v25;
  v26 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v26;
  v27 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v27;
  v28 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v28;
  v29 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v29;
  LODWORD(v26) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v26;
  LODWORD(v26) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v26;
  v30 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v30;
  v31 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v31;
  v32 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v32;
  v33 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v33;
  v34 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v34;
  result = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = result;
  LOBYTE(v31) = *(this + 208);
  *(this + 208) = *(a2 + 208);
  *(a2 + 208) = v31;
  LOBYTE(v31) = *(this + 209);
  *(this + 209) = *(a2 + 209);
  *(a2 + 209) = v31;
  LODWORD(v31) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v31;
  v36 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v36;
  v37 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v37;
  v38 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v38;
  return result;
}

float CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23678;
  *(a1 + 212) = *(a2 + 212);
  *(a2 + 212) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 200) = *(a2 + 200);
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  return result;
}

CMMsl *CMMsl::SafetyTrustedAudioResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SafetyTrustedAudioResult::formatText(CMMsl::SafetyTrustedAudioResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 212);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "calculationTimestamp");
    v5 = *(this + 212);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 26);
  PB::TextFormatter::format(a2, "dramDuration");
  v5 = *(this + 212);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(this + 2);
  PB::TextFormatter::format(a2, "dramMaxTimestamp");
  v5 = *(this + 212);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(this + 3);
  PB::TextFormatter::format(a2, "dramMinTimestamp");
  v5 = *(this + 212);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(this + 4);
  PB::TextFormatter::format(a2, "epochMaxTimestamp");
  v5 = *(this + 212);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(this + 5);
  PB::TextFormatter::format(a2, "epochMinTimestamp");
  v5 = *(this + 212);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "maxRMS", *(this + 27));
  v5 = *(this + 212);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(this + 28);
  PB::TextFormatter::format(a2, "numPointsInEpoch");
  v5 = *(this + 212);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(this + 29);
  PB::TextFormatter::format(a2, "numShortAudio");
  v5 = *(this + 212);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "planarChaosAtMaxEnergy", *(this + 30));
  v5 = *(this + 212);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "planarChaosAtMaxSaturation", *(this + 31));
  v5 = *(this + 212);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "planarEnergyAtMaxChaos", *(this + 32));
  v5 = *(this + 212);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "planarEnergyAtMaxSaturation", *(this + 33));
  v5 = *(this + 212);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "planarMaxChaos", *(this + 34));
  v5 = *(this + 212);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "planarMaxEnergy", *(this + 35));
  v5 = *(this + 212);
  if ((v5 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "planarMaxSaturation", *(this + 36));
  v5 = *(this + 212);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(this + 208);
  PB::TextFormatter::format(a2, "planarPassThru");
  v5 = *(this + 212);
  if ((v5 & 0x800000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "planarSaturationAtMaxChaos", *(this + 37));
  v5 = *(this + 212);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "planarSaturationAtMaxEnergy", *(this + 38));
  v5 = *(this + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = *(this + 6);
  PB::TextFormatter::format(a2, "planarTimestampAtMaxChaos");
  v5 = *(this + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = *(this + 7);
  PB::TextFormatter::format(a2, "planarTimestampAtMaxEnergy");
  v5 = *(this + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v18 = *(this + 8);
  PB::TextFormatter::format(a2, "planarTimestampAtMaxSaturation");
  v5 = *(this + 212);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "rolloverChaosAtMaxEnergy", *(this + 39));
  v5 = *(this + 212);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "rolloverChaosAtMaxSaturation", *(this + 40));
  v5 = *(this + 212);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "rolloverEnergyAtMaxChaos", *(this + 41));
  v5 = *(this + 212);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "rolloverEnergyAtMaxSaturation", *(this + 42));
  v5 = *(this + 212);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "rolloverMaxChaos", *(this + 43));
  v5 = *(this + 212);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "rolloverMaxEnergy", *(this + 44));
  v5 = *(this + 212);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "rolloverMaxSaturation", *(this + 45));
  v5 = *(this + 212);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v19 = *(this + 209);
  PB::TextFormatter::format(a2, "rolloverPassThru");
  v5 = *(this + 212);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "rolloverSaturationAtMaxChaos", *(this + 46));
  v5 = *(this + 212);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "rolloverSaturationAtMaxEnergy", *(this + 47));
  v5 = *(this + 212);
  if ((v5 & 0x100) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v20 = *(this + 9);
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxChaos");
  v5 = *(this + 212);
  if ((v5 & 0x200) == 0)
  {
LABEL_35:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v21 = *(this + 10);
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxEnergy");
  v5 = *(this + 212);
  if ((v5 & 0x400) == 0)
  {
LABEL_36:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v22 = *(this + 11);
  PB::TextFormatter::format(a2, "rolloverTimestampAtMaxSaturation");
  v5 = *(this + 212);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "soundEnvelopeCount", *(this + 48));
  v5 = *(this + 212);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "soundMaxMeanOverArmSession", *(this + 49));
  v5 = *(this + 212);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "soundMeanCurrentWindow", *(this + 50));
  v5 = *(this + 212);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "soundMeanLast15s", *(this + 51));
  if ((*(this + 212) & 0x800) != 0)
  {
LABEL_41:
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_42:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyTrustedAudioResult::readFrom(CMMsl::SafetyTrustedAudioResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_389:
    v279 = v4 ^ 1;
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
        goto LABEL_389;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 212) |= 0x800uLL;
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
                goto LABEL_360;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_250:
            v27 = 0;
            goto LABEL_360;
          }

          v218 = 0;
          v219 = 0;
          v27 = 0;
          v220 = (v24 + v23);
          v18 = v22 >= v23;
          v221 = v22 - v23;
          if (!v18)
          {
            v221 = 0;
          }

          v222 = v23 + 1;
          while (2)
          {
            if (v221)
            {
              v223 = *v220;
              *(a2 + 1) = v222;
              v27 |= (v223 & 0x7F) << v218;
              if (v223 < 0)
              {
                v218 += 7;
                ++v220;
                --v221;
                ++v222;
                v14 = v219++ > 8;
                if (v14)
                {
                  goto LABEL_250;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_360:
          *(this + 12) = v27;
          goto LABEL_325;
        case 2u:
          *(this + 212) |= 0x200000uLL;
          v95 = *(a2 + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 35) = *(*a2 + v95);
          goto LABEL_324;
        case 3u:
          *(this + 212) |= 0x40uLL;
          v84 = *(a2 + 1);
          v83 = *(a2 + 2);
          v85 = *a2;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(a2 + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_357;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_242:
            v88 = 0;
            goto LABEL_357;
          }

          v212 = 0;
          v213 = 0;
          v88 = 0;
          v214 = (v85 + v84);
          v18 = v83 >= v84;
          v215 = v83 - v84;
          if (!v18)
          {
            v215 = 0;
          }

          v216 = v84 + 1;
          while (2)
          {
            if (v215)
            {
              v217 = *v214;
              *(a2 + 1) = v216;
              v88 |= (v217 & 0x7F) << v212;
              if (v217 < 0)
              {
                v212 += 7;
                ++v214;
                --v215;
                ++v216;
                v14 = v213++ > 8;
                if (v14)
                {
                  goto LABEL_242;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v88 = 0;
              }
            }

            else
            {
              v88 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_357:
          *(this + 7) = v88;
          goto LABEL_325;
        case 4u:
          *(this + 212) |= 0x10000uLL;
          v93 = *(a2 + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 30) = *(*a2 + v93);
          goto LABEL_324;
        case 5u:
          *(this + 212) |= 0x1000000uLL;
          v78 = *(a2 + 1);
          if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 38) = *(*a2 + v78);
          goto LABEL_324;
        case 6u:
          *(this + 212) |= 0x100000uLL;
          v99 = *(a2 + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 34) = *(*a2 + v99);
          goto LABEL_324;
        case 7u:
          *(this + 212) |= 0x20uLL;
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
                goto LABEL_363;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_258:
            v107 = 0;
            goto LABEL_363;
          }

          v224 = 0;
          v225 = 0;
          v107 = 0;
          v226 = (v104 + v103);
          v18 = v102 >= v103;
          v227 = v102 - v103;
          if (!v18)
          {
            v227 = 0;
          }

          v228 = v103 + 1;
          while (2)
          {
            if (v227)
            {
              v229 = *v226;
              *(a2 + 1) = v228;
              v107 |= (v229 & 0x7F) << v224;
              if (v229 < 0)
              {
                v224 += 7;
                ++v226;
                --v227;
                ++v228;
                v14 = v225++ > 8;
                if (v14)
                {
                  goto LABEL_258;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v107 = 0;
              }
            }

            else
            {
              v107 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_363:
          *(this + 6) = v107;
          goto LABEL_325;
        case 8u:
          *(this + 212) |= 0x40000uLL;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 32) = *(*a2 + v94);
          goto LABEL_324;
        case 9u:
          *(this + 212) |= 0x800000uLL;
          v129 = *(a2 + 1);
          if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 37) = *(*a2 + v129);
          goto LABEL_324;
        case 0xAu:
          *(this + 212) |= 0x400000uLL;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 36) = *(*a2 + v80);
          goto LABEL_324;
        case 0xBu:
          *(this + 212) |= 0x80uLL;
          v121 = *(a2 + 1);
          v120 = *(a2 + 2);
          v122 = *a2;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(a2 + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_369;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_274:
            v125 = 0;
            goto LABEL_369;
          }

          v236 = 0;
          v237 = 0;
          v125 = 0;
          v238 = (v122 + v121);
          v18 = v120 >= v121;
          v239 = v120 - v121;
          if (!v18)
          {
            v239 = 0;
          }

          v240 = v121 + 1;
          while (2)
          {
            if (v239)
            {
              v241 = *v238;
              *(a2 + 1) = v240;
              v125 |= (v241 & 0x7F) << v236;
              if (v241 < 0)
              {
                v236 += 7;
                ++v238;
                --v239;
                ++v240;
                v14 = v237++ > 8;
                if (v14)
                {
                  goto LABEL_274;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v125 = 0;
              }
            }

            else
            {
              v125 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_369:
          *(this + 8) = v125;
          goto LABEL_325;
        case 0xCu:
          *(this + 212) |= 0x20000uLL;
          v77 = *(a2 + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 31) = *(*a2 + v77);
          goto LABEL_324;
        case 0xDu:
          *(this + 212) |= 0x80000uLL;
          v79 = *(a2 + 1);
          if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 33) = *(*a2 + v79);
          goto LABEL_324;
        case 0xEu:
          *(this + 212) |= 0x40000000uLL;
          v101 = *(a2 + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 44) = *(*a2 + v101);
          goto LABEL_324;
        case 0xFu:
          *(this + 212) |= 0x200uLL;
          v68 = *(a2 + 1);
          v67 = *(a2 + 2);
          v69 = *a2;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(a2 + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_354;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_234:
            v72 = 0;
            goto LABEL_354;
          }

          v206 = 0;
          v207 = 0;
          v72 = 0;
          v208 = (v69 + v68);
          v18 = v67 >= v68;
          v209 = v67 - v68;
          if (!v18)
          {
            v209 = 0;
          }

          v210 = v68 + 1;
          while (2)
          {
            if (v209)
            {
              v211 = *v208;
              *(a2 + 1) = v210;
              v72 |= (v211 & 0x7F) << v206;
              if (v211 < 0)
              {
                v206 += 7;
                ++v208;
                --v209;
                ++v210;
                v14 = v207++ > 8;
                if (v14)
                {
                  goto LABEL_234;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v72 = 0;
              }
            }

            else
            {
              v72 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_354:
          *(this + 10) = v72;
          goto LABEL_325;
        case 0x10u:
          *(this + 212) |= 0x2000000uLL;
          v92 = *(a2 + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 39) = *(*a2 + v92);
          goto LABEL_324;
        case 0x11u:
          *(this + 212) |= 0x200000000uLL;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 47) = *(*a2 + v66);
          goto LABEL_324;
        case 0x12u:
          *(this + 212) |= 0x20000000uLL;
          v97 = *(a2 + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 43) = *(*a2 + v97);
          goto LABEL_324;
        case 0x13u:
          *(this + 212) |= 0x100uLL;
          v112 = *(a2 + 1);
          v111 = *(a2 + 2);
          v113 = *a2;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(a2 + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_366;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_266:
            v116 = 0;
            goto LABEL_366;
          }

          v230 = 0;
          v231 = 0;
          v116 = 0;
          v232 = (v113 + v112);
          v18 = v111 >= v112;
          v233 = v111 - v112;
          if (!v18)
          {
            v233 = 0;
          }

          v234 = v112 + 1;
          while (2)
          {
            if (v233)
            {
              v235 = *v232;
              *(a2 + 1) = v234;
              v116 |= (v235 & 0x7F) << v230;
              if (v235 < 0)
              {
                v230 += 7;
                ++v232;
                --v233;
                ++v234;
                v14 = v231++ > 8;
                if (v14)
                {
                  goto LABEL_266;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_366:
          *(this + 9) = v116;
          goto LABEL_325;
        case 0x14u:
          *(this + 212) |= 0x8000000uLL;
          v150 = *(a2 + 1);
          if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 41) = *(*a2 + v150);
          goto LABEL_324;
        case 0x15u:
          *(this + 212) |= 0x100000000uLL;
          v98 = *(a2 + 1);
          if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 46) = *(*a2 + v98);
          goto LABEL_324;
        case 0x16u:
          *(this + 212) |= 0x80000000uLL;
          v100 = *(a2 + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 45) = *(*a2 + v100);
          goto LABEL_324;
        case 0x17u:
          *(this + 212) |= 0x400uLL;
          v133 = *(a2 + 1);
          v132 = *(a2 + 2);
          v134 = *a2;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(a2 + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_372;
              }

              v135 += 7;
              ++v139;
              v14 = v136++ > 8;
            }

            while (!v14);
LABEL_282:
            v137 = 0;
            goto LABEL_372;
          }

          v242 = 0;
          v243 = 0;
          v137 = 0;
          v244 = (v134 + v133);
          v18 = v132 >= v133;
          v245 = v132 - v133;
          if (!v18)
          {
            v245 = 0;
          }

          v246 = v133 + 1;
          while (2)
          {
            if (v245)
            {
              v247 = *v244;
              *(a2 + 1) = v246;
              v137 |= (v247 & 0x7F) << v242;
              if (v247 < 0)
              {
                v242 += 7;
                ++v244;
                --v245;
                ++v246;
                v14 = v243++ > 8;
                if (v14)
                {
                  goto LABEL_282;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_372:
          *(this + 11) = v137;
          goto LABEL_325;
        case 0x18u:
          *(this + 212) |= 0x4000000uLL;
          v151 = *(a2 + 1);
          if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 40) = *(*a2 + v151);
          goto LABEL_324;
        case 0x19u:
          *(this + 212) |= 0x10000000uLL;
          v82 = *(a2 + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 42) = *(*a2 + v82);
          goto LABEL_324;
        case 0x1Au:
          *(this + 212) |= 0x2000uLL;
          v81 = *(a2 + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 27) = *(*a2 + v81);
          goto LABEL_324;
        case 0x1Bu:
          *(this + 212) |= 0x8000uLL;
          v180 = *(a2 + 1);
          v179 = *(a2 + 2);
          v181 = *a2;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(a2 + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_322:
            LODWORD(v184) = 0;
            goto LABEL_387;
          }

          v272 = 0;
          v273 = 0;
          v184 = 0;
          v274 = (v181 + v180);
          v18 = v179 >= v180;
          v275 = v179 - v180;
          if (!v18)
          {
            v275 = 0;
          }

          v276 = v180 + 1;
          while (2)
          {
            if (v275)
            {
              v277 = *v274;
              *(a2 + 1) = v276;
              v184 |= (v277 & 0x7F) << v272;
              if (v277 < 0)
              {
                v272 += 7;
                ++v274;
                --v275;
                ++v276;
                v14 = v273++ > 8;
                if (v14)
                {
                  goto LABEL_322;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(this + 29) = v184;
          goto LABEL_325;
        case 0x1Cu:
          *(this + 212) |= 0x4000uLL;
          v54 = *(a2 + 1);
          v53 = *(a2 + 2);
          v55 = *a2;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(a2 + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_351;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_224:
            LODWORD(v58) = 0;
            goto LABEL_351;
          }

          v200 = 0;
          v201 = 0;
          v58 = 0;
          v202 = (v55 + v54);
          v18 = v53 >= v54;
          v203 = v53 - v54;
          if (!v18)
          {
            v203 = 0;
          }

          v204 = v54 + 1;
          while (2)
          {
            if (v203)
            {
              v205 = *v202;
              *(a2 + 1) = v204;
              v58 |= (v205 & 0x7F) << v200;
              if (v205 < 0)
              {
                v200 += 7;
                ++v202;
                --v203;
                ++v204;
                v14 = v201++ > 8;
                if (v14)
                {
                  goto LABEL_224;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_351:
          *(this + 28) = v58;
          goto LABEL_325;
        case 0x1Du:
          *(this + 212) |= 0x10uLL;
          v153 = *(a2 + 1);
          v152 = *(a2 + 2);
          v154 = *a2;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(a2 + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_378;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_298:
            v157 = 0;
            goto LABEL_378;
          }

          v254 = 0;
          v255 = 0;
          v157 = 0;
          v256 = (v154 + v153);
          v18 = v152 >= v153;
          v257 = v152 - v153;
          if (!v18)
          {
            v257 = 0;
          }

          v258 = v153 + 1;
          while (2)
          {
            if (v257)
            {
              v259 = *v256;
              *(a2 + 1) = v258;
              v157 |= (v259 & 0x7F) << v254;
              if (v259 < 0)
              {
                v254 += 7;
                ++v256;
                --v257;
                ++v258;
                v14 = v255++ > 8;
                if (v14)
                {
                  goto LABEL_298;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v157 = 0;
              }
            }

            else
            {
              v157 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_378:
          *(this + 5) = v157;
          goto LABEL_325;
        case 0x1Eu:
          *(this + 212) |= 8uLL;
          v162 = *(a2 + 1);
          v161 = *(a2 + 2);
          v163 = *a2;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(a2 + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_306:
            v166 = 0;
            goto LABEL_381;
          }

          v260 = 0;
          v261 = 0;
          v166 = 0;
          v262 = (v163 + v162);
          v18 = v161 >= v162;
          v263 = v161 - v162;
          if (!v18)
          {
            v263 = 0;
          }

          v264 = v162 + 1;
          while (2)
          {
            if (v263)
            {
              v265 = *v262;
              *(a2 + 1) = v264;
              v166 |= (v265 & 0x7F) << v260;
              if (v265 < 0)
              {
                v260 += 7;
                ++v262;
                --v263;
                ++v264;
                v14 = v261++ > 8;
                if (v14)
                {
                  goto LABEL_306;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v166 = 0;
              }
            }

            else
            {
              v166 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(this + 4) = v166;
          goto LABEL_325;
        case 0x1Fu:
          *(this + 212) |= 0x800000000uLL;
          v130 = *(a2 + 1);
          if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 49) = *(*a2 + v130);
          goto LABEL_324;
        case 0x20u:
          *(this + 212) |= 0x2000000000uLL;
          v96 = *(a2 + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 51) = *(*a2 + v96);
          goto LABEL_324;
        case 0x21u:
          *(this + 212) |= 0x1000000000uLL;
          v131 = *(a2 + 1);
          if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 50) = *(*a2 + v131);
          goto LABEL_324;
        case 0x22u:
          *(this + 212) |= 0x400000000uLL;
          v76 = *(a2 + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
          {
LABEL_170:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 48) = *(*a2 + v76);
LABEL_324:
            *(a2 + 1) += 4;
          }

          goto LABEL_325;
        case 0x23u:
          *(this + 212) |= 0x4000000000uLL;
          v62 = *(a2 + 1);
          if (v62 >= *(a2 + 2))
          {
            v65 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*a2 + v62);
            *(a2 + 1) = v63;
            v65 = v64 != 0;
          }

          *(this + 208) = v65;
          goto LABEL_325;
        case 0x24u:
          *(this + 212) |= 0x8000000000uLL;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*a2 + v40);
            *(a2 + 1) = v41;
            v43 = v42 != 0;
          }

          *(this + 209) = v43;
          goto LABEL_325;
        case 0x25u:
          *(this + 212) |= 0x1000uLL;
          v45 = *(a2 + 1);
          v44 = *(a2 + 2);
          v46 = *a2;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_348;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_216:
            LODWORD(v49) = 0;
            goto LABEL_348;
          }

          v194 = 0;
          v195 = 0;
          v49 = 0;
          v196 = (v46 + v45);
          v18 = v44 >= v45;
          v197 = v44 - v45;
          if (!v18)
          {
            v197 = 0;
          }

          v198 = v45 + 1;
          while (2)
          {
            if (v197)
            {
              v199 = *v196;
              *(a2 + 1) = v198;
              v49 |= (v199 & 0x7F) << v194;
              if (v199 < 0)
              {
                v194 += 7;
                ++v196;
                --v197;
                ++v198;
                v14 = v195++ > 8;
                if (v14)
                {
                  goto LABEL_216;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_348:
          *(this + 26) = v49;
          goto LABEL_325;
        case 0x26u:
          *(this + 212) |= 4uLL;
          v32 = *(a2 + 1);
          v31 = *(a2 + 2);
          v33 = *a2;
          if (v32 <= 0xFFFFFFFFFFFFFFF5 && v32 + 10 <= v31)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            do
            {
              *(a2 + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_345;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
            }

            while (!v14);
LABEL_206:
            v36 = 0;
            goto LABEL_345;
          }

          v188 = 0;
          v189 = 0;
          v36 = 0;
          v190 = (v33 + v32);
          v18 = v31 >= v32;
          v191 = v31 - v32;
          if (!v18)
          {
            v191 = 0;
          }

          v192 = v32 + 1;
          while (2)
          {
            if (v191)
            {
              v193 = *v190;
              *(a2 + 1) = v192;
              v36 |= (v193 & 0x7F) << v188;
              if (v193 < 0)
              {
                v188 += 7;
                ++v190;
                --v191;
                ++v192;
                v14 = v189++ > 8;
                if (v14)
                {
                  goto LABEL_206;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_345:
          *(this + 3) = v36;
          goto LABEL_325;
        case 0x27u:
          *(this + 212) |= 2uLL;
          v171 = *(a2 + 1);
          v170 = *(a2 + 2);
          v172 = *a2;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(a2 + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_384;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_314:
            v175 = 0;
            goto LABEL_384;
          }

          v266 = 0;
          v267 = 0;
          v175 = 0;
          v268 = (v172 + v171);
          v18 = v170 >= v171;
          v269 = v170 - v171;
          if (!v18)
          {
            v269 = 0;
          }

          v270 = v171 + 1;
          while (2)
          {
            if (v269)
            {
              v271 = *v268;
              *(a2 + 1) = v270;
              v175 |= (v271 & 0x7F) << v266;
              if (v271 < 0)
              {
                v266 += 7;
                ++v268;
                --v269;
                ++v270;
                v14 = v267++ > 8;
                if (v14)
                {
                  goto LABEL_314;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v175 = 0;
              }
            }

            else
            {
              v175 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_384:
          *(this + 2) = v175;
          goto LABEL_325;
        case 0x28u:
          *(this + 212) |= 1uLL;
          v142 = *(a2 + 1);
          v141 = *(a2 + 2);
          v143 = *a2;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(a2 + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_375;
              }

              v144 += 7;
              ++v148;
              v14 = v145++ > 8;
            }

            while (!v14);
LABEL_290:
            v146 = 0;
            goto LABEL_375;
          }

          v248 = 0;
          v249 = 0;
          v146 = 0;
          v250 = (v143 + v142);
          v18 = v141 >= v142;
          v251 = v141 - v142;
          if (!v18)
          {
            v251 = 0;
          }

          v252 = v142 + 1;
          break;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v251)
        {
          v146 = 0;
          *(a2 + 24) = 1;
          goto LABEL_375;
        }

        v253 = *v250;
        *(a2 + 1) = v252;
        v146 |= (v253 & 0x7F) << v248;
        if ((v253 & 0x80) == 0)
        {
          break;
        }

        v248 += 7;
        ++v250;
        --v251;
        ++v252;
        v14 = v249++ > 8;
        if (v14)
        {
          goto LABEL_290;
        }
      }

      if (*(a2 + 24))
      {
        v146 = 0;
      }

LABEL_375:
      *(this + 1) = v146;
LABEL_325:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_389;
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
        goto LABEL_389;
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
      goto LABEL_325;
    }

    v279 = 0;
  }

  return v279 & 1;
}

uint64_t CMMsl::SafetyTrustedAudioResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 212);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(this + 96);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 212);
    if ((v4 & 0x200000) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v7 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 148));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  v8 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 212);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 156));
  v4 = *(v3 + 212);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 188));
  v4 = *(v3 + 212);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 172));
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v10 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 164));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 180));
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 212);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v12 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  v13 = *(v3 + 112);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_30:
    if ((v4 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  v14 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  v15 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 196));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 204));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(v3 + 208);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  v17 = *(v3 + 209);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_38:
    if ((v4 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  v18 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_39:
    if ((v4 & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_80:
    v20 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 212) & 1) == 0)
    {
      return this;
    }

    goto LABEL_81;
  }

LABEL_79:
  v19 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 212);
  if ((v4 & 2) != 0)
  {
    goto LABEL_80;
  }

LABEL_40:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_81:
  v21 = *(v3 + 8);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::SafetyTrustedAudioResult::hash_value(CMMsl::SafetyTrustedAudioResult *this)
{
  v1 = *(this + 212);
  if ((v1 & 0x800) != 0)
  {
    v2 = *(this + 12);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x200000) != 0)
  {
    v60 = *(this + 35);
    v61 = LODWORD(v60);
    if (v60 == 0.0)
    {
      v61 = 0;
    }

    v75 = v61;
    if ((v1 & 0x40) != 0)
    {
LABEL_6:
      v74 = *(this + 7);
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_7;
      }

LABEL_101:
      v73 = 0;
      if ((v1 & 0x1000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_102:
      v72 = 0;
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_13;
      }

LABEL_103:
      v71 = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_104;
    }
  }

  else
  {
    v75 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v74 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_101;
  }

LABEL_7:
  v3 = *(this + 30);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v73 = v4;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_10:
  v5 = *(this + 38);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v72 = v6;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_103;
  }

LABEL_13:
  v7 = *(this + 34);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v71 = v8;
  if ((v1 & 0x20) != 0)
  {
LABEL_16:
    v70 = *(this + 6);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_17;
    }

LABEL_105:
    v69 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_20;
    }

LABEL_106:
    v68 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_23;
    }

LABEL_107:
    v67 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_108;
  }

LABEL_104:
  v70 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_105;
  }

LABEL_17:
  v9 = *(this + 32);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v69 = v10;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_106;
  }

LABEL_20:
  v11 = *(this + 37);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v68 = v12;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_107;
  }

LABEL_23:
  v13 = *(this + 36);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v67 = v14;
  if ((v1 & 0x80) != 0)
  {
LABEL_26:
    v66 = *(this + 8);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_27;
    }

LABEL_109:
    v65 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

LABEL_110:
    v64 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_111:
    v63 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_112;
  }

LABEL_108:
  v66 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_109;
  }

LABEL_27:
  v15 = *(this + 31);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v65 = v16;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_110;
  }

LABEL_30:
  v17 = *(this + 33);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v64 = v18;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_33:
  v19 = *(this + 44);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v63 = v20;
  if ((v1 & 0x200) != 0)
  {
LABEL_36:
    v21 = *(this + 10);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_113:
    v23 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_114:
    v25 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_115:
    v27 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_116;
  }

LABEL_112:
  v21 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_113;
  }

LABEL_37:
  v22 = *(this + 39);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_41:
  v24 = *(this + 47);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v24);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_115;
  }

LABEL_45:
  v26 = *(this + 43);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = LODWORD(v26);
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_49:
    v28 = *(this + 9);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_117:
    v30 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_118:
    v32 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_119:
    v34 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_120;
  }

LABEL_116:
  v28 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_117;
  }

LABEL_50:
  v29 = *(this + 41);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_54:
  v31 = *(this + 46);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    v32 = LODWORD(v31);
  }

  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_58:
  v33 = *(this + 45);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if ((v1 & 0x400) != 0)
  {
LABEL_62:
    v35 = *(this + 11);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_63;
    }

LABEL_121:
    v37 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_122:
    v39 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_71;
    }

LABEL_123:
    v41 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_124;
  }

LABEL_120:
  v35 = 0;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_63:
  v36 = *(this + 40);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_67:
  v38 = *(this + 42);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_123;
  }

LABEL_71:
  v40 = *(this + 27);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_75:
    v42 = *(this + 29);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_125;
  }

LABEL_124:
  v42 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_76:
    v43 = *(this + 28);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_126;
  }

LABEL_125:
  v43 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_77:
    v44 = *(this + 5);
    if ((v1 & 8) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_127;
  }

LABEL_126:
  v44 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_78:
    v45 = *(this + 4);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_128:
    v47 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_129:
    v49 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_130:
    v51 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_88;
    }

LABEL_131:
    v53 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_132;
  }

LABEL_127:
  v45 = 0;
  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_128;
  }

LABEL_79:
  v46 = *(this + 49);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_82:
  v48 = *(this + 51);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_85:
  v50 = *(this + 50);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_88:
  v52 = *(this + 48);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  if ((v1 & 0x4000000000) != 0)
  {
LABEL_91:
    v54 = *(this + 208);
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_133;
  }

LABEL_132:
  v54 = 0;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_92:
    v55 = *(this + 209);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_93;
    }

    goto LABEL_134;
  }

LABEL_133:
  v55 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_93:
    v56 = *(this + 26);
    if ((v1 & 4) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_135;
  }

LABEL_134:
  v56 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_94:
    v57 = *(this + 3);
    if ((v1 & 2) != 0)
    {
      goto LABEL_95;
    }

LABEL_136:
    v58 = 0;
    if (v1)
    {
      goto LABEL_96;
    }

LABEL_137:
    v59 = 0;
    return v75 ^ v2 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58 ^ v59;
  }

LABEL_135:
  v57 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_136;
  }

LABEL_95:
  v58 = *(this + 2);
  if ((v1 & 1) == 0)
  {
    goto LABEL_137;
  }

LABEL_96:
  v59 = *(this + 1);
  return v75 ^ v2 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58 ^ v59;
}

uint64_t CMMsl::SatelliteInfo::SatelliteInfo(uint64_t this)
{
  *this = &unk_286C236B0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C236B0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::SatelliteInfo::~SatelliteInfo(CMMsl::SatelliteInfo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::SatelliteInfo::SatelliteInfo(CMMsl::SatelliteInfo *this, const CMMsl::SatelliteInfo *a2)
{
  *this = &unk_286C236B0;
  *(this + 5) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 3);
    v3 = 2;
    *(this + 20) = 2;
    *(this + 3) = result;
    v2 = *(a2 + 20);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 20))
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 1u;
    *(this + 20) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 4);
    *(this + 20) = v3 | 4;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::SatelliteInfo::operator=(uint64_t a1, const CMMsl::SatelliteInfo *a2)
{
  if (a1 != a2)
  {
    CMMsl::SatelliteInfo::SatelliteInfo(v7, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::SatelliteInfo *a2, CMMsl::SatelliteInfo *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::SatelliteInfo::SatelliteInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C236B0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C236B0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::SatelliteInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C236B0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v10 = *(a1 + 20);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 20) = v3;
    *(a1 + 8) = v6;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    *(a1 + 16) = v4;
    v9 = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SatelliteInfo::formatText(CMMsl::SatelliteInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "azimuthDeg", *(this + 2));
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

  PB::TextFormatter::format(a2, "elevationDeg", *(this + 3));
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "l1Cn0", *(this + 4));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SatelliteInfo::readFrom(CMMsl::SatelliteInfo *this, PB::Reader *a2)
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
        goto LABEL_38;
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
        goto LABEL_38;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_31:
          *(a2 + 24) = 1;
          goto LABEL_34;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_33;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_34:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(this + 20) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
      goto LABEL_31;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SatelliteInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 20) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 12));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::SatelliteInfo::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

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

  v2 = (*(a2 + 20) & 4) == 0;
  if ((*(a1 + 20) & 4) != 0)
  {
    return (*(a2 + 20) & 4) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::SatelliteInfo::hash_value(CMMsl::SatelliteInfo *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    v6 = *(this + 3);
    v1 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v1 = 0;
    }

    if (*(this + 20))
    {
LABEL_3:
      v2 = *(this + 2);
      v3 = LODWORD(v2);
      if (v2 == 0.0)
      {
        v3 = 0;
      }

      if ((*(this + 20) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v5 = 0;
      return v3 ^ v1 ^ v5;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 20))
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v3 ^ v1 ^ v5;
}

void CMMsl::SessionOverride::~SessionOverride(CMMsl::SessionOverride *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SessionOverride::SessionOverride(uint64_t this, const CMMsl::SessionOverride *a2)
{
  *this = &unk_286C236E8;
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

const CMMsl::SessionOverride *CMMsl::SessionOverride::operator=(const CMMsl::SessionOverride *a1, const CMMsl::SessionOverride *a2)
{
  if (a1 != a2)
  {
    CMMsl::SessionOverride::SessionOverride(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::SessionOverride *a2, CMMsl::SessionOverride *a3)
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

double CMMsl::SessionOverride::SessionOverride(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C236E8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C236E8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SessionOverride::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C236E8;
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

uint64_t CMMsl::SessionOverride::formatText(CMMsl::SessionOverride *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "sessionType");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SessionOverride::readFrom(CMMsl::SessionOverride *this, PB::Reader *a2)
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

uint64_t CMMsl::SessionOverride::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::SessionOverride::hash_value(CMMsl::SessionOverride *this)
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

void CMMsl::SignalEnvironment::~SignalEnvironment(CMMsl::SignalEnvironment *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SignalEnvironment::SignalEnvironment(uint64_t this, const CMMsl::SignalEnvironment *a2)
{
  *this = &unk_286C23720;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::SignalEnvironment::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C23720;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C23720;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SignalEnvironment *a2, CMMsl::SignalEnvironment *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::SignalEnvironment::formatText(CMMsl::SignalEnvironment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SignalEnvironment::readFrom(CMMsl::SignalEnvironment *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
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
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
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

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::SignalEnvironment::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::SignalEnvironment::hash_value(CMMsl::SignalEnvironment *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void CMMsl::SignificantUserInteraction::~SignificantUserInteraction(CMMsl::SignificantUserInteraction *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SignificantUserInteraction::SignificantUserInteraction(uint64_t this, const CMMsl::SignificantUserInteraction *a2)
{
  *this = &unk_286C23758;
  *(this + 16) = 0;
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

uint64_t CMMsl::SignificantUserInteraction::operator=(uint64_t a1, const CMMsl::SignificantUserInteraction *a2)
{
  if (a1 != a2)
  {
    CMMsl::SignificantUserInteraction::SignificantUserInteraction(v7, a2);
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

uint64_t CMMsl::swap(uint64_t this, CMMsl::SignificantUserInteraction *a2, CMMsl::SignificantUserInteraction *a3)
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

uint64_t CMMsl::SignificantUserInteraction::SignificantUserInteraction(uint64_t result, uint64_t a2)
{
  *result = &unk_286C23758;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C23758;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SignificantUserInteraction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = &unk_286C23758;
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

uint64_t CMMsl::SignificantUserInteraction::formatText(CMMsl::SignificantUserInteraction *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
    v5 = *(this + 20);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SignificantUserInteraction::readFrom(CMMsl::SignificantUserInteraction *this, PB::Reader *a2)
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

uint64_t CMMsl::SignificantUserInteraction::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::SignificantUserInteraction::hash_value(CMMsl::SignificantUserInteraction *this)
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

void CMMsl::SimActivityEvent::~SimActivityEvent(CMMsl::SimActivityEvent *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23790;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SimActivityEvent::~SimActivityEvent(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SimActivityEvent::SimActivityEvent(uint64_t this, const CMMsl::SimActivityEvent *a2)
{
  *this = &unk_286C23790;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t result, uint64_t a2)
{
  *result = &unk_286C237C8;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

{
  *result = &unk_286C237C8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C237C8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::SimActivityEvent::operator=(uint64_t a1, const CMMsl::SimActivityEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::SimActivityEvent::SimActivityEvent(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    CMMsl::SimActivityEvent::~SimActivityEvent(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SimActivityEvent *a2, CMMsl::SimActivityEvent *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v6;
  *(a2 + 1) = v5;
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::SimActivityEvent::SimActivityEvent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23790;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t CMMsl::SimActivityEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SimActivityEvent::SimActivityEvent(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    CMMsl::SimActivityEvent::~SimActivityEvent(&v8);
  }

  return a1;
}

uint64_t CMMsl::SimActivityEvent::formatText(CMMsl::SimActivityEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "motionState");
  }

  if (*(this + 24))
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SimActivityEvent::readFrom(CMMsl::SimActivityEvent *this, PB::Reader *a2)
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
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 1u;
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
              v27 = 0;
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
              v27 = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
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
        *(this + 2) = v27;
      }

      else
      {
LABEL_28:
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
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t this)
{
  *this = &unk_286C237C8;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C237C8;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::SimActivityEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    v4 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

BOOL CMMsl::SimMotionState::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::SimActivityEvent::hash_value(CMMsl::SimActivityEvent *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 2);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 12);
    v2 = *(v2 + 8);
    if ((v3 & 1) == 0)
    {
      v2 = 0;
    }
  }

  return v2 ^ v1;
}

uint64_t CMMsl::SimActivityEvent::makeMotionState(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::SimMotionState::~SimMotionState(CMMsl::SimMotionState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SimMotionState::SimMotionState(uint64_t this, const CMMsl::SimMotionState *a2)
{
  *this = &unk_286C237C8;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::SimMotionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C237C8;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C237C8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SimMotionState *a2, CMMsl::SimMotionState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::SimMotionState::formatText(CMMsl::SimMotionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SimMotionState::readFrom(CMMsl::SimMotionState *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
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
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
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

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::SimMotionState::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::SimMotionState::hash_value(CMMsl::SimMotionState *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void CMMsl::SitStandDetectorFeatures::~SitStandDetectorFeatures(CMMsl::SitStandDetectorFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(CMMsl::SitStandDetectorFeatures *this, const CMMsl::SitStandDetectorFeatures *a2)
{
  *this = &unk_286C23800;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      return *&v4;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 9) = v4;
  if ((*(a2 + 44) & 0x20) == 0)
  {
    return *&v4;
  }

LABEL_18:
  LODWORD(v4) = *(a2 + 8);
  *(this + 44) = v3 | 0x20;
  *(this + 8) = v4;
  return *&v4;
}

uint64_t CMMsl::SitStandDetectorFeatures::operator=(uint64_t a1, const CMMsl::SitStandDetectorFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    *&v5 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorFeatures *a2, CMMsl::SitStandDetectorFeatures *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

float CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23800;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = &unk_286C23800;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::SitStandDetectorFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = &unk_286C23800;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 40);
    v15 = *(a1 + 44);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11[1] = v6;
    v14 = *(a1 + 40);
    v7 = *(a2 + 16);
    v12 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    *(a1 + 44) = v3;
    *(a1 + 40) = v5;
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
    v13 = v8;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::SitStandDetectorFeatures::formatText(CMMsl::SitStandDetectorFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "magnitudeRangeInertialVertical", *(this + 4));
    v5 = *(this + 44);
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

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "maxAngleBetweenThighAndShinDeg", *(this + 5));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "minAngleBetweenThighAndShinDeg", *(this + 6));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "motionPlanarity", *(this + 7));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "timeToReachMaxThighAndShinAngleThreshold", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    if ((*(this + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timeToReachMinThighAndShinAngleThreshold", *(this + 9));
  v5 = *(this + 44);
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "vm", *(this + 10));
LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SitStandDetectorFeatures::readFrom(CMMsl::SitStandDetectorFeatures *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_54:
            *(a2 + 24) = 1;
            goto LABEL_58;
          }

          *(this + 9) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
LABEL_57:
          *(a2 + 1) = v2;
          goto LABEL_58;
        }

        if (v22 == 8)
        {
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 6)
        {
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_56;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_56;
      }

      if (v22 == 4)
      {
        *(this + 44) |= 0x80u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 10) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 44) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_57;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 7) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_58:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SitStandDetectorFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 36));
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::SitStandDetectorFeatures::hash_value(CMMsl::SitStandDetectorFeatures *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v3 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v5 = 0;
    if ((*(this + 44) & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v7 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v11 = 0;
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v6 = *(this + 10);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v10 = *(this + 5);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_18:
    v12 = *(this + 9);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v15 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_32:
  v13 = 0;
  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v14 = *(this + 8);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
}

void CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::~SitStandDetectorPosteriorBufferStatsForSitToStand(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *this, const CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2)
{
  *this = &unk_286C23838;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 6);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    if ((*(a2 + 28) & 4) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 4) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 5);
  *(this + 28) = v3 | 4;
  *(this + 5) = v4;
  return *&v4;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::operator=(uint64_t a1, const CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2)
{
  if (a1 != a2)
  {
    CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(&v9, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    v7 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v7;
    v10 = v5;
    v11 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a2, CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23838;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = &unk_286C23838;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = &unk_286C23838;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v11 = *(a1 + 24);
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(a1 + 24) = v4;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    *(a1 + 28) = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    v10[1] = v7;
    v10[2] = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}