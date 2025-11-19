uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::operator=(uint64_t a1, const CMMsl::KappaPeakDetectorMapMagTimestamps *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPeakDetectorMapMagTimestamps::KappaPeakDetectorMapMagTimestamps(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaPeakDetectorMapMagTimestamps *a2, CMMsl::KappaPeakDetectorMapMagTimestamps *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  return result;
}

float CMMsl::KappaPeakDetectorMapMagTimestamps::KappaPeakDetectorMapMagTimestamps(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21298;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = &unk_286C21298;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C21298;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 40);
    v14 = *(a1 + 44);
    v5 = *(a2 + 8);
    v11 = *(a1 + 8);
    v6 = *(a1 + 40);
    *(a1 + 40) = v4;
    v13 = v6;
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    *(a1 + 44) = v3;
    *(a1 + 8) = v5;
    *(a1 + 24) = v8;
    v12 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::formatText(CMMsl::KappaPeakDetectorMapMagTimestamps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "epochFirstTimestamp");
    v5 = *(this + 44);
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

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(this + 3);
  PB::TextFormatter::format(a2, "maxNormTimestamp");
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "maxNormValue", *(this + 10));
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::readFrom(CMMsl::KappaPeakDetectorMapMagTimestamps *this, PB::Reader *a2)
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
        *(this + 44) |= 8u;
        v47 = *(a2 + 1);
        v2 = *(a2 + 2);
        v48 = *a2;
        if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
        {
          v62 = 0;
          v63 = 0;
          v51 = 0;
          if (v2 <= v47)
          {
            v2 = *(a2 + 1);
          }

          v64 = (v48 + v47);
          v65 = v2 - v47;
          v66 = v47 + 1;
          while (1)
          {
            if (!v65)
            {
              v51 = 0;
              *(a2 + 24) = 1;
              goto LABEL_104;
            }

            v67 = v66;
            v68 = *v64;
            *(a2 + 1) = v67;
            v51 |= (v68 & 0x7F) << v62;
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
              v51 = 0;
              goto LABEL_103;
            }
          }

          if (*(a2 + 24))
          {
            v51 = 0;
          }

LABEL_103:
          v2 = v67;
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

LABEL_104:
        *(this + 4) = v51;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 1u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v76 = 0;
          v77 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v78 = (v32 + v31);
          v79 = v2 - v31;
          v80 = v31 + 1;
          while (1)
          {
            if (!v79)
            {
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_112;
            }

            v81 = v80;
            v82 = *v78;
            *(a2 + 1) = v81;
            v35 |= (v82 & 0x7F) << v76;
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
              v35 = 0;
              goto LABEL_111;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }

LABEL_111:
          v2 = v81;
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
              v35 = 0;
              break;
            }
          }
        }

LABEL_112:
        *(this + 1) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 44) |= 2u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v57 = (v40 + v39);
            v58 = v2 - v39;
            v59 = v39 + 1;
            while (1)
            {
              if (!v58)
              {
                v43 = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v60 = v59;
              v61 = *v57;
              *(a2 + 1) = v60;
              v43 |= (v61 & 0x7F) << v55;
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
                v43 = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              v43 = 0;
            }

LABEL_99:
            v2 = v60;
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

LABEL_100:
          *(this + 2) = v43;
          goto LABEL_19;
        case 4:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 10) = *(*a2 + v2);
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_19;
        case 5:
          *(this + 44) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v71 = (v24 + v23);
            v72 = v2 - v23;
            v73 = v23 + 1;
            while (1)
            {
              if (!v72)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v74 = v73;
              v75 = *v71;
              *(a2 + 1) = v74;
              v27 |= (v75 & 0x7F) << v69;
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
                v27 = 0;
                goto LABEL_107;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_107:
            v2 = v74;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_108:
          *(this + 3) = v27;
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

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    v5 = *(this + 32);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 44);
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

  else if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 40));
    if ((*(v3 + 44) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
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
  v8 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::hash_value(CMMsl::KappaPeakDetectorMapMagTimestamps *this)
{
  if ((*(this + 44) & 8) != 0)
  {
    v1 = *(this + 4);
    if (*(this + 44))
    {
LABEL_3:
      v2 = *(this + 1);
      if ((*(this + 44) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 44))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 44) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 2);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 44) & 0x10) != 0)
  {
LABEL_5:
    v4 = *(this + 10);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v6 = 0;
    return v2 ^ v1 ^ v3 ^ v5 ^ v6;
  }

LABEL_12:
  v5 = 0;
  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = *(this + 3);
  return v2 ^ v1 ^ v3 ^ v5 ^ v6;
}

void CMMsl::KappaPeakDetectorMapResult::~KappaPeakDetectorMapResult(CMMsl::KappaPeakDetectorMapResult *this)
{
  *this = &unk_286C212D0;
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
  CMMsl::KappaPeakDetectorMapResult::~KappaPeakDetectorMapResult(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::KappaPeakDetectorMapResult *CMMsl::KappaPeakDetectorMapResult::KappaPeakDetectorMapResult(CMMsl::KappaPeakDetectorMapResult *this, const CMMsl::KappaPeakDetectorMapResult *a2)
{
  *this = &unk_286C212D0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 38) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 38);
  if ((v5 & 0x80) != 0)
  {
    v7 = *(a2 + 28);
    v6 = 128;
    *(this + 38) = 128;
    *(this + 28) = v7;
    v5 = *(a2 + 38);
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 8) != 0)
  {
LABEL_5:
    v8 = *(a2 + 10);
    v6 |= 8u;
    *(this + 38) = v6;
    *(this + 10) = v8;
    v5 = *(a2 + 38);
  }

LABEL_6:
  if ((v5 & 0x800) != 0)
  {
    v13 = *(a2 + 32);
    v6 |= 0x800u;
    *(this + 38) = v6;
    *(this + 32) = v13;
    v5 = *(a2 + 38);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 11);
  v6 |= 0x10u;
  *(this + 38) = v6;
  *(this + 11) = v14;
  v5 = *(a2 + 38);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(a2 + 35);
  v6 |= 0x4000u;
  *(this + 38) = v6;
  *(this + 35) = v15;
  v5 = *(a2 + 38);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(a2 + 36);
  v6 |= 0x8000u;
  *(this + 38) = v6;
  *(this + 36) = v16;
  v5 = *(a2 + 38);
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
  v17 = *(a2 + 30);
  v6 |= 0x200u;
  *(this + 38) = v6;
  *(this + 30) = v17;
  v5 = *(a2 + 38);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(a2 + 31);
  v6 |= 0x400u;
  *(this + 38) = v6;
  *(this + 31) = v18;
  v5 = *(a2 + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a2 + 12);
  v6 |= 0x20u;
  *(this + 38) = v6;
  *(this + 12) = v19;
  v5 = *(a2 + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(a2 + 29);
  v6 |= 0x100u;
  *(this + 38) = v6;
  *(this + 29) = v20;
  v5 = *(a2 + 38);
  if ((v5 & 0x10000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(a2 + 148);
  v6 |= 0x10000u;
  *(this + 38) = v6;
  *(this + 148) = v21;
  v5 = *(a2 + 38);
  if ((v5 & 0x40) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = *(a2 + 13);
  v6 |= 0x40u;
  *(this + 38) = v6;
  *(this + 13) = v22;
  v5 = *(a2 + 38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = *(a2 + 33);
  v6 |= 0x1000u;
  *(this + 38) = v6;
  *(this + 33) = v23;
  v5 = *(a2 + 38);
  if ((v5 & 4) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_38:
  v24 = *(a2 + 9);
  v6 |= 4u;
  *(this + 38) = v6;
  *(this + 9) = v24;
  if ((*(a2 + 38) & 0x2000) != 0)
  {
LABEL_19:
    v9 = *(a2 + 34);
    *(this + 38) = v6 | 0x2000;
    *(this + 34) = v9;
  }

LABEL_20:
  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v10 = *(a2 + 38);
  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v26 = *(a2 + 8);
    *(this + 38) |= 2u;
    *(this + 8) = v26;
    if ((*(a2 + 38) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

  v25 = *(a2 + 7);
  *(this + 38) |= 1u;
  *(this + 7) = v25;
  v10 = *(a2 + 38);
  if ((v10 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if ((v10 & 0x20000) != 0)
  {
LABEL_25:
    v11 = *(a2 + 149);
    *(this + 38) |= 0x20000u;
    *(this + 149) = v11;
  }

  return this;
}

CMMsl *CMMsl::KappaPeakDetectorMapResult::operator=(CMMsl *a1, const CMMsl::KappaPeakDetectorMapResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPeakDetectorMapResult::KappaPeakDetectorMapResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaPeakDetectorMapResult::~KappaPeakDetectorMapResult(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaPeakDetectorMapResult *a2, CMMsl::KappaPeakDetectorMapResult *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  v5 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  LOBYTE(v6) = *(this + 148);
  *(this + 148) = *(a2 + 148);
  *(a2 + 148) = v6;
  v7 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  LODWORD(v7) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 6);
  v15 = *(this + 7);
  v16 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v16;
  v17 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v17;
  v18 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v18;
  v19 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v19;
  v20 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v20;
  v21 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v21;
  v22 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v22;
  result = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = result;
  *(a2 + 6) = v14;
  *(a2 + 7) = v15;
  v24 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v24;
  LOBYTE(v24) = *(this + 149);
  *(this + 149) = *(a2 + 149);
  *(a2 + 149) = v24;
  return result;
}

uint64_t CMMsl::KappaPeakDetectorMapResult::KappaPeakDetectorMapResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C212D0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 136) = *(a2 + 136);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 149) = *(a2 + 149);
  return a1;
}

CMMsl *CMMsl::KappaPeakDetectorMapResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPeakDetectorMapResult::KappaPeakDetectorMapResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaPeakDetectorMapResult::~KappaPeakDetectorMapResult(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaPeakDetectorMapResult::formatText(CMMsl::KappaPeakDetectorMapResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 152) & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "accelPeakThreshold", *(this + 28));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "allMaxNormTimestamps");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "allMaxNormValues", v10);
  }

  v11 = *(this + 38);
  if (v11)
  {
    v13 = *(this + 7);
    PB::TextFormatter::format(a2, "epochFirstTimestamp");
    v11 = *(this + 38);
    if ((v11 & 2) == 0)
    {
LABEL_9:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(this + 8);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v11 = *(this + 38);
  if ((v11 & 0x10000) == 0)
  {
LABEL_10:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(this + 148);
  PB::TextFormatter::format(a2, "isMAPDetected");
  v11 = *(this + 38);
  if ((v11 & 0x100) == 0)
  {
LABEL_11:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "magnitudePercentileThreshold", *(this + 29));
  v11 = *(this + 38);
  if ((v11 & 0x200) == 0)
  {
LABEL_12:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "magnitudePeriodicityLowerPercentile", *(this + 30));
  v11 = *(this + 38);
  if ((v11 & 0x400) == 0)
  {
LABEL_13:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "magnitudePeriodicityUpperPercentile", *(this + 31));
  v11 = *(this + 38);
  if ((v11 & 0x800) == 0)
  {
LABEL_14:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(this + 32);
  PB::TextFormatter::format(a2, "minNumPeaks");
  v11 = *(this + 38);
  if ((v11 & 0x1000) == 0)
  {
LABEL_15:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(this + 33);
  PB::TextFormatter::format(a2, "numPeaks");
  v11 = *(this + 38);
  if ((v11 & 0x2000) == 0)
  {
LABEL_16:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "peakMagnitudePercentileDiff", *(this + 34));
  v11 = *(this + 38);
  if ((v11 & 0x20000) == 0)
  {
LABEL_17:
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(this + 149);
  PB::TextFormatter::format(a2, "peakSeparation");
  v11 = *(this + 38);
  if ((v11 & 4) == 0)
  {
LABEL_18:
    if ((v11 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(this + 9);
  PB::TextFormatter::format(a2, "peakTimeDeltaPercentileDiff");
  v11 = *(this + 38);
  if ((v11 & 8) == 0)
  {
LABEL_19:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(this + 10);
  PB::TextFormatter::format(a2, "peakToPeakMinimumSeparation");
  v11 = *(this + 38);
  if ((v11 & 0x10) == 0)
  {
LABEL_20:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(this + 11);
  PB::TextFormatter::format(a2, "peakToPeakSeparationThreshold");
  v11 = *(this + 38);
  if ((v11 & 0x20) == 0)
  {
LABEL_21:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = *(this + 12);
  PB::TextFormatter::format(a2, "timePercentileDiffThreshold");
  v11 = *(this + 38);
  if ((v11 & 0x4000) == 0)
  {
LABEL_22:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "timePeriodicityLowerPercentile", *(this + 35));
  v11 = *(this + 38);
  if ((v11 & 0x8000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "timePeriodicityUpperPercentile", *(this + 36));
  if ((*(this + 38) & 0x40) != 0)
  {
LABEL_24:
    v12 = *(this + 13);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_25:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaPeakDetectorMapResult::readFrom(CMMsl::KappaPeakDetectorMapResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
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
          goto LABEL_19;
        }

        v14 += 7;
        ++v16;
        --v18;
        ++v19;
        v152 = v15++ > 8;
        if (v152)
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
      v152 = v9++ > 8;
      if (v152)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v21 = v10 & 7;
    if (v21 == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 100)
    {
      if (v22 > 203)
      {
        if (v22 <= 205)
        {
          if (v22 == 204)
          {
            if (v21 != 2)
            {
              v205 = *(this + 2);
              v204 = *(this + 3);
              if (v205 >= v204)
              {
                v222 = *(this + 1);
                v223 = v205 - v222;
                v224 = (v205 - v222) >> 3;
                v225 = v224 + 1;
                if ((v224 + 1) >> 61)
                {
LABEL_362:
                  sub_25AAE66B8();
                }

                v226 = v204 - v222;
                if (v226 >> 2 > v225)
                {
                  v225 = v226 >> 2;
                }

                if (v226 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v227 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v227 = v225;
                }

                if (v227)
                {
                  sub_25AD28710(v227);
                }

                v234 = (v205 - v222) >> 3;
                v235 = (8 * v224);
                v236 = (8 * v224 - 8 * v234);
                *v235 = 0;
                v206 = v235 + 1;
                memcpy(v236, v222, v223);
                v237 = *(this + 1);
                *(this + 1) = v236;
                *(this + 2) = v206;
                *(this + 3) = 0;
                if (v237)
                {
                  operator delete(v237);
                }
              }

              else
              {
                *v205 = 0;
                v206 = v205 + 8;
              }

              *(this + 2) = v206;
              v239 = *(a2 + 1);
              v238 = *(a2 + 2);
              v240 = *a2;
              if (v239 > 0xFFFFFFFFFFFFFFF5 || v239 + 10 > v238)
              {
                v247 = 0;
                v248 = 0;
                v243 = 0;
                v249 = (v240 + v239);
                v17 = v238 >= v239;
                v250 = v238 - v239;
                if (!v17)
                {
                  v250 = 0;
                }

                v251 = v239 + 1;
                while (1)
                {
                  if (!v250)
                  {
                    v243 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_352;
                  }

                  v252 = *v249;
                  *(a2 + 1) = v251;
                  v243 |= (v252 & 0x7F) << v247;
                  if ((v252 & 0x80) == 0)
                  {
                    break;
                  }

                  v247 += 7;
                  ++v249;
                  --v250;
                  ++v251;
                  v152 = v248++ > 8;
                  if (v152)
                  {
LABEL_341:
                    v243 = 0;
                    goto LABEL_352;
                  }
                }

                if (*(a2 + 24))
                {
                  v243 = 0;
                }
              }

              else
              {
                v241 = 0;
                v242 = 0;
                v243 = 0;
                v244 = (v240 + v239);
                v245 = v239 + 1;
                while (1)
                {
                  *(a2 + 1) = v245;
                  v246 = *v244++;
                  v243 |= (v246 & 0x7F) << v241;
                  if ((v246 & 0x80) == 0)
                  {
                    break;
                  }

                  v241 += 7;
                  ++v245;
                  v152 = v242++ > 8;
                  if (v152)
                  {
                    goto LABEL_341;
                  }
                }
              }

LABEL_352:
              *(v206 - 1) = v243;
              goto LABEL_353;
            }

            if (PB::Reader::placeMark())
            {
LABEL_359:
              v258 = 0;
              return v258 & 1;
            }

            if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
            {
              v135 = *(this + 2);
              while (1)
              {
                v136 = *(this + 3);
                if (v135 >= v136)
                {
                  v137 = *(this + 1);
                  v138 = v135 - v137;
                  v139 = (v135 - v137) >> 3;
                  v140 = v139 + 1;
                  if ((v139 + 1) >> 61)
                  {
                    goto LABEL_362;
                  }

                  v141 = v136 - v137;
                  if (v141 >> 2 > v140)
                  {
                    v140 = v141 >> 2;
                  }

                  if (v141 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v142 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v142 = v140;
                  }

                  if (v142)
                  {
                    sub_25AD28710(v142);
                  }

                  v143 = (v135 - v137) >> 3;
                  v144 = (8 * v139);
                  v145 = (8 * v139 - 8 * v143);
                  *v144 = 0;
                  v135 = (v144 + 1);
                  memcpy(v145, v137, v138);
                  v146 = *(this + 1);
                  *(this + 1) = v145;
                  *(this + 2) = v135;
                  *(this + 3) = 0;
                  if (v146)
                  {
                    operator delete(v146);
                  }
                }

                else
                {
                  *v135 = 0;
                  v135 += 8;
                }

                *(this + 2) = v135;
                v148 = *(a2 + 1);
                v147 = *(a2 + 2);
                v149 = *a2;
                v150 = 0;
                v151 = 0;
                v152 = v148 > 0xFFFFFFFFFFFFFFF5 || v148 + 10 > v147;
                if (v152)
                {
                  break;
                }

                v158 = 0;
                v159 = (v149 + v148);
                v160 = v148 + 1;
                while (1)
                {
                  v156 = v160;
                  *(a2 + 1) = v160;
                  v161 = *v159++;
                  v158 |= (v161 & 0x7F) << v150;
                  if ((v161 & 0x80) == 0)
                  {
                    break;
                  }

                  v150 += 7;
                  ++v160;
                  v152 = v151++ > 8;
                  if (v152)
                  {
                    goto LABEL_184;
                  }
                }

LABEL_187:
                *(v135 - 1) = v158;
                if (v156 >= v147 || (*(a2 + 24) & 1) != 0)
                {
                  goto LABEL_324;
                }
              }

              v158 = 0;
              v153 = (v149 + v148);
              v154 = v147 - v148;
              if (v147 < v148)
              {
                v154 = 0;
              }

              v155 = v148 + 1;
              while (v154)
              {
                v156 = v155;
                v157 = *v153;
                *(a2 + 1) = v156;
                v158 |= (v157 & 0x7F) << v150;
                if ((v157 & 0x80) == 0)
                {
                  if (*(a2 + 24))
                  {
                    v158 = 0;
                  }

                  goto LABEL_187;
                }

                v150 += 7;
                ++v153;
                --v154;
                v155 = v156 + 1;
                v152 = v151++ > 8;
                if (v152)
                {
LABEL_184:
                  v158 = 0;
                  goto LABEL_187;
                }
              }

              *(a2 + 24) = 1;
              *(v135 - 1) = 0;
            }

            goto LABEL_324;
          }

          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_359;
            }

            v49 = *(a2 + 1);
            v50 = *(a2 + 2);
            while (v49 < v50 && (*(a2 + 24) & 1) == 0)
            {
              v52 = *(this + 5);
              v51 = *(this + 6);
              if (v52 >= v51)
              {
                v54 = *(this + 4);
                v55 = v52 - v54;
                v56 = (v52 - v54) >> 2;
                v57 = v56 + 1;
                if ((v56 + 1) >> 62)
                {
                  goto LABEL_361;
                }

                v58 = v51 - v54;
                if (v58 >> 1 > v57)
                {
                  v57 = v58 >> 1;
                }

                if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v59 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v59 = v57;
                }

                if (v59)
                {
                  sub_25AD288E8(v59);
                }

                v60 = (v52 - v54) >> 2;
                v61 = (4 * v56);
                v62 = (4 * v56 - 4 * v60);
                *v61 = 0;
                v53 = v61 + 1;
                memcpy(v62, v54, v55);
                v63 = *(this + 4);
                *(this + 4) = v62;
                *(this + 5) = v53;
                *(this + 6) = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                *v52 = 0;
                v53 = v52 + 4;
              }

              *(this + 5) = v53;
              v64 = *(a2 + 1);
              if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
              {
                *(a2 + 24) = 1;
                break;
              }

              *(v53 - 1) = *(*a2 + v64);
              v50 = *(a2 + 2);
              v49 = *(a2 + 1) + 4;
              *(a2 + 1) = v49;
            }

LABEL_324:
            PB::Reader::recallMark();
            goto LABEL_353;
          }

          v220 = *(this + 5);
          v219 = *(this + 6);
          if (v220 >= v219)
          {
            v228 = *(this + 4);
            v229 = v220 - v228;
            v230 = (v220 - v228) >> 2;
            v231 = v230 + 1;
            if ((v230 + 1) >> 62)
            {
LABEL_361:
              sub_25AAE66B8();
            }

            v232 = v219 - v228;
            if (v232 >> 1 > v231)
            {
              v231 = v232 >> 1;
            }

            if (v232 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v233 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v233 = v231;
            }

            if (v233)
            {
              sub_25AD288E8(v233);
            }

            v253 = (v220 - v228) >> 2;
            v254 = (4 * v230);
            v255 = (4 * v230 - 4 * v253);
            *v254 = 0;
            v221 = v254 + 1;
            memcpy(v255, v228, v229);
            v256 = *(this + 4);
            *(this + 4) = v255;
            *(this + 5) = v221;
            *(this + 6) = 0;
            if (v256)
            {
              operator delete(v256);
            }
          }

          else
          {
            *v220 = 0;
            v221 = v220 + 4;
          }

          *(this + 5) = v221;
          v257 = *(a2 + 1);
          if (v257 > 0xFFFFFFFFFFFFFFFBLL || v257 + 4 > *(a2 + 2))
          {
LABEL_346:
            *(a2 + 24) = 1;
            goto LABEL_353;
          }

          *(v221 - 1) = *(*a2 + v257);
          goto LABEL_348;
        }

        switch(v22)
        {
          case 0xCE:
            *(this + 38) |= 1u;
            v121 = *(a2 + 1);
            v120 = *(a2 + 2);
            v122 = *a2;
            if (v121 > 0xFFFFFFFFFFFFFFF5 || v121 + 10 > v120)
            {
              v198 = 0;
              v199 = 0;
              v125 = 0;
              v200 = (v122 + v121);
              v17 = v120 >= v121;
              v201 = v120 - v121;
              if (!v17)
              {
                v201 = 0;
              }

              v202 = v121 + 1;
              while (1)
              {
                if (!v201)
                {
                  v125 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_316;
                }

                v203 = *v200;
                *(a2 + 1) = v202;
                v125 |= (v203 & 0x7F) << v198;
                if ((v203 & 0x80) == 0)
                {
                  break;
                }

                v198 += 7;
                ++v200;
                --v201;
                ++v202;
                v152 = v199++ > 8;
                if (v152)
                {
LABEL_245:
                  v125 = 0;
                  goto LABEL_316;
                }
              }

              if (*(a2 + 24))
              {
                v125 = 0;
              }
            }

            else
            {
              v123 = 0;
              v124 = 0;
              v125 = 0;
              v126 = (v122 + v121);
              v127 = v121 + 1;
              while (1)
              {
                *(a2 + 1) = v127;
                v128 = *v126++;
                v125 |= (v128 & 0x7F) << v123;
                if ((v128 & 0x80) == 0)
                {
                  break;
                }

                v123 += 7;
                ++v127;
                v152 = v124++ > 8;
                if (v152)
                {
                  goto LABEL_245;
                }
              }
            }

LABEL_316:
            *(this + 7) = v125;
            goto LABEL_353;
          case 0xCF:
            *(this + 38) |= 2u;
            v93 = *(a2 + 1);
            v92 = *(a2 + 2);
            v94 = *a2;
            if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
            {
              v180 = 0;
              v181 = 0;
              v97 = 0;
              v182 = (v94 + v93);
              v17 = v92 >= v93;
              v183 = v92 - v93;
              if (!v17)
              {
                v183 = 0;
              }

              v184 = v93 + 1;
              while (1)
              {
                if (!v183)
                {
                  v97 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_307;
                }

                v185 = *v182;
                *(a2 + 1) = v184;
                v97 |= (v185 & 0x7F) << v180;
                if ((v185 & 0x80) == 0)
                {
                  break;
                }

                v180 += 7;
                ++v182;
                --v183;
                ++v184;
                v152 = v181++ > 8;
                if (v152)
                {
LABEL_221:
                  v97 = 0;
                  goto LABEL_307;
                }
              }

              if (*(a2 + 24))
              {
                v97 = 0;
              }
            }

            else
            {
              v95 = 0;
              v96 = 0;
              v97 = 0;
              v98 = (v94 + v93);
              v99 = v93 + 1;
              while (1)
              {
                *(a2 + 1) = v99;
                v100 = *v98++;
                v97 |= (v100 & 0x7F) << v95;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v95 += 7;
                ++v99;
                v152 = v96++ > 8;
                if (v152)
                {
                  goto LABEL_221;
                }
              }
            }

LABEL_307:
            *(this + 8) = v97;
            goto LABEL_353;
          case 0xD0:
            *(this + 38) |= 0x20000u;
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

            *(this + 149) = v29;
            goto LABEL_353;
        }
      }

      else
      {
        if (v22 > 200)
        {
          if (v22 == 201)
          {
            *(this + 38) |= 0x1000u;
            v111 = *(a2 + 1);
            v110 = *(a2 + 2);
            v112 = *a2;
            if (v111 > 0xFFFFFFFFFFFFFFF5 || v111 + 10 > v110)
            {
              v192 = 0;
              v193 = 0;
              v115 = 0;
              v194 = (v112 + v111);
              v17 = v110 >= v111;
              v195 = v110 - v111;
              if (!v17)
              {
                v195 = 0;
              }

              v196 = v111 + 1;
              while (1)
              {
                if (!v195)
                {
                  LODWORD(v115) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_313;
                }

                v197 = *v194;
                *(a2 + 1) = v196;
                v115 |= (v197 & 0x7F) << v192;
                if ((v197 & 0x80) == 0)
                {
                  break;
                }

                v192 += 7;
                ++v194;
                --v195;
                ++v196;
                v152 = v193++ > 8;
                if (v152)
                {
LABEL_237:
                  LODWORD(v115) = 0;
                  goto LABEL_313;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v115) = 0;
              }
            }

            else
            {
              v113 = 0;
              v114 = 0;
              v115 = 0;
              v116 = (v112 + v111);
              v117 = v111 + 1;
              while (1)
              {
                *(a2 + 1) = v117;
                v118 = *v116++;
                v115 |= (v118 & 0x7F) << v113;
                if ((v118 & 0x80) == 0)
                {
                  break;
                }

                v113 += 7;
                ++v117;
                v152 = v114++ > 8;
                if (v152)
                {
                  goto LABEL_237;
                }
              }
            }

LABEL_313:
            *(this + 33) = v115;
            goto LABEL_353;
          }

          if (v22 == 202)
          {
            *(this + 38) |= 4u;
            v75 = *(a2 + 1);
            v74 = *(a2 + 2);
            v76 = *a2;
            if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v74)
            {
              v168 = 0;
              v169 = 0;
              v79 = 0;
              v170 = (v76 + v75);
              v17 = v74 >= v75;
              v171 = v74 - v75;
              if (!v17)
              {
                v171 = 0;
              }

              v172 = v75 + 1;
              while (1)
              {
                if (!v171)
                {
                  v79 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_301;
                }

                v173 = *v170;
                *(a2 + 1) = v172;
                v79 |= (v173 & 0x7F) << v168;
                if ((v173 & 0x80) == 0)
                {
                  break;
                }

                v168 += 7;
                ++v170;
                --v171;
                ++v172;
                v152 = v169++ > 8;
                if (v152)
                {
LABEL_205:
                  v79 = 0;
                  goto LABEL_301;
                }
              }

              if (*(a2 + 24))
              {
                v79 = 0;
              }
            }

            else
            {
              v77 = 0;
              v78 = 0;
              v79 = 0;
              v80 = (v76 + v75);
              v81 = v75 + 1;
              while (1)
              {
                *(a2 + 1) = v81;
                v82 = *v80++;
                v79 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                ++v81;
                v152 = v78++ > 8;
                if (v152)
                {
                  goto LABEL_205;
                }
              }
            }

LABEL_301:
            *(this + 9) = v79;
            goto LABEL_353;
          }

          *(this + 38) |= 0x2000u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_346;
          }

          *(this + 34) = *(*a2 + v24);
          goto LABEL_348;
        }

        if (v22 == 101)
        {
          *(this + 38) |= 0x10000u;
          v130 = *(a2 + 1);
          if (v130 >= *(a2 + 2))
          {
            v133 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v131 = v130 + 1;
            v132 = *(*a2 + v130);
            *(a2 + 1) = v131;
            v133 = v132 != 0;
          }

          *(this + 148) = v133;
          goto LABEL_353;
        }

        if (v22 == 102)
        {
          *(this + 38) |= 0x40u;
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
          {
            v213 = 0;
            v214 = 0;
            v44 = 0;
            v215 = (v41 + v40);
            v17 = v39 >= v40;
            v216 = v39 - v40;
            if (!v17)
            {
              v216 = 0;
            }

            v217 = v40 + 1;
            while (1)
            {
              if (!v216)
              {
                v44 = 0;
                *(a2 + 24) = 1;
                goto LABEL_322;
              }

              v218 = *v215;
              *(a2 + 1) = v217;
              v44 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v213 += 7;
              ++v215;
              --v216;
              ++v217;
              v152 = v214++ > 8;
              if (v152)
              {
LABEL_267:
                v44 = 0;
                goto LABEL_322;
              }
            }

            if (*(a2 + 24))
            {
              v44 = 0;
            }
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v152 = v43++ > 8;
              if (v152)
              {
                goto LABEL_267;
              }
            }
          }

LABEL_322:
          *(this + 13) = v44;
          goto LABEL_353;
        }
      }
    }

    else if (v22 > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          *(this + 38) |= 0x8000u;
          v134 = *(a2 + 1);
          if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(a2 + 2))
          {
            goto LABEL_346;
          }

          *(this + 36) = *(*a2 + v134);
        }

        else
        {
          *(this + 38) |= 0x200u;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_346;
          }

          *(this + 30) = *(*a2 + v48);
        }

        goto LABEL_348;
      }

      switch(v22)
      {
        case 8:
          *(this + 38) |= 0x400u;
          v119 = *(a2 + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
          {
            goto LABEL_346;
          }

          *(this + 31) = *(*a2 + v119);
          goto LABEL_348;
        case 9:
          *(this + 38) |= 0x20u;
          v84 = *(a2 + 1);
          v83 = *(a2 + 2);
          v85 = *a2;
          if (v84 > 0xFFFFFFFFFFFFFFF5 || v84 + 10 > v83)
          {
            v174 = 0;
            v175 = 0;
            v88 = 0;
            v176 = (v85 + v84);
            v17 = v83 >= v84;
            v177 = v83 - v84;
            if (!v17)
            {
              v177 = 0;
            }

            v178 = v84 + 1;
            while (1)
            {
              if (!v177)
              {
                v88 = 0;
                *(a2 + 24) = 1;
                goto LABEL_304;
              }

              v179 = *v176;
              *(a2 + 1) = v178;
              v88 |= (v179 & 0x7F) << v174;
              if ((v179 & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              ++v176;
              --v177;
              ++v178;
              v152 = v175++ > 8;
              if (v152)
              {
LABEL_213:
                v88 = 0;
                goto LABEL_304;
              }
            }

            if (*(a2 + 24))
            {
              v88 = 0;
            }
          }

          else
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            while (1)
            {
              *(a2 + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              ++v90;
              v152 = v87++ > 8;
              if (v152)
              {
                goto LABEL_213;
              }
            }
          }

LABEL_304:
          *(this + 12) = v88;
          goto LABEL_353;
        case 0xA:
          *(this + 38) |= 0x100u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_346;
          }

          *(this + 29) = *(*a2 + v25);
          goto LABEL_348;
      }
    }

    else
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 38) |= 0x800u;
          v102 = *(a2 + 1);
          v101 = *(a2 + 2);
          v103 = *a2;
          if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
          {
            v186 = 0;
            v187 = 0;
            v106 = 0;
            v188 = (v103 + v102);
            v17 = v101 >= v102;
            v189 = v101 - v102;
            if (!v17)
            {
              v189 = 0;
            }

            v190 = v102 + 1;
            while (1)
            {
              if (!v189)
              {
                LODWORD(v106) = 0;
                *(a2 + 24) = 1;
                goto LABEL_310;
              }

              v191 = *v188;
              *(a2 + 1) = v190;
              v106 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                break;
              }

              v186 += 7;
              ++v188;
              --v189;
              ++v190;
              v152 = v187++ > 8;
              if (v152)
              {
LABEL_229:
                LODWORD(v106) = 0;
                goto LABEL_310;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v106) = 0;
            }
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            while (1)
            {
              *(a2 + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              ++v108;
              v152 = v105++ > 8;
              if (v152)
              {
                goto LABEL_229;
              }
            }
          }

LABEL_310:
          *(this + 32) = v106;
          goto LABEL_353;
        }

        if (v22 == 4)
        {
          *(this + 38) |= 0x10u;
          v66 = *(a2 + 1);
          v65 = *(a2 + 2);
          v67 = *a2;
          if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
          {
            v162 = 0;
            v163 = 0;
            v70 = 0;
            v164 = (v67 + v66);
            v17 = v65 >= v66;
            v165 = v65 - v66;
            if (!v17)
            {
              v165 = 0;
            }

            v166 = v66 + 1;
            while (1)
            {
              if (!v165)
              {
                v70 = 0;
                *(a2 + 24) = 1;
                goto LABEL_298;
              }

              v167 = *v164;
              *(a2 + 1) = v166;
              v70 |= (v167 & 0x7F) << v162;
              if ((v167 & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              ++v164;
              --v165;
              ++v166;
              v152 = v163++ > 8;
              if (v152)
              {
LABEL_197:
                v70 = 0;
                goto LABEL_298;
              }
            }

            if (*(a2 + 24))
            {
              v70 = 0;
            }
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            while (1)
            {
              *(a2 + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              ++v72;
              v152 = v69++ > 8;
              if (v152)
              {
                goto LABEL_197;
              }
            }
          }

LABEL_298:
          *(this + 11) = v70;
          goto LABEL_353;
        }

        *(this + 38) |= 0x4000u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_346;
        }

        *(this + 35) = *(*a2 + v23);
        goto LABEL_348;
      }

      if (v22 == 1)
      {
        *(this + 38) |= 0x80u;
        v129 = *(a2 + 1);
        if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(a2 + 2))
        {
          goto LABEL_346;
        }

        *(this + 28) = *(*a2 + v129);
LABEL_348:
        *(a2 + 1) += 4;
        goto LABEL_353;
      }

      if (v22 == 2)
      {
        *(this + 38) |= 8u;
        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v30)
        {
          v207 = 0;
          v208 = 0;
          v35 = 0;
          v209 = (v32 + v31);
          v17 = v30 >= v31;
          v210 = v30 - v31;
          if (!v17)
          {
            v210 = 0;
          }

          v211 = v31 + 1;
          while (1)
          {
            if (!v210)
            {
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_319;
            }

            v212 = *v209;
            *(a2 + 1) = v211;
            v35 |= (v212 & 0x7F) << v207;
            if ((v212 & 0x80) == 0)
            {
              break;
            }

            v207 += 7;
            ++v209;
            --v210;
            ++v211;
            v152 = v208++ > 8;
            if (v152)
            {
LABEL_259:
              v35 = 0;
              goto LABEL_319;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }
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
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v152 = v34++ > 8;
            if (v152)
            {
              goto LABEL_259;
            }
          }
        }

LABEL_319:
        *(this + 10) = v35;
        goto LABEL_353;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_359;
    }

LABEL_353:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v258 = v4 ^ 1;
  return v258 & 1;
}

uint64_t CMMsl::KappaPeakDetectorMapResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 152);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 112));
    v4 = *(v3 + 152);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x800) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(v3 + 128);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 152);
  if ((v4 & 0x200) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 152);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(v3 + 96);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 152);
  if ((v4 & 0x10000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(v3 + 148);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v19 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 152) & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_39:
  v18 = *(v3 + 132);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  if ((v4 & 0x2000) != 0)
  {
LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 136));
  }

LABEL_17:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeVarInt(a2);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10);
  }

  v11 = *(v3 + 152);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v21 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 152) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_44;
  }

  v20 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v11 = *(v3 + 152);
  if ((v11 & 2) != 0)
  {
    goto LABEL_43;
  }

LABEL_25:
  if ((v11 & 0x20000) == 0)
  {
    return this;
  }

LABEL_44:
  v22 = *(v3 + 149);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::KappaPeakDetectorMapResult::hash_value(CMMsl::KappaPeakDetectorMapResult *this)
{
  v2 = *(this + 38);
  if ((v2 & 0x80) != 0)
  {
    v20 = *(this + 28);
    v21 = LODWORD(v20);
    if (v20 == 0.0)
    {
      v21 = 0;
    }

    v39 = v21;
    if ((v2 & 8) != 0)
    {
LABEL_3:
      v38 = *(this + 10);
      if ((v2 & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v39 = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  if ((v2 & 0x800) != 0)
  {
LABEL_4:
    v37 = *(this + 32);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v37 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v36 = *(this + 11);
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_6;
    }

LABEL_37:
    v35 = 0;
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_9;
    }

LABEL_38:
    v34 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v33 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v10 = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_36:
  v36 = 0;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v3 = *(this + 35);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v35 = v4;
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_38;
  }

LABEL_9:
  v5 = *(this + 36);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v34 = v6;
  if ((v2 & 0x200) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v7 = *(this + 30);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v33 = v8;
  if ((v2 & 0x400) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v9 = *(this + 31);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = LODWORD(v9);
  }

  if ((v2 & 0x20) != 0)
  {
LABEL_19:
    v11 = *(this + 12);
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_20;
    }

LABEL_42:
    v13 = 0;
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_41:
  v11 = 0;
  if ((v2 & 0x100) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  v12 = *(this + 29);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = LODWORD(v12);
  }

  if ((v2 & 0x10000) != 0)
  {
LABEL_24:
    v14 = *(this + 148);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  v14 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_25:
    v15 = *(this + 13);
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = 0;
  if ((v2 & 0x1000) != 0)
  {
LABEL_26:
    v16 = *(this + 33);
    if ((v2 & 4) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  v16 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_27:
    v17 = *(this + 9);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_28;
    }

LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v17 = 0;
  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_47;
  }

LABEL_28:
  v18 = *(this + 34);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

LABEL_48:
  v22 = *(this + 1);
  v23 = *(this + 2);
  v24 = PBHashBytes();
  v25 = *(this + 4);
  v26 = *(this + 5);
  v27 = PBHashBytes();
  v28 = *(this + 38);
  if ((v28 & 1) == 0)
  {
    v29 = 0;
    if ((v28 & 2) != 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v30 = 0;
    if ((v28 & 0x20000) != 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    v31 = 0;
    return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v24 ^ v27 ^ v29 ^ v30 ^ v31;
  }

  v29 = *(this + 7);
  if ((v28 & 2) == 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  v30 = *(this + 8);
  if ((v28 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

LABEL_51:
  v31 = *(this + 149);
  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v24 ^ v27 ^ v29 ^ v30 ^ v31;
}

void CMMsl::KappaPulseDeltaV::~KappaPulseDeltaV(CMMsl::KappaPulseDeltaV *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaPulseDeltaV::KappaPulseDeltaV(uint64_t this, const CMMsl::KappaPulseDeltaV *a2)
{
  *this = &unk_286C21308;
  *(this + 72) = 0;
  *(this + 112) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 112) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 28);
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
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 112) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 112) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 0x80u;
  *(this + 112) = v3;
  *(this + 64) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a2 + 21);
  v3 |= 0x1000u;
  *(this + 112) = v3;
  *(this + 84) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a2 + 23);
  v3 |= 0x4000u;
  *(this + 112) = v3;
  *(this + 92) = v9;
  v2 = *(a2 + 28);
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
  v10 = *(a2 + 25);
  v3 |= 0x10000u;
  *(this + 112) = v3;
  *(this + 100) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 19);
  v3 |= 0x400u;
  *(this + 112) = v3;
  *(this + 76) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 22);
  v3 |= 0x2000u;
  *(this + 112) = v3;
  *(this + 88) = v12;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = *(a2 + 24);
  v3 |= 0x8000u;
  *(this + 112) = v3;
  *(this + 96) = v13;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(a2 + 26);
  v3 |= 0x20000u;
  *(this + 112) = v3;
  *(this + 104) = v14;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = *(a2 + 20);
  v3 |= 0x800u;
  *(this + 112) = v3;
  *(this + 80) = v15;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 17);
  v3 |= 0x100u;
  *(this + 112) = v3;
  *(this + 68) = v16;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 108);
  v3 |= 0x40000u;
  *(this + 112) = v3;
  *(this + 108) = v17;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 18);
  v3 |= 0x200u;
  *(this + 112) = v3;
  *(this + 72) = v18;
  v2 = *(a2 + 28);
  if ((v2 & 2) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 2);
  v3 |= 2u;
  *(this + 112) = v3;
  *(this + 16) = v19;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 112) = v3;
  *(this + 48) = v20;
  v2 = *(a2 + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_40:
    v22 = *(a2 + 3);
    *(this + 112) = v3 | 4;
    *(this + 24) = v22;
    return this;
  }

LABEL_39:
  v21 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 112) = v3;
  *(this + 40) = v21;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_40;
  }

  return this;
}

CMMsl *CMMsl::KappaPulseDeltaV::operator=(CMMsl *a1, const CMMsl::KappaPulseDeltaV *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseDeltaV::KappaPulseDeltaV(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaPulseDeltaV *a2, CMMsl::KappaPulseDeltaV *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v8;
  v9 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v9;
  v10 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v11;
  v12 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  v14 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v14;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  LOBYTE(v6) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v6;
  LODWORD(v6) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  v17 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v17;
  v18 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  return result;
}

float CMMsl::KappaPulseDeltaV::KappaPulseDeltaV(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21308;
  *(a1 + 72) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 68);
  *(a1 + 68) = result;
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

CMMsl *CMMsl::KappaPulseDeltaV::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseDeltaV::KappaPulseDeltaV(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaPulseDeltaV::formatText(CMMsl::KappaPulseDeltaV *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "accelMagnitude", *(this + 16));
    v5 = *(this + 28);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "deltaVThisImpact", *(this + 17));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(this + 1);
  PB::TextFormatter::format(a2, "dimensions");
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "epochCounter");
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(this + 3);
  PB::TextFormatter::format(a2, "jHG");
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(this + 4);
  PB::TextFormatter::format(a2, "jImpactStart");
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(this + 5);
  PB::TextFormatter::format(a2, "jLG");
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(this + 6);
  PB::TextFormatter::format(a2, "nextTimestamp");
  v5 = *(this + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(this + 108);
  PB::TextFormatter::format(a2, "partOfHgPath");
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(this + 18);
  PB::TextFormatter::format(a2, "pointType");
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "runningArclengthOverEpoch", *(this + 19));
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "runningArclengthThisImpact", *(this + 20));
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "runningDeltaVXOverEpoch", *(this + 21));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "runningDeltaVXThisImpact", *(this + 22));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "runningDeltaVYOverEpoch", *(this + 23));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "runningDeltaVYThisImpact", *(this + 24));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "runningDeltaVZOverEpoch", *(this + 25));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "runningDeltaVZThisImpact", *(this + 26));
  if ((*(this + 28) & 0x40) != 0)
  {
LABEL_20:
    v6 = *(this + 7);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaPulseDeltaV::readFrom(CMMsl::KappaPulseDeltaV *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_221:
    v144 = v4 ^ 1;
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
        goto LABEL_221;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 28) |= 0x40u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v116 = 0;
            v117 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v118 = (v23 + v22);
            v119 = v2 - v22;
            v120 = v22 + 1;
            while (1)
            {
              if (!v119)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_204;
              }

              v121 = v120;
              v122 = *v118;
              *(a2 + 1) = v121;
              v26 |= (v122 & 0x7F) << v116;
              if ((v122 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              ++v118;
              --v119;
              v120 = v121 + 1;
              v14 = v117++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_203:
                v2 = v121;
                goto LABEL_204;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_203;
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
              goto LABEL_204;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_204:
          *(this + 7) = v26;
          break;
        case 2u:
          *(this + 28) |= 8u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v123 = 0;
            v124 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v125 = (v63 + v62);
            v126 = v2 - v62;
            v127 = v62 + 1;
            while (1)
            {
              if (!v126)
              {
                v66 = 0;
                *(a2 + 24) = 1;
                goto LABEL_208;
              }

              v128 = v127;
              v129 = *v125;
              *(a2 + 1) = v128;
              v66 |= (v129 & 0x7F) << v123;
              if ((v129 & 0x80) == 0)
              {
                break;
              }

              v123 += 7;
              ++v125;
              --v126;
              v127 = v128 + 1;
              v14 = v124++ > 8;
              if (v14)
              {
                v66 = 0;
LABEL_207:
                v2 = v128;
                goto LABEL_208;
              }
            }

            if (*(a2 + 24))
            {
              v66 = 0;
            }

            goto LABEL_207;
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
              goto LABEL_208;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          v66 = 0;
LABEL_208:
          *(this + 4) = -(v66 & 1) ^ (v66 >> 1);
          break;
        case 3u:
          *(this + 28) |= 1u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v102 = 0;
            v103 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v104 = (v47 + v46);
            v105 = v2 - v46;
            v106 = v46 + 1;
            while (1)
            {
              if (!v105)
              {
                v50 = 0;
                *(a2 + 24) = 1;
                goto LABEL_196;
              }

              v107 = v106;
              v108 = *v104;
              *(a2 + 1) = v107;
              v50 |= (v108 & 0x7F) << v102;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              ++v104;
              --v105;
              v106 = v107 + 1;
              v14 = v103++ > 8;
              if (v14)
              {
                v50 = 0;
LABEL_195:
                v2 = v107;
                goto LABEL_196;
              }
            }

            if (*(a2 + 24))
            {
              v50 = 0;
            }

            goto LABEL_195;
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
              goto LABEL_196;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          v50 = 0;
LABEL_196:
          *(this + 1) = v50;
          break;
        case 4u:
          *(this + 28) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_176;
        case 5u:
          *(this + 28) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_176;
        case 6u:
          *(this + 28) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_176;
        case 7u:
          *(this + 28) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_176;
        case 8u:
          *(this + 28) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_176;
        case 9u:
          *(this + 28) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_176;
        case 0xAu:
          *(this + 28) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_176;
        case 0xBu:
          *(this + 28) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_176;
        case 0xCu:
          *(this + 28) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_176;
        case 0xDu:
          *(this + 28) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_108:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 17) = *(*a2 + v2);
LABEL_176:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        case 0xEu:
          *(this + 28) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v79 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v78 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v79 = v78 != 0;
          }

          *(this + 108) = v79;
          break;
        case 0xFu:
          *(this + 28) |= 0x200u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v95 = 0;
            v96 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v97 = (v39 + v38);
            v98 = v2 - v38;
            v99 = v38 + 1;
            while (1)
            {
              if (!v98)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_192;
              }

              v100 = v99;
              v101 = *v97;
              *(a2 + 1) = v100;
              v42 |= (v101 & 0x7F) << v95;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              ++v97;
              --v98;
              v99 = v100 + 1;
              v14 = v96++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_191:
                v2 = v100;
                goto LABEL_192;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_191;
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
              goto LABEL_192;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_192:
          *(this + 18) = v42;
          break;
        case 0x10u:
          *(this + 28) |= 2u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v109 = 0;
            v110 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v111 = (v55 + v54);
            v112 = v2 - v54;
            v113 = v54 + 1;
            while (1)
            {
              if (!v112)
              {
                v58 = 0;
                *(a2 + 24) = 1;
                goto LABEL_200;
              }

              v114 = v113;
              v115 = *v111;
              *(a2 + 1) = v114;
              v58 |= (v115 & 0x7F) << v109;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v111;
              --v112;
              v113 = v114 + 1;
              v14 = v110++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_199:
                v2 = v114;
                goto LABEL_200;
              }
            }

            if (*(a2 + 24))
            {
              v58 = 0;
            }

            goto LABEL_199;
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
              goto LABEL_200;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_200:
          *(this + 2) = v58;
          break;
        case 0x11u:
          *(this + 28) |= 0x20u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v88 = 0;
            v89 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v90 = (v31 + v30);
            v91 = v2 - v30;
            v92 = v30 + 1;
            while (1)
            {
              if (!v91)
              {
                v34 = 0;
                *(a2 + 24) = 1;
                goto LABEL_188;
              }

              v93 = v92;
              v94 = *v90;
              *(a2 + 1) = v93;
              v34 |= (v94 & 0x7F) << v88;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              ++v90;
              --v91;
              v92 = v93 + 1;
              v14 = v89++ > 8;
              if (v14)
              {
                v34 = 0;
LABEL_187:
                v2 = v93;
                goto LABEL_188;
              }
            }

            if (*(a2 + 24))
            {
              v34 = 0;
            }

            goto LABEL_187;
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
              goto LABEL_188;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_188:
          *(this + 6) = v34;
          break;
        case 0x12u:
          *(this + 28) |= 0x10u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v130 = 0;
            v131 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v132 = (v71 + v70);
            v133 = v2 - v70;
            v134 = v70 + 1;
            while (1)
            {
              if (!v133)
              {
                v74 = 0;
                *(a2 + 24) = 1;
                goto LABEL_212;
              }

              v135 = v134;
              v136 = *v132;
              *(a2 + 1) = v135;
              v74 |= (v136 & 0x7F) << v130;
              if ((v136 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              ++v132;
              --v133;
              v134 = v135 + 1;
              v14 = v131++ > 8;
              if (v14)
              {
                v74 = 0;
LABEL_211:
                v2 = v135;
                goto LABEL_212;
              }
            }

            if (*(a2 + 24))
            {
              v74 = 0;
            }

            goto LABEL_211;
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
              goto LABEL_212;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          v74 = 0;
LABEL_212:
          *(this + 5) = v74;
          break;
        case 0x13u:
          *(this + 28) |= 4u;
          v80 = *(a2 + 1);
          v2 = *(a2 + 2);
          v81 = *a2;
          if (v80 > 0xFFFFFFFFFFFFFFF5 || v80 + 10 > v2)
          {
            v137 = 0;
            v138 = 0;
            v84 = 0;
            if (v2 <= v80)
            {
              v2 = *(a2 + 1);
            }

            v139 = (v81 + v80);
            v140 = v2 - v80;
            v141 = v80 + 1;
            while (1)
            {
              if (!v140)
              {
                v84 = 0;
                *(a2 + 24) = 1;
                goto LABEL_216;
              }

              v142 = v141;
              v143 = *v139;
              *(a2 + 1) = v142;
              v84 |= (v143 & 0x7F) << v137;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              ++v139;
              --v140;
              v141 = v142 + 1;
              v14 = v138++ > 8;
              if (v14)
              {
                v84 = 0;
LABEL_215:
                v2 = v142;
                goto LABEL_216;
              }
            }

            if (*(a2 + 24))
            {
              v84 = 0;
            }

            goto LABEL_215;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = (v81 + v80);
          v86 = v80 + 1;
          do
          {
            v2 = v86;
            *(a2 + 1) = v86;
            v87 = *v85++;
            v84 |= (v87 & 0x7F) << v82;
            if ((v87 & 0x80) == 0)
            {
              goto LABEL_216;
            }

            v82 += 7;
            ++v86;
            v14 = v83++ > 8;
          }

          while (!v14);
          v84 = 0;
LABEL_216:
          *(this + 3) = v84;
          break;
        default:
          goto LABEL_17;
      }

LABEL_217:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_221;
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
        goto LABEL_221;
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
      goto LABEL_217;
    }

    v144 = 0;
  }

  return v144 & 1;
}

uint64_t CMMsl::KappaPulseDeltaV::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(this + 56);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 112);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeSInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 112);
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
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = *(v3 + 108);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 2) == 0)
  {
LABEL_17:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v12 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 112) & 4) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  v11 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_39:
  v13 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaPulseDeltaV::hash_value(CMMsl::KappaPulseDeltaV *this)
{
  v1 = *(this + 28);
  if ((v1 & 0x40) != 0)
  {
    v2 = *(this + 7);
    if ((v1 & 8) != 0)
    {
LABEL_3:
      v3 = *(this + 4);
      if (v1)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (v1)
  {
LABEL_4:
    v4 = *(this + 1);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_5;
    }

LABEL_41:
    v6 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_8;
    }

LABEL_42:
    v8 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_11;
    }

LABEL_43:
    v10 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_14;
    }

LABEL_44:
    v12 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_17;
    }

LABEL_45:
    v14 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_20;
    }

LABEL_46:
    v16 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_23;
    }

LABEL_47:
    v18 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_26;
    }

LABEL_48:
    v20 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_49:
    v22 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_32;
    }

LABEL_50:
    v24 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_40:
  v4 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_5:
  v5 = *(this + 16);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_42;
  }

LABEL_8:
  v7 = *(this + 21);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_43;
  }

LABEL_11:
  v9 = *(this + 23);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_44;
  }

LABEL_14:
  v11 = *(this + 25);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_45;
  }

LABEL_17:
  v13 = *(this + 19);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_46;
  }

LABEL_20:
  v15 = *(this + 22);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_47;
  }

LABEL_23:
  v17 = *(this + 24);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_48;
  }

LABEL_26:
  v19 = *(this + 26);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_49;
  }

LABEL_29:
  v21 = *(this + 20);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_50;
  }

LABEL_32:
  v23 = *(this + 17);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x40000) != 0)
  {
LABEL_35:
    v25 = *(this + 108);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_36;
    }

LABEL_52:
    v26 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_51:
  v25 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_36:
  v26 = *(this + 18);
  if ((v1 & 2) != 0)
  {
LABEL_37:
    v27 = *(this + 2);
    goto LABEL_54;
  }

LABEL_53:
  v27 = 0;
LABEL_54:
  if ((v1 & 0x20) == 0)
  {
    v28 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_56;
    }

LABEL_59:
    v29 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_57;
    }

LABEL_60:
    v30 = 0;
    return v3 ^ v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

  v28 = *(this + 6);
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  v29 = *(this + 5);
  if ((v1 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_57:
  v30 = *(this + 3);
  return v3 ^ v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

void CMMsl::KappaPulseInertialAccel::~KappaPulseInertialAccel(CMMsl::KappaPulseInertialAccel *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::KappaPulseInertialAccel::KappaPulseInertialAccel(CMMsl::KappaPulseInertialAccel *this, const CMMsl::KappaPulseInertialAccel *a2)
{
  *this = &unk_286C21340;
  *(this + 20) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 9);
    v3 = 256;
    *(this + 40) = 256;
    *(this + 9) = v4;
    v2 = *(a2 + 40);
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
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 40);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 1) = v6;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_20:
    result = *(a2 + 5);
    *(this + 40) = v3 | 0x10;
    *(this + 5) = result;
    return result;
  }

LABEL_19:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 40) = v3;
  *(this + 8) = result;
  if ((*(a2 + 40) & 0x10) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CMMsl::KappaPulseInertialAccel::operator=(uint64_t a1, const CMMsl::KappaPulseInertialAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseInertialAccel::KappaPulseInertialAccel(v12, a2);
    v3 = v16;
    v4 = *(a1 + 32);
    v16 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v5;
    v6 = v15;
    v7 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(a1 + 32) = v6;
    *(a1 + 48) = v3;
    v8 = *(a1 + 80);
    *(a1 + 80) = v19;
    v19 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v9;
    v10 = *(a1 + 8);
    *(a1 + 8) = v13;
    v13 = v10;
    v14 = v7;
    v15 = v4;
    PB::Base::~Base(v12);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KappaPulseInertialAccel *a2, CMMsl::KappaPulseInertialAccel *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

double CMMsl::KappaPulseInertialAccel::KappaPulseInertialAccel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21340;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t CMMsl::KappaPulseInertialAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseInertialAccel::KappaPulseInertialAccel(v12, a2);
    v3 = v16;
    v4 = *(a1 + 32);
    v16 = *(a1 + 48);
    v5 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v5;
    v6 = v15;
    v7 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(a1 + 32) = v6;
    *(a1 + 48) = v3;
    v8 = *(a1 + 80);
    *(a1 + 80) = v19;
    v19 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v9;
    v10 = *(a1 + 8);
    *(a1 + 8) = v13;
    v13 = v10;
    v14 = v7;
    v15 = v4;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::KappaPulseInertialAccel::formatText(CMMsl::KappaPulseInertialAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "epochCounter");
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "inertialAccelX", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "inertialAccelY", *(this + 3));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "inertialAccelZ", *(this + 4));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 8));
  if ((*(this + 40) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(this + 9);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaPulseInertialAccel::readFrom(CMMsl::KappaPulseInertialAccel *this, PB::Reader *a2)
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
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
            goto LABEL_95;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_84;
        }

        if (v22 == 4)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_84;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 40) |= 0x100u;
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
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_90;
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
                v27 = 0;
                goto LABEL_89;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_89:
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_90:
          *(this + 9) = v27;
          goto LABEL_95;
        }

        if (v22 == 2)
        {
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_84;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 40) |= 1u;
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
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_94;
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
              v35 = 0;
              goto LABEL_93;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }

LABEL_93:
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
              v35 = 0;
              break;
            }
          }
        }

LABEL_94:
        *(this + 1) = v35;
        goto LABEL_95;
      }

      if (v22 == 6)
      {
        *(this + 40) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_66;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_84;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_84;
        case 8:
          *(this + 40) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_84;
        case 9:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_84:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_95;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_95:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::KappaPulseInertialAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if ((v4 & 0x100) != 0)
  {
    v5 = *(this + 72);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 64));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v3 + 40);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::KappaPulseInertialAccel::hash_value(CMMsl::KappaPulseInertialAccel *this)
{
  v1 = *(this + 40);
  if ((v1 & 0x100) == 0)
  {
    v2 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v4 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v2 = *(this + 9);
  if ((v1 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if (v1)
  {
LABEL_12:
    v6 = *(this + 1);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v7 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v8 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_29:
  v6 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  v7 = *(this + 6);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v8 = *(this + 7);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_19:
    v9 = *(this + 8);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    v10 = 0.0;
    return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
  }

LABEL_32:
  v9 = 0.0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v10 = *(this + 5);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
}

void CMMsl::KappaPulseInertialHgAccel::~KappaPulseInertialHgAccel(CMMsl::KappaPulseInertialHgAccel *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::KappaPulseInertialHgAccel::KappaPulseInertialHgAccel(CMMsl::KappaPulseInertialHgAccel *this, const CMMsl::KappaPulseInertialHgAccel *a2)
{
  *this = &unk_286C21378;
  *(this + 26) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 52) = 2048;
    *(this + 12) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 52) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 52) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 52) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 4) = v6;
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 52) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 52) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 52) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 52) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 52) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 52);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_26:
    result = *(a2 + 3);
    *(this + 52) = v3 | 4;
    *(this + 3) = result;
    return result;
  }

LABEL_25:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 52) = v3;
  *(this + 2) = result;
  if ((*(a2 + 52) & 4) != 0)
  {
    goto LABEL_26;
  }

  return result;
}

CMMsl *CMMsl::KappaPulseInertialHgAccel::operator=(CMMsl *a1, const CMMsl::KappaPulseInertialHgAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseInertialHgAccel::KappaPulseInertialHgAccel(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KappaPulseInertialHgAccel *a2, CMMsl::KappaPulseInertialHgAccel *a3)
{
  v3 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v14;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::KappaPulseInertialHgAccel::KappaPulseInertialHgAccel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21378;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

CMMsl *CMMsl::KappaPulseInertialHgAccel::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseInertialHgAccel::KappaPulseInertialHgAccel(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaPulseInertialHgAccel::formatText(CMMsl::KappaPulseInertialHgAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "bodyAccelX", *(this + 1));
    v5 = *(this + 52);
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

  PB::TextFormatter::format(a2, "bodyAccelY", *(this + 2));
  v5 = *(this + 52);
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
  PB::TextFormatter::format(a2, "bodyAccelZ", *(this + 3));
  v5 = *(this + 52);
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
  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "epochCounter");
  v5 = *(this + 52);
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
  PB::TextFormatter::format(a2, "inertialAccelX", *(this + 5));
  v5 = *(this + 52);
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
  PB::TextFormatter::format(a2, "inertialAccelY", *(this + 6));
  v5 = *(this + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "inertialAccelZ", *(this + 7));
  v5 = *(this + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 8));
  v5 = *(this + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 9));
  v5 = *(this + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 10));
  v5 = *(this + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 11));
  if ((*(this + 52) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaPulseInertialHgAccel::readFrom(CMMsl::KappaPulseInertialHgAccel *this, PB::Reader *a2)
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
            *(this + 52) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_78:
              *(a2 + 24) = 1;
              goto LABEL_107;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_96;
          case 0xB:
            *(this + 52) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_96;
          case 0xC:
            *(this + 52) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_96;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 52) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_96;
          case 8:
            *(this + 52) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_96;
          case 9:
            *(this + 52) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_96;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 52) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_96;
        case 5:
          *(this + 52) |= 8u;
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
                v35 = 0;
                *(a2 + 24) = 1;
                goto LABEL_106;
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
                v35 = 0;
                goto LABEL_105;
              }
            }

            if (*(a2 + 24))
            {
              v35 = 0;
            }

LABEL_105:
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
                v35 = 0;
                break;
              }
            }
          }

LABEL_106:
          *(this + 4) = v35;
          goto LABEL_107;
        case 6:
          *(this + 52) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_96;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 52) |= 0x800u;
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
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_102;
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
                v27 = 0;
                goto LABEL_101;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_101:
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_102:
          *(this + 12) = v27;
          goto LABEL_107;
        case 2:
          *(this + 52) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_96;
        case 3:
          *(this + 52) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 6) = *(*a2 + v2);
LABEL_96:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_107;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_107:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::KappaPulseInertialHgAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 104);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(this + 96);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 104);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 104);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 104);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 104);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 104);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 104);
  if ((v4 & 0x200) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 104);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 104);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 104);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 104) & 4) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 104);
  if ((v4 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v3 + 24);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::KappaPulseInertialHgAccel::hash_value(CMMsl::KappaPulseInertialHgAccel *this)
{
  v1 = *(this + 52);
  if ((v1 & 0x800) == 0)
  {
    v2 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_35:
    v3 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_36:
    v4 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_37:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  v2 = *(this + 12);
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_3:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v5 = *(this + 7);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_12:
    v6 = *(this + 4);
    if ((*(this + 52) & 0x100) != 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v7 = 0.0;
    if ((*(this + 52) & 0x200) != 0)
    {
      goto LABEL_16;
    }

LABEL_40:
    v8 = 0.0;
    if ((*(this + 52) & 0x400) != 0)
    {
      goto LABEL_19;
    }

LABEL_41:
    v9 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_22;
    }

LABEL_42:
    v10 = 0.0;
    if (v1)
    {
      goto LABEL_25;
    }

LABEL_43:
    v11 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_38:
  v6 = 0;
  if ((*(this + 52) & 0x100) == 0)
  {
    goto LABEL_39;
  }

LABEL_13:
  v7 = *(this + 9);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 52) & 0x200) == 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  v8 = *(this + 10);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 52) & 0x400) == 0)
  {
    goto LABEL_41;
  }

LABEL_19:
  v9 = *(this + 11);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  v10 = *(this + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_25:
  v11 = *(this + 1);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_28:
    v12 = *(this + 2);
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_31;
    }

LABEL_45:
    v13 = 0.0;
    return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13;
  }

LABEL_44:
  v12 = 0.0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  v13 = *(this + 3);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13;
}

void CMMsl::KappaPulseResult::~KappaPulseResult(CMMsl::KappaPulseResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaPulseResult::KappaPulseResult(CMMsl::KappaPulseResult *this, const CMMsl::KappaPulseResult *a2)
{
  *this = &unk_286C213B0;
  v2 = (this + 316);
  *(this + 81) = 0;
  *(this + 316) = 0;
  v3 = *(a2 + 324);
  if ((v3 & 8) != 0)
  {
    v5 = *(a2 + 312);
    v4 = 8;
    *(this + 324) = 8;
    *(this + 312) = v5;
    v3 = *(a2 + 324);
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if ((*(a2 + 324) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 76);
    v4 |= 2u;
    *(this + 324) = v4;
    *(this + 76) = result;
    v3 = *(a2 + 324);
  }

LABEL_6:
  if ((v3 & 4) != 0)
  {
    result = *(a2 + 77);
    v4 |= 4u;
    *(this + 324) = v4;
    *(this + 77) = result;
  }

  v7 = (a2 + 316);
  v8 = *(a2 + 316);
  if ((v8 & 0x20) != 0)
  {
    v10 = *(a2 + 6);
    v9 = 32;
    *v2 = 32;
    *(this + 6) = v10;
    v8 = *v7;
    if ((*v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  if ((v8 & 0x40) != 0)
  {
LABEL_12:
    v11 = *(a2 + 7);
    v9 |= 0x40uLL;
    *v2 = v9;
    *(this + 7) = v11;
    v8 = *v7;
  }

LABEL_13:
  if (v8)
  {
    v13 = *(a2 + 1);
    v9 |= 1uLL;
    *v2 = v9;
    *(this + 1) = v13;
    v8 = *v7;
    if ((*v7 & 0x8000) == 0)
    {
LABEL_15:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_81;
    }
  }

  else if ((v8 & 0x8000) == 0)
  {
    goto LABEL_15;
  }

  result = *(a2 + 26);
  v9 |= 0x8000uLL;
  *v2 = v9;
  *(this + 26) = result;
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_16:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_82;
  }

LABEL_81:
  v14 = *(a2 + 8);
  v9 |= 0x80uLL;
  *v2 = v9;
  *(this + 8) = v14;
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_17:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_82:
  v15 = *(a2 + 9);
  v9 |= 0x100uLL;
  *v2 = v9;
  *(this + 9) = v15;
  v8 = *v7;
  if ((*v7 & 0x20000) == 0)
  {
LABEL_18:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = *(a2 + 28);
  v9 |= 0x20000uLL;
  *v2 = v9;
  *(this + 28) = result;
  v8 = *v7;
  if ((*v7 & 0x10000) == 0)
  {
LABEL_19:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = *(a2 + 27);
  v9 |= 0x10000uLL;
  *v2 = v9;
  *(this + 27) = result;
  v8 = *v7;
  if ((*v7 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 36);
  v9 |= 0x2000000uLL;
  *v2 = v9;
  *(this + 36) = result;
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_21:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 20);
  v9 |= 0x200uLL;
  *v2 = v9;
  *(this + 20) = result;
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_22:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 21);
  v9 |= 0x400uLL;
  *v2 = v9;
  *(this + 21) = result;
  v8 = *v7;
  if ((*v7 & 0x800000) == 0)
  {
LABEL_23:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 34);
  v9 |= 0x800000uLL;
  *v2 = v9;
  *(this + 34) = result;
  v8 = *v7;
  if ((*v7 & 0x4000) == 0)
  {
LABEL_24:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = *(a2 + 25);
  v9 |= 0x4000uLL;
  *v2 = v9;
  *(this + 25) = result;
  v8 = *v7;
  if ((*v7 & 0x400000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = *(a2 + 33);
  v9 |= 0x400000uLL;
  *v2 = v9;
  *(this + 33) = result;
  v8 = *v7;
  if ((*v7 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 24);
  v9 |= 0x2000uLL;
  *v2 = v9;
  *(this + 24) = result;
  v8 = *v7;
  if ((*v7 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 38);
  v9 |= 0x8000000uLL;
  *v2 = v9;
  *(this + 38) = result;
  v8 = *v7;
  if ((*v7 & 0x100000) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 31);
  v9 |= 0x100000uLL;
  *v2 = v9;
  *(this + 31) = result;
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_29:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 23);
  v9 |= 0x1000uLL;
  *v2 = v9;
  *(this + 23) = result;
  v8 = *v7;
  if ((*v7 & 0x80000) == 0)
  {
LABEL_30:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = *(a2 + 30);
  v9 |= 0x80000uLL;
  *v2 = v9;
  *(this + 30) = result;
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_31:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = *(a2 + 22);
  v9 |= 0x800uLL;
  *v2 = v9;
  *(this + 22) = result;
  v8 = *v7;
  if ((*v7 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = *(a2 + 37);
  v9 |= 0x4000000uLL;
  *v2 = v9;
  *(this + 37) = result;
  v8 = *v7;
  if ((*v7 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x20000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = *(a2 + 65);
  v9 |= 0x40000000000000uLL;
  *v2 = v9;
  *(this + 65) = result;
  v8 = *v7;
  if ((*v7 & 0x20000000000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = *(a2 + 64);
  v9 |= 0x20000000000000uLL;
  *v2 = v9;
  *(this + 64) = result;
  v8 = *v7;
  if ((*v7 & 0x4000000000000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x800000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = *(a2 + 73);
  v9 |= 0x4000000000000000uLL;
  *v2 = v9;
  *(this + 73) = result;
  v8 = *v7;
  if ((*v7 & 0x800000000000) == 0)
  {
LABEL_36:
    if ((v8 & 0x1000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = *(a2 + 58);
  v9 |= 0x800000000000uLL;
  *v2 = v9;
  *(this + 58) = result;
  v8 = *v7;
  if ((*v7 & 0x1000000000000) == 0)
  {
LABEL_37:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_103;
  }

LABEL_102:
  result = *(a2 + 59);
  v9 |= 0x1000000000000uLL;
  *v2 = v9;
  *(this + 59) = result;
  v8 = *v7;
  if ((*v7 & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = *(a2 + 71);
  v9 |= 0x1000000000000000uLL;
  *v2 = v9;
  *(this + 71) = result;
  v8 = *v7;
  if ((*v7 & 0x10000000000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = *(a2 + 63);
  v9 |= 0x10000000000000uLL;
  *v2 = v9;
  *(this + 63) = result;
  v8 = *v7;
  if ((*v7 & 0x800000000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_105:
  result = *(a2 + 70);
  v9 |= 0x800000000000000uLL;
  *v2 = v9;
  *(this + 70) = result;
  if ((*v7 & 0x8000000000000) != 0)
  {
LABEL_41:
    result = *(a2 + 62);
    v9 |= 0x8000000000000uLL;
    *v2 = v9;
    *(this + 62) = result;
  }

LABEL_42:
  if (*(a2 + 324))
  {
    result = *(a2 + 75);
    *(this + 324) = v4 | 1;
    *(this + 75) = result;
  }

  v12 = *v7;
  if ((*v7 & 0x200000000000000) != 0)
  {
    result = *(a2 + 68);
    v9 |= 0x200000000000000uLL;
    *v2 = v9;
    *(this + 68) = result;
    v12 = *v7;
    if ((*v7 & 0x4000000000000) == 0)
    {
LABEL_46:
      if ((v12 & 0x100000000000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_109;
    }
  }

  else if ((v12 & 0x4000000000000) == 0)
  {
    goto LABEL_46;
  }

  result = *(a2 + 61);
  v9 |= 0x4000000000000uLL;
  *v2 = v9;
  *(this + 61) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000000000) == 0)
  {
LABEL_47:
    if ((v12 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = *(a2 + 67);
  v9 |= 0x100000000000000uLL;
  *v2 = v9;
  *(this + 67) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = *(a2 + 60);
  v9 |= 0x2000000000000uLL;
  *v2 = v9;
  *(this + 60) = result;
  v12 = *v7;
  if ((*v7 & 0x8000000000000000) == 0)
  {
LABEL_49:
    if ((v12 & 0x800000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = *(a2 + 74);
  v9 |= 0x8000000000000000;
  *v2 = v9;
  *(this + 74) = result;
  v12 = *v7;
  if ((*v7 & 0x800000000) == 0)
  {
LABEL_50:
    if ((v12 & 0x400000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = *(a2 + 46);
  v9 |= 0x800000000uLL;
  *v2 = v9;
  *(this + 46) = result;
  v12 = *v7;
  if ((*v7 & 0x400000000) == 0)
  {
LABEL_51:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = *(a2 + 45);
  v9 |= 0x400000000uLL;
  *v2 = v9;
  *(this + 45) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000000) == 0)
  {
LABEL_52:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = *(a2 + 54);
  v9 |= 0x80000000000uLL;
  *v2 = v9;
  *(this + 54) = result;
  v12 = *v7;
  if ((*v7 & 0x10000000) == 0)
  {
LABEL_53:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = *(a2 + 39);
  v9 |= 0x10000000uLL;
  *v2 = v9;
  *(this + 39) = result;
  v12 = *v7;
  if ((*v7 & 0x20000000) == 0)
  {
LABEL_54:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = *(a2 + 40);
  v9 |= 0x20000000uLL;
  *v2 = v9;
  *(this + 40) = result;
  v12 = *v7;
  if ((*v7 & 0x20000000000) == 0)
  {
LABEL_55:
    if ((v12 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = *(a2 + 52);
  v9 |= 0x20000000000uLL;
  *v2 = v9;
  *(this + 52) = result;
  v12 = *v7;
  if ((*v7 & 0x200000000) == 0)
  {
LABEL_56:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = *(a2 + 44);
  v9 |= 0x200000000uLL;
  *v2 = v9;
  *(this + 44) = result;
  v12 = *v7;
  if ((*v7 & 0x10000000000) == 0)
  {
LABEL_57:
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = *(a2 + 51);
  v9 |= 0x10000000000uLL;
  *v2 = v9;
  *(this + 51) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000) == 0)
  {
LABEL_58:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = *(a2 + 43);
  v9 |= 0x100000000uLL;
  *v2 = v9;
  *(this + 43) = result;
  v12 = *v7;
  if ((*v7 & 0x200000000000) == 0)
  {
LABEL_59:
    if ((v12 & 0x4000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = *(a2 + 56);
  v9 |= 0x200000000000uLL;
  *v2 = v9;
  *(this + 56) = result;
  v12 = *v7;
  if ((*v7 & 0x4000000000) == 0)
  {
LABEL_60:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = *(a2 + 49);
  v9 |= 0x4000000000uLL;
  *v2 = v9;
  *(this + 49) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v12 & 0x2000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = *(a2 + 42);
  v9 |= 0x80000000uLL;
  *v2 = v9;
  *(this + 42) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000) == 0)
  {
LABEL_62:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = *(a2 + 48);
  v9 |= 0x2000000000uLL;
  *v2 = v9;
  *(this + 48) = result;
  v12 = *v7;
  if ((*v7 & 0x40000000) == 0)
  {
LABEL_63:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = *(a2 + 41);
  v9 |= 0x40000000uLL;
  *v2 = v9;
  *(this + 41) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000000) == 0)
  {
LABEL_64:
    if ((v12 & 8) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = *(a2 + 55);
  v9 |= 0x100000000000uLL;
  *v2 = v9;
  *(this + 55) = result;
  v12 = *v7;
  if ((*v7 & 8) == 0)
  {
LABEL_65:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_128;
  }

LABEL_127:
  v16 = *(a2 + 4);
  v9 |= 8uLL;
  *v2 = v9;
  *(this + 4) = v16;
  v12 = *v7;
  if ((*v7 & 0x10) == 0)
  {
LABEL_66:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_129;
  }

LABEL_128:
  v17 = *(a2 + 5);
  v9 |= 0x10uLL;
  *v2 = v9;
  *(this + 5) = v17;
  v12 = *v7;
  if ((*v7 & 0x1000000) == 0)
  {
LABEL_67:
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = *(a2 + 35);
  v9 |= 0x1000000uLL;
  *v2 = v9;
  *(this + 35) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000000000) == 0)
  {
LABEL_68:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = *(a2 + 72);
  v9 |= 0x2000000000000000uLL;
  *v2 = v9;
  *(this + 72) = result;
  v12 = *v7;
  if ((*v7 & 0x40000000000) == 0)
  {
LABEL_69:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = *(a2 + 53);
  v9 |= 0x40000000000uLL;
  *v2 = v9;
  *(this + 53) = result;
  v12 = *v7;
  if ((*v7 & 0x40000) == 0)
  {
LABEL_70:
    if ((v12 & 0x80000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = *(a2 + 29);
  v9 |= 0x40000uLL;
  *v2 = v9;
  *(this + 29) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000000000) == 0)
  {
LABEL_71:
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = *(a2 + 66);
  v9 |= 0x80000000000000uLL;
  *v2 = v9;
  *(this + 66) = result;
  v12 = *v7;
  if ((*v7 & 0x1000000000) == 0)
  {
LABEL_72:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = *(a2 + 47);
  v9 |= 0x1000000000uLL;
  *v2 = v9;
  *(this + 47) = result;
  v12 = *v7;
  if ((*v7 & 0x200000) == 0)
  {
LABEL_73:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = *(a2 + 32);
  v9 |= 0x200000uLL;
  *v2 = v9;
  *(this + 32) = result;
  v12 = *v7;
  if ((*v7 & 0x400000000000000) == 0)
  {
LABEL_74:
    if ((v12 & 0x8000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = *(a2 + 69);
  v9 |= 0x400000000000000uLL;
  *v2 = v9;
  *(this + 69) = result;
  v12 = *v7;
  if ((*v7 & 0x8000000000) == 0)
  {
LABEL_75:
    if ((v12 & 2) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = *(a2 + 50);
  v9 |= 0x8000000000uLL;
  *v2 = v9;
  *(this + 50) = result;
  v12 = *v7;
  if ((*v7 & 2) == 0)
  {
LABEL_76:
    if ((v12 & 4) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_139;
  }

LABEL_138:
  v18 = *(a2 + 2);
  v9 |= 2uLL;
  *v2 = v9;
  *(this + 2) = v18;
  v12 = *v7;
  if ((*v7 & 4) == 0)
  {
LABEL_77:
    if ((v12 & 0x400000000000) == 0)
    {
      return result;
    }

LABEL_140:
    result = *(a2 + 57);
    *v2 = v9 | 0x400000000000;
    *(this + 57) = result;
    return result;
  }

LABEL_139:
  v19 = *(a2 + 3);
  v9 |= 4uLL;
  *v2 = v9;
  *(this + 3) = v19;
  if ((*v7 & 0x400000000000) != 0)
  {
    goto LABEL_140;
  }

  return result;
}

CMMsl *CMMsl::KappaPulseResult::operator=(CMMsl *a1, const CMMsl::KappaPulseResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseResult::KappaPulseResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaPulseResult *a2, CMMsl::KappaPulseResult *a3)
{
  v3 = *(this + 81);
  v4 = *(this + 316);
  v5 = *(a2 + 81);
  *(this + 316) = *(a2 + 316);
  *(this + 81) = v5;
  *(a2 + 316) = v4;
  *(a2 + 81) = v3;
  v6 = *(this + 312);
  *(this + 312) = *(a2 + 312);
  *(a2 + 312) = v6;
  v7 = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v7;
  v8 = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v15;
  v16 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v16;
  v17 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v17;
  v18 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v18;
  v19 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v19;
  v20 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v20;
  v21 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v21;
  v22 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v22;
  v23 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v23;
  v24 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v24;
  v25 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v25;
  v26 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v26;
  v27 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v27;
  v28 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v28;
  v29 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v29;
  v30 = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v30;
  v31 = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v31;
  v32 = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v32;
  v33 = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v33;
  v34 = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v34;
  v35 = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v35;
  v36 = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v36;
  v37 = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v37;
  v38 = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v38;
  v39 = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v39;
  v40 = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v40;
  v41 = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v41;
  v42 = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v42;
  v43 = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v43;
  v44 = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v44;
  v45 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v45;
  v46 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v46;
  v47 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v47;
  v48 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v48;
  v49 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v49;
  v50 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v50;
  v51 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v51;
  v52 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v52;
  v53 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v53;
  v54 = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v54;
  v55 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v55;
  v56 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v56;
  v57 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v57;
  v58 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v58;
  v59 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v59;
  v60 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v60;
  v61 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v61;
  v62 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v62;
  v63 = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v63;
  v64 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v64;
  v65 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v65;
  v66 = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v66;
  v67 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v67;
  v68 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v68;
  v69 = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v69;
  v70 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v70;
  v71 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v71;
  v72 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v72;
  result = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = result;
  return result;
}

float CMMsl::KappaPulseResult::KappaPulseResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C213B0;
  v2 = *(a2 + 316);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 316) = v2;
  *(a2 + 324) = 0;
  *(a2 + 316) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 228);
  *(a1 + 228) = result;
  return result;
}

CMMsl *CMMsl::KappaPulseResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaPulseResult::KappaPulseResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaPulseResult::formatText(CMMsl::KappaPulseResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = (this + 316);
  v6 = *(this + 316);
  if ((v6 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "arclengthXYBiggestImpact", *(this + 20));
    v6 = *v5;
    if ((*v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "arclengthXYOverEpoch", *(this + 21));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "arclengthXYZBiggestImpact", *(this + 22));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "arclengthXYZOverEpoch", *(this + 23));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "arclengthZBiggestImpact", *(this + 24));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "arclengthZOverEpoch", *(this + 25));
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "configDecelPulseThreshold", *(this + 26));
  v6 = *v5;
  if ((*v5 & 1) == 0)
  {
LABEL_9:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

LABEL_83:
  v12 = *(this + 1);
  PB::TextFormatter::format(a2, "deltaTriggerTime");
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "deltaVXYBiggestImpact", *(this + 27));
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "deltaVXYOverEpoch", *(this + 28));
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "deltaVXYUnconditional", *(this + 29));
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "deltaVXYZBiggestImpact", *(this + 30));
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "deltaVXYZOverEpoch", *(this + 31));
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_15:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "deltaVXYZUnconditional", *(this + 32));
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_16:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(a2, "deltaVZBiggestImpact", *(this + 33));
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_17:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "deltaVZOverEpoch", *(this + 34));
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "deltaVZUnconditional", *(this + 35));
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "durationXYBiggestImpact", *(this + 36));
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(a2, "durationXYZBiggestImpact", *(this + 37));
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v6 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(a2, "durationZBiggestImpact", *(this + 38));
  v6 = *v5;
  if ((*v5 & 2) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_96:
  v13 = *(this + 2);
  PB::TextFormatter::format(a2, "epochFirstTimestamp");
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
LABEL_23:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

LABEL_97:
  v14 = *(this + 3);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_99;
  }

LABEL_98:
  v15 = *(this + 4);
  PB::TextFormatter::format(a2, "faultCounter");
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_99:
  v16 = *(this + 5);
  PB::TextFormatter::format(a2, "hgAccelBufferSize");
  v6 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(a2, "hgArclengthXYBiggestImpact", *(this + 39));
  v6 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(a2, "hgArclengthXYOverEpoch", *(this + 40));
  v6 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_103;
  }

LABEL_102:
  PB::TextFormatter::format(a2, "hgArclengthXYZBiggestImpact", *(this + 41));
  v6 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_104;
  }

LABEL_103:
  PB::TextFormatter::format(a2, "hgArclengthXYZOverEpoch", *(this + 42));
  v6 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_105;
  }

LABEL_104:
  PB::TextFormatter::format(a2, "hgArclengthZBiggestImpact", *(this + 43));
  v6 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_106;
  }

LABEL_105:
  PB::TextFormatter::format(a2, "hgArclengthZOverEpoch", *(this + 44));
  v6 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_107;
  }

LABEL_106:
  PB::TextFormatter::format(a2, "hgDeltaVXYBiggestImpact", *(this + 45));
  v6 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_108;
  }

LABEL_107:
  PB::TextFormatter::format(a2, "hgDeltaVXYOverEpoch", *(this + 46));
  v6 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_109;
  }

LABEL_108:
  PB::TextFormatter::format(a2, "hgDeltaVXYUnconditional", *(this + 47));
  v6 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_110;
  }

LABEL_109:
  PB::TextFormatter::format(a2, "hgDeltaVXYZBiggestImpact", *(this + 48));
  v6 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_111;
  }

LABEL_110:
  PB::TextFormatter::format(a2, "hgDeltaVXYZOverEpoch", *(this + 49));
  v6 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(a2, "hgDeltaVXYZUnconditional", *(this + 50));
  v6 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(a2, "hgDeltaVZBiggestImpact", *(this + 51));
  v6 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(a2, "hgDeltaVZOverEpoch", *(this + 52));
  v6 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(a2, "hgDeltaVZUnconditional", *(this + 53));
  v6 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(a2, "hgDurationXYBiggestImpact", *(this + 54));
  v6 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x200000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(a2, "hgDurationXYZBiggestImpact", *(this + 55));
  v6 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x400000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_117:
  PB::TextFormatter::format(a2, "hgDurationZBiggestImpact", *(this + 56));
  if ((*v5 & 0x400000000000) != 0)
  {
LABEL_44:
    PB::TextFormatter::format(a2, "hgWeightCoeff", *(this + 57));
  }

LABEL_45:
  if ((*(this + 324) & 8) != 0)
  {
    v7 = *(this + 312);
    PB::TextFormatter::format(a2, "isPulseDetected");
  }

  v8 = *v5;
  if ((*v5 & 0x800000000000) != 0)
  {
    PB::TextFormatter::format(a2, "lgArclengthXYBiggestImpact", *(this + 58));
    v8 = *v5;
    if ((*v5 & 0x1000000000000) == 0)
    {
LABEL_49:
      if ((v8 & 0x2000000000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_121;
    }
  }

  else if ((v8 & 0x1000000000000) == 0)
  {
    goto LABEL_49;
  }

  PB::TextFormatter::format(a2, "lgArclengthXYOverEpoch", *(this + 59));
  v8 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((v8 & 0x4000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(a2, "lgArclengthXYZBiggestImpact", *(this + 60));
  v8 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_51:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(a2, "lgArclengthXYZOverEpoch", *(this + 61));
  v8 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_52:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(a2, "lgArclengthZBiggestImpact", *(this + 62));
  v8 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_53:
    if ((v8 & 0x20000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(a2, "lgArclengthZOverEpoch", *(this + 63));
  v8 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_54:
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(a2, "lgDeltaVXYBiggestImpact", *(this + 64));
  v8 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_55:
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(a2, "lgDeltaVXYOverEpoch", *(this + 65));
  v8 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_56:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(a2, "lgDeltaVXYUnconditional", *(this + 66));
  v8 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_57:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(a2, "lgDeltaVXYZBiggestImpact", *(this + 67));
  v8 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_58:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(a2, "lgDeltaVXYZOverEpoch", *(this + 68));
  v8 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_59:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(a2, "lgDeltaVXYZUnconditional", *(this + 69));
  v8 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_60:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(a2, "lgDeltaVZBiggestImpact", *(this + 70));
  v8 = *v5;
  if ((*v5 & 0x1000000000000000) == 0)
  {
LABEL_61:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(a2, "lgDeltaVZOverEpoch", *(this + 71));
  v8 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
LABEL_62:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_134:
    PB::TextFormatter::format(a2, "lgDurationXYBiggestImpact", *(this + 73));
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_135;
  }

LABEL_133:
  PB::TextFormatter::format(a2, "lgDeltaVZUnconditional", *(this + 72));
  v8 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_134;
  }

LABEL_63:
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_135:
  PB::TextFormatter::format(a2, "lgDurationXYZBiggestImpact", *(this + 74));
LABEL_64:
  v9 = *(this + 324);
  if (v9)
  {
    PB::TextFormatter::format(a2, "lgDurationZBiggestImpact", *(this + 75));
    v9 = *(this + 324);
    if ((v9 & 2) == 0)
    {
LABEL_66:
      if ((v9 & 4) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else if ((*(this + 324) & 2) == 0)
  {
    goto LABEL_66;
  }

  PB::TextFormatter::format(a2, "maxPulse", *(this + 76));
  if ((*(this + 324) & 4) != 0)
  {
LABEL_67:
    PB::TextFormatter::format(a2, "maxPulseHeight", *(this + 77));
  }

LABEL_68:
  v10 = *v5;
  if ((*v5 & 0x20) != 0)
  {
    v17 = *(this + 6);
    PB::TextFormatter::format(a2, "maxPulseStartTime");
    v10 = *v5;
    if ((*v5 & 0x40) == 0)
    {
LABEL_70:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_141;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_70;
  }

  v18 = *(this + 7);
  PB::TextFormatter::format(a2, "maxPulseTime");
  v10 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_71:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_141:
  v19 = *(this + 8);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*v5 & 0x100) != 0)
  {
LABEL_72:
    v11 = *(this + 9);
    PB::TextFormatter::format(a2, "triggerTimestamp");
  }

LABEL_73:

  return MEMORY[0x2821A4560](a2);
}