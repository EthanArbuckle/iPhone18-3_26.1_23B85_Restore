void CMMsl::TapAccept::~TapAccept(CMMsl::TapAccept *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::TapAccept::TapAccept(uint64_t this, const CMMsl::TapAccept *a2)
{
  *this = &unk_286C23FA8;
  *(this + 36) = -1;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 44) = 2;
    *(this + 16) = v4;
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
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 36) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 7);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 10);
    *(this + 44) = v3 | 0x40;
    *(this + 40) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 44) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::TapAccept::operator=(uint64_t a1, const CMMsl::TapAccept *a2)
{
  if (a1 != a2)
  {
    CMMsl::TapAccept::TapAccept(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    *&v6 = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TapAccept *a2, CMMsl::TapAccept *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(a2 + 36);
  v8 = *(this + 36);
  *(this + 36) = result;
  *(a2 + 36) = v8;
  return result;
}

double CMMsl::TapAccept::TapAccept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23FA8;
  *(a1 + 36) = -1;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

{
  *a1 = &unk_286C23FA8;
  *(a1 + 36) = -1;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

uint64_t CMMsl::TapAccept::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23FA8;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 24);
    v14 = *(a1 + 44);
    v11 = *(a1 + 24);
    v5 = *(a1 + 28);
    *(a1 + 28) = *(a2 + 28);
    v12 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v10 = v6;
    *&v6 = *(a1 + 36);
    v7 = *(a2 + 36);
    *(a1 + 24) = v4;
    *(a1 + 44) = v3;
    *(a1 + 36) = v7;
    v13 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::TapAccept::formatText(CMMsl::TapAccept *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "location");
    v5 = *(this + 44);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "peakHalfWidth", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "peakMagnitude", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "peakTime", *(this + 1));
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
  v7 = *(this + 9);
  PB::TextFormatter::format(a2, "tapAcceptStatus");
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v8 = *(this + 10);
  PB::TextFormatter::format(a2, "tapCounter");
  if ((*(this + 44) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TapAccept::readFrom(CMMsl::TapAccept *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_55:
            *(a2 + 24) = 1;
            goto LABEL_105;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_88:
          v2 = *(a2 + 1) + 8;
LABEL_89:
          *(a2 + 1) = v2;
          goto LABEL_105;
        case 2:
          *(this + 44) |= 4u;
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
                goto LABEL_104;
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
                goto LABEL_103;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_103:
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

LABEL_104:
          *(this + 6) = v43;
          goto LABEL_105;
        case 3:
          *(this + 44) |= 0x20u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v56 = (v24 + v23);
            v57 = v2 - v23;
            v58 = v23 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v59 = v58;
              v60 = *v56;
              *(a2 + 1) = v59;
              v27 |= (v60 & 0x7F) << v54;
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
                LODWORD(v27) = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_99:
            v2 = v59;
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

LABEL_100:
          *(this + 9) = v27;
          goto LABEL_105;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 44) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_55;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_88;
      }

      if (v22 == 7)
      {
        *(this + 44) |= 0x40u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v49 = (v32 + v31);
          v50 = v2 - v31;
          v51 = v31 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_96;
            }

            v52 = v51;
            v53 = *v49;
            *(a2 + 1) = v52;
            v35 |= (v53 & 0x7F) << v47;
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
              LODWORD(v35) = 0;
              goto LABEL_95;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_95:
          v2 = v52;
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

LABEL_96:
        *(this + 10) = v35;
        goto LABEL_105;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 44) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_55;
        }

        *(this + 8) = *(*a2 + v2);
        goto LABEL_52;
      }

      if (v22 == 5)
      {
        *(this + 44) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_55;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_52:
        v2 = *(a2 + 1) + 4;
        goto LABEL_89;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_105:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::TapAccept::writeTo(uint64_t this, PB::Writer *a2)
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
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::TapAccept::hash_value(CMMsl::TapAccept *this)
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
      v2 = *(this + 6);
      if ((*(this + 44) & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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
  if ((*(this + 44) & 0x20) != 0)
  {
LABEL_4:
    v3 = *(this + 9);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v7 = 0;
    if (*(this + 44))
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_19:
  v3 = 0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if (*(this + 44))
  {
LABEL_11:
    v8 = *(this + 1);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v9 = 0;
    return v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ *&v8 ^ v9;
  }

LABEL_22:
  v8 = 0.0;
  if ((*(this + 44) & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v9 = *(this + 10);
  return v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ *&v8 ^ v9;
}

void CMMsl::TapDetect::~TapDetect(CMMsl::TapDetect *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::TapDetect::TapDetect(CMMsl::TapDetect *this, const CMMsl::TapDetect *a2)
{
  *this = &unk_286C23FE0;
  *(this + 7) = -2;
  result = NAN;
  *(this + 52) = xmmword_25AD37E90;
  v3 = *(a2 + 32);
  if ((v3 & 2) != 0)
  {
    result = *(a2 + 2);
    v4 = 2;
    *(this + 32) = 2;
    *(this + 2) = result;
    v3 = *(a2 + 32);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v4 |= 0x20u;
    *(this + 32) = v4;
    *(this + 9) = v5;
    v3 = *(a2 + 32);
  }

LABEL_6:
  if ((v3 & 0x400) != 0)
  {
    v6 = *(a2 + 14);
    v4 |= 0x400u;
    *(this + 32) = v4;
    *(this + 14) = v6;
    v3 = *(a2 + 32);
    if ((v3 & 4) == 0)
    {
LABEL_8:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v4 |= 4u;
  *(this + 32) = v4;
  *(this + 6) = v7;
  v3 = *(a2 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 8);
  v4 |= 0x10u;
  *(this + 32) = v4;
  *(this + 8) = v8;
  v3 = *(a2 + 32);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 13);
  v4 |= 0x200u;
  *(this + 32) = v4;
  *(this + 13) = v9;
  v3 = *(a2 + 32);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 15);
  v4 |= 0x800u;
  *(this + 32) = v4;
  *(this + 15) = v10;
  v3 = *(a2 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_12:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 7);
  v4 |= 8u;
  *(this + 32) = v4;
  *(this + 7) = v11;
  v3 = *(a2 + 32);
  if ((v3 & 0x100) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  LODWORD(result) = *(a2 + 12);
  v4 |= 0x100u;
  *(this + 32) = v4;
  *(this + 12) = LODWORD(result);
  v3 = *(a2 + 32);
  if ((v3 & 0x80) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  LODWORD(result) = *(a2 + 11);
  v4 |= 0x80u;
  *(this + 32) = v4;
  *(this + 11) = LODWORD(result);
  v3 = *(a2 + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_26:
    result = *(a2 + 1);
    *(this + 32) = v4 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_25:
  LODWORD(result) = *(a2 + 10);
  v4 |= 0x40u;
  *(this + 32) = v4;
  *(this + 10) = LODWORD(result);
  if (*(a2 + 32))
  {
    goto LABEL_26;
  }

  return result;
}

CMMsl *CMMsl::TapDetect::operator=(CMMsl *a1, const CMMsl::TapDetect *a2)
{
  if (a1 != a2)
  {
    CMMsl::TapDetect::TapDetect(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TapDetect *a2, CMMsl::TapDetect *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::TapDetect::TapDetect(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23FE0;
  *(a1 + 28) = -2;
  *(a1 + 52) = 0x100000001;
  *(a1 + 60) = -2;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::TapDetect::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TapDetect::TapDetect(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::TapDetect::formatText(CMMsl::TapDetect *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    v7 = *(this + 6);
    PB::TextFormatter::format(a2, "axis");
    v5 = *(this + 32);
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

  v8 = *(this + 7);
  PB::TextFormatter::format(a2, "clippedPeakType");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(this + 8);
  PB::TextFormatter::format(a2, "direction");
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(this + 9);
  PB::TextFormatter::format(a2, "location");
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "peakHalfWidth", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "peakMagnitude", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "peakTime", *(this + 1));
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "peakValue", *(this + 12));
  v5 = *(this + 32);
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
  v11 = *(this + 13);
  PB::TextFormatter::format(a2, "strideDirection");
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(this + 14);
  PB::TextFormatter::format(a2, "tapDetectStatus");
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 15);
    PB::TextFormatter::format(a2, "widthCalculationMethod");
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TapDetect::readFrom(CMMsl::TapDetect *this, PB::Reader *a2)
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
            *(this + 32) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_99:
              *(a2 + 24) = 1;
              goto LABEL_194;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_157;
          case 0xB:
            *(this + 32) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_99;
            }

            *(this + 10) = *(*a2 + v2);
LABEL_157:
            v2 = *(a2 + 1) + 4;
            goto LABEL_158;
          case 0xC:
            *(this + 32) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_99;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_58:
            v2 = *(a2 + 1) + 8;
LABEL_158:
            *(a2 + 1) = v2;
            goto LABEL_194;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 32) |= 0x800u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v93 = 0;
              v94 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v95 = (v40 + v39);
              v96 = v2 - v39;
              v97 = v39 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_177;
                }

                v98 = v97;
                v99 = *v95;
                *(a2 + 1) = v98;
                v43 |= (v99 & 0x7F) << v93;
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
                  LODWORD(v43) = 0;
                  goto LABEL_176;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_176:
              v2 = v98;
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

LABEL_177:
            *(this + 15) = v43;
            goto LABEL_194;
          case 8:
            *(this + 32) |= 8u;
            v63 = *(a2 + 1);
            v2 = *(a2 + 2);
            v64 = *a2;
            if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
            {
              v114 = 0;
              v115 = 0;
              v67 = 0;
              if (v2 <= v63)
              {
                v2 = *(a2 + 1);
              }

              v116 = (v64 + v63);
              v117 = v2 - v63;
              v118 = v63 + 1;
              while (1)
              {
                if (!v117)
                {
                  LODWORD(v67) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_189;
                }

                v119 = v118;
                v120 = *v116;
                *(a2 + 1) = v119;
                v67 |= (v120 & 0x7F) << v114;
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
                  LODWORD(v67) = 0;
                  goto LABEL_188;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v67) = 0;
              }

LABEL_188:
              v2 = v119;
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
                v2 = v69;
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
                  LODWORD(v67) = 0;
                  break;
                }
              }
            }

LABEL_189:
            *(this + 7) = v67;
            goto LABEL_194;
          case 9:
            *(this + 32) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_99;
            }

            *(this + 12) = *(*a2 + v2);
            goto LABEL_157;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 4u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v102 = (v48 + v47);
            v103 = v2 - v47;
            v104 = v47 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_181;
              }

              v105 = v104;
              v106 = *v102;
              *(a2 + 1) = v105;
              v51 |= (v106 & 0x7F) << v100;
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
                LODWORD(v51) = 0;
                goto LABEL_180;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_180:
            v2 = v105;
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

LABEL_181:
          *(this + 6) = v51;
          goto LABEL_194;
        case 5:
          *(this + 32) |= 0x10u;
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
              v2 = *(a2 + 1);
            }

            v123 = (v72 + v71);
            v124 = v2 - v71;
            v125 = v71 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v75) = 0;
                *(a2 + 24) = 1;
                goto LABEL_193;
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
                goto LABEL_192;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v75) = 0;
            }

LABEL_192:
            v2 = v126;
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
              v2 = v77;
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

LABEL_193:
          *(this + 8) = v75;
          goto LABEL_194;
        case 6:
          *(this + 32) |= 0x200u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v88 = (v32 + v31);
            v89 = v2 - v31;
            v90 = v31 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_173;
              }

              v91 = v90;
              v92 = *v88;
              *(a2 + 1) = v91;
              v35 |= (v92 & 0x7F) << v86;
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
                LODWORD(v35) = 0;
                goto LABEL_172;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_172:
            v2 = v91;
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

LABEL_173:
          *(this + 13) = v35;
          goto LABEL_194;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_99;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_58;
        case 2:
          *(this + 32) |= 0x20u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v2 = *(a2 + 1);
            }

            v109 = (v56 + v55);
            v110 = v2 - v55;
            v111 = v55 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v59) = 0;
                *(a2 + 24) = 1;
                goto LABEL_185;
              }

              v112 = v111;
              v113 = *v109;
              *(a2 + 1) = v112;
              v59 |= (v113 & 0x7F) << v107;
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
                LODWORD(v59) = 0;
                goto LABEL_184;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v59) = 0;
            }

LABEL_184:
            v2 = v112;
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

LABEL_185:
          *(this + 9) = v59;
          goto LABEL_194;
        case 3:
          *(this + 32) |= 0x400u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v81 = (v24 + v23);
            v82 = v2 - v23;
            v83 = v23 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_169;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v27 |= (v85 & 0x7F) << v79;
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
                LODWORD(v27) = 0;
                goto LABEL_168;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_168:
            v2 = v84;
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

LABEL_169:
          *(this + 14) = v27;
          goto LABEL_194;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v128 = 0;
      return v128 & 1;
    }

    v2 = *(a2 + 1);
LABEL_194:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t CMMsl::TapDetect::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(v3 + 60);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 40));
    if ((*(v3 + 64) & 1) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_25:
  v12 = *(v3 + 8);

  return PB::Writer::write(a2, v12);
}

uint64_t CMMsl::TapDetect::hash_value(CMMsl::TapDetect *this)
{
  v1 = *(this + 32);
  if ((v1 & 2) != 0)
  {
    v2 = *(this + 2);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x20) != 0)
    {
LABEL_3:
      v3 = *(this + 9);
      if ((*(this + 32) & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 32) & 0x400) != 0)
  {
LABEL_4:
    v4 = *(this + 14);
    if ((v1 & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_5:
    v5 = *(this + 6);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 8);
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = 0;
  if ((*(this + 32) & 0x200) != 0)
  {
LABEL_7:
    v7 = *(this + 13);
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = 0;
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_8:
    v8 = *(this + 15);
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_9:
    v9 = *(this + 7);
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v11 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_13;
    }

LABEL_33:
    v13 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_31:
  v9 = 0;
  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v10 = *(this + 12);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_13:
  v12 = *(this + 11);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_16:
    v14 = *(this + 10);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if (v1)
    {
      goto LABEL_19;
    }

LABEL_35:
    v16 = 0.0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15 ^ *&v16;
  }

LABEL_34:
  v15 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  v16 = *(this + 1);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15 ^ *&v16;
}

void CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(CMMsl::TempestPoCAuxiliaryDeviceMotion *this)
{
  *this = &unk_286C24018;
  v2 = *(this + 10);
  *(this + 10) = 0;
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
  CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::TempestPoCAuxiliaryDeviceMotion *CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, const CMMsl::TempestPoCAuxiliaryDeviceMotion *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C24018;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  if (*(a2 + 10))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v4 = *(a2 + 52);
  if ((v4 & 0x80) != 0)
  {
    v7 = *(a2 + 23);
    *(this + 52) |= 0x80u;
    *(this + 23) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_7:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(a2 + 22);
  *(this + 52) |= 0x40u;
  *(this + 22) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 24);
  *(this + 52) |= 0x100u;
  *(this + 24) = v9;
  v4 = *(a2 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 25);
  *(this + 52) |= 0x200u;
  *(this + 25) = v10;
  v4 = *(a2 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 5);
  *(this + 52) |= 2u;
  *(this + 5) = v11;
  v4 = *(a2 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 6);
  *(this + 52) |= 4u;
  *(this + 6) = v12;
  v4 = *(a2 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(a2 + 8);
  *(this + 52) |= 0x10u;
  *(this + 8) = v13;
  v4 = *(a2 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v15 = *(a2 + 4);
    *(this + 52) |= 1u;
    *(this + 4) = v15;
    if ((*(a2 + 52) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_24:
  v14 = *(a2 + 9);
  *(this + 52) |= 0x20u;
  *(this + 9) = v14;
  v4 = *(a2 + 52);
  if (v4)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((v4 & 8) != 0)
  {
LABEL_15:
    v5 = *(a2 + 7);
    *(this + 52) |= 8u;
    *(this + 7) = v5;
  }

  return this;
}

CMMsl *CMMsl::TempestPoCAuxiliaryDeviceMotion::operator=(CMMsl *a1, const CMMsl::TempestPoCAuxiliaryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TempestPoCAuxiliaryDeviceMotion *a2, CMMsl::TempestPoCAuxiliaryDeviceMotion *a3)
{
  v3 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
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
  v8 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v8;
  LODWORD(v7) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v7;
  LODWORD(v7) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v9 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24018;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  v5 = *(a2 + 80);
  *(a2 + 80) = 0;
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

CMMsl *CMMsl::TempestPoCAuxiliaryDeviceMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCAuxiliaryDeviceMotion::~TempestPoCAuxiliaryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::formatText(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 52))
  {
    PB::TextFormatter::format(a2, "auxiliaryIosTimeUncertainty", *(this + 4));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "filteredAcceleration", v7);
  }

  v8 = *(this + 52);
  if ((v8 & 0x40) != 0)
  {
    v10 = *(this + 22);
    PB::TextFormatter::format(a2, "quiescentMode");
    v8 = *(this + 52);
    if ((v8 & 0x80) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "quiescentNoise", *(this + 23));
  v8 = *(this + 52);
  if ((v8 & 2) == 0)
  {
LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "sensorTimeBeforeAlignment", *(this + 5));
  v8 = *(this + 52);
  if ((v8 & 4) == 0)
  {
LABEL_9:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "sentCftime", *(this + 6));
  v8 = *(this + 52);
  if ((v8 & 0x100) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(this + 24);
  PB::TextFormatter::format(a2, "sequenceNumber");
  v8 = *(this + 52);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "sourceIosTimeUncertainty", *(this + 7));
  v8 = *(this + 52);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "sourceReceiveCftime", *(this + 8));
  if ((*(this + 52) & 0x20) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "sourceReceiveSensorTimestamp", *(this + 9));
  }

LABEL_14:
  v9 = *(this + 10);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "super");
  }

  if ((*(this + 52) & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "version", *(this + 25));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::readFrom(CMMsl::TempestPoCAuxiliaryDeviceMotion *this, PB::Reader *a2)
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
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_143;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(this + 52) |= 0x20u;
              v37 = *(a2 + 1);
              if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 9) = *(*a2 + v37);
              goto LABEL_95;
            case 0xB:
              *(this + 52) |= 1u;
              v64 = *(a2 + 1);
              if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 4) = *(*a2 + v64);
              goto LABEL_95;
            case 0xC:
              *(this + 52) |= 8u;
              v26 = *(a2 + 1);
              if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 7) = *(*a2 + v26);
              goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(this + 52) |= 2u;
              v27 = *(a2 + 1);
              if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 5) = *(*a2 + v27);
              goto LABEL_95;
            case 8:
              *(this + 52) |= 4u;
              v54 = *(a2 + 1);
              if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 6) = *(*a2 + v54);
              goto LABEL_95;
            case 9:
              *(this + 52) |= 0x10u;
              v24 = *(a2 + 1);
              if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
              {
                goto LABEL_135;
              }

              *(this + 8) = *(*a2 + v24);
LABEL_95:
              v65 = *(a2 + 1) + 8;
              goto LABEL_138;
          }
        }

        goto LABEL_17;
      }

      if (v22 > 3)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        if (v22 == 3)
        {
          *(this + 52) |= 0x80u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
            goto LABEL_135;
          }

          *(this + 23) = *(*a2 + v23);
          goto LABEL_137;
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_139;
      }

      if ((v10 & 7) != 2)
      {
        v79 = *(this + 2);
        v78 = *(this + 3);
        if (v79 >= v78)
        {
          v81 = *(this + 1);
          v82 = v79 - v81;
          v83 = (v79 - v81) >> 2;
          v84 = v83 + 1;
          if ((v83 + 1) >> 62)
          {
LABEL_147:
            sub_25AAE66B8();
          }

          v85 = v78 - v81;
          if (v85 >> 1 > v84)
          {
            v84 = v85 >> 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v86 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = v84;
          }

          if (v86)
          {
            sub_25AD288E8(v86);
          }

          v87 = (v79 - v81) >> 2;
          v88 = (4 * v83);
          v89 = (4 * v83 - 4 * v87);
          *v88 = 0;
          v80 = v88 + 1;
          memcpy(v89, v81, v82);
          v90 = *(this + 1);
          *(this + 1) = v89;
          *(this + 2) = v80;
          *(this + 3) = 0;
          if (v90)
          {
            operator delete(v90);
          }
        }

        else
        {
          *v79 = 0;
          v80 = v79 + 4;
        }

        *(this + 2) = v80;
        v91 = *(a2 + 1);
        if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
        {
LABEL_135:
          *(a2 + 24) = 1;
          goto LABEL_139;
        }

        *(v80 - 1) = *(*a2 + v91);
LABEL_137:
        v65 = *(a2 + 1) + 4;
LABEL_138:
        *(a2 + 1) = v65;
        goto LABEL_139;
      }

      if (PB::Reader::placeMark())
      {
LABEL_145:
        v92 = 0;
        return v92 & 1;
      }

      v38 = *(a2 + 1);
      v39 = *(a2 + 2);
      while (v38 < v39 && (*(a2 + 24) & 1) == 0)
      {
        v41 = *(this + 2);
        v40 = *(this + 3);
        if (v41 >= v40)
        {
          v43 = *(this + 1);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 2;
          v46 = v45 + 1;
          if ((v45 + 1) >> 62)
          {
            goto LABEL_147;
          }

          v47 = v40 - v43;
          if (v47 >> 1 > v46)
          {
            v46 = v47 >> 1;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v48 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            sub_25AD288E8(v48);
          }

          v49 = (v41 - v43) >> 2;
          v50 = (4 * v45);
          v51 = (4 * v45 - 4 * v49);
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
          v42 = v41 + 4;
        }

        *(this + 2) = v42;
        v53 = *(a2 + 1);
        if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v42 - 1) = *(*a2 + v53);
        v39 = *(a2 + 2);
        v38 = *(a2 + 1) + 4;
        *(a2 + 1) = v38;
      }

      PB::Reader::recallMark();
LABEL_139:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_143;
      }
    }

    switch(v22)
    {
      case 4:
        *(this + 52) |= 0x40u;
        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        v30 = *a2;
        if (v29 > 0xFFFFFFFFFFFFFFF5 || v29 + 10 > v28)
        {
          v66 = 0;
          v67 = 0;
          v33 = 0;
          v68 = (v30 + v29);
          v18 = v28 >= v29;
          v69 = v28 - v29;
          if (!v18)
          {
            v69 = 0;
          }

          v70 = v29 + 1;
          while (1)
          {
            if (!v69)
            {
              LODWORD(v33) = 0;
              *(a2 + 24) = 1;
              goto LABEL_126;
            }

            v71 = *v68;
            *(a2 + 1) = v70;
            v33 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            ++v68;
            --v69;
            ++v70;
            v14 = v67++ > 8;
            if (v14)
            {
LABEL_103:
              LODWORD(v33) = 0;
              goto LABEL_126;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v33) = 0;
          }
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = (v30 + v29);
          v35 = v29 + 1;
          while (1)
          {
            *(a2 + 1) = v35;
            v36 = *v34++;
            v33 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
              goto LABEL_103;
            }
          }
        }

LABEL_126:
        *(this + 22) = v33;
        goto LABEL_139;
      case 5:
        *(this + 52) |= 0x100u;
        v56 = *(a2 + 1);
        v55 = *(a2 + 2);
        v57 = *a2;
        if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v55)
        {
          v72 = 0;
          v73 = 0;
          v60 = 0;
          v74 = (v57 + v56);
          v18 = v55 >= v56;
          v75 = v55 - v56;
          if (!v18)
          {
            v75 = 0;
          }

          v76 = v56 + 1;
          while (1)
          {
            if (!v75)
            {
              LODWORD(v60) = 0;
              *(a2 + 24) = 1;
              goto LABEL_129;
            }

            v77 = *v74;
            *(a2 + 1) = v76;
            v60 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            ++v74;
            --v75;
            ++v76;
            v14 = v73++ > 8;
            if (v14)
            {
LABEL_111:
              LODWORD(v60) = 0;
              goto LABEL_129;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v60) = 0;
          }
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          while (1)
          {
            *(a2 + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
            if (v14)
            {
              goto LABEL_111;
            }
          }
        }

LABEL_129:
        *(this + 24) = v60;
        goto LABEL_139;
      case 6:
        *(this + 52) |= 0x200u;
        v25 = *(a2 + 1);
        if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
        {
          goto LABEL_135;
        }

        *(this + 25) = *(*a2 + v25);
        goto LABEL_137;
    }

    goto LABEL_17;
  }

LABEL_143:
  v92 = v4 ^ 1;
  return v92 & 1;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
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

  v8 = *(v3 + 104);
  if ((v8 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 92));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_9:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(v3 + 96);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 104);
  if ((v8 & 0x200) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 100));
  v8 = *(v3 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 40));
  v8 = *(v3 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v8 = *(v3 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 64));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 104) & 8) == 0)
    {
      return this;
    }

    goto LABEL_26;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 72));
  v8 = *(v3 + 104);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v8 & 8) == 0)
  {
    return this;
  }

LABEL_26:
  v11 = *(v3 + 56);

  return PB::Writer::write(a2, v11);
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::hash_value(CMMsl::TempestPoCAuxiliaryDeviceMotion *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = CMMsl::AuxiliaryDeviceMotion::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  v7 = *(this + 52);
  if ((v7 & 0x80) != 0)
  {
    v19 = *(this + 23);
    v8 = LODWORD(v19);
    if (v19 == 0.0)
    {
      v8 = 0;
    }

    if ((v7 & 0x40) != 0)
    {
LABEL_6:
      v9 = *(this + 22);
      if ((*(this + 52) & 0x100) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
  if ((*(this + 52) & 0x100) != 0)
  {
LABEL_7:
    v10 = *(this + 24);
    if ((*(this + 52) & 0x200) != 0)
    {
      goto LABEL_8;
    }

LABEL_34:
    v12 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_35:
    v13 = 0.0;
    if ((v7 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_36:
    v14 = 0.0;
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    v15 = 0.0;
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v16 = 0.0;
    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v10 = 0;
  if ((*(this + 52) & 0x200) == 0)
  {
    goto LABEL_34;
  }

LABEL_8:
  v11 = *(this + 25);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_11:
  v13 = *(this + 5);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  v14 = *(this + 6);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v7 & 0x10) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v15 = *(this + 8);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v7 & 0x20) == 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  v16 = *(this + 9);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  if (v7)
  {
LABEL_23:
    v17 = *(this + 4);
    if (v17 == 0.0)
    {
      v17 = 0.0;
    }

    if ((v7 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_40:
    v18 = 0.0;
    return v6 ^ v3 ^ v8 ^ v9 ^ v10 ^ v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
  }

LABEL_39:
  v17 = 0.0;
  if ((v7 & 8) == 0)
  {
    goto LABEL_40;
  }

LABEL_26:
  v18 = *(this + 7);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v6 ^ v3 ^ v8 ^ v9 ^ v10 ^ v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

void CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(CMMsl::TempestPoCListenerOrientation *this)
{
  *this = &unk_286C24050;
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
  CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::TempestPoCListenerOrientation *CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(CMMsl::TempestPoCListenerOrientation *this, const CMMsl::TempestPoCListenerOrientation *a2)
{
  *this = &unk_286C24050;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 32) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 64);
  if ((v5 & 0x20) != 0)
  {
    v7 = *(a2 + 12);
    v6 = 32;
    *(this + 64) = 32;
    *(this + 12) = v7;
    v5 = *(a2 + 64);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 64) & 0x400) != 0)
  {
LABEL_5:
    v8 = *(a2 + 30);
    v6 |= 0x400u;
    *(this + 64) = v6;
    *(this + 30) = v8;
    v5 = *(a2 + 64);
  }

LABEL_6:
  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *(a2 + 28);
  v6 |= 0x100u;
  *(this + 64) = v6;
  *(this + 28) = v14;
  if ((*(a2 + 64) & 0x200) != 0)
  {
LABEL_8:
    v9 = *(a2 + 29);
    *(this + 64) = v6 | 0x200;
    *(this + 29) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v10 = *(a2 + 64);
  if ((v10 & 0x800) != 0)
  {
    v15 = *(a2 + 124);
    *(this + 64) |= 0x800u;
    *(this + 124) = v15;
    v10 = *(a2 + 64);
    if ((v10 & 0x40) == 0)
    {
LABEL_13:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(a2 + 26);
  *(this + 64) |= 0x40u;
  *(this + 26) = v16;
  v10 = *(a2 + 64);
  if ((v10 & 0x80) == 0)
  {
LABEL_14:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = *(a2 + 27);
  *(this + 64) |= 0x80u;
  *(this + 27) = v17;
  v10 = *(a2 + 64);
  if ((v10 & 0x10) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = *(a2 + 11);
  *(this + 64) |= 0x10u;
  *(this + 11) = v18;
  v10 = *(a2 + 64);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = *(a2 + 7);
  *(this + 64) |= 1u;
  *(this + 7) = v19;
  v10 = *(a2 + 64);
  if ((v10 & 8) == 0)
  {
LABEL_17:
    if ((v10 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_31:
  v20 = *(a2 + 10);
  *(this + 64) |= 8u;
  *(this + 10) = v20;
  if ((*(a2 + 64) & 2) != 0)
  {
LABEL_18:
    v11 = *(a2 + 8);
    *(this + 64) |= 2u;
    *(this + 8) = v11;
  }

LABEL_19:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 64) & 4) != 0)
  {
    v12 = *(a2 + 9);
    *(this + 64) |= 4u;
    *(this + 9) = v12;
  }

  return this;
}

CMMsl *CMMsl::TempestPoCListenerOrientation::operator=(CMMsl *a1, const CMMsl::TempestPoCListenerOrientation *a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TempestPoCListenerOrientation *a2, CMMsl::TempestPoCListenerOrientation *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  LOBYTE(v7) = *(this + 124);
  *(this + 124) = *(a2 + 124);
  *(a2 + 124) = v7;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

uint64_t CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24050;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

CMMsl *CMMsl::TempestPoCListenerOrientation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::TempestPoCListenerOrientation::~TempestPoCListenerOrientation(v5);
  }

  return a1;
}

uint64_t CMMsl::TempestPoCListenerOrientation::formatText(CMMsl::TempestPoCListenerOrientation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "angularVelocityConstraintRps", *(this + 26));
    v5 = *(this + 64);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "consumedAuxTimestamp", *(this + 7));
  v5 = *(this + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "dthetaNormRad", *(this + 27));
  v5 = *(this + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(this + 124);
  PB::TextFormatter::format(a2, "inBTZ");
  v5 = *(this + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "listenerPitch", *(this + 28));
  v5 = *(this + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "listenerRoll", *(this + 29));
  v5 = *(this + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "listenerYaw", *(this + 30));
  v5 = *(this + 64);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "machAbsTimestamp", *(this + 8));
  if ((*(this + 64) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "presentationTimestamp", *(this + 9));
  }

LABEL_11:
  v6 = *(this + 4);
  v7 = *(this + 5);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "quaternion", v8);
  }

  v9 = *(this + 1);
  v10 = *(this + 2);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "quaternionWithoutPrediction", v11);
  }

  v12 = *(this + 64);
  if ((v12 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "receivedAuxTimestamp", *(this + 10));
    v12 = *(this + 64);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(a2, "srcTimestamp", *(this + 11));
  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  }

LABEL_19:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TempestPoCListenerOrientation::readFrom(CMMsl::TempestPoCListenerOrientation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_137;
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
          *(this + 64) |= 0x20u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 12) = *(*a2 + v23);
          goto LABEL_96;
        case 2u:
          *(this + 64) |= 0x400u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 30) = *(*a2 + v61);
          goto LABEL_131;
        case 3u:
          *(this + 64) |= 0x100u;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 28) = *(*a2 + v58);
          goto LABEL_131;
        case 4u:
          *(this + 64) |= 0x200u;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 29) = *(*a2 + v59);
          goto LABEL_131;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
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
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_141;
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
                v29 = v28 + 4;
              }

              *(this + 5) = v29;
              v40 = *(a2 + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
              {
                goto LABEL_103;
              }

              *(v29 - 1) = *(*a2 + v40);
              v26 = *(a2 + 2);
              v25 = *(a2 + 1) + 4;
              *(a2 + 1) = v25;
            }

LABEL_104:
            PB::Reader::recallMark();
            goto LABEL_133;
          }

          v72 = *(this + 5);
          v71 = *(this + 6);
          if (v72 < v71)
          {
            *v72 = 0;
            v73 = v72 + 4;
LABEL_123:
            *(this + 5) = v73;
LABEL_127:
            v96 = *(a2 + 1);
            if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(a2 + 2))
            {
              *(v73 - 1) = *(*a2 + v96);
LABEL_131:
              v70 = *(a2 + 1) + 4;
LABEL_132:
              *(a2 + 1) = v70;
            }

            else
            {
LABEL_129:
              *(a2 + 24) = 1;
            }

            goto LABEL_133;
          }

          v76 = *(this + 4);
          v77 = v72 - v76;
          v78 = (v72 - v76) >> 2;
          v79 = v78 + 1;
          if (!((v78 + 1) >> 62))
          {
            v80 = v71 - v76;
            if (v80 >> 1 > v79)
            {
              v79 = v80 >> 1;
            }

            if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v81 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v79;
            }

            if (v81)
            {
              sub_25AD288E8(v81);
            }

            v88 = (v72 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v73 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(this + 4);
            *(this + 4) = v90;
            *(this + 5) = v73;
            *(this + 6) = 0;
            if (v91)
            {
              operator delete(v91);
            }

            goto LABEL_123;
          }

          goto LABEL_141;
        case 6u:
          *(this + 64) |= 0x800u;
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

          *(this + 124) = v65;
          goto LABEL_133;
        case 7u:
          *(this + 64) |= 0x40u;
          v67 = *(a2 + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 26) = *(*a2 + v67);
          goto LABEL_131;
        case 8u:
          *(this + 64) |= 0x80u;
          v60 = *(a2 + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 27) = *(*a2 + v60);
          goto LABEL_131;
        case 9u:
          *(this + 64) |= 0x10u;
          v69 = *(a2 + 1);
          if (v69 > 0xFFFFFFFFFFFFFFF7 || v69 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 11) = *(*a2 + v69);
          goto LABEL_96;
        case 0xAu:
          *(this + 64) |= 1u;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 7) = *(*a2 + v57);
          goto LABEL_96;
        case 0xBu:
          *(this + 64) |= 8u;
          v68 = *(a2 + 1);
          if (v68 > 0xFFFFFFFFFFFFFFF7 || v68 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 10) = *(*a2 + v68);
          goto LABEL_96;
        case 0xCu:
          *(this + 64) |= 2u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 8) = *(*a2 + v24);
          goto LABEL_96;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
            }

            v41 = *(a2 + 1);
            v42 = *(a2 + 2);
            while (v41 < v42 && (*(a2 + 24) & 1) == 0)
            {
              v44 = *(this + 2);
              v43 = *(this + 3);
              if (v44 >= v43)
              {
                v46 = *(this + 1);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_141;
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
                v55 = *(this + 1);
                *(this + 1) = v54;
                *(this + 2) = v45;
                *(this + 3) = 0;
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

              *(this + 2) = v45;
              v56 = *(a2 + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
              {
LABEL_103:
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              *(v45 - 1) = *(*a2 + v56);
              v42 = *(a2 + 2);
              v41 = *(a2 + 1) + 4;
              *(a2 + 1) = v41;
            }

            goto LABEL_104;
          }

          v75 = *(this + 2);
          v74 = *(this + 3);
          if (v75 >= v74)
          {
            v82 = *(this + 1);
            v83 = v75 - v82;
            v84 = (v75 - v82) >> 2;
            v85 = v84 + 1;
            if ((v84 + 1) >> 62)
            {
LABEL_141:
              sub_25AAE66B8();
            }

            v86 = v74 - v82;
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

            v92 = (v75 - v82) >> 2;
            v93 = (4 * v84);
            v94 = (4 * v84 - 4 * v92);
            *v93 = 0;
            v73 = v93 + 1;
            memcpy(v94, v82, v83);
            v95 = *(this + 1);
            *(this + 1) = v94;
            *(this + 2) = v73;
            *(this + 3) = 0;
            if (v95)
            {
              operator delete(v95);
            }
          }

          else
          {
            *v75 = 0;
            v73 = v75 + 4;
          }

          *(this + 2) = v73;
          goto LABEL_127;
        case 0xEu:
          *(this + 64) |= 4u;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFF7 || v66 + 8 > *(a2 + 2))
          {
            goto LABEL_129;
          }

          *(this + 9) = *(*a2 + v66);
LABEL_96:
          v70 = *(a2 + 1) + 8;
          goto LABEL_132;
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
        goto LABEL_137;
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
LABEL_139:
      v97 = 0;
      return v97 & 1;
    }

LABEL_133:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_137:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t CMMsl::TempestPoCListenerOrientation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 96));
    v4 = *(v3 + 128);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      this = PB::Writer::write(a2, *(v3 + 112));
      if ((*(v3 + 128) & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 128) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    this = PB::Writer::write(a2, *(v3 + 116));
  }

LABEL_6:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 128);
  if ((v8 & 0x800) != 0)
  {
    v12 = *(v3 + 124);
    this = PB::Writer::write(a2);
    v8 = *(v3 + 128);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  this = PB::Writer::write(a2, *(v3 + 104));
  v8 = *(v3 + 128);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 108));
  v8 = *(v3 + 128);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 88));
  v8 = *(v3 + 128);
  if ((v8 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    this = PB::Writer::write(a2, *(v3 + 80));
    if ((*(v3 + 128) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 56));
  v8 = *(v3 + 128);
  if ((v8 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v8 & 2) != 0)
  {
LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 64));
  }

LABEL_17:
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11);
  }

  if ((*(v3 + 128) & 4) != 0)
  {
    v13 = *(v3 + 72);

    return PB::Writer::write(a2, v13);
  }

  return this;
}

uint64_t CMMsl::TempestPoCListenerOrientation::hash_value(CMMsl::TempestPoCListenerOrientation *this)
{
  if ((*(this + 64) & 0x20) == 0)
  {
    v29 = 0.0;
    if ((*(this + 64) & 0x400) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v28 = 0;
    if ((*(this + 64) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 12);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  v29 = v8;
  if ((*(this + 64) & 0x400) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 30);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  v28 = v3;
  if ((*(this + 64) & 0x100) != 0)
  {
LABEL_6:
    v4 = *(this + 28);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    v27 = v5;
    if ((*(this + 64) & 0x200) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

LABEL_16:
  v27 = 0;
  if ((*(this + 64) & 0x200) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 29);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

LABEL_18:
  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = PBHashBytes();
  v12 = *(this + 64);
  if ((v12 & 0x800) == 0)
  {
    v13 = 0;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_44:
    v15 = 0;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_24;
    }

LABEL_45:
    v17 = 0;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    v18 = 0;
    if (v12)
    {
      goto LABEL_32;
    }

LABEL_47:
    v19 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v13 = *(this + 124);
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  v14 = *(this + 26);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = LODWORD(v14);
  }

  if ((v12 & 0x80) == 0)
  {
    goto LABEL_45;
  }

LABEL_24:
  v16 = *(this + 27);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v12 & 0x10) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (*(this + 11) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 11);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if (*(this + 7) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 7);
  }

  if ((v12 & 8) != 0)
  {
LABEL_36:
    if (*(this + 10) == 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(this + 10);
    }

    if ((v12 & 2) != 0)
    {
      goto LABEL_40;
    }

LABEL_49:
    v21 = 0;
    goto LABEL_50;
  }

LABEL_48:
  v20 = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  if (*(this + 8) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 8);
  }

LABEL_50:
  v22 = *(this + 1);
  v23 = *(this + 2);
  v24 = PBHashBytes();
  if ((*(this + 64) & 4) != 0)
  {
    v25 = *(this + 9);
    if (v25 == 0.0)
    {
      v25 = 0.0;
    }
  }

  else
  {
    v25 = 0.0;
  }

  return v28 ^ *&v29 ^ v27 ^ v7 ^ v13 ^ v15 ^ v17 ^ v18 ^ v11 ^ v19 ^ v20 ^ v21 ^ v24 ^ *&v25;
}

void CMMsl::Timestamp::~Timestamp(CMMsl::Timestamp *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Timestamp::Timestamp(uint64_t this, const CMMsl::Timestamp *a2)
{
  *this = &unk_286C24088;
  *(this + 16) = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
    v3 = *(a2 + 4);
    *(this + 20) = 2;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 20))
  {
LABEL_5:
    v4 = *(a2 + 1);
    *(this + 20) = v2;
    *(this + 8) = v4;
  }

  return this;
}

const CMMsl::Timestamp *CMMsl::Timestamp::operator=(const CMMsl::Timestamp *a1, const CMMsl::Timestamp *a2)
{
  if (a1 != a2)
  {
    CMMsl::Timestamp::Timestamp(v6, a2);
    v3 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::Timestamp *a2, CMMsl::Timestamp *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t CMMsl::Timestamp::Timestamp(uint64_t result, uint64_t a2)
{
  *result = &unk_286C24088;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C24088;
  *(result + 16) = 0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::Timestamp::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
    v8[2] = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8[0] = &unk_286C24088;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::Timestamp::formatText(CMMsl::Timestamp *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "source");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Timestamp::readFrom(CMMsl::Timestamp *this, PB::Reader *a2)
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
        *(this + 20) |= 1u;
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
              v34 = 0;
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
              v34 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v34 = 0;
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
              v34 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 2u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 4) = v26;
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

uint64_t CMMsl::Timestamp::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::Timestamp::hash_value(CMMsl::Timestamp *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    v1 = *(this + 4);
    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 1);
  return v2 ^ v1;
}

void CMMsl::TouchOscarEmu::~TouchOscarEmu(CMMsl::TouchOscarEmu *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::TouchOscarEmu::TouchOscarEmu(uint64_t this, const CMMsl::TouchOscarEmu *a2)
{
  *this = &unk_286C240C0;
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

uint64_t CMMsl::TouchOscarEmu::operator=(uint64_t a1, const CMMsl::TouchOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::TouchOscarEmu::TouchOscarEmu(v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::TouchOscarEmu *a2, CMMsl::TouchOscarEmu *a3)
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

double CMMsl::TouchOscarEmu::TouchOscarEmu(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C240C0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C240C0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::TouchOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C240C0;
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

uint64_t CMMsl::TouchOscarEmu::formatText(CMMsl::TouchOscarEmu *this, PB::TextFormatter *a2, const char *a3)
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
    PB::TextFormatter::format(a2, "touchDetected");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TouchOscarEmu::readFrom(CMMsl::TouchOscarEmu *this, PB::Reader *a2)
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

uint64_t CMMsl::TouchOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::TouchOscarEmu::hash_value(CMMsl::TouchOscarEmu *this)
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

void CMMsl::TrackRunData::~TrackRunData(CMMsl::TrackRunData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::TrackRunData::TrackRunData(uint64_t this, const CMMsl::TrackRunData *a2)
{
  *this = &unk_286C240F8;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 16;
    *(this + 40) = 16;
    *(this + 28) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 2u;
  *(this + 40) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 32) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 36);
    *(this + 40) = v3 | 0x40;
    *(this + 36) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 8) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::TrackRunData::operator=(uint64_t a1, const CMMsl::TrackRunData *a2)
{
  if (a1 != a2)
  {
    CMMsl::TrackRunData::TrackRunData(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    LOBYTE(v5) = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::TrackRunData *a2, CMMsl::TrackRunData *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v8) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v8;
  return result;
}

double CMMsl::TrackRunData::TrackRunData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C240F8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

{
  *a1 = &unk_286C240F8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 36) = *(a2 + 36);
  return result;
}

uint64_t CMMsl::TrackRunData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = &unk_286C240F8;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 32);
    v5 = *(a2 + 8);
    v6 = *(a2 + 36);
    v15 = *(a1 + 40);
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 16) = v8;
    v12 = v7;
    v9 = *(a1 + 32);
    *(a1 + 32) = v4;
    v13 = v9;
    *&v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v11[1] = v7;
    LOBYTE(v9) = *(a1 + 36);
    *(a1 + 36) = v6;
    v14 = v9;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::TrackRunData::formatText(CMMsl::TrackRunData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "distanceToTrackMeters", *(this + 1));
    v5 = *(this + 40);
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

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "estimatedLaneConfidence");
  v5 = *(this + 40);
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
  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "estimatedLaneNumber");
  v5 = *(this + 40);
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
  v9 = *(this + 6);
  PB::TextFormatter::format(a2, "laneCount");
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(this + 7);
  PB::TextFormatter::format(a2, "laneNumber");
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v11 = *(this + 36);
  PB::TextFormatter::format(a2, "odometerHasBeenCorrected");
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_8:
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "trackProximity");
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::TrackRunData::readFrom(CMMsl::TrackRunData *this, PB::Reader *a2)
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
          *(this + 40) |= 0x10u;
          v41 = *(a2 + 1);
          v2 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(a2 + 1);
            }

            v67 = (v42 + v41);
            v68 = v2 - v41;
            v69 = v41 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v45) = 0;
                *(a2 + 24) = 1;
                goto LABEL_123;
              }

              v70 = v69;
              v71 = *v67;
              *(a2 + 1) = v70;
              v45 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v67;
              --v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v45) = 0;
                goto LABEL_122;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_122:
            v2 = v70;
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

LABEL_123:
          *(this + 7) = v45;
          goto LABEL_19;
        case 2:
          *(this + 40) |= 4u;
          v57 = *(a2 + 1);
          v2 = *(a2 + 2);
          v58 = *a2;
          if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v61 = 0;
            if (v2 <= v57)
            {
              v2 = *(a2 + 1);
            }

            v95 = (v58 + v57);
            v96 = v2 - v57;
            v97 = v57 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v61) = 0;
                *(a2 + 24) = 1;
                goto LABEL_139;
              }

              v98 = v97;
              v99 = *v95;
              *(a2 + 1) = v98;
              v61 |= (v99 & 0x7F) << v93;
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
                LODWORD(v61) = 0;
                goto LABEL_138;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v61) = 0;
            }

LABEL_138:
            v2 = v98;
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
              v2 = v63;
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
                LODWORD(v61) = 0;
                break;
              }
            }
          }

LABEL_139:
          *(this + 5) = v61;
          goto LABEL_19;
        case 3:
          *(this + 40) |= 8u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v88 = (v32 + v31);
            v89 = v2 - v31;
            v90 = v31 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_135;
              }

              v91 = v90;
              v92 = *v88;
              *(a2 + 1) = v91;
              v35 |= (v92 & 0x7F) << v86;
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
                LODWORD(v35) = 0;
                goto LABEL_134;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_134:
            v2 = v91;
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
          *(this + 6) = v35;
          goto LABEL_19;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 1u;
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

        goto LABEL_19;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v40 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v39 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v40 = v39 != 0;
        }

        *(this + 36) = v40;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 2u;
        v49 = *(a2 + 1);
        v2 = *(a2 + 2);
        v50 = *a2;
        if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
        {
          v72 = 0;
          v73 = 0;
          v53 = 0;
          if (v2 <= v49)
          {
            v2 = *(a2 + 1);
          }

          v74 = (v50 + v49);
          v75 = v2 - v49;
          v76 = v49 + 1;
          while (1)
          {
            if (!v75)
            {
              LODWORD(v53) = 0;
              *(a2 + 24) = 1;
              goto LABEL_127;
            }

            v77 = v76;
            v78 = *v74;
            *(a2 + 1) = v77;
            v53 |= (v78 & 0x7F) << v72;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            ++v74;
            --v75;
            v76 = v77 + 1;
            v14 = v73++ > 8;
            if (v14)
            {
              LODWORD(v53) = 0;
              goto LABEL_126;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v53) = 0;
          }

LABEL_126:
          v2 = v77;
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

LABEL_127:
        *(this + 4) = v53;
        goto LABEL_19;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 0x20u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v79 = 0;
          v80 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v81 = (v24 + v23);
          v82 = v2 - v23;
          v83 = v23 + 1;
          while (1)
          {
            if (!v82)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_131;
            }

            v84 = v83;
            v85 = *v81;
            *(a2 + 1) = v84;
            v27 |= (v85 & 0x7F) << v79;
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
              LODWORD(v27) = 0;
              goto LABEL_130;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_130:
          v2 = v84;
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
        *(this + 8) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v100 = 0;
      return v100 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t CMMsl::TrackRunData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(this + 28);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if (v4)
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

  return PB::Writer::write(a2);
}

uint64_t CMMsl::TrackRunData::hash_value(CMMsl::TrackRunData *this)
{
  if ((*(this + 40) & 0x10) != 0)
  {
    v1 = *(this + 7);
    if ((*(this + 40) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 40) & 2) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_6:
    v5 = *(this + 8);
    if (*(this + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if (*(this + 40))
  {
LABEL_7:
    v6 = *(this + 1);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ *&v6 ^ v7;
  }

LABEL_16:
  v6 = 0.0;
  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v7 = *(this + 36);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ *&v6 ^ v7;
}

void CMMsl::UWBRange::~UWBRange(CMMsl::UWBRange *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::UWBRange::UWBRange(CMMsl::UWBRange *this, const CMMsl::UWBRange *a2)
{
  *this = &unk_286C24130;
  *(this + 14) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 56) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 56);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 56) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if (v2)
  {
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 56) = v3;
    *(this + 1) = v5;
    v2 = *(a2 + 56);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 56) = v3;
  *(this + 2) = v6;
  v2 = *(a2 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 6);
    *(this + 56) = v3 | 0x20;
    *(this + 6) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 56) = v3;
  *(this + 5) = result;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::UWBRange::operator=(uint64_t a1, const CMMsl::UWBRange *a2)
{
  if (a1 != a2)
  {
    CMMsl::UWBRange::UWBRange(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::UWBRange *a2, CMMsl::UWBRange *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double CMMsl::UWBRange::UWBRange(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24130;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

{
  *a1 = &unk_286C24130;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t CMMsl::UWBRange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C24130;
    v3 = *(a2 + 56);
    *(a2 + 56) = 0;
    v13 = *(a1 + 56);
    v4 = *(a2 + 24);
    v11 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v10 = v5;
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 56) = v3;
    *(a1 + 24) = v4;
    *(a1 + 40) = v7;
    v12 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::UWBRange::formatText(CMMsl::UWBRange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "cycleIndex");
    v5 = *(this + 56);
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

  else if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 2);
  PB::TextFormatter::format(a2, "error");
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "machAbsoluteTimestamp", *(this + 3));
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 4));
  v5 = *(this + 56);
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
  PB::TextFormatter::format(a2, "range", *(this + 5));
  if ((*(this + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "rssi", *(this + 6));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::UWBRange::readFrom(CMMsl::UWBRange *this, PB::Reader *a2)
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
          *(this + 56) |= 2u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v32 + v31);
            v42 = v2 - v31;
            v43 = v31 + 1;
            while (1)
            {
              if (!v42)
              {
                v35 = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v35 |= (v45 & 0x7F) << v39;
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
                v35 = 0;
                goto LABEL_75;
              }
            }

            if (*(a2 + 24))
            {
              v35 = 0;
            }

LABEL_75:
            v2 = v44;
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

LABEL_76:
          *(this + 2) = v35;
          goto LABEL_81;
        case 5:
          *(this + 56) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_52:
            *(a2 + 24) = 1;
            goto LABEL_81;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_70;
        case 6:
          *(this + 56) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_70;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 56) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_70;
        case 2:
          *(this + 56) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_70:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_81;
        case 3:
          *(this + 56) |= 1u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v24 + v23);
            v49 = v2 - v23;
            v50 = v23 + 1;
            while (1)
            {
              if (!v49)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_80;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v27 |= (v52 & 0x7F) << v46;
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
                v27 = 0;
                goto LABEL_79;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_79:
            v2 = v51;
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

LABEL_80:
          *(this + 1) = v27;
          goto LABEL_81;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_81:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::UWBRange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v5 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 40));
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v6 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v3 + 48);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::UWBRange::hash_value(CMMsl::UWBRange *this)
{
  if ((*(this + 56) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v2 = 0.0;
    if (*(this + 56))
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 56))
  {
LABEL_6:
    v3 = *(this + 1);
    if ((*(this + 56) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 = 0;
  if ((*(this + 56) & 2) != 0)
  {
LABEL_7:
    v4 = *(this + 2);
    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_8:
    v5 = *(this + 5);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v6 = 0.0;
    return *&v2 ^ *&v1 ^ v3 ^ v4 ^ *&v5 ^ *&v6;
  }

LABEL_20:
  v5 = 0.0;
  if ((*(this + 56) & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v6 = *(this + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ *&v1 ^ v3 ^ v4 ^ *&v5 ^ *&v6;
}

void CMMsl::UltraFastAccel::~UltraFastAccel(CMMsl::UltraFastAccel *this)
{
  *this = &unk_286C24168;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::UltraFastAccel::~UltraFastAccel(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::UltraFastAccel::UltraFastAccel(uint64_t this, const CMMsl::UltraFastAccel *a2)
{
  *this = &unk_286C24168;
  *(this + 16) = 0;
  *(this + 24) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::UltraFastAccel::operator=(uint64_t a1, const CMMsl::UltraFastAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::UltraFastAccel::UltraFastAccel(&v8, a2);
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
    CMMsl::UltraFastAccel::~UltraFastAccel(&v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::UltraFastAccel *a2, CMMsl::UltraFastAccel *a3)
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

uint64_t CMMsl::UltraFastAccel::UltraFastAccel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24168;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t CMMsl::UltraFastAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::UltraFastAccel::UltraFastAccel(&v8, a2);
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
    CMMsl::UltraFastAccel::~UltraFastAccel(&v8);
  }

  return a1;
}

uint64_t CMMsl::UltraFastAccel::formatText(CMMsl::UltraFastAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "aopTimestamp");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::UltraFastAccel::readFrom(CMMsl::UltraFastAccel *this, PB::Reader *a2)
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
        *(this + 1) = v27;
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

uint64_t CMMsl::UltraFastAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

unint64_t CMMsl::UltraFastAccel::hash_value(CMMsl::UltraFastAccel *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v2 = CMMsl::Accel::hash_value(v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::UltraFastAccel::makeSuper(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

void CMMsl::UserStudyEvent::~UserStudyEvent(CMMsl::UserStudyEvent *this)
{
  v2 = *(this + 1);
  *this = &unk_286C241A0;
  *(this + 1) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::UserStudyEvent::~UserStudyEvent(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::UserStudyEvent::UserStudyEvent(uint64_t this, const CMMsl::UserStudyEvent *a2)
{
  *this = &unk_286C241A0;
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

uint64_t CMMsl::UserStudyEvent::operator=(uint64_t a1, const CMMsl::UserStudyEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::UserStudyEvent::UserStudyEvent(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::UserStudyEvent::~UserStudyEvent(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::UserStudyEvent *a2, CMMsl::UserStudyEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  return result;
}

uint64_t CMMsl::UserStudyEvent::UserStudyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C241A0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    sub_25AD28A30(v4);
  }

  return a1;
}

uint64_t CMMsl::UserStudyEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::UserStudyEvent::UserStudyEvent(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::UserStudyEvent::~UserStudyEvent(&v7);
  }

  return a1;
}

uint64_t CMMsl::UserStudyEvent::formatText(CMMsl::UserStudyEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::UserStudyEvent::readFrom(CMMsl::UserStudyEvent *this, PB::Reader *a2)
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
        goto LABEL_32;
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
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_32;
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

LABEL_32:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::UserStudyEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write(a2, *(this + 16));
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

unint64_t CMMsl::UserStudyEvent::hash_value(CMMsl::UserStudyEvent *this)
{
  if (*(this + 24))
  {
    if (*(this + 2) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 2);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v2 = sub_25AD28AE4(v2);
  }

  return v2 ^ v1;
}

void CMMsl::VIOEstimation::~VIOEstimation(CMMsl::VIOEstimation *this)
{
  *this = &unk_286C241D8;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VIOEstimation::~VIOEstimation(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VIOEstimation *CMMsl::VIOEstimation::VIOEstimation(CMMsl::VIOEstimation *this, const CMMsl::VIOEstimation *a2)
{
  *this = &unk_286C241D8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  v6 = (this + 104);
  *(this + 152) = 0u;
  v7 = (this + 152);
  *(this + 200) = 0u;
  v8 = (this + 200);
  *(this + 248) = 0u;
  v9 = (this + 248);
  *(this + 42) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  v10 = *(a2 + 340);
  if ((v10 & 0x40) != 0)
  {
    v12 = *(a2 + 84);
    v11 = 64;
    *(this + 340) = 64;
    *(this + 84) = v12;
    v10 = *(a2 + 340);
    if ((v10 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if ((*(a2 + 340) & 4) != 0)
  {
LABEL_5:
    v13 = *(a2 + 39);
    v11 |= 4u;
    *(this + 340) = v11;
    *(this + 39) = v13;
    v10 = *(a2 + 340);
  }

LABEL_6:
  if (v10)
  {
    v19 = *(a2 + 37);
    v11 |= 1u;
    *(this + 340) = v11;
    *(this + 37) = v19;
    v10 = *(a2 + 340);
    if ((v10 & 8) == 0)
    {
LABEL_8:
      if ((v10 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_8;
  }

  v20 = *(a2 + 40);
  v11 |= 8u;
  *(this + 340) = v11;
  *(this + 40) = v20;
  if ((*(a2 + 340) & 2) != 0)
  {
LABEL_9:
    v14 = *(a2 + 38);
    *(this + 340) = v11 | 2;
    *(this + 38) = v14;
  }

LABEL_10:
  if (this != a2)
  {
    sub_25AD285D4(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 3);
    sub_25AD285D4(v6, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 3);
    sub_25AD285D4(this + 34, *(a2 + 34), *(a2 + 35), (*(a2 + 35) - *(a2 + 34)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 28, *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 3);
    sub_25AD285D4(v7, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 3);
    sub_25AD285D4(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 3);
    sub_25AD285D4(v9, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v8, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 3);
    sub_25AD285D4(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_25AD285D4(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v15 = *(a2 + 340);
  if ((v15 & 0x20) != 0)
  {
    v16 = *(a2 + 83);
    *(this + 340) |= 0x20u;
    *(this + 83) = v16;
    v15 = *(a2 + 340);
  }

  if ((v15 & 0x10) != 0)
  {
    v17 = *(a2 + 82);
    *(this + 340) |= 0x10u;
    *(this + 82) = v17;
  }

  return this;
}

CMMsl *CMMsl::VIOEstimation::operator=(CMMsl *a1, const CMMsl::VIOEstimation *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOEstimation::VIOEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOEstimation::~VIOEstimation(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::VIOEstimation *a2, CMMsl::VIOEstimation *a3)
{
  v3 = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v3;
  v4 = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v4;
  v5 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v5;
  v6 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v6;
  v7 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v8;
  v9 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v9;
  v10 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v14;
  v15 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v15;
  v16 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v16;
  v17 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v17;
  v18 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v21;
  v22 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v22;
  v23 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v23;
  v24 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v24;
  v25 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v25;
  v26 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v26;
  v27 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v27;
  v28 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v28;
  v29 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v29;
  v30 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v30;
  v31 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v31;
  v32 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v32;
  v33 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v33;
  v34 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v34;
  v35 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v35;
  v36 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v36;
  v37 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v37;
  v38 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v38;
  v39 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v39;
  v40 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v40;
  v41 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v41;
  v42 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v42;
  v43 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v43;
  v44 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v44;
  LODWORD(v8) = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v8;
  result = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = result;
  return result;
}

uint64_t CMMsl::VIOEstimation::VIOEstimation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C241D8;
  *(a1 + 336) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 200) = 0u;
  v6 = a1 + 200;
  *(a1 + 248) = 0u;
  v7 = a1 + 248;
  *(a1 + 152) = 0u;
  v8 = a1 + 152;
  *(a1 + 104) = 0u;
  v9 = a1 + 104;
  *(a1 + 340) = *(a2 + 340);
  *(a2 + 340) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  sub_25AD28758(a1 + 176, (a2 + 176));
  sub_25AD28758(v9, (a2 + 104));
  sub_25AD28758(a1 + 272, (a2 + 272));
  sub_25AD28758(v4, (a2 + 8));
  sub_25AD28758(a1 + 224, (a2 + 224));
  sub_25AD28758(v8, (a2 + 152));
  sub_25AD28758(a1 + 128, (a2 + 128));
  sub_25AD28758(v7, (a2 + 248));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v6, (a2 + 200));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v5, (a2 + 56));
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 328) = *(a2 + 328);
  return a1;
}

CMMsl *CMMsl::VIOEstimation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOEstimation::VIOEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOEstimation::~VIOEstimation(v5);
  }

  return a1;
}

uint64_t CMMsl::VIOEstimation::formatText(CMMsl::VIOEstimation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "accelBias", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "accelBiasCov", v10);
  }

  v11 = *(this + 340);
  if ((v11 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "cameraImageResolutionHeight", *(this + 82));
    v11 = *(this + 340);
  }

  if ((v11 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "cameraImageResolutionWidth", *(this + 83));
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "cameraIntrinsics", v14);
  }

  v15 = *(this + 10);
  v16 = *(this + 11);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(a2, "cameraPose", v17);
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "gyroBias", v20);
  }

  v21 = *(this + 16);
  v22 = *(this + 17);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(a2, "gyroBiasCov", v23);
  }

  v24 = *(this + 340);
  if (v24)
  {
    PB::TextFormatter::format(a2, "machContinuousOriginTimestamp", *(this + 37));
    v24 = *(this + 340);
  }

  if ((v24 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 38));
  }

  v25 = *(this + 22);
  v26 = *(this + 23);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(a2, "orientation", v27);
  }

  v28 = *(this + 19);
  v29 = *(this + 20);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(a2, "orientationCov", v30);
  }

  if ((*(this + 340) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "originTimestamp", *(this + 39));
  }

  v31 = *(this + 28);
  v32 = *(this + 29);
  while (v31 != v32)
  {
    v33 = *v31++;
    PB::TextFormatter::format(a2, "position", v33);
  }

  v34 = *(this + 25);
  v35 = *(this + 26);
  while (v34 != v35)
  {
    v36 = *v34++;
    PB::TextFormatter::format(a2, "positionCov", v36);
  }

  v37 = *(this + 340);
  if ((v37 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 40));
    v37 = *(this + 340);
  }

  if ((v37 & 0x40) != 0)
  {
    v38 = *(this + 84);
    PB::TextFormatter::format(a2, "trackingState");
  }

  v39 = *(this + 34);
  v40 = *(this + 35);
  while (v39 != v40)
  {
    v41 = *v39++;
    PB::TextFormatter::format(a2, "velocity", v41);
  }

  v42 = *(this + 31);
  v43 = *(this + 32);
  while (v42 != v43)
  {
    v44 = *v42++;
    PB::TextFormatter::format(a2, "velocityCov", v44);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VIOEstimation::readFrom(CMMsl::VIOEstimation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_467;
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
          *(this + 340) |= 0x40u;
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
                goto LABEL_420;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_308:
            LODWORD(v28) = 0;
            goto LABEL_420;
          }

          v244 = 0;
          v245 = 0;
          v28 = 0;
          v246 = (v25 + v24);
          v18 = v23 >= v24;
          v247 = v23 - v24;
          if (!v18)
          {
            v247 = 0;
          }

          v248 = v24 + 1;
          while (2)
          {
            if (v247)
            {
              v249 = *v246;
              *(a2 + 1) = v248;
              v28 |= (v249 & 0x7F) << v244;
              if (v249 < 0)
              {
                v244 += 7;
                ++v246;
                --v247;
                ++v248;
                v14 = v245++ > 8;
                if (v14)
                {
                  goto LABEL_308;
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

LABEL_420:
          *(this + 84) = v28;
          goto LABEL_463;
        case 2u:
          *(this + 340) |= 4u;
          v147 = *(a2 + 1);
          if (v147 > 0xFFFFFFFFFFFFFFF7 || v147 + 8 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 39) = *(*a2 + v147);
          goto LABEL_461;
        case 3u:
          *(this + 340) |= 1u;
          v113 = *(a2 + 1);
          if (v113 > 0xFFFFFFFFFFFFFFF7 || v113 + 8 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 37) = *(*a2 + v113);
          goto LABEL_461;
        case 4u:
          *(this + 340) |= 8u;
          v130 = *(a2 + 1);
          if (v130 > 0xFFFFFFFFFFFFFFF7 || v130 + 8 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 40) = *(*a2 + v130);
          goto LABEL_461;
        case 5u:
          *(this + 340) |= 2u;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 38) = *(*a2 + v80);
          goto LABEL_461;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v149 = *(a2 + 1);
            v150 = *(a2 + 2);
            while (v149 < v150 && (*(a2 + 24) & 1) == 0)
            {
              v152 = *(this + 23);
              v151 = *(this + 24);
              if (v152 >= v151)
              {
                v154 = *(this + 22);
                v155 = v152 - v154;
                v156 = (v152 - v154) >> 3;
                v157 = v156 + 1;
                if ((v156 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v158 = v151 - v154;
                if (v158 >> 2 > v157)
                {
                  v157 = v158 >> 2;
                }

                if (v158 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v159 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v159 = v157;
                }

                if (v159)
                {
                  sub_25AD28710(v159);
                }

                v160 = (v152 - v154) >> 3;
                v161 = (8 * v156);
                v162 = (8 * v156 - 8 * v160);
                *v161 = 0;
                v153 = v161 + 1;
                memcpy(v162, v154, v155);
                v163 = *(this + 22);
                *(this + 22) = v162;
                *(this + 23) = v153;
                *(this + 24) = 0;
                if (v163)
                {
                  operator delete(v163);
                }
              }

              else
              {
                *v152 = 0;
                v153 = v152 + 8;
              }

              *(this + 23) = v153;
              v164 = *(a2 + 1);
              if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v153 - 1) = *(*a2 + v164);
              v150 = *(a2 + 2);
              v149 = *(a2 + 1) + 8;
              *(a2 + 1) = v149;
            }

            goto LABEL_288;
          }

          v253 = *(this + 23);
          v252 = *(this + 24);
          if (v253 < v252)
          {
            *v253 = 0;
            v233 = v253 + 8;
LABEL_444:
            *(this + 23) = v233;
            goto LABEL_457;
          }

          v304 = *(this + 22);
          v305 = v253 - v304;
          v306 = (v253 - v304) >> 3;
          v307 = v306 + 1;
          if (!((v306 + 1) >> 61))
          {
            v308 = v252 - v304;
            if (v308 >> 2 > v307)
            {
              v307 = v308 >> 2;
            }

            if (v308 >= 0x7FFFFFFFFFFFFFF8)
            {
              v309 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v309 = v307;
            }

            if (v309)
            {
              sub_25AD28710(v309);
            }

            v362 = (v253 - v304) >> 3;
            v363 = (8 * v306);
            v364 = (8 * v306 - 8 * v362);
            *v363 = 0;
            v233 = v363 + 1;
            memcpy(v364, v304, v305);
            v365 = *(this + 22);
            *(this + 22) = v364;
            *(this + 23) = v233;
            *(this + 24) = 0;
            if (v365)
            {
              operator delete(v365);
            }

            goto LABEL_444;
          }

          goto LABEL_471;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v181 = *(a2 + 1);
            v182 = *(a2 + 2);
            while (v181 < v182 && (*(a2 + 24) & 1) == 0)
            {
              v184 = *(this + 14);
              v183 = *(this + 15);
              if (v184 >= v183)
              {
                v186 = *(this + 13);
                v187 = v184 - v186;
                v188 = (v184 - v186) >> 3;
                v189 = v188 + 1;
                if ((v188 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v190 = v183 - v186;
                if (v190 >> 2 > v189)
                {
                  v189 = v190 >> 2;
                }

                if (v190 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v191 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v191 = v189;
                }

                if (v191)
                {
                  sub_25AD28710(v191);
                }

                v192 = (v184 - v186) >> 3;
                v193 = (8 * v188);
                v194 = (8 * v188 - 8 * v192);
                *v193 = 0;
                v185 = v193 + 1;
                memcpy(v194, v186, v187);
                v195 = *(this + 13);
                *(this + 13) = v194;
                *(this + 14) = v185;
                *(this + 15) = 0;
                if (v195)
                {
                  operator delete(v195);
                }
              }

              else
              {
                *v184 = 0;
                v185 = v184 + 8;
              }

              *(this + 14) = v185;
              v196 = *(a2 + 1);
              if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v185 - 1) = *(*a2 + v196);
              v182 = *(a2 + 2);
              v181 = *(a2 + 1) + 8;
              *(a2 + 1) = v181;
            }

            goto LABEL_288;
          }

          v257 = *(this + 14);
          v256 = *(this + 15);
          if (v257 < v256)
          {
            *v257 = 0;
            v233 = v257 + 8;
LABEL_450:
            *(this + 14) = v233;
            goto LABEL_457;
          }

          v316 = *(this + 13);
          v317 = v257 - v316;
          v318 = (v257 - v316) >> 3;
          v319 = v318 + 1;
          if (!((v318 + 1) >> 61))
          {
            v320 = v256 - v316;
            if (v320 >> 2 > v319)
            {
              v319 = v320 >> 2;
            }

            if (v320 >= 0x7FFFFFFFFFFFFFF8)
            {
              v321 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v321 = v319;
            }

            if (v321)
            {
              sub_25AD28710(v321);
            }

            v370 = (v257 - v316) >> 3;
            v371 = (8 * v318);
            v372 = (8 * v318 - 8 * v370);
            *v371 = 0;
            v233 = v371 + 1;
            memcpy(v372, v316, v317);
            v373 = *(this + 13);
            *(this + 13) = v372;
            *(this + 14) = v233;
            *(this + 15) = 0;
            if (v373)
            {
              operator delete(v373);
            }

            goto LABEL_450;
          }

          goto LABEL_471;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v131 = *(a2 + 1);
            v132 = *(a2 + 2);
            while (v131 < v132 && (*(a2 + 24) & 1) == 0)
            {
              v134 = *(this + 35);
              v133 = *(this + 36);
              if (v134 >= v133)
              {
                v136 = *(this + 34);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 3;
                v139 = v138 + 1;
                if ((v138 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v140 = v133 - v136;
                if (v140 >> 2 > v139)
                {
                  v139 = v140 >> 2;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v141 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_25AD28710(v141);
                }

                v142 = (v134 - v136) >> 3;
                v143 = (8 * v138);
                v144 = (8 * v138 - 8 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(this + 34);
                *(this + 34) = v144;
                *(this + 35) = v135;
                *(this + 36) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 8;
              }

              *(this + 35) = v135;
              v146 = *(a2 + 1);
              if (v146 > 0xFFFFFFFFFFFFFFF7 || v146 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v135 - 1) = *(*a2 + v146);
              v132 = *(a2 + 2);
              v131 = *(a2 + 1) + 8;
              *(a2 + 1) = v131;
            }

            goto LABEL_288;
          }

          v251 = *(this + 35);
          v250 = *(this + 36);
          if (v251 < v250)
          {
            *v251 = 0;
            v233 = v251 + 8;
LABEL_441:
            *(this + 35) = v233;
            goto LABEL_457;
          }

          v298 = *(this + 34);
          v299 = v251 - v298;
          v300 = (v251 - v298) >> 3;
          v301 = v300 + 1;
          if (!((v300 + 1) >> 61))
          {
            v302 = v250 - v298;
            if (v302 >> 2 > v301)
            {
              v301 = v302 >> 2;
            }

            if (v302 >= 0x7FFFFFFFFFFFFFF8)
            {
              v303 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v303 = v301;
            }

            if (v303)
            {
              sub_25AD28710(v303);
            }

            v358 = (v251 - v298) >> 3;
            v359 = (8 * v300);
            v360 = (8 * v300 - 8 * v358);
            *v359 = 0;
            v233 = v359 + 1;
            memcpy(v360, v298, v299);
            v361 = *(this + 34);
            *(this + 34) = v360;
            *(this + 35) = v233;
            *(this + 36) = 0;
            if (v361)
            {
              operator delete(v361);
            }

            goto LABEL_441;
          }

          goto LABEL_471;
        case 9u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v215 = *(a2 + 1);
            v216 = *(a2 + 2);
            while (v215 < v216 && (*(a2 + 24) & 1) == 0)
            {
              v218 = *(this + 2);
              v217 = *(this + 3);
              if (v218 >= v217)
              {
                v220 = *(this + 1);
                v221 = v218 - v220;
                v222 = (v218 - v220) >> 3;
                v223 = v222 + 1;
                if ((v222 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v224 = v217 - v220;
                if (v224 >> 2 > v223)
                {
                  v223 = v224 >> 2;
                }

                if (v224 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v225 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v225 = v223;
                }

                if (v225)
                {
                  sub_25AD28710(v225);
                }

                v226 = (v218 - v220) >> 3;
                v227 = (8 * v222);
                v228 = (8 * v222 - 8 * v226);
                *v227 = 0;
                v219 = v227 + 1;
                memcpy(v228, v220, v221);
                v229 = *(this + 1);
                *(this + 1) = v228;
                *(this + 2) = v219;
                *(this + 3) = 0;
                if (v229)
                {
                  operator delete(v229);
                }
              }

              else
              {
                *v218 = 0;
                v219 = v218 + 8;
              }

              *(this + 2) = v219;
              v230 = *(a2 + 1);
              if (v230 > 0xFFFFFFFFFFFFFFF7 || v230 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v219 - 1) = *(*a2 + v230);
              v216 = *(a2 + 2);
              v215 = *(a2 + 1) + 8;
              *(a2 + 1) = v215;
            }

            goto LABEL_288;
          }

          v261 = *(this + 2);
          v260 = *(this + 3);
          if (v261 < v260)
          {
            *v261 = 0;
            v233 = v261 + 8;
LABEL_456:
            *(this + 2) = v233;
            goto LABEL_457;
          }

          v328 = *(this + 1);
          v329 = v261 - v328;
          v330 = (v261 - v328) >> 3;
          v331 = v330 + 1;
          if (!((v330 + 1) >> 61))
          {
            v332 = v260 - v328;
            if (v332 >> 2 > v331)
            {
              v331 = v332 >> 2;
            }

            if (v332 >= 0x7FFFFFFFFFFFFFF8)
            {
              v333 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v333 = v331;
            }

            if (v333)
            {
              sub_25AD28710(v333);
            }

            v378 = (v261 - v328) >> 3;
            v379 = (8 * v330);
            v380 = (8 * v330 - 8 * v378);
            *v379 = 0;
            v233 = v379 + 1;
            memcpy(v380, v328, v329);
            v381 = *(this + 1);
            *(this + 1) = v380;
            *(this + 2) = v233;
            *(this + 3) = 0;
            if (v381)
            {
              operator delete(v381);
            }

            goto LABEL_456;
          }

          goto LABEL_471;
        case 0xAu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v97 = *(a2 + 1);
            v98 = *(a2 + 2);
            while (v97 < v98 && (*(a2 + 24) & 1) == 0)
            {
              v100 = *(this + 29);
              v99 = *(this + 30);
              if (v100 >= v99)
              {
                v102 = *(this + 28);
                v103 = v100 - v102;
                v104 = (v100 - v102) >> 3;
                v105 = v104 + 1;
                if ((v104 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v106 = v99 - v102;
                if (v106 >> 2 > v105)
                {
                  v105 = v106 >> 2;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v107 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  sub_25AD28710(v107);
                }

                v108 = (v100 - v102) >> 3;
                v109 = (8 * v104);
                v110 = (8 * v104 - 8 * v108);
                *v109 = 0;
                v101 = v109 + 1;
                memcpy(v110, v102, v103);
                v111 = *(this + 28);
                *(this + 28) = v110;
                *(this + 29) = v101;
                *(this + 30) = 0;
                if (v111)
                {
                  operator delete(v111);
                }
              }

              else
              {
                *v100 = 0;
                v101 = v100 + 8;
              }

              *(this + 29) = v101;
              v112 = *(a2 + 1);
              if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v101 - 1) = *(*a2 + v112);
              v98 = *(a2 + 2);
              v97 = *(a2 + 1) + 8;
              *(a2 + 1) = v97;
            }

            goto LABEL_288;
          }

          v241 = *(this + 29);
          v240 = *(this + 30);
          if (v241 < v240)
          {
            *v241 = 0;
            v233 = v241 + 8;
LABEL_435:
            *(this + 29) = v233;
            goto LABEL_457;
          }

          v286 = *(this + 28);
          v287 = v241 - v286;
          v288 = (v241 - v286) >> 3;
          v289 = v288 + 1;
          if (!((v288 + 1) >> 61))
          {
            v290 = v240 - v286;
            if (v290 >> 2 > v289)
            {
              v289 = v290 >> 2;
            }

            if (v290 >= 0x7FFFFFFFFFFFFFF8)
            {
              v291 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v291 = v289;
            }

            if (v291)
            {
              sub_25AD28710(v291);
            }

            v350 = (v241 - v286) >> 3;
            v351 = (8 * v288);
            v352 = (8 * v288 - 8 * v350);
            *v351 = 0;
            v233 = v351 + 1;
            memcpy(v352, v286, v287);
            v353 = *(this + 28);
            *(this + 28) = v352;
            *(this + 29) = v233;
            *(this + 30) = 0;
            if (v353)
            {
              operator delete(v353);
            }

            goto LABEL_435;
          }

          goto LABEL_471;
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v199 = *(a2 + 1);
            v200 = *(a2 + 2);
            while (v199 < v200 && (*(a2 + 24) & 1) == 0)
            {
              v202 = *(this + 20);
              v201 = *(this + 21);
              if (v202 >= v201)
              {
                v204 = *(this + 19);
                v205 = v202 - v204;
                v206 = (v202 - v204) >> 3;
                v207 = v206 + 1;
                if ((v206 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v208 = v201 - v204;
                if (v208 >> 2 > v207)
                {
                  v207 = v208 >> 2;
                }

                if (v208 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v209 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v209 = v207;
                }

                if (v209)
                {
                  sub_25AD28710(v209);
                }

                v210 = (v202 - v204) >> 3;
                v211 = (8 * v206);
                v212 = (8 * v206 - 8 * v210);
                *v211 = 0;
                v203 = v211 + 1;
                memcpy(v212, v204, v205);
                v213 = *(this + 19);
                *(this + 19) = v212;
                *(this + 20) = v203;
                *(this + 21) = 0;
                if (v213)
                {
                  operator delete(v213);
                }
              }

              else
              {
                *v202 = 0;
                v203 = v202 + 8;
              }

              *(this + 20) = v203;
              v214 = *(a2 + 1);
              if (v214 > 0xFFFFFFFFFFFFFFF7 || v214 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v203 - 1) = *(*a2 + v214);
              v200 = *(a2 + 2);
              v199 = *(a2 + 1) + 8;
              *(a2 + 1) = v199;
            }

            goto LABEL_288;
          }

          v259 = *(this + 20);
          v258 = *(this + 21);
          if (v259 < v258)
          {
            *v259 = 0;
            v233 = v259 + 8;
LABEL_453:
            *(this + 20) = v233;
            goto LABEL_457;
          }

          v322 = *(this + 19);
          v323 = v259 - v322;
          v324 = (v259 - v322) >> 3;
          v325 = v324 + 1;
          if (!((v324 + 1) >> 61))
          {
            v326 = v258 - v322;
            if (v326 >> 2 > v325)
            {
              v325 = v326 >> 2;
            }

            if (v326 >= 0x7FFFFFFFFFFFFFF8)
            {
              v327 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v327 = v325;
            }

            if (v327)
            {
              sub_25AD28710(v327);
            }

            v374 = (v259 - v322) >> 3;
            v375 = (8 * v324);
            v376 = (8 * v324 - 8 * v374);
            *v375 = 0;
            v233 = v375 + 1;
            memcpy(v376, v322, v323);
            v377 = *(this + 19);
            *(this + 19) = v376;
            *(this + 20) = v233;
            *(this + 21) = 0;
            if (v377)
            {
              operator delete(v377);
            }

            goto LABEL_453;
          }

          goto LABEL_471;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v64 = *(a2 + 1);
            v65 = *(a2 + 2);
            while (v64 < v65 && (*(a2 + 24) & 1) == 0)
            {
              v67 = *(this + 17);
              v66 = *(this + 18);
              if (v67 >= v66)
              {
                v69 = *(this + 16);
                v70 = v67 - v69;
                v71 = (v67 - v69) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v73 = v66 - v69;
                if (v73 >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v74 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v74 = v72;
                }

                if (v74)
                {
                  sub_25AD28710(v74);
                }

                v75 = (v67 - v69) >> 3;
                v76 = (8 * v71);
                v77 = (8 * v71 - 8 * v75);
                *v76 = 0;
                v68 = v76 + 1;
                memcpy(v77, v69, v70);
                v78 = *(this + 16);
                *(this + 16) = v77;
                *(this + 17) = v68;
                *(this + 18) = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                *v67 = 0;
                v68 = v67 + 8;
              }

              *(this + 17) = v68;
              v79 = *(a2 + 1);
              if (v79 > 0xFFFFFFFFFFFFFFF7 || v79 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v68 - 1) = *(*a2 + v79);
              v65 = *(a2 + 2);
              v64 = *(a2 + 1) + 8;
              *(a2 + 1) = v64;
            }

            goto LABEL_288;
          }

          v237 = *(this + 17);
          v236 = *(this + 18);
          if (v237 < v236)
          {
            *v237 = 0;
            v233 = v237 + 8;
LABEL_429:
            *(this + 17) = v233;
            goto LABEL_457;
          }

          v274 = *(this + 16);
          v275 = v237 - v274;
          v276 = (v237 - v274) >> 3;
          v277 = v276 + 1;
          if (!((v276 + 1) >> 61))
          {
            v278 = v236 - v274;
            if (v278 >> 2 > v277)
            {
              v277 = v278 >> 2;
            }

            if (v278 >= 0x7FFFFFFFFFFFFFF8)
            {
              v279 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v279 = v277;
            }

            if (v279)
            {
              sub_25AD28710(v279);
            }

            v342 = (v237 - v274) >> 3;
            v343 = (8 * v276);
            v344 = (8 * v276 - 8 * v342);
            *v343 = 0;
            v233 = v343 + 1;
            memcpy(v344, v274, v275);
            v345 = *(this + 16);
            *(this + 16) = v344;
            *(this + 17) = v233;
            *(this + 18) = 0;
            if (v345)
            {
              operator delete(v345);
            }

            goto LABEL_429;
          }

          goto LABEL_471;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v81 = *(a2 + 1);
            v82 = *(a2 + 2);
            while (v81 < v82 && (*(a2 + 24) & 1) == 0)
            {
              v84 = *(this + 32);
              v83 = *(this + 33);
              if (v84 >= v83)
              {
                v86 = *(this + 31);
                v87 = v84 - v86;
                v88 = (v84 - v86) >> 3;
                v89 = v88 + 1;
                if ((v88 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v90 = v83 - v86;
                if (v90 >> 2 > v89)
                {
                  v89 = v90 >> 2;
                }

                if (v90 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v91 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v91 = v89;
                }

                if (v91)
                {
                  sub_25AD28710(v91);
                }

                v92 = (v84 - v86) >> 3;
                v93 = (8 * v88);
                v94 = (8 * v88 - 8 * v92);
                *v93 = 0;
                v85 = v93 + 1;
                memcpy(v94, v86, v87);
                v95 = *(this + 31);
                *(this + 31) = v94;
                *(this + 32) = v85;
                *(this + 33) = 0;
                if (v95)
                {
                  operator delete(v95);
                }
              }

              else
              {
                *v84 = 0;
                v85 = v84 + 8;
              }

              *(this + 32) = v85;
              v96 = *(a2 + 1);
              if (v96 > 0xFFFFFFFFFFFFFFF7 || v96 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v85 - 1) = *(*a2 + v96);
              v82 = *(a2 + 2);
              v81 = *(a2 + 1) + 8;
              *(a2 + 1) = v81;
            }

            goto LABEL_288;
          }

          v239 = *(this + 32);
          v238 = *(this + 33);
          if (v239 < v238)
          {
            *v239 = 0;
            v233 = v239 + 8;
LABEL_432:
            *(this + 32) = v233;
            goto LABEL_457;
          }

          v280 = *(this + 31);
          v281 = v239 - v280;
          v282 = (v239 - v280) >> 3;
          v283 = v282 + 1;
          if (!((v282 + 1) >> 61))
          {
            v284 = v238 - v280;
            if (v284 >> 2 > v283)
            {
              v283 = v284 >> 2;
            }

            if (v284 >= 0x7FFFFFFFFFFFFFF8)
            {
              v285 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v285 = v283;
            }

            if (v285)
            {
              sub_25AD28710(v285);
            }

            v346 = (v239 - v280) >> 3;
            v347 = (8 * v282);
            v348 = (8 * v282 - 8 * v346);
            *v347 = 0;
            v233 = v347 + 1;
            memcpy(v348, v280, v281);
            v349 = *(this + 31);
            *(this + 31) = v348;
            *(this + 32) = v233;
            *(this + 33) = 0;
            if (v349)
            {
              operator delete(v349);
            }

            goto LABEL_432;
          }

          goto LABEL_471;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v165 = *(a2 + 1);
            v166 = *(a2 + 2);
            while (v165 < v166 && (*(a2 + 24) & 1) == 0)
            {
              v168 = *(this + 5);
              v167 = *(this + 6);
              if (v168 >= v167)
              {
                v170 = *(this + 4);
                v171 = v168 - v170;
                v172 = (v168 - v170) >> 3;
                v173 = v172 + 1;
                if ((v172 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v174 = v167 - v170;
                if (v174 >> 2 > v173)
                {
                  v173 = v174 >> 2;
                }

                if (v174 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v175 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v175 = v173;
                }

                if (v175)
                {
                  sub_25AD28710(v175);
                }

                v176 = (v168 - v170) >> 3;
                v177 = (8 * v172);
                v178 = (8 * v172 - 8 * v176);
                *v177 = 0;
                v169 = v177 + 1;
                memcpy(v178, v170, v171);
                v179 = *(this + 4);
                *(this + 4) = v178;
                *(this + 5) = v169;
                *(this + 6) = 0;
                if (v179)
                {
                  operator delete(v179);
                }
              }

              else
              {
                *v168 = 0;
                v169 = v168 + 8;
              }

              *(this + 5) = v169;
              v180 = *(a2 + 1);
              if (v180 > 0xFFFFFFFFFFFFFFF7 || v180 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v169 - 1) = *(*a2 + v180);
              v166 = *(a2 + 2);
              v165 = *(a2 + 1) + 8;
              *(a2 + 1) = v165;
            }

            goto LABEL_288;
          }

          v255 = *(this + 5);
          v254 = *(this + 6);
          if (v255 < v254)
          {
            *v255 = 0;
            v233 = v255 + 8;
LABEL_447:
            *(this + 5) = v233;
            goto LABEL_457;
          }

          v310 = *(this + 4);
          v311 = v255 - v310;
          v312 = (v255 - v310) >> 3;
          v313 = v312 + 1;
          if (!((v312 + 1) >> 61))
          {
            v314 = v254 - v310;
            if (v314 >> 2 > v313)
            {
              v313 = v314 >> 2;
            }

            if (v314 >= 0x7FFFFFFFFFFFFFF8)
            {
              v315 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v315 = v313;
            }

            if (v315)
            {
              sub_25AD28710(v315);
            }

            v366 = (v255 - v310) >> 3;
            v367 = (8 * v312);
            v368 = (8 * v312 - 8 * v366);
            *v367 = 0;
            v233 = v367 + 1;
            memcpy(v368, v310, v311);
            v369 = *(this + 4);
            *(this + 4) = v368;
            *(this + 5) = v233;
            *(this + 6) = 0;
            if (v369)
            {
              operator delete(v369);
            }

            goto LABEL_447;
          }

          goto LABEL_471;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v48 = *(a2 + 1);
            v49 = *(a2 + 2);
            while (v48 < v49 && (*(a2 + 24) & 1) == 0)
            {
              v51 = *(this + 26);
              v50 = *(this + 27);
              if (v51 >= v50)
              {
                v53 = *(this + 25);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 3;
                v56 = v55 + 1;
                if ((v55 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v57 = v50 - v53;
                if (v57 >> 2 > v56)
                {
                  v56 = v57 >> 2;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v58 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_25AD28710(v58);
                }

                v59 = (v51 - v53) >> 3;
                v60 = (8 * v55);
                v61 = (8 * v55 - 8 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(this + 25);
                *(this + 25) = v61;
                *(this + 26) = v52;
                *(this + 27) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 8;
              }

              *(this + 26) = v52;
              v63 = *(a2 + 1);
              if (v63 > 0xFFFFFFFFFFFFFFF7 || v63 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v52 - 1) = *(*a2 + v63);
              v49 = *(a2 + 2);
              v48 = *(a2 + 1) + 8;
              *(a2 + 1) = v48;
            }

            goto LABEL_288;
          }

          v235 = *(this + 26);
          v234 = *(this + 27);
          if (v235 < v234)
          {
            *v235 = 0;
            v233 = v235 + 8;
LABEL_426:
            *(this + 26) = v233;
            goto LABEL_457;
          }

          v268 = *(this + 25);
          v269 = v235 - v268;
          v270 = (v235 - v268) >> 3;
          v271 = v270 + 1;
          if (!((v270 + 1) >> 61))
          {
            v272 = v234 - v268;
            if (v272 >> 2 > v271)
            {
              v271 = v272 >> 2;
            }

            if (v272 >= 0x7FFFFFFFFFFFFFF8)
            {
              v273 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v273 = v271;
            }

            if (v273)
            {
              sub_25AD28710(v273);
            }

            v338 = (v235 - v268) >> 3;
            v339 = (8 * v270);
            v340 = (8 * v270 - 8 * v338);
            *v339 = 0;
            v233 = v339 + 1;
            memcpy(v340, v268, v269);
            v341 = *(this + 25);
            *(this + 25) = v340;
            *(this + 26) = v233;
            *(this + 27) = 0;
            if (v341)
            {
              operator delete(v341);
            }

            goto LABEL_426;
          }

          goto LABEL_471;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v114 = *(a2 + 1);
            v115 = *(a2 + 2);
            while (v114 < v115 && (*(a2 + 24) & 1) == 0)
            {
              v117 = *(this + 11);
              v116 = *(this + 12);
              if (v117 >= v116)
              {
                v119 = *(this + 10);
                v120 = v117 - v119;
                v121 = (v117 - v119) >> 3;
                v122 = v121 + 1;
                if ((v121 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v123 = v116 - v119;
                if (v123 >> 2 > v122)
                {
                  v122 = v123 >> 2;
                }

                if (v123 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v124 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v122;
                }

                if (v124)
                {
                  sub_25AD28710(v124);
                }

                v125 = (v117 - v119) >> 3;
                v126 = (8 * v121);
                v127 = (8 * v121 - 8 * v125);
                *v126 = 0;
                v118 = v126 + 1;
                memcpy(v127, v119, v120);
                v128 = *(this + 10);
                *(this + 10) = v127;
                *(this + 11) = v118;
                *(this + 12) = 0;
                if (v128)
                {
                  operator delete(v128);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 8;
              }

              *(this + 11) = v118;
              v129 = *(a2 + 1);
              if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(a2 + 2))
              {
                goto LABEL_287;
              }

              *(v118 - 1) = *(*a2 + v129);
              v115 = *(a2 + 2);
              v114 = *(a2 + 1) + 8;
              *(a2 + 1) = v114;
            }

            goto LABEL_288;
          }

          v243 = *(this + 11);
          v242 = *(this + 12);
          if (v243 < v242)
          {
            *v243 = 0;
            v233 = v243 + 8;
LABEL_438:
            *(this + 11) = v233;
            goto LABEL_457;
          }

          v292 = *(this + 10);
          v293 = v243 - v292;
          v294 = (v243 - v292) >> 3;
          v295 = v294 + 1;
          if (!((v294 + 1) >> 61))
          {
            v296 = v242 - v292;
            if (v296 >> 2 > v295)
            {
              v295 = v296 >> 2;
            }

            if (v296 >= 0x7FFFFFFFFFFFFFF8)
            {
              v297 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v297 = v295;
            }

            if (v297)
            {
              sub_25AD28710(v297);
            }

            v354 = (v243 - v292) >> 3;
            v355 = (8 * v294);
            v356 = (8 * v294 - 8 * v354);
            *v355 = 0;
            v233 = v355 + 1;
            memcpy(v356, v292, v293);
            v357 = *(this + 10);
            *(this + 10) = v356;
            *(this + 11) = v233;
            *(this + 12) = 0;
            if (v357)
            {
              operator delete(v357);
            }

            goto LABEL_438;
          }

          goto LABEL_471;
        case 0x11u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_469;
            }

            v32 = *(a2 + 1);
            v33 = *(a2 + 2);
            while (v32 < v33 && (*(a2 + 24) & 1) == 0)
            {
              v35 = *(this + 8);
              v34 = *(this + 9);
              if (v35 >= v34)
              {
                v37 = *(this + 7);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 3;
                v40 = v39 + 1;
                if ((v39 + 1) >> 61)
                {
                  goto LABEL_471;
                }

                v41 = v34 - v37;
                if (v41 >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_25AD28710(v42);
                }

                v43 = (v35 - v37) >> 3;
                v44 = (8 * v39);
                v45 = (8 * v39 - 8 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(this + 7);
                *(this + 7) = v45;
                *(this + 8) = v36;
                *(this + 9) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 8;
              }

              *(this + 8) = v36;
              v47 = *(a2 + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(a2 + 2))
              {
LABEL_287:
                *(a2 + 24) = 1;
                break;
              }

              *(v36 - 1) = *(*a2 + v47);
              v33 = *(a2 + 2);
              v32 = *(a2 + 1) + 8;
              *(a2 + 1) = v32;
            }

LABEL_288:
            PB::Reader::recallMark();
            goto LABEL_463;
          }

          v232 = *(this + 8);
          v231 = *(this + 9);
          if (v232 >= v231)
          {
            v262 = *(this + 7);
            v263 = v232 - v262;
            v264 = (v232 - v262) >> 3;
            v265 = v264 + 1;
            if ((v264 + 1) >> 61)
            {
LABEL_471:
              sub_25AAE66B8();
            }

            v266 = v231 - v262;
            if (v266 >> 2 > v265)
            {
              v265 = v266 >> 2;
            }

            if (v266 >= 0x7FFFFFFFFFFFFFF8)
            {
              v267 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v267 = v265;
            }

            if (v267)
            {
              sub_25AD28710(v267);
            }

            v334 = (v232 - v262) >> 3;
            v335 = (8 * v264);
            v336 = (8 * v264 - 8 * v334);
            *v335 = 0;
            v233 = v335 + 1;
            memcpy(v336, v262, v263);
            v337 = *(this + 7);
            *(this + 7) = v336;
            *(this + 8) = v233;
            *(this + 9) = 0;
            if (v337)
            {
              operator delete(v337);
            }
          }

          else
          {
            *v232 = 0;
            v233 = v232 + 8;
          }

          *(this + 8) = v233;
LABEL_457:
          v382 = *(a2 + 1);
          if (v382 <= 0xFFFFFFFFFFFFFFF7 && v382 + 8 <= *(a2 + 2))
          {
            *(v233 - 1) = *(*a2 + v382);
LABEL_461:
            v198 = *(a2 + 1) + 8;
LABEL_462:
            *(a2 + 1) = v198;
          }

          else
          {
LABEL_459:
            *(a2 + 24) = 1;
          }

          goto LABEL_463;
        case 0x12u:
          *(this + 340) |= 0x20u;
          v148 = *(a2 + 1);
          if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 83) = *(*a2 + v148);
          goto LABEL_246;
        case 0x13u:
          *(this + 340) |= 0x10u;
          v197 = *(a2 + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(a2 + 2))
          {
            goto LABEL_459;
          }

          *(this + 82) = *(*a2 + v197);
LABEL_246:
          v198 = *(a2 + 1) + 4;
          goto LABEL_462;
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
        goto LABEL_467;
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
LABEL_469:
      v383 = 0;
      return v383 & 1;
    }

LABEL_463:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_467:
  v383 = v4 ^ 1;
  return v383 & 1;
}