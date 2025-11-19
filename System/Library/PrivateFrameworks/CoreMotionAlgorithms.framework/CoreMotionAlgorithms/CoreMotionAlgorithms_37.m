uint64_t sub_245ED8A64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "duration", *(a1 + 8));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 64);
  PB::TextFormatter::format(this, "fGpsAvailability");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "fractionalGrade", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 52);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "hrmin", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a1 + 65);
  PB::TextFormatter::format(this, "isStanding");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "metSource");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "mets", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "rawGradeType");
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "startTime", *(a1 + 40));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ED8C08(uint64_t a1, PB::Reader *this)
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
            goto LABEL_147;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_82:
              *(this + 24) = 1;
              goto LABEL_143;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_122;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x20u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v61 = v2 - v33;
              v62 = (v34 + v33);
              v63 = v33 + 1;
              while (1)
              {
                if (!v61)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_130;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v37 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_129;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_129:
              v2 = v64;
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
                *(this + 1) = v39;
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
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_130:
            *(a1 + 48) = v37;
            goto LABEL_143;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 68) |= 0x400u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v50 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v49 = *(*this + v2++);
                *(this + 1) = v2;
                v50 = v49 != 0;
              }

              *(a1 + 65) = v50;
              goto LABEL_143;
            case 4:
              *(a1 + 68) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_82;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_122;
            case 5:
              *(a1 + 68) |= 0x40u;
              v23 = *(this + 1);
              v2 = *(this + 2);
              v24 = *this;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(this + 1);
                }

                v75 = v2 - v23;
                v76 = (v24 + v23);
                v77 = v23 + 1;
                while (1)
                {
                  if (!v75)
                  {
                    LODWORD(v27) = 0;
                    *(this + 24) = 1;
                    goto LABEL_138;
                  }

                  v78 = v77;
                  v79 = *v76;
                  *(this + 1) = v78;
                  v27 |= (v79 & 0x7F) << v73;
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
                    LODWORD(v27) = 0;
                    goto LABEL_137;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

LABEL_137:
                v2 = v78;
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

LABEL_138:
              *(a1 + 52) = v27;
              goto LABEL_143;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_122;
          case 0xA:
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_122;
          case 0xB:
            *(a1 + 68) |= 0x200u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v32 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v31 = *(*this + v2++);
              *(this + 1) = v2;
              v32 = v31 != 0;
            }

            *(a1 + 64) = v32;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 68) |= 0x100u;
            v51 = *(this + 1);
            v2 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v55 = 0;
              if (v2 <= v51)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v51;
              v83 = (v52 + v51);
              v84 = v51 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_142;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v55 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v55) = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v55) = 0;
              }

LABEL_141:
              v2 = v85;
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
                v2 = v57;
                *(this + 1) = v57;
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
                  LODWORD(v55) = 0;
                  break;
                }
              }
            }

LABEL_142:
            *(a1 + 60) = v55;
            goto LABEL_143;
          case 7:
            *(a1 + 68) |= 0x80u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v66 = 0;
              v67 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v68 = v2 - v41;
              v69 = (v42 + v41);
              v70 = v41 + 1;
              while (1)
              {
                if (!v68)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_134;
                }

                v71 = v70;
                v72 = *v69;
                *(this + 1) = v71;
                v45 |= (v72 & 0x7F) << v66;
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
                  LODWORD(v45) = 0;
                  goto LABEL_133;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_133:
              v2 = v71;
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
                *(this + 1) = v47;
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

LABEL_134:
            *(a1 + 56) = v45;
            goto LABEL_143;
          case 8:
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_122:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_143;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v87 = 0;
        return v87 & 1;
      }

      v2 = *(this + 1);
LABEL_143:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_147:
  v87 = v4 ^ 1;
  return v87 & 1;
}

uint64_t sub_245ED93A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 68);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
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

  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(v3 + 65);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 68) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v3 + 64);

  return PB::Writer::write(this);
}

double sub_245ED9514(uint64_t a1)
{
  *a1 = &unk_2858D4FA0;
  *(a1 + 180) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

void sub_245ED9568(PB::Base *this)
{
  *this = &unk_2858D4FA0;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }

  PB::Base::~Base(this);
}

void sub_245ED962C(PB::Base *a1)
{
  sub_245ED9568(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ED9664(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D4FA0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *(a1 + 152) = 0u;
  v7 = (a1 + 152);
  *(a1 + 180) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0;
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
    sub_245DF843C(v6, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
    sub_245DF843C(v7, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  }

  if (*(a2 + 180))
  {
    v8 = *(a2 + 176);
    *(a1 + 180) |= 1u;
    *(a1 + 176) = v8;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  return a1;
}

uint64_t sub_245ED97BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "error");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "errorX");
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "errorY");
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "errorZ");
  }

  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "intercept", v19);
  }

  if (*(a1 + 180))
  {
    PB::TextFormatter::format(this, "overlap", *(a1 + 176));
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "slope", v22);
  }

  v23 = *(a1 + 152);
  v24 = *(a1 + 160);
  while (v23 != v24)
  {
    v25 = *v23++;
    PB::TextFormatter::format(this, "temperature", v25);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ED9960(uint64_t a1, PB::Reader *this)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (v17)
        {
          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v56 = v15++ > 8;
          if (v56)
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
        v56 = v9++ > 8;
        if (v56)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 40);
                while (1)
                {
                  v151 = *(a1 + 48);
                  if (v39 >= v151)
                  {
                    v152 = *(a1 + 32);
                    v153 = v39 - v152;
                    v154 = (v39 - v152) >> 2;
                    v155 = v154 + 1;
                    if ((v154 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v156 = v151 - v152;
                    if (v156 >> 1 > v155)
                    {
                      v155 = v156 >> 1;
                    }

                    if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v157 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v157 = v155;
                    }

                    if (v157)
                    {
                      sub_245DF85BC(a1 + 32, v157);
                    }

                    v158 = (v39 - v152) >> 2;
                    v159 = (4 * v154);
                    v160 = (4 * v154 - 4 * v158);
                    *v159 = 0;
                    v39 = (v159 + 1);
                    memcpy(v160, v152, v153);
                    v161 = *(a1 + 32);
                    *(a1 + 32) = v160;
                    *(a1 + 40) = v39;
                    *(a1 + 48) = 0;
                    if (v161)
                    {
                      operator delete(v161);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 40) = v39;
                  v163 = *(this + 1);
                  v162 = *(this + 2);
                  v164 = *this;
                  v165 = 0;
                  v166 = 0;
                  if (v163 > 0xFFFFFFFFFFFFFFF5 || v163 + 10 > v162)
                  {
                    break;
                  }

                  v173 = 0;
                  v174 = (v164 + v163);
                  v175 = v163 + 1;
                  while (1)
                  {
                    v171 = v175;
                    *(this + 1) = v175;
                    v176 = *v174++;
                    v173 |= (v176 & 0x7F) << v165;
                    if ((v176 & 0x80) == 0)
                    {
                      break;
                    }

                    v165 += 7;
                    ++v175;
                    v56 = v166++ > 8;
                    if (v56)
                    {
                      goto LABEL_246;
                    }
                  }

LABEL_249:
                  *(v39 - 1) = v173;
                  if (v171 >= v162 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_270;
                  }
                }

                v173 = 0;
                v168 = v162 - v163;
                if (v162 < v163)
                {
                  v168 = 0;
                }

                v169 = (v164 + v163);
                v170 = v163 + 1;
                while (v168)
                {
                  v171 = v170;
                  v172 = *v169;
                  *(this + 1) = v171;
                  v173 |= (v172 & 0x7F) << v165;
                  if ((v172 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v173) = 0;
                    }

                    goto LABEL_249;
                  }

                  v165 += 7;
                  --v168;
                  ++v169;
                  v170 = v171 + 1;
                  v56 = v166++ > 8;
                  if (v56)
                  {
LABEL_246:
                    LODWORD(v173) = 0;
                    goto LABEL_249;
                  }
                }

LABEL_254:
                *(this + 24) = 1;
                *(v39 - 1) = 0;
              }

              goto LABEL_270;
            }

            v186 = *(a1 + 40);
            v185 = *(a1 + 48);
            if (v186 >= v185)
            {
              v211 = *(a1 + 32);
              v212 = v186 - v211;
              v213 = (v186 - v211) >> 2;
              v214 = v213 + 1;
              if ((v213 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v215 = v185 - v211;
              if (v215 >> 1 > v214)
              {
                v214 = v215 >> 1;
              }

              if (v215 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v216 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v216 = v214;
              }

              if (v216)
              {
                sub_245DF85BC(a1 + 32, v216);
              }

              v262 = (v186 - v211) >> 2;
              v263 = (4 * v213);
              v264 = (4 * v213 - 4 * v262);
              *v263 = 0;
              v182 = v263 + 1;
              memcpy(v264, v211, v212);
              v265 = *(a1 + 32);
              *(a1 + 32) = v264;
              *(a1 + 40) = v182;
              *(a1 + 48) = 0;
              if (v265)
              {
                operator delete(v265);
              }
            }

            else
            {
              *v186 = 0;
              v182 = v186 + 4;
            }

            *(a1 + 40) = v182;
            v267 = *(this + 1);
            v266 = *(this + 2);
            v268 = *this;
            if (v267 <= 0xFFFFFFFFFFFFFFF5 && v267 + 10 <= v266)
            {
              v269 = 0;
              v270 = 0;
              v248 = 0;
              v271 = (v268 + v267);
              v272 = v267 + 1;
              while (1)
              {
                *(this + 1) = v272;
                v273 = *v271++;
                v248 |= (v273 & 0x7F) << v269;
                if ((v273 & 0x80) == 0)
                {
                  goto LABEL_412;
                }

                v269 += 7;
                ++v272;
                v56 = v270++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }
            }

            v274 = 0;
            v275 = 0;
            v248 = 0;
            v16 = v266 >= v267;
            v276 = v266 - v267;
            if (!v16)
            {
              v276 = 0;
            }

            v277 = (v268 + v267);
            v278 = v267 + 1;
            while (v276)
            {
              v279 = *v277;
              *(this + 1) = v278;
              v248 |= (v279 & 0x7F) << v274;
              if ((v279 & 0x80) == 0)
              {
LABEL_410:
                if (*(this + 24))
                {
                  LODWORD(v248) = 0;
                }

                goto LABEL_412;
              }

              v274 += 7;
              --v276;
              ++v277;
              ++v278;
              v56 = v275++ > 8;
              if (v56)
              {
LABEL_408:
                LODWORD(v248) = 0;
                goto LABEL_412;
              }
            }

            goto LABEL_409;
          }

          if (v22 == 8)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 64);
                do
                {
                  v67 = *(a1 + 72);
                  if (v39 >= v67)
                  {
                    v68 = *(a1 + 56);
                    v69 = v39 - v68;
                    v70 = (v39 - v68) >> 2;
                    v71 = v70 + 1;
                    if ((v70 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v72 = v67 - v68;
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
                      sub_245DF85BC(a1 + 56, v73);
                    }

                    v74 = (v39 - v68) >> 2;
                    v75 = (4 * v70);
                    v76 = (4 * v70 - 4 * v74);
                    *v75 = 0;
                    v39 = (v75 + 1);
                    memcpy(v76, v68, v69);
                    v77 = *(a1 + 56);
                    *(a1 + 56) = v76;
                    *(a1 + 64) = v39;
                    *(a1 + 72) = 0;
                    if (v77)
                    {
                      operator delete(v77);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 64) = v39;
                  v79 = *(this + 1);
                  v78 = *(this + 2);
                  v80 = *this;
                  v81 = 0;
                  v82 = 0;
                  if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v78)
                  {
                    v89 = 0;
                    v84 = v78 - v79;
                    if (v78 < v79)
                    {
                      v84 = 0;
                    }

                    v85 = (v80 + v79);
                    v86 = v79 + 1;
                    while (1)
                    {
                      if (!v84)
                      {
                        goto LABEL_254;
                      }

                      v87 = v86;
                      v88 = *v85;
                      *(this + 1) = v87;
                      v89 |= (v88 & 0x7F) << v81;
                      if ((v88 & 0x80) == 0)
                      {
                        break;
                      }

                      v81 += 7;
                      --v84;
                      ++v85;
                      v86 = v87 + 1;
                      v56 = v82++ > 8;
                      if (v56)
                      {
LABEL_128:
                        LODWORD(v89) = 0;
                        goto LABEL_131;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v89) = 0;
                    }
                  }

                  else
                  {
                    v89 = 0;
                    v90 = (v80 + v79);
                    v91 = v79 + 1;
                    while (1)
                    {
                      v87 = v91;
                      *(this + 1) = v91;
                      v92 = *v90++;
                      v89 |= (v92 & 0x7F) << v81;
                      if ((v92 & 0x80) == 0)
                      {
                        break;
                      }

                      v81 += 7;
                      ++v91;
                      v56 = v82++ > 8;
                      if (v56)
                      {
                        goto LABEL_128;
                      }
                    }
                  }

LABEL_131:
                  *(v39 - 1) = v89;
                }

                while (v87 < v78 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v192 = *(a1 + 64);
            v191 = *(a1 + 72);
            if (v192 >= v191)
            {
              v229 = *(a1 + 56);
              v230 = v192 - v229;
              v231 = (v192 - v229) >> 2;
              v232 = v231 + 1;
              if ((v231 + 1) >> 62)
              {
LABEL_421:
                sub_245DF85A4();
              }

              v233 = v191 - v229;
              if (v233 >> 1 > v232)
              {
                v232 = v233 >> 1;
              }

              if (v233 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v234 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v234 = v232;
              }

              if (v234)
              {
                sub_245DF85BC(a1 + 56, v234);
              }

              v303 = (v192 - v229) >> 2;
              v304 = (4 * v231);
              v305 = (4 * v231 - 4 * v303);
              *v304 = 0;
              v182 = v304 + 1;
              memcpy(v305, v229, v230);
              v306 = *(a1 + 56);
              *(a1 + 56) = v305;
              *(a1 + 64) = v182;
              *(a1 + 72) = 0;
              if (v306)
              {
                operator delete(v306);
              }
            }

            else
            {
              *v192 = 0;
              v182 = v192 + 4;
            }

            *(a1 + 64) = v182;
            v308 = *(this + 1);
            v307 = *(this + 2);
            v309 = *this;
            if (v308 <= 0xFFFFFFFFFFFFFFF5 && v308 + 10 <= v307)
            {
              v310 = 0;
              v311 = 0;
              v248 = 0;
              v312 = (v309 + v308);
              v313 = v308 + 1;
              while (1)
              {
                *(this + 1) = v313;
                v314 = *v312++;
                v248 |= (v314 & 0x7F) << v310;
                if ((v314 & 0x80) == 0)
                {
                  goto LABEL_412;
                }

                v310 += 7;
                ++v313;
                v56 = v311++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }
            }

            v315 = 0;
            v316 = 0;
            v248 = 0;
            v16 = v307 >= v308;
            v317 = v307 - v308;
            if (!v16)
            {
              v317 = 0;
            }

            v318 = (v309 + v308);
            v319 = v308 + 1;
            while (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v248 |= (v320 & 0x7F) << v315;
              if ((v320 & 0x80) == 0)
              {
                goto LABEL_410;
              }

              v315 += 7;
              --v317;
              ++v318;
              ++v319;
              v56 = v316++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }

LABEL_409:
            LODWORD(v248) = 0;
            *(this + 24) = 1;
LABEL_412:
            *(v182 - 1) = v248;
            goto LABEL_413;
          }
        }

        else
        {
          if (v22 == 5)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 88);
                do
                {
                  v109 = *(a1 + 96);
                  if (v39 >= v109)
                  {
                    v110 = *(a1 + 80);
                    v111 = v39 - v110;
                    v112 = (v39 - v110) >> 2;
                    v113 = v112 + 1;
                    if ((v112 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v114 = v109 - v110;
                    if (v114 >> 1 > v113)
                    {
                      v113 = v114 >> 1;
                    }

                    if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v115 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v115 = v113;
                    }

                    if (v115)
                    {
                      sub_245DF85BC(a1 + 80, v115);
                    }

                    v116 = (v39 - v110) >> 2;
                    v117 = (4 * v112);
                    v118 = (4 * v112 - 4 * v116);
                    *v117 = 0;
                    v39 = (v117 + 1);
                    memcpy(v118, v110, v111);
                    v119 = *(a1 + 80);
                    *(a1 + 80) = v118;
                    *(a1 + 88) = v39;
                    *(a1 + 96) = 0;
                    if (v119)
                    {
                      operator delete(v119);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 88) = v39;
                  v121 = *(this + 1);
                  v120 = *(this + 2);
                  v122 = *this;
                  v123 = 0;
                  v124 = 0;
                  if (v121 > 0xFFFFFFFFFFFFFFF5 || v121 + 10 > v120)
                  {
                    v131 = 0;
                    v126 = v120 - v121;
                    if (v120 < v121)
                    {
                      v126 = 0;
                    }

                    v127 = (v122 + v121);
                    v128 = v121 + 1;
                    while (1)
                    {
                      if (!v126)
                      {
                        goto LABEL_254;
                      }

                      v129 = v128;
                      v130 = *v127;
                      *(this + 1) = v129;
                      v131 |= (v130 & 0x7F) << v123;
                      if ((v130 & 0x80) == 0)
                      {
                        break;
                      }

                      v123 += 7;
                      --v126;
                      ++v127;
                      v128 = v129 + 1;
                      v56 = v124++ > 8;
                      if (v56)
                      {
LABEL_187:
                        LODWORD(v131) = 0;
                        goto LABEL_190;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v131) = 0;
                    }
                  }

                  else
                  {
                    v131 = 0;
                    v132 = (v122 + v121);
                    v133 = v121 + 1;
                    while (1)
                    {
                      v129 = v133;
                      *(this + 1) = v133;
                      v134 = *v132++;
                      v131 |= (v134 & 0x7F) << v123;
                      if ((v134 & 0x80) == 0)
                      {
                        break;
                      }

                      v123 += 7;
                      ++v133;
                      v56 = v124++ > 8;
                      if (v56)
                      {
                        goto LABEL_187;
                      }
                    }
                  }

LABEL_190:
                  *(v39 - 1) = v131;
                }

                while (v129 < v120 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v181 = *(a1 + 88);
            v180 = *(a1 + 96);
            if (v181 >= v180)
            {
              v199 = *(a1 + 80);
              v200 = v181 - v199;
              v201 = (v181 - v199) >> 2;
              v202 = v201 + 1;
              if ((v201 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v203 = v180 - v199;
              if (v203 >> 1 > v202)
              {
                v202 = v203 >> 1;
              }

              if (v203 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v204 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v204 = v202;
              }

              if (v204)
              {
                sub_245DF85BC(a1 + 80, v204);
              }

              v239 = (v181 - v199) >> 2;
              v240 = (4 * v201);
              v241 = (4 * v201 - 4 * v239);
              *v240 = 0;
              v182 = v240 + 1;
              memcpy(v241, v199, v200);
              v242 = *(a1 + 80);
              *(a1 + 80) = v241;
              *(a1 + 88) = v182;
              *(a1 + 96) = 0;
              if (v242)
              {
                operator delete(v242);
              }
            }

            else
            {
              *v181 = 0;
              v182 = v181 + 4;
            }

            *(a1 + 88) = v182;
            v244 = *(this + 1);
            v243 = *(this + 2);
            v245 = *this;
            if (v244 > 0xFFFFFFFFFFFFFFF5 || v244 + 10 > v243)
            {
              v252 = 0;
              v253 = 0;
              v248 = 0;
              v16 = v243 >= v244;
              v254 = v243 - v244;
              if (!v16)
              {
                v254 = 0;
              }

              v255 = (v245 + v244);
              v256 = v244 + 1;
              while (v254)
              {
                v257 = *v255;
                *(this + 1) = v256;
                v248 |= (v257 & 0x7F) << v252;
                if ((v257 & 0x80) == 0)
                {
                  goto LABEL_410;
                }

                v252 += 7;
                --v254;
                ++v255;
                ++v256;
                v56 = v253++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }

              goto LABEL_409;
            }

            v246 = 0;
            v247 = 0;
            v248 = 0;
            v249 = (v245 + v244);
            v250 = v244 + 1;
            while (1)
            {
              *(this + 1) = v250;
              v251 = *v249++;
              v248 |= (v251 & 0x7F) << v246;
              if ((v251 & 0x80) == 0)
              {
                goto LABEL_412;
              }

              v246 += 7;
              ++v250;
              v56 = v247++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }
          }

          if (v22 == 6)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 16);
                do
                {
                  v40 = *(a1 + 24);
                  if (v39 >= v40)
                  {
                    v41 = *(a1 + 8);
                    v42 = v39 - v41;
                    v43 = (v39 - v41) >> 2;
                    v44 = v43 + 1;
                    if ((v43 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v45 = v40 - v41;
                    if (v45 >> 1 > v44)
                    {
                      v44 = v45 >> 1;
                    }

                    if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v46 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v46 = v44;
                    }

                    if (v46)
                    {
                      sub_245DF85BC(a1 + 8, v46);
                    }

                    v47 = (v39 - v41) >> 2;
                    v48 = (4 * v43);
                    v49 = (4 * v43 - 4 * v47);
                    *v48 = 0;
                    v39 = (v48 + 1);
                    memcpy(v49, v41, v42);
                    v50 = *(a1 + 8);
                    *(a1 + 8) = v49;
                    *(a1 + 16) = v39;
                    *(a1 + 24) = 0;
                    if (v50)
                    {
                      operator delete(v50);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 16) = v39;
                  v52 = *(this + 1);
                  v51 = *(this + 2);
                  v53 = *this;
                  v54 = 0;
                  v55 = 0;
                  v56 = v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51;
                  if (v56)
                  {
                    v62 = 0;
                    v57 = v51 - v52;
                    if (v51 < v52)
                    {
                      v57 = 0;
                    }

                    v58 = (v53 + v52);
                    v59 = v52 + 1;
                    while (1)
                    {
                      if (!v57)
                      {
                        goto LABEL_254;
                      }

                      v60 = v59;
                      v61 = *v58;
                      *(this + 1) = v60;
                      v62 |= (v61 & 0x7F) << v54;
                      if ((v61 & 0x80) == 0)
                      {
                        break;
                      }

                      v54 += 7;
                      --v57;
                      ++v58;
                      v59 = v60 + 1;
                      v56 = v55++ > 8;
                      if (v56)
                      {
LABEL_82:
                        LODWORD(v62) = 0;
                        goto LABEL_85;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v62) = 0;
                    }
                  }

                  else
                  {
                    v62 = 0;
                    v63 = (v53 + v52);
                    v64 = v52 + 1;
                    while (1)
                    {
                      v60 = v64;
                      *(this + 1) = v64;
                      v65 = *v63++;
                      v62 |= (v65 & 0x7F) << v54;
                      if ((v65 & 0x80) == 0)
                      {
                        break;
                      }

                      v54 += 7;
                      ++v64;
                      v56 = v55++ > 8;
                      if (v56)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_85:
                  *(v39 - 1) = v62;
                }

                while (v60 < v51 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v190 = *(a1 + 16);
            v189 = *(a1 + 24);
            if (v190 >= v189)
            {
              v223 = *(a1 + 8);
              v224 = v190 - v223;
              v225 = (v190 - v223) >> 2;
              v226 = v225 + 1;
              if ((v225 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v227 = v189 - v223;
              if (v227 >> 1 > v226)
              {
                v226 = v227 >> 1;
              }

              if (v227 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v228 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v228 = v226;
              }

              if (v228)
              {
                sub_245DF85BC(a1 + 8, v228);
              }

              v285 = (v190 - v223) >> 2;
              v286 = (4 * v225);
              v287 = (4 * v225 - 4 * v285);
              *v286 = 0;
              v182 = v286 + 1;
              memcpy(v287, v223, v224);
              v288 = *(a1 + 8);
              *(a1 + 8) = v287;
              *(a1 + 16) = v182;
              *(a1 + 24) = 0;
              if (v288)
              {
                operator delete(v288);
              }
            }

            else
            {
              *v190 = 0;
              v182 = v190 + 4;
            }

            *(a1 + 16) = v182;
            v290 = *(this + 1);
            v289 = *(this + 2);
            v291 = *this;
            if (v290 > 0xFFFFFFFFFFFFFFF5 || v290 + 10 > v289)
            {
              v297 = 0;
              v298 = 0;
              v248 = 0;
              v16 = v289 >= v290;
              v299 = v289 - v290;
              if (!v16)
              {
                v299 = 0;
              }

              v300 = (v291 + v290);
              v301 = v290 + 1;
              while (v299)
              {
                v302 = *v300;
                *(this + 1) = v301;
                v248 |= (v302 & 0x7F) << v297;
                if ((v302 & 0x80) == 0)
                {
                  goto LABEL_410;
                }

                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v56 = v298++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }

              goto LABEL_409;
            }

            v292 = 0;
            v293 = 0;
            v248 = 0;
            v294 = (v291 + v290);
            v295 = v290 + 1;
            while (1)
            {
              *(this + 1) = v295;
              v296 = *v294++;
              v248 |= (v296 & 0x7F) << v292;
              if ((v296 & 0x80) == 0)
              {
                goto LABEL_412;
              }

              v292 += 7;
              ++v295;
              v56 = v293++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v135 = *(this + 1);
            v136 = *(this + 2);
            while (v135 < v136 && (*(this + 24) & 1) == 0)
            {
              v138 = *(a1 + 160);
              v137 = *(a1 + 168);
              if (v138 >= v137)
              {
                v140 = *(a1 + 152);
                v141 = v138 - v140;
                v142 = (v138 - v140) >> 2;
                v143 = v142 + 1;
                if ((v142 + 1) >> 62)
                {
                  goto LABEL_420;
                }

                v144 = v137 - v140;
                if (v144 >> 1 > v143)
                {
                  v143 = v144 >> 1;
                }

                if (v144 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v145 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v145 = v143;
                }

                if (v145)
                {
                  sub_245DF85BC(a1 + 152, v145);
                }

                v146 = (v138 - v140) >> 2;
                v147 = (4 * v142);
                v148 = (4 * v142 - 4 * v146);
                *v147 = 0;
                v139 = v147 + 1;
                memcpy(v148, v140, v141);
                v149 = *(a1 + 152);
                *(a1 + 152) = v148;
                *(a1 + 160) = v139;
                *(a1 + 168) = 0;
                if (v149)
                {
                  operator delete(v149);
                }
              }

              else
              {
                *v138 = 0;
                v139 = v138 + 4;
              }

              *(a1 + 160) = v139;
              v150 = *(this + 1);
              if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
              {
LABEL_269:
                *(this + 24) = 1;
                goto LABEL_270;
              }

              *(v139 - 1) = *(*this + v150);
              v136 = *(this + 2);
              v135 = *(this + 1) + 4;
              *(this + 1) = v135;
            }

            goto LABEL_270;
          }

          v184 = *(a1 + 160);
          v183 = *(a1 + 168);
          if (v184 >= v183)
          {
            v205 = *(a1 + 152);
            v206 = v184 - v205;
            v207 = (v184 - v205) >> 2;
            v208 = v207 + 1;
            if ((v207 + 1) >> 62)
            {
              goto LABEL_420;
            }

            v209 = v183 - v205;
            if (v209 >> 1 > v208)
            {
              v208 = v209 >> 1;
            }

            if (v209 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v210 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v210 = v208;
            }

            if (v210)
            {
              sub_245DF85BC(a1 + 152, v210);
            }

            v258 = (v184 - v205) >> 2;
            v259 = (4 * v207);
            v260 = (4 * v207 - 4 * v258);
            *v259 = 0;
            v179 = v259 + 1;
            memcpy(v260, v205, v206);
            v261 = *(a1 + 152);
            *(a1 + 152) = v260;
            *(a1 + 160) = v179;
            *(a1 + 168) = 0;
            if (v261)
            {
              operator delete(v261);
            }
          }

          else
          {
            *v184 = 0;
            v179 = v184 + 4;
          }

          *(a1 + 160) = v179;
LABEL_370:
          v284 = *(this + 1);
          if (v284 > 0xFFFFFFFFFFFFFFFBLL || v284 + 4 > *(this + 2))
          {
            goto LABEL_372;
          }

          *(v179 - 1) = *(*this + v284);
LABEL_374:
          *(this + 1) += 4;
          goto LABEL_413;
        }

        if (v22 == 4)
        {
          *(a1 + 180) |= 1u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
LABEL_372:
            *(this + 24) = 1;
            goto LABEL_413;
          }

          *(a1 + 176) = *(*this + v66);
          goto LABEL_374;
        }
      }

      else
      {
        if (v22 == 1)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v93 = *(this + 1);
            v94 = *(this + 2);
            while (v93 < v94 && (*(this + 24) & 1) == 0)
            {
              v96 = *(a1 + 136);
              v95 = *(a1 + 144);
              if (v96 >= v95)
              {
                v98 = *(a1 + 128);
                v99 = v96 - v98;
                v100 = (v96 - v98) >> 2;
                v101 = v100 + 1;
                if ((v100 + 1) >> 62)
                {
                  goto LABEL_420;
                }

                v102 = v95 - v98;
                if (v102 >> 1 > v101)
                {
                  v101 = v102 >> 1;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v103 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  sub_245DF85BC(a1 + 128, v103);
                }

                v104 = (v96 - v98) >> 2;
                v105 = (4 * v100);
                v106 = (4 * v100 - 4 * v104);
                *v105 = 0;
                v97 = v105 + 1;
                memcpy(v106, v98, v99);
                v107 = *(a1 + 128);
                *(a1 + 128) = v106;
                *(a1 + 136) = v97;
                *(a1 + 144) = 0;
                if (v107)
                {
                  operator delete(v107);
                }
              }

              else
              {
                *v96 = 0;
                v97 = v96 + 4;
              }

              *(a1 + 136) = v97;
              v108 = *(this + 1);
              if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(this + 2))
              {
                goto LABEL_269;
              }

              *(v97 - 1) = *(*this + v108);
              v94 = *(this + 2);
              v93 = *(this + 1) + 4;
              *(this + 1) = v93;
            }

            goto LABEL_270;
          }

          v178 = *(a1 + 136);
          v177 = *(a1 + 144);
          if (v178 >= v177)
          {
            v193 = *(a1 + 128);
            v194 = v178 - v193;
            v195 = (v178 - v193) >> 2;
            v196 = v195 + 1;
            if ((v195 + 1) >> 62)
            {
              goto LABEL_420;
            }

            v197 = v177 - v193;
            if (v197 >> 1 > v196)
            {
              v196 = v197 >> 1;
            }

            if (v197 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v198 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v198 = v196;
            }

            if (v198)
            {
              sub_245DF85BC(a1 + 128, v198);
            }

            v235 = (v178 - v193) >> 2;
            v236 = (4 * v195);
            v237 = (4 * v195 - 4 * v235);
            *v236 = 0;
            v179 = v236 + 1;
            memcpy(v237, v193, v194);
            v238 = *(a1 + 128);
            *(a1 + 128) = v237;
            *(a1 + 136) = v179;
            *(a1 + 144) = 0;
            if (v238)
            {
              operator delete(v238);
            }
          }

          else
          {
            *v178 = 0;
            v179 = v178 + 4;
          }

          *(a1 + 136) = v179;
          goto LABEL_370;
        }

        if (v22 == 2)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v23 = *(this + 1);
            v24 = *(this + 2);
            while (v23 < v24 && (*(this + 24) & 1) == 0)
            {
              v26 = *(a1 + 112);
              v25 = *(a1 + 120);
              if (v26 >= v25)
              {
                v28 = *(a1 + 104);
                v29 = v26 - v28;
                v30 = (v26 - v28) >> 2;
                v31 = v30 + 1;
                if ((v30 + 1) >> 62)
                {
                  goto LABEL_420;
                }

                v32 = v25 - v28;
                if (v32 >> 1 > v31)
                {
                  v31 = v32 >> 1;
                }

                if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v33 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v31;
                }

                if (v33)
                {
                  sub_245DF85BC(a1 + 104, v33);
                }

                v34 = (v26 - v28) >> 2;
                v35 = (4 * v30);
                v36 = (4 * v30 - 4 * v34);
                *v35 = 0;
                v27 = v35 + 1;
                memcpy(v36, v28, v29);
                v37 = *(a1 + 104);
                *(a1 + 104) = v36;
                *(a1 + 112) = v27;
                *(a1 + 120) = 0;
                if (v37)
                {
                  operator delete(v37);
                }
              }

              else
              {
                *v26 = 0;
                v27 = v26 + 4;
              }

              *(a1 + 112) = v27;
              v38 = *(this + 1);
              if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
              {
                goto LABEL_269;
              }

              *(v27 - 1) = *(*this + v38);
              v24 = *(this + 2);
              v23 = *(this + 1) + 4;
              *(this + 1) = v23;
            }

LABEL_270:
            PB::Reader::recallMark();
            goto LABEL_413;
          }

          v188 = *(a1 + 112);
          v187 = *(a1 + 120);
          if (v188 >= v187)
          {
            v217 = *(a1 + 104);
            v218 = v188 - v217;
            v219 = (v188 - v217) >> 2;
            v220 = v219 + 1;
            if ((v219 + 1) >> 62)
            {
LABEL_420:
              sub_245DF85A4();
            }

            v221 = v187 - v217;
            if (v221 >> 1 > v220)
            {
              v220 = v221 >> 1;
            }

            if (v221 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v222 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v222 = v220;
            }

            if (v222)
            {
              sub_245DF85BC(a1 + 104, v222);
            }

            v280 = (v188 - v217) >> 2;
            v281 = (4 * v219);
            v282 = (4 * v219 - 4 * v280);
            *v281 = 0;
            v179 = v281 + 1;
            memcpy(v282, v217, v218);
            v283 = *(a1 + 104);
            *(a1 + 104) = v282;
            *(a1 + 112) = v179;
            *(a1 + 120) = 0;
            if (v283)
            {
              operator delete(v283);
            }
          }

          else
          {
            *v188 = 0;
            v179 = v188 + 4;
          }

          *(a1 + 112) = v179;
          goto LABEL_370;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_419:
        v321 = 0;
        return v321 & 1;
      }

LABEL_413:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v321 = v4 ^ 1;
  return v321 & 1;
}

uint64_t sub_245EDAD48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  v5 = *(result + 136);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 152);
  v11 = *(v3 + 160);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  if (*(v3 + 180))
  {
    result = PB::Writer::write(this, *(v3 + 176));
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeVarInt(this);
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 32);
  v20 = *(v3 + 40);
  while (v19 != v20)
  {
    v21 = *v19++;
    result = PB::Writer::writeVarInt(this);
  }

  v23 = *(v3 + 56);
  v22 = *(v3 + 64);
  while (v23 != v22)
  {
    v24 = *v23++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EDAE6C(uint64_t result)
{
  *result = &unk_2858D4FD8;
  *(result + 68) = 0;
  return result;
}

void sub_245EDAE94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDAECC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4FD8;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 8;
    *(result + 68) = 8;
    *(result + 32) = v4;
    v2 = *(a2 + 68);
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
    v5 = *(a2 + 40);
    v3 |= 0x10u;
    *(result + 68) = v3;
    *(result + 40) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 68) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 48) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 68) = v3;
  *(result + 56) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 60);
    *(result + 68) = v3 | 0x80;
    *(result + 60) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 64);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 64) = v11;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245EDAFF4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "maxMean", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
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

  PB::TextFormatter::format(this, "mean", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "meanN");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "minMean", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "speedLB", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "speedUB", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "updateN");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "variance", *(a1 + 48));
  if ((*(a1 + 68) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(a1 + 64);
    PB::TextFormatter::format(this, "varianceN");
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDB158(uint64_t a1, PB::Reader *this)
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
            goto LABEL_120;
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_65:
              *(this + 24) = 1;
              goto LABEL_116;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 4)
          {
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_100;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_100;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_100:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_116;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 68) |= 0x40u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_107;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_106:
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

LABEL_107:
            *(a1 + 56) = v35;
            goto LABEL_116;
          case 8:
            *(a1 + 68) |= 0x100u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_115;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_114;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_114:
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

LABEL_115:
            *(a1 + 64) = v43;
            goto LABEL_116;
          case 9:
            *(a1 + 68) |= 0x80u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_111;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_110;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_110:
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

LABEL_111:
            *(a1 + 60) = v27;
            goto LABEL_116;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_116:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_120:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245EDB794(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v6 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v3 + 60);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EDB8C8(uint64_t result)
{
  *result = &unk_2858D5010;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_245EDB8F0(PB::Base *this)
{
  *this = &unk_2858D5010;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EDB954(PB::Base *a1)
{
  sub_245EDB8F0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDB98C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5010;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40))
  {
    v4 = *(a2 + 32);
    *(a1 + 40) = 1;
    *(a1 + 32) = v4;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

uint64_t sub_245EDBA14(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "pose", v7);
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDBAB0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_72;
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
        if ((v10 & 7) != 2)
        {
          v40 = *(a1 + 16);
          v39 = *(a1 + 24);
          if (v40 >= v39)
          {
            v42 = *(a1 + 8);
            v43 = v40 - v42;
            v44 = (v40 - v42) >> 3;
            v45 = v44 + 1;
            if ((v44 + 1) >> 61)
            {
LABEL_75:
              sub_245DF85A4();
            }

            v46 = v39 - v42;
            if (v46 >> 2 > v45)
            {
              v45 = v46 >> 2;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFF8)
            {
              v47 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v45;
            }

            if (v47)
            {
              sub_245DF8830(a1 + 8, v47);
            }

            v48 = (v40 - v42) >> 3;
            v49 = (8 * v44);
            v50 = (8 * v44 - 8 * v48);
            *v49 = 0;
            v41 = v49 + 1;
            memcpy(v50, v42, v43);
            v51 = *(a1 + 8);
            *(a1 + 8) = v50;
            *(a1 + 16) = v41;
            *(a1 + 24) = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            *v40 = 0;
            v41 = v40 + 8;
          }

          *(a1 + 16) = v41;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
          {
LABEL_65:
            *(this + 24) = 1;
            goto LABEL_68;
          }

          *(v41 - 1) = *(*this + v52);
          goto LABEL_67;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_74;
        }

        v23 = *(this + 1);
        v24 = *(this + 2);
        while (v23 < v24 && (*(this + 24) & 1) == 0)
        {
          v26 = *(a1 + 16);
          v25 = *(a1 + 24);
          if (v26 >= v25)
          {
            v28 = *(a1 + 8);
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_75;
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
              sub_245DF8830(a1 + 8, v33);
            }

            v34 = (v26 - v28) >> 3;
            v35 = (8 * v30);
            v36 = (8 * v30 - 8 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = *(a1 + 8);
            *(a1 + 8) = v36;
            *(a1 + 16) = v27;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v27;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
          {
            *(this + 24) = 1;
            break;
          }

          *(v27 - 1) = *(*this + v38);
          v24 = *(this + 2);
          v23 = *(this + 1) + 8;
          *(this + 1) = v23;
        }

        PB::Reader::recallMark();
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          *(a1 + 40) |= 1u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 32) = *(*this + v22);
LABEL_67:
          *(this + 1) += 8;
          goto LABEL_68;
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_74:
          v53 = 0;
          return v53 & 1;
        }
      }

LABEL_68:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_72:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245EDBE7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::write(this, *(result + 32));
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_245EDBEE0(uint64_t result)
{
  *result = &unk_2858D5048;
  *(result + 100) = 0;
  return result;
}

void sub_245EDBF08(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDBF40(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5048;
  *(result + 100) = 0;
  v2 = *(a2 + 100);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 128;
    *(result + 100) = 128;
    *(result + 64) = v4;
    v2 = *(a2 + 100);
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
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 100) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 100);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 8);
    v3 |= 1u;
    *(result + 100) = v3;
    *(result + 8) = v6;
    v2 = *(a2 + 100);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 4u;
  *(result + 100) = v3;
  *(result + 24) = v7;
  v2 = *(a2 + 100);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 100) = v3;
  *(result + 56) = v8;
  v2 = *(a2 + 100);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 100) = v3;
  *(result + 48) = v9;
  v2 = *(a2 + 100);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 100) = v3;
  *(result + 40) = v10;
  v2 = *(a2 + 100);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 32);
  v3 |= 8u;
  *(result + 100) = v3;
  *(result + 32) = v11;
  v2 = *(a2 + 100);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 100) = v3;
  *(result + 72) = v12;
  v2 = *(a2 + 100);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 84);
  v3 |= 0x400u;
  *(result + 100) = v3;
  *(result + 84) = v13;
  v2 = *(a2 + 100);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a2 + 88);
  v3 |= 0x800u;
  *(result + 100) = v3;
  *(result + 88) = v14;
  v2 = *(a2 + 100);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = *(a2 + 92);
  v3 |= 0x1000u;
  *(result + 100) = v3;
  *(result + 92) = v15;
  v2 = *(a2 + 100);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

LABEL_30:
    v17 = *(a2 + 96);
    *(result + 100) = v3 | 0x2000;
    *(result + 96) = v17;
    return result;
  }

LABEL_29:
  v16 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 100) = v3;
  *(result + 80) = v16;
  if ((*(a2 + 100) & 0x2000) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_245EDC0F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if (v5)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 8));
    v5 = *(a1 + 100);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 100) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 80);
  PB::TextFormatter::format(this, "batchedLocationFixType");
  v5 = *(a1 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "distance", *(a1 + 16));
  v5 = *(a1 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "gpsAltitude", *(a1 + 24));
  v5 = *(a1 + 100);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "gpsSpeedAccuracy", *(a1 + 32));
  v5 = *(a1 + 100);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "odometer", *(a1 + 40));
  v5 = *(a1 + 100);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "quality");
  v5 = *(a1 + 100);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "rawSpeed", *(a1 + 48));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "speed", *(a1 + 56));
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "startTime", *(a1 + 64));
  v5 = *(a1 + 100);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "timestampGps", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v10 = *(a1 + 96);
  PB::TextFormatter::format(this, "trackRunOdometerHasBeenCorrected");
  if ((*(a1 + 100) & 0x1000) != 0)
  {
LABEL_15:
    v6 = *(a1 + 92);
    PB::TextFormatter::format(this, "type");
  }

LABEL_16:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDC2F8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 100) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_117;
        case 2u:
          *(a1 + 100) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_117;
        case 3u:
          *(a1 + 100) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_117;
        case 4u:
          *(a1 + 100) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_117;
        case 5u:
          *(a1 + 100) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_117;
        case 6u:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_117;
        case 7u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_117;
        case 8u:
          *(a1 + 100) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_117;
        case 9u:
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 72) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
LABEL_79:
            *(this + 24) = 1;
          }

          goto LABEL_138;
        case 0xAu:
          *(a1 + 100) |= 0x400u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v38;
            v73 = (v39 + v38);
            v74 = v38 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_133;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v42 |= (v76 & 0x7F) << v70;
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
                LODWORD(v42) = 0;
LABEL_132:
                v2 = v75;
                goto LABEL_133;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_132;
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
              goto LABEL_133;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_133:
          *(a1 + 84) = v42;
          goto LABEL_138;
        case 0xBu:
          *(a1 + 100) |= 0x800u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v79 = v2 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_137;
              }

              v82 = v81;
              v83 = *v80;
              *(this + 1) = v82;
              v52 |= (v83 & 0x7F) << v77;
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
                LODWORD(v52) = 0;
LABEL_136:
                v2 = v82;
                goto LABEL_137;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_136;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_137;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_137:
          *(a1 + 88) = v52;
          goto LABEL_138;
        case 0xCu:
          *(a1 + 100) |= 0x1000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v58 = v2 - v22;
            v59 = (v23 + v22);
            v60 = v22 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v26 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_124:
                v2 = v61;
                goto LABEL_125;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_124;
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
              goto LABEL_125;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_125:
          *(a1 + 92) = v26;
          goto LABEL_138;
        case 0xDu:
          *(a1 + 100) |= 0x200u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v65 = v2 - v30;
            v66 = (v31 + v30);
            v67 = v30 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v34 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              --v65;
              ++v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_128:
                v2 = v68;
                goto LABEL_129;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_128;
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
              goto LABEL_129;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_129:
          *(a1 + 80) = v34;
          goto LABEL_138;
        case 0xEu:
          *(a1 + 100) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v47 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v46 = *(*this + v2++);
            *(this + 1) = v2;
            v47 = v46 != 0;
          }

          *(a1 + 96) = v47;
          goto LABEL_138;
        default:
          if (!PB::Reader::skip(this))
          {
            v84 = 0;
            return v84 & 1;
          }

          v2 = *(this + 1);
LABEL_138:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_142;
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

LABEL_142:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_245EDCB28(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 100);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v8 = *(v3 + 80);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  v7 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_29:
  v9 = *(v3 + 96);

  return PB::Writer::write(this);
}

uint64_t sub_245EDCCE8(uint64_t result)
{
  *result = &unk_2858D5080;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

void sub_245EDCD10(PB::Base *this)
{
  *this = &unk_2858D5080;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EDCD94(PB::Base *a1)
{
  sub_245EDCD10(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDCDCC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5080;
  *(result + 72) = 0;
  *(result + 80) = 0;
  if (*(a2 + 72))
  {
    operator new();
  }

  v2 = *(a2 + 80);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    *(result + 80) |= 4u;
    *(result + 24) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 8) == 0)
    {
LABEL_5:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 32);
  *(result + 80) |= 8u;
  *(result + 32) = v5;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_6:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(a2 + 56);
  *(result + 80) |= 0x40u;
  *(result + 56) = v6;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_7:
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a2 + 64);
  *(result + 80) |= 0x80u;
  *(result + 64) = v7;
  v2 = *(a2 + 80);
  if ((v2 & 2) == 0)
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 16);
  *(result + 80) |= 2u;
  *(result + 16) = v8;
  v2 = *(a2 + 80);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 8);
  *(result + 80) |= 1u;
  *(result + 8) = v9;
  v2 = *(a2 + 80);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_19:
  v10 = *(a2 + 48);
  *(result + 80) |= 0x20u;
  *(result + 48) = v10;
  if ((*(a2 + 80) & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v3 = *(a2 + 40);
  *(result + 80) |= 0x10u;
  *(result + 40) = v3;
  return result;
}

uint64_t sub_245EDCF7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    PB::TextFormatter::format(this, "gpsCourseAccuracy", *(a1 + 8));
    v5 = *(a1 + 80);
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

  else if ((*(a1 + 80) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gpsCourseRadians", *(a1 + 16));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "groundAltitude", *(a1 + 24));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "groundAltitudeUncertainty", *(a1 + 32));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "maxAbsSlope", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    PB::TextFormatter::format(this, "smoothedGPSAltitude", *(a1 + 56));
    if ((*(a1 + 80) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  PB::TextFormatter::format(this, "slope", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  PB::TextFormatter::format(this, "smoothedGPSAltitudeUncertainty", *(a1 + 64));
LABEL_9:
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDD0F8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_67;
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 80) |= 8u;
            v27 = *(this + 1);
            if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
            {
LABEL_58:
              *(this + 24) = 1;
              goto LABEL_63;
            }

            *(a1 + 32) = *(*this + v27);
            goto LABEL_62;
          }

          if (v22 == 4)
          {
            *(a1 + 80) |= 0x40u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 56) = *(*this + v25);
            goto LABEL_62;
          }
        }

        else
        {
          if (v22 == 1)
          {
            operator new();
          }

          if (v22 == 2)
          {
            *(a1 + 80) |= 4u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 24) = *(*this + v24);
            goto LABEL_62;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 80) |= 0x80u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 64) = *(*this + v29);
          goto LABEL_62;
        }

        if (v22 == 6)
        {
          *(a1 + 80) |= 2u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 16) = *(*this + v26);
          goto LABEL_62;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 80) |= 1u;
            v28 = *(this + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v28);
            goto LABEL_62;
          case 8:
            *(a1 + 80) |= 0x20u;
            v30 = *(this + 1);
            if (v30 > 0xFFFFFFFFFFFFFFF7 || v30 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 48) = *(*this + v30);
            goto LABEL_62;
          case 9:
            *(a1 + 80) |= 0x10u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 40) = *(*this + v23);
LABEL_62:
            *(this + 1) += 8;
            goto LABEL_63;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v32 = 0;
        return v32 & 1;
      }

LABEL_63:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_67:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t sub_245EDD568(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 80);
  if ((v5 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v5 = *(v3 + 80);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v3 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v5 = *(v3 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 56));
  v5 = *(v3 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 64));
  v5 = *(v3 + 80);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v5 = *(v3 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 8));
  v5 = *(v3 + 80);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 40);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245EDD694(uint64_t result)
{
  *result = &unk_2858D50B8;
  *(result + 68) = 0;
  return result;
}

void sub_245EDD6BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDD6F4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D50B8;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 52);
    v3 = 64;
    *(result + 68) = 64;
    *(result + 52) = v4;
    v2 = *(a2 + 68);
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
    v5 = *(a2 + 56);
    v3 |= 0x80u;
    *(result + 68) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 68) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 64) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 40) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 32);
  v3 |= 8u;
  *(result + 68) = v3;
  *(result + 32) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_22:
    v13 = *(a2 + 48);
    *(result + 68) = v3 | 0x20;
    *(result + 48) = v13;
    return result;
  }

LABEL_21:
  v12 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 60) = v12;
  if ((*(a2 + 68) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245EDD838(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "context");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 52);
  PB::TextFormatter::format(this, "dataSource");
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 64);
  PB::TextFormatter::format(this, "error");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "heartRate", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "interpolation");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 60);
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "sinceLastGood", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDD9BC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_142;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_138;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_117;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_117;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_72;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_117;
            case 9:
              *(a1 + 68) |= 0x100u;
              v49 = *(this + 1);
              v2 = *(this + 2);
              v50 = *this;
              if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
              {
                v78 = 0;
                v79 = 0;
                v53 = 0;
                if (v2 <= v49)
                {
                  v2 = *(this + 1);
                }

                v80 = v2 - v49;
                v81 = (v50 + v49);
                v82 = v49 + 1;
                while (1)
                {
                  if (!v80)
                  {
                    LODWORD(v53) = 0;
                    *(this + 24) = 1;
                    goto LABEL_137;
                  }

                  v83 = v82;
                  v84 = *v81;
                  *(this + 1) = v83;
                  v53 |= (v84 & 0x7F) << v78;
                  if ((v84 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  --v80;
                  ++v81;
                  v82 = v83 + 1;
                  v14 = v79++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    goto LABEL_136;
                  }
                }

                if (*(this + 24))
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
                  *(this + 1) = v55;
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
              *(a1 + 60) = v53;
              goto LABEL_138;
            case 0xA:
              *(a1 + 68) |= 0x20u;
              v25 = *(this + 1);
              v2 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
              {
                v71 = 0;
                v72 = 0;
                v29 = 0;
                if (v2 <= v25)
                {
                  v2 = *(this + 1);
                }

                v73 = v2 - v25;
                v74 = (v26 + v25);
                v75 = v25 + 1;
                while (1)
                {
                  if (!v73)
                  {
                    LODWORD(v29) = 0;
                    *(this + 24) = 1;
                    goto LABEL_133;
                  }

                  v76 = v75;
                  v77 = *v74;
                  *(this + 1) = v76;
                  v29 |= (v77 & 0x7F) << v71;
                  if ((v77 & 0x80) == 0)
                  {
                    break;
                  }

                  v71 += 7;
                  --v73;
                  ++v74;
                  v75 = v76 + 1;
                  v14 = v72++ > 8;
                  if (v14)
                  {
                    LODWORD(v29) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v29) = 0;
                }

LABEL_132:
                v2 = v76;
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
                    LODWORD(v29) = 0;
                    break;
                  }
                }
              }

LABEL_133:
              *(a1 + 48) = v29;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x40u;
          v41 = *(this + 1);
          v2 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v41;
            v67 = (v42 + v41);
            v68 = v41 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v45 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v45) = 0;
                goto LABEL_128;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_128:
            v2 = v69;
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
              *(this + 1) = v47;
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

LABEL_129:
          *(a1 + 52) = v45;
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x80u;
          v33 = *(this + 1);
          v2 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(this + 1);
            }

            v59 = v2 - v33;
            v60 = (v34 + v33);
            v61 = v33 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v62 = v61;
              v63 = *v60;
              *(this + 1) = v62;
              v37 |= (v63 & 0x7F) << v57;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              --v59;
              ++v60;
              v61 = v62 + 1;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v37) = 0;
                goto LABEL_124;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
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
              *(this + 1) = v39;
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
                LODWORD(v37) = 0;
                break;
              }
            }
          }

LABEL_125:
          *(a1 + 56) = v37;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_117;
          case 4:
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_138;
          case 5:
            *(a1 + 68) |= 0x200u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v24 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v23 = *(*this + v2++);
              *(this + 1) = v2;
              v24 = v23 != 0;
            }

            *(a1 + 64) = v24;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v85 = 0;
        return v85 & 1;
      }

      v2 = *(this + 1);
LABEL_138:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_142:
  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t sub_245EDE110(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(result + 52);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v3 + 60);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:
  v9 = *(v3 + 48);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EDE260(uint64_t result)
{
  *result = &unk_2858D50F0;
  *(result + 20) = 0;
  return result;
}

void sub_245EDE288(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDE2C0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D50F0;
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

uint64_t sub_245EDE324(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "orientation");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDE3A0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_54;
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
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
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
            *(this + 1) = v28;
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

LABEL_49:
        *(a1 + 16) = v26;
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
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245EDE66C(uint64_t result, PB::Writer *this)
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

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_245EDE6D8(void *result)
{
  *result = &unk_2858D5128;
  result[1] = 0;
  return result;
}

void sub_245EDE6FC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDE734(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5128;
  *(result + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245EDE76C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDE7CC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_51;
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

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245EDEA40(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EDEA60(uint64_t result)
{
  *result = &unk_2858D5160;
  *(result + 32) = 0;
  return result;
}

void sub_245EDEA88(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDEAC0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5160;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EDEB5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDEC20(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EDEEB0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EDEF58(uint64_t result)
{
  *result = &unk_2858D5198;
  *(result + 32) = 0;
  return result;
}

void sub_245EDEF80(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDEFB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5198;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EDF054(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDF118(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EDF3A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EDF450(uint64_t result)
{
  *result = &unk_2858D51D0;
  *(result + 32) = 0;
  return result;
}

void sub_245EDF478(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDF4B0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D51D0;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EDF54C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDF610(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EDF8A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EDF948(uint64_t result)
{
  *result = &unk_2858D5208;
  *(result + 40) = 0;
  return result;
}

void sub_245EDF970(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EDF9A8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5208;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 28);
    v3 |= 0x10u;
    *(a1 + 40) = v3;
    *(a1 + 28) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 32);
    v3 |= 0x20u;
    *(a1 + 40) = v3;
    *(a1 + 32) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
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

  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 40) = v3;
  *(a1 + 24) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 40) = v3;
  *(a1 + 36) = v5;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 40) = v3;
  *(a1 + 20) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 16);
  *(a1 + 40) = v3 | 2;
  *(a1 + 16) = v4;
  return *&v4;
}

uint64_t sub_245EDFA98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotAngularRateVar", *(a1 + 16));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotUncTNB", *(a1 + 20));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotUncertainty", *(a1 + 24));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotVectorX", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotVectorY", *(a1 + 32));
  v5 = *(a1 + 40);
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
  v6 = *(a1 + 36);
  PB::TextFormatter::format(this, "hasValidTNBFrame");
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDFBBC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_62;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_57;
          case 2:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_56:
            v2 = *(this + 1) + 4;
LABEL_57:
            *(this + 1) = v2;
            goto LABEL_58;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v24 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v23 = *(*this + v2++);
            *(this + 1) = v2;
            v24 = v23 != 0;
          }

          *(a1 + 36) = v24;
          goto LABEL_58;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_58:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245EDFF20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v5 = *(v3 + 36);
  result = PB::Writer::write(this);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245EE001C(uint64_t result)
{
  *result = &unk_2858D5240;
  *(result + 32) = 0;
  return result;
}

void sub_245EE0044(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE007C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5240;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EE0118(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dotMeasurement", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotMeasurementUnc", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE01DC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EE046C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EE0514(uint64_t result)
{
  *result = &unk_2858D5278;
  *(result + 32) = 0;
  return result;
}

void sub_245EE053C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE0574(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5278;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EE0610(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE06D4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}