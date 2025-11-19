uint64_t sub_245EA4A40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sourceX");
    v5 = *(a1 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "sourceY");
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 32);
  PB::TextFormatter::format(this, "sourceZ");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 36));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 40));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 44));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "velocityX", *(a1 + 48));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "velocityY", *(a1 + 52));
  if ((*(a1 + 60) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "velocityZ", *(a1 + 56));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA4BE4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_130;
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
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_74:
              *(this + 24) = 1;
              goto LABEL_126;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 8;
            goto LABEL_110;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 48) = *(*this + v2);
LABEL_109:
            v2 = *(this + 1) + 4;
LABEL_110:
            *(this + 1) = v2;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_109;
            case 4:
              *(a1 + 60) |= 0x400u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_109;
            case 5:
              *(a1 + 60) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 36) = *(*this + v2);
              goto LABEL_109;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 8u;
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
                  goto LABEL_125;
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
                  goto LABEL_124;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_124:
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

LABEL_125:
            *(a1 + 28) = v43;
            goto LABEL_126;
          case 0xA:
            *(a1 + 60) |= 0x10u;
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
                  goto LABEL_117;
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
                  goto LABEL_116;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_116:
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

LABEL_117:
            *(a1 + 32) = v35;
            goto LABEL_126;
          case 0xB:
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_109;
          case 7:
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_109;
          case 8:
            *(a1 + 60) |= 4u;
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
                  goto LABEL_121;
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
                  goto LABEL_120;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_120:
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

LABEL_121:
            *(a1 + 24) = v27;
            goto LABEL_126;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_126:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_130:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245EA52A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(result + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
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
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 60);
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
  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v7 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 60) & 2) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v3 + 16);

  return PB::Writer::write(this, v8);
}

uint64_t sub_245EA5414(uint64_t result)
{
  *result = &unk_2858D2FF0;
  *(result + 12) = 0;
  return result;
}

void sub_245EA543C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EA5474(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D2FF0;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245EA54B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "isDeviceVibrating");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA5510(uint64_t a1, PB::Reader *this)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_34;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        v3 = *(this + 2);
        if (v2 >= v3)
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

        *(a1 + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245EA56C4(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245EA56E4(uint64_t result)
{
  *result = &unk_2858D3028;
  *(result + 20) = 0;
  return result;
}

void sub_245EA570C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EA5744(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3028;
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

uint64_t sub_245EA57A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "shouldSuppress");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA5824(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EA5AE4(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EA5B50(uint64_t result)
{
  *result = &unk_2858D3060;
  *(result + 116) = 0;
  return result;
}

void sub_245EA5B78(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EA5BB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3060;
  *(a1 + 116) = 0;
  v2 = *(a2 + 116);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 116) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 116);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_5:
    result = *(a2 + 68);
    v3 |= 0x4000u;
    *(a1 + 116) = v3;
    *(a1 + 68) = result;
    v2 = *(a2 + 116);
  }

LABEL_6:
  if ((v2 & 0x8000) != 0)
  {
    result = *(a2 + 72);
    v3 |= 0x8000u;
    *(a1 + 116) = v3;
    *(a1 + 72) = result;
    v2 = *(a2 + 116);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 76);
  v3 |= 0x10000u;
  *(a1 + 116) = v3;
  *(a1 + 76) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 48);
  v3 |= 0x200u;
  *(a1 + 116) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 52);
  v3 |= 0x400u;
  *(a1 + 116) = v3;
  *(a1 + 52) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x800) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 56);
  v3 |= 0x800u;
  *(a1 + 116) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 60);
  v3 |= 0x1000u;
  *(a1 + 116) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 64);
  v3 |= 0x2000u;
  *(a1 + 116) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 112);
  v3 |= 0x2000000u;
  *(a1 + 116) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x40000) == 0)
  {
LABEL_15:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 84);
  v3 |= 0x40000u;
  *(a1 + 116) = v3;
  *(a1 + 84) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x20000) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 80);
  v3 |= 0x20000u;
  *(a1 + 116) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 116);
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 116) = v3;
  *(a1 + 20) = result;
  v2 = *(a2 + 116);
  if ((v2 & 8) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 116) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 116) = v3;
  *(a1 + 28) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 116) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 116) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x80) == 0)
  {
LABEL_22:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 116) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x80000) == 0)
  {
LABEL_23:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 88);
  v3 |= 0x80000u;
  *(a1 + 116) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x100000) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 92);
  v3 |= 0x100000u;
  *(a1 + 116) = v3;
  *(a1 + 92) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 96);
  v3 |= 0x200000u;
  *(a1 + 116) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x400000) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 100);
  v3 |= 0x400000u;
  *(a1 + 116) = v3;
  *(a1 + 100) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 104);
  v3 |= 0x800000u;
  *(a1 + 116) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = *(a2 + 108);
  v3 |= 0x1000000u;
  *(a1 + 116) = v3;
  *(a1 + 108) = result;
  v2 = *(a2 + 116);
  if ((v2 & 0x100) == 0)
  {
LABEL_29:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_54:
    result = *(a2 + 16);
    *(a1 + 116) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_53:
  result = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 116) = v3;
  *(a1 + 44) = result;
  if ((*(a2 + 116) & 2) != 0)
  {
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_245EA5EB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "absMeanGravX", *(a1 + 16));
    v5 = *(a1 + 116);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelFFTBin1", *(a1 + 20));
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "accelFFTBin2", *(a1 + 24));
  v5 = *(a1 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "accelFFTBin3", *(a1 + 28));
  v5 = *(a1 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "accelFFTBin4", *(a1 + 32));
  v5 = *(a1 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "accelFFTBin5", *(a1 + 36));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "accelFFTBin6", *(a1 + 40));
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "accelFFTBinDotPressureFFTBin", *(a1 + 44));
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "fFTBin1", *(a1 + 48));
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "fFTBin2", *(a1 + 52));
  v5 = *(a1 + 116);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "fFTBin3", *(a1 + 56));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "fFTBin4", *(a1 + 60));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "fFTBin5", *(a1 + 64));
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "meanGravX", *(a1 + 68));
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "meanGravY", *(a1 + 72));
  v5 = *(a1 + 116);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "meanGravZ", *(a1 + 76));
  v5 = *(a1 + 116);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "medianLux", *(a1 + 80));
  v5 = *(a1 + 116);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "medianPocketProbability", *(a1 + 84));
  v5 = *(a1 + 116);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "pressureFFTBin1", *(a1 + 88));
  v5 = *(a1 + 116);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "pressureFFTBin2", *(a1 + 92));
  v5 = *(a1 + 116);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "pressureFFTBin3", *(a1 + 96));
  v5 = *(a1 + 116);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "pressureFFTBin4", *(a1 + 100));
  v5 = *(a1 + 116);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "pressureFFTBin5", *(a1 + 104));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "pressureFFTBin6", *(a1 + 108));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(this, "stdPressure", *(a1 + 112));
  if (*(a1 + 116))
  {
LABEL_27:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_28:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA6238(uint64_t a1, PB::Reader *this)
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
        goto LABEL_126;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 1u;
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
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_124;
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
                v26 = 0;
                goto LABEL_123;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_123:
            v2 = v35;
          }

          else
          {
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
                goto LABEL_124;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_124:
          *(a1 + 8) = v26;
          goto LABEL_117;
        case 2u:
          *(a1 + 116) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_116;
        case 3u:
          *(a1 + 116) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_116;
        case 4u:
          *(a1 + 116) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_116;
        case 5u:
          *(a1 + 116) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_116;
        case 6u:
          *(a1 + 116) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_116;
        case 7u:
          *(a1 + 116) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_116;
        case 8u:
          *(a1 + 116) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_116;
        case 9u:
          *(a1 + 116) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_116;
        case 0xAu:
          *(a1 + 116) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_116;
        case 0xBu:
          *(a1 + 116) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_116;
        case 0xCu:
          *(a1 + 116) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_116;
        case 0xDu:
          *(a1 + 116) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_116;
        case 0xEu:
          *(a1 + 116) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_116;
        case 0xFu:
          *(a1 + 116) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_116;
        case 0x10u:
          *(a1 + 116) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_116;
        case 0x11u:
          *(a1 + 116) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_116;
        case 0x12u:
          *(a1 + 116) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        case 0x13u:
          *(a1 + 116) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_116;
        case 0x14u:
          *(a1 + 116) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_116;
        case 0x15u:
          *(a1 + 116) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_116;
        case 0x16u:
          *(a1 + 116) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_116;
        case 0x17u:
          *(a1 + 116) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_116;
        case 0x18u:
          *(a1 + 116) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_116;
        case 0x19u:
          *(a1 + 116) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_116;
        case 0x1Au:
          *(a1 + 116) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_104:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_117:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_126;
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

LABEL_126:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245EA6AC4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 116);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 116);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 116);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_14:
    if ((v4 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_17:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_18:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_19:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_20:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 116) & 2) == 0)
    {
      return result;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_53:
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245EA6DD4(uint64_t result)
{
  *result = &unk_2858D3098;
  *(result + 64) = 0;
  return result;
}

void sub_245EA6DFC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EA6E34(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3098;
  *(a1 + 64) = 0;
  v2 = *(a2 + 64);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 64) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 64);
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
    result = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 64) = v3;
    *(a1 + 20) = result;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 28);
    v3 |= 0x10u;
    *(a1 + 64) = v3;
    *(a1 + 28) = result;
    v2 = *(a2 + 64);
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

  result = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 64) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 52);
  v3 |= 0x400u;
  *(a1 + 64) = v3;
  *(a1 + 52) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 60);
  v3 |= 0x1000u;
  *(a1 + 64) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 48);
  v3 |= 0x200u;
  *(a1 + 64) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 64) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 56);
  v3 |= 0x800u;
  *(a1 + 64) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 64);
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
  result = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 64) = v3;
  *(a1 + 44) = result;
  v2 = *(a2 + 64);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_28:
    result = *(a2 + 40);
    *(a1 + 64) = v3 | 0x80;
    *(a1 + 40) = result;
    return result;
  }

LABEL_27:
  result = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 64) = v3;
  *(a1 + 24) = result;
  if ((*(a2 + 64) & 0x80) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_245EA6FCC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "bagObstructed", *(a1 + 16));
    v5 = *(a1 + 64);
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

  PB::TextFormatter::format(this, "closeCoveredBagObstructed", *(a1 + 20));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "closeCoveredObstructed", *(a1 + 24));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "closeCoveredPocketObstructed", *(a1 + 28));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "inHandObstructed", *(a1 + 32));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "looseCoveredBagObstructed", *(a1 + 36));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "looseCoveredObstructed", *(a1 + 40));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "looseCoveredPocketObstructed", *(a1 + 44));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "obstructed", *(a1 + 48));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "otherObstructed", *(a1 + 52));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "pocketObstructed", *(a1 + 56));
  v5 = *(a1 + 64);
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
  v6 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 64) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "visible", *(a1 + 60));
  }

LABEL_15:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA71B0(uint64_t a1, PB::Reader *this)
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
        goto LABEL_87;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 1u;
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
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_82;
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
                v26 = 0;
                goto LABEL_81;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_81:
            v2 = v35;
          }

          else
          {
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
                goto LABEL_82;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_82:
          *(a1 + 8) = v26;
          goto LABEL_83;
        case 2u:
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_77;
        case 3u:
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_77;
        case 4u:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_77;
        case 5u:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_77;
        case 6u:
          *(a1 + 64) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_77;
        case 7u:
          *(a1 + 64) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_77;
        case 8u:
          *(a1 + 64) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_77;
        case 9u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_77;
        case 0xAu:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_77;
        case 0xBu:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_77;
        case 0xCu:
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_77;
        case 0xDu:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_67:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_77:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_83;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_83:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_87;
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

LABEL_87:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245EA7734(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
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

  result = PB::Writer::write(this, *(v3 + 20));
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
  result = PB::Writer::write(this, *(v3 + 28));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::write(this, *(v3 + 36));
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
  result = PB::Writer::write(this, *(v3 + 52));
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
  result = PB::Writer::write(this, *(v3 + 60));
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
  result = PB::Writer::write(this, *(v3 + 48));
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
  result = PB::Writer::write(this, *(v3 + 16));
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
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_27:
  v6 = *(v3 + 40);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245EA78D8(uint64_t result)
{
  *result = &unk_2858D30D0;
  *(result + 84) = 0;
  return result;
}

void sub_245EA7900(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EA7938(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D30D0;
  *(result + 84) = 0;
  v2 = *(a2 + 84);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 84) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 84);
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
    *(result + 84) = v3;
    *(result + 80) = v5;
    v2 = *(a2 + 84);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(result + 84) = v3;
    *(result + 20) = v6;
    v2 = *(a2 + 84);
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

  v7 = *(a2 + 64);
  v3 |= 0x2000u;
  *(result + 84) = v3;
  *(result + 64) = v7;
  v2 = *(a2 + 84);
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
  v8 = *(a2 + 60);
  v3 |= 0x1000u;
  *(result + 84) = v3;
  *(result + 60) = v8;
  v2 = *(a2 + 84);
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
  v9 = *(a2 + 48);
  v3 |= 0x200u;
  *(result + 84) = v3;
  *(result + 48) = v9;
  v2 = *(a2 + 84);
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
  v10 = *(a2 + 76);
  v3 |= 0x10000u;
  *(result + 84) = v3;
  *(result + 76) = v10;
  v2 = *(a2 + 84);
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
  v11 = *(a2 + 52);
  v3 |= 0x400u;
  *(result + 84) = v3;
  *(result + 52) = v11;
  v2 = *(a2 + 84);
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
  v12 = *(a2 + 56);
  v3 |= 0x800u;
  *(result + 84) = v3;
  *(result + 56) = v12;
  v2 = *(a2 + 84);
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
  v13 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 84) = v3;
  *(result + 36) = v13;
  v2 = *(a2 + 84);
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
  v14 = *(a2 + 40);
  v3 |= 0x80u;
  *(result + 84) = v3;
  *(result + 40) = v14;
  v2 = *(a2 + 84);
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
  v15 = *(a2 + 24);
  v3 |= 8u;
  *(result + 84) = v3;
  *(result + 24) = v15;
  v2 = *(a2 + 84);
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
  v16 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 84) = v3;
  *(result + 28) = v16;
  v2 = *(a2 + 84);
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
  v17 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 84) = v3;
  *(result + 32) = v17;
  v2 = *(a2 + 84);
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
  v18 = *(a2 + 68);
  v3 |= 0x4000u;
  *(result + 84) = v3;
  *(result + 68) = v18;
  v2 = *(a2 + 84);
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
  v19 = *(a2 + 72);
  v3 |= 0x8000u;
  *(result + 84) = v3;
  *(result + 72) = v19;
  v2 = *(a2 + 84);
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
  v20 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 84) = v3;
  *(result + 44) = v20;
  v2 = *(a2 + 84);
  if ((v2 & 2) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      return result;
    }

LABEL_40:
    v22 = *(a2 + 81);
    *(result + 84) = v3 | 0x40000;
    *(result + 81) = v22;
    return result;
  }

LABEL_39:
  v21 = *(a2 + 16);
  v3 |= 2u;
  *(result + 84) = v3;
  *(result + 16) = v21;
  if ((*(a2 + 84) & 0x40000) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_245EA7B78(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 84);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "currentEventTag");
    v5 = *(a1 + 84);
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

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "currentState");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "filteredGravityX", *(a1 + 24));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "filteredGravityY", *(a1 + 28));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "filteredGravityZ", *(a1 + 32));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "gravityAngle", *(a1 + 36));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "gravityShift", *(a1 + 40));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "isMovingFiltered", *(a1 + 44));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "lux", *(a1 + 48));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "luxBaseline", *(a1 + 52));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "luxShift", *(a1 + 56));
  v5 = *(a1 + 84);
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
  v9 = *(a1 + 60);
  PB::TextFormatter::format(this, "motionType");
  v5 = *(a1 + 84);
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
  v10 = *(a1 + 64);
  PB::TextFormatter::format(this, "orientation");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "pocketProbEnter", *(a1 + 68));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "pocketProbExit", *(a1 + 72));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 76));
  v5 = *(a1 + 84);
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
  v11 = *(a1 + 80);
  PB::TextFormatter::format(this, "shouldSuppress");
  v5 = *(a1 + 84);
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
  v12 = *(a1 + 81);
  PB::TextFormatter::format(this, "sufficientMotion");
  if (*(a1 + 84))
  {
LABEL_20:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA7E1C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_175;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 84) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v22;
            v90 = (v23 + v22);
            v91 = v22 + 1;
            while (1)
            {
              if (!v89)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_166;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v26 |= (v93 & 0x7F) << v87;
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
                v26 = 0;
                goto LABEL_165;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_165:
            v2 = v92;
          }

          else
          {
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
                goto LABEL_166;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_166:
          *(a1 + 8) = v26;
          goto LABEL_171;
        case 2u:
          *(a1 + 84) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v54 = *(*this + v2++);
            *(this + 1) = v2;
            v55 = v54 != 0;
          }

          *(a1 + 80) = v55;
          goto LABEL_171;
        case 3u:
          *(a1 + 84) |= 4u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v38;
            v76 = (v39 + v38);
            v77 = v38 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v42 |= (v79 & 0x7F) << v73;
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
                LODWORD(v42) = 0;
LABEL_157:
                v2 = v78;
                goto LABEL_158;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_157;
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
              goto LABEL_158;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_158:
          *(a1 + 20) = v42;
          goto LABEL_171;
        case 4u:
          *(a1 + 84) |= 0x2000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v46;
            v83 = (v47 + v46);
            v84 = v46 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v50 |= (v86 & 0x7F) << v80;
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
                LODWORD(v50) = 0;
LABEL_161:
                v2 = v85;
                goto LABEL_162;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_161;
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
              goto LABEL_162;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_162:
          *(a1 + 64) = v50;
          goto LABEL_171;
        case 5u:
          *(a1 + 84) |= 0x1000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v30;
            v69 = (v31 + v30);
            v70 = v30 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_154;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v34 |= (v72 & 0x7F) << v66;
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
                LODWORD(v34) = 0;
LABEL_153:
                v2 = v71;
                goto LABEL_154;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_153;
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
              goto LABEL_154;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_154:
          *(a1 + 60) = v34;
          goto LABEL_171;
        case 6u:
          *(a1 + 84) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_145;
        case 7u:
          *(a1 + 84) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_145;
        case 8u:
          *(a1 + 84) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_145;
        case 9u:
          *(a1 + 84) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_145;
        case 0xAu:
          *(a1 + 84) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_145;
        case 0xBu:
          *(a1 + 84) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_145;
        case 0xCu:
          *(a1 + 84) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_145;
        case 0xDu:
          *(a1 + 84) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_145;
        case 0xEu:
          *(a1 + 84) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_145;
        case 0xFu:
          *(a1 + 84) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_145;
        case 0x10u:
          *(a1 + 84) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_145;
        case 0x11u:
          *(a1 + 84) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_97:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 44) = *(*this + v2);
LABEL_145:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_171;
        case 0x12u:
          *(a1 + 84) |= 2u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v56;
            v97 = (v57 + v56);
            v98 = v56 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_170;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v60 |= (v100 & 0x7F) << v94;
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
                LODWORD(v60) = 0;
LABEL_169:
                v2 = v99;
                goto LABEL_170;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_169;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_170;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_170:
          *(a1 + 16) = v60;
          goto LABEL_171;
        case 0x13u:
          *(a1 + 84) |= 0x40000u;
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

          *(a1 + 81) = v65;
          goto LABEL_171;
        default:
          if (!PB::Reader::skip(this))
          {
            v101 = 0;
            return v101 & 1;
          }

          v2 = *(this + 1);
LABEL_171:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_175;
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

LABEL_175:
  v101 = v4 ^ 1;
  return v101 & 1;
}

uint64_t sub_245EA8850(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 84);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 48));
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
  result = PB::Writer::write(this, *(v3 + 76));
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
  result = PB::Writer::write(this, *(v3 + 52));
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
  result = PB::Writer::write(this, *(v3 + 56));
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
  result = PB::Writer::write(this, *(v3 + 36));
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
  result = PB::Writer::write(this, *(v3 + 40));
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
  result = PB::Writer::write(this, *(v3 + 24));
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
  result = PB::Writer::write(this, *(v3 + 28));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::write(this, *(v3 + 68));
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
  result = PB::Writer::write(this, *(v3 + 72));
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
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 84) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 84);
  if ((v4 & 2) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_39:
  v11 = *(v3 + 81);

  return PB::Writer::write(this);
}

uint64_t sub_245EA8A9C(uint64_t result)
{
  *result = &unk_2858D3108;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 76) = 0;
  return result;
}

void sub_245EA8AC4(PB::Base *this)
{
  *this = &unk_2858D3108;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EA8B28(PB::Base *a1)
{
  sub_245EA8AC4(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EA8B60(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3108;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 76) = 0;
  v5 = *(a2 + 76);
  if (v5)
  {
    v7 = *(a2 + 32);
    v6 = 1;
    *(a1 + 76) = 1;
    *(a1 + 32) = v7;
    v5 = *(a2 + 76);
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
    v8 = *(a2 + 40);
    v6 |= 2u;
    *(a1 + 76) = v6;
    *(a1 + 40) = v8;
    v5 = *(a2 + 76);
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
    v13 = *(a2 + 48);
    v6 |= 4u;
    *(a1 + 76) = v6;
    *(a1 + 48) = v13;
    v5 = *(a2 + 76);
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

  v14 = *(a2 + 56);
  v6 |= 0x10u;
  *(a1 + 76) = v6;
  *(a1 + 56) = v14;
  if ((*(a2 + 76) & 8) != 0)
  {
LABEL_9:
    v9 = *(a2 + 52);
    *(a1 + 76) = v6 | 8;
    *(a1 + 52) = v9;
  }

LABEL_10:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v10 = *(a2 + 76);
  if ((v10 & 0x40) != 0)
  {
    v15 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v15;
    v10 = *(a2 + 76);
    if ((v10 & 0x80) == 0)
    {
LABEL_14:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v17 = *(a2 + 72);
      *(a1 + 76) |= 0x100u;
      *(a1 + 72) = v17;
      if ((*(a2 + 76) & 0x20) == 0)
      {
        return a1;
      }

      goto LABEL_16;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a2 + 68);
  *(a1 + 76) |= 0x80u;
  *(a1 + 68) = v16;
  v10 = *(a2 + 76);
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v10 & 0x20) != 0)
  {
LABEL_16:
    v11 = *(a2 + 60);
    *(a1 + 76) |= 0x20u;
    *(a1 + 60) = v11;
  }

  return a1;
}

uint64_t sub_245EA8CE0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 76);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "compassBias", *(a1 + 48));
    v5 = *(a1 + 76);
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

  PB::TextFormatter::format(this, "estimatedBiasUncertainty", *(a1 + 52));
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "estimatedHeading", *(a1 + 56));
  if ((*(a1 + 76) & 0x20) != 0)
  {
LABEL_5:
    v6 = *(a1 + 60);
    PB::TextFormatter::format(this, "globalReferenceFrame");
  }

LABEL_6:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "lslGlobalToDeviceFrameRotationMatrix", v9);
  }

  v10 = *(a1 + 76);
  if ((v10 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "lslHeadingAccuracy", *(a1 + 64));
    v10 = *(a1 + 76);
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

  PB::TextFormatter::format(this, "lslHeadingConfidence", *(a1 + 68));
  v10 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 32));
  v10 = *(a1 + 76);
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
  v11 = *(a1 + 72);
  PB::TextFormatter::format(this, "roadID");
  if ((*(a1 + 76) & 2) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_14:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA8E80(uint64_t a1, PB::Reader *this)
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
            goto LABEL_141;
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
        goto LABEL_141;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 76) |= 1u;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(this + 2))
            {
              goto LABEL_133;
            }

            *(a1 + 32) = *(*this + v35);
            goto LABEL_54;
          }

          if (v22 == 2)
          {
            *(a1 + 76) |= 2u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(this + 2))
            {
              goto LABEL_133;
            }

            *(a1 + 40) = *(*this + v33);
LABEL_54:
            v36 = *(this + 1) + 8;
            goto LABEL_136;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 76) |= 4u;
              v53 = *(this + 1);
              if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
              {
                goto LABEL_133;
              }

              *(a1 + 48) = *(*this + v53);
              goto LABEL_135;
            case 4:
              *(a1 + 76) |= 0x10u;
              v55 = *(this + 1);
              if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
              {
                goto LABEL_133;
              }

              *(a1 + 56) = *(*this + v55);
              goto LABEL_135;
            case 5:
              *(a1 + 76) |= 8u;
              v23 = *(this + 1);
              if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
              {
                goto LABEL_133;
              }

              *(a1 + 52) = *(*this + v23);
              goto LABEL_135;
          }
        }

        goto LABEL_91;
      }

      if (v22 > 7)
      {
        break;
      }

      if (v22 != 6)
      {
        if (v22 == 7)
        {
          *(a1 + 76) |= 0x40u;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 64) = *(*this + v34);
          goto LABEL_135;
        }

        goto LABEL_91;
      }

      if ((v10 & 7) != 2)
      {
        v66 = *(a1 + 16);
        v65 = *(a1 + 24);
        if (v66 >= v65)
        {
          v80 = *(a1 + 8);
          v81 = v66 - v80;
          v82 = (v66 - v80) >> 2;
          v83 = v82 + 1;
          if ((v82 + 1) >> 62)
          {
LABEL_144:
            sub_245DF85A4();
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
            sub_245DF85BC(a1 + 8, v85);
          }

          v86 = (v66 - v80) >> 2;
          v87 = (4 * v82);
          v88 = (4 * v82 - 4 * v86);
          *v87 = 0;
          v67 = v87 + 1;
          memcpy(v88, v80, v81);
          v89 = *(a1 + 8);
          *(a1 + 8) = v88;
          *(a1 + 16) = v67;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v67;
        v90 = *(this + 1);
        if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
        {
LABEL_133:
          *(this + 24) = 1;
          goto LABEL_137;
        }

        *(v67 - 1) = *(*this + v90);
LABEL_135:
        v36 = *(this + 1) + 4;
LABEL_136:
        *(this + 1) = v36;
        goto LABEL_137;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_143;
      }

      v37 = *(this + 1);
      v38 = *(this + 2);
      while (v37 < v38 && (*(this + 24) & 1) == 0)
      {
        v40 = *(a1 + 16);
        v39 = *(a1 + 24);
        if (v40 >= v39)
        {
          v42 = *(a1 + 8);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 2;
          v45 = v44 + 1;
          if ((v44 + 1) >> 62)
          {
            goto LABEL_144;
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
            sub_245DF85BC(a1 + 8, v47);
          }

          v48 = (v40 - v42) >> 2;
          v49 = (4 * v44);
          v50 = (4 * v44 - 4 * v48);
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
          v41 = v40 + 4;
        }

        *(a1 + 16) = v41;
        v52 = *(this + 1);
        if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*this + v52);
        v38 = *(this + 2);
        v37 = *(this + 1) + 4;
        *(this + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_137:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_141;
      }
    }

    switch(v22)
    {
      case 8:
        *(a1 + 76) |= 0x80u;
        v54 = *(this + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
        {
          goto LABEL_133;
        }

        *(a1 + 68) = *(*this + v54);
        goto LABEL_135;
      case 9:
        *(a1 + 76) |= 0x100u;
        v57 = *(this + 1);
        v56 = *(this + 2);
        v58 = *this;
        if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
        {
          v74 = 0;
          v75 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v76 = v56 - v57;
          if (!v17)
          {
            v76 = 0;
          }

          v77 = (v58 + v57);
          v78 = v57 + 1;
          while (1)
          {
            if (!v76)
            {
              LODWORD(v61) = 0;
              *(this + 24) = 1;
              goto LABEL_126;
            }

            v79 = *v77;
            *(this + 1) = v78;
            v61 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            --v76;
            ++v77;
            ++v78;
            v14 = v75++ > 8;
            if (v14)
            {
LABEL_110:
              LODWORD(v61) = 0;
              goto LABEL_126;
            }
          }

          if (*(this + 24))
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
            *(this + 1) = v63;
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
              goto LABEL_110;
            }
          }
        }

LABEL_126:
        *(a1 + 72) = v61;
        goto LABEL_137;
      case 0xA:
        *(a1 + 76) |= 0x20u;
        v25 = *(this + 1);
        v24 = *(this + 2);
        v26 = *this;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v68 = 0;
          v69 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v70 = v24 - v25;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v26 + v25);
          v72 = v25 + 1;
          while (1)
          {
            if (!v70)
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
              goto LABEL_123;
            }

            v73 = *v71;
            *(this + 1) = v72;
            v29 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            --v70;
            ++v71;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
LABEL_102:
              LODWORD(v29) = 0;
              goto LABEL_123;
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
              goto LABEL_102;
            }
          }
        }

LABEL_123:
        *(a1 + 60) = v29;
        goto LABEL_137;
    }

LABEL_91:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_143:
      v91 = 0;
      return v91 & 1;
    }

    goto LABEL_137;
  }

LABEL_141:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t sub_245EA95DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 76);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
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

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 56));
    if ((*(v3 + 76) & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 76);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v4 & 8) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 52));
  }

LABEL_7:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 76);
  if ((v8 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 64));
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
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 76) & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  result = PB::Writer::write(this, *(v3 + 68));
  v8 = *(v3 + 76);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 0x20) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v3 + 60);

  return PB::Writer::writeVarInt(this);
}

double sub_245EA973C(uint64_t a1)
{
  *a1 = &unk_2858D3140;
  *(a1 + 100) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245EA9770(PB::Base *this)
{
  *this = &unk_2858D3140;
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

void sub_245EA97E4(PB::Base *a1)
{
  sub_245EA9770(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EA981C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3140;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 100) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 100);
  if ((v5 & 0x10) != 0)
  {
    v7 = *(a2 + 88);
    v6 = 16;
    *(a1 + 100) = 16;
    *(a1 + 88) = v7;
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
    v8 = *(a2 + 72);
    v6 |= 4u;
    *(a1 + 100) = v6;
    *(a1 + 72) = v8;
    v5 = *(a2 + 100);
  }

LABEL_6:
  if ((v5 & 8) != 0)
  {
    v12 = *(a2 + 80);
    v6 |= 8u;
    *(a1 + 100) = v6;
    *(a1 + 80) = v12;
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

  v13 = *(a2 + 56);
  v6 |= 1u;
  *(a1 + 100) = v6;
  *(a1 + 56) = v13;
  if ((*(a2 + 100) & 2) != 0)
  {
LABEL_9:
    v9 = *(a2 + 64);
    *(a1 + 100) = v6 | 2;
    *(a1 + 64) = v9;
  }

LABEL_10:
  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  if ((*(a2 + 100) & 0x20) != 0)
  {
    v10 = *(a2 + 96);
    *(a1 + 100) |= 0x20u;
    *(a1 + 96) = v10;
  }

  return a1;
}

uint64_t sub_245EA9964(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitudeOfLocalizedPoseInEcefCoordinate", *(a1 + 56));
    v5 = *(a1 + 100);
  }

  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 96));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "covariance", v8);
  }

  v9 = *(a1 + 100);
  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(this, "horizontalAccuracyOfLocalizedPoseInEcefCoordinate", *(a1 + 64));
    v9 = *(a1 + 100);
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

  else if ((*(a1 + 100) & 4) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(this, "latitudeOfLocalizedPoseInEcefCoordinate", *(a1 + 72));
  v9 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "longitudeOfLocalizedPoseInEcefCoordinate", *(a1 + 80));
  if ((*(a1 + 100) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 88));
  }

LABEL_12:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "transformMatrixFromCameraToEcefCoordinate", v12);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EA9AC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_133;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
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
                goto LABEL_135;
              }

              v46 = *(this + 1);
              v47 = *(this + 2);
              while (v46 < v47 && (*(this + 24) & 1) == 0)
              {
                v49 = *(a1 + 16);
                v48 = *(a1 + 24);
                if (v49 >= v48)
                {
                  v51 = *(a1 + 8);
                  v52 = v49 - v51;
                  v53 = (v49 - v51) >> 2;
                  v54 = v53 + 1;
                  if ((v53 + 1) >> 62)
                  {
                    goto LABEL_136;
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
                    sub_245DF85BC(a1 + 8, v56);
                  }

                  v57 = (v49 - v51) >> 2;
                  v58 = (4 * v53);
                  v59 = (4 * v53 - 4 * v57);
                  *v58 = 0;
                  v50 = v58 + 1;
                  memcpy(v59, v51, v52);
                  v60 = *(a1 + 8);
                  *(a1 + 8) = v59;
                  *(a1 + 16) = v50;
                  *(a1 + 24) = 0;
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

                *(a1 + 16) = v50;
                v61 = *(this + 1);
                if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
                {
LABEL_97:
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                *(v50 - 1) = *(*this + v61);
                v47 = *(this + 2);
                v46 = *(this + 1) + 4;
                *(this + 1) = v46;
              }

              goto LABEL_98;
            }

            v63 = *(a1 + 16);
            v62 = *(a1 + 24);
            if (v63 >= v62)
            {
              v68 = *(a1 + 8);
              v69 = v63 - v68;
              v70 = (v63 - v68) >> 2;
              v71 = v70 + 1;
              if ((v70 + 1) >> 62)
              {
LABEL_136:
                sub_245DF85A4();
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
                sub_245DF85BC(a1 + 8, v73);
              }

              v80 = (v63 - v68) >> 2;
              v81 = (4 * v70);
              v82 = (4 * v70 - 4 * v80);
              *v81 = 0;
              v64 = v81 + 1;
              memcpy(v82, v68, v69);
              v83 = *(a1 + 8);
              *(a1 + 8) = v82;
              *(a1 + 16) = v64;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v64;
            v84 = *(this + 1);
            if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
            {
LABEL_125:
              *(this + 24) = 1;
              goto LABEL_129;
            }

            *(v64 - 1) = *(*this + v84);
LABEL_120:
            v85 = *(this + 1) + 4;
LABEL_128:
            *(this + 1) = v85;
            goto LABEL_129;
          }

          if (v23 == 8)
          {
            *(a1 + 100) |= 0x20u;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              goto LABEL_125;
            }

            *(a1 + 96) = *(*this + v42);
            goto LABEL_120;
          }
        }

        else
        {
          if (v23 == 5)
          {
            *(a1 + 100) |= 2u;
            v44 = *(this + 1);
            if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
            {
              goto LABEL_125;
            }

            *(a1 + 64) = *(*this + v44);
            goto LABEL_127;
          }

          if (v23 == 6)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_135;
              }

              v25 = *(this + 1);
              v26 = *(this + 2);
              while (v25 < v26 && (*(this + 24) & 1) == 0)
              {
                v28 = *(a1 + 40);
                v27 = *(a1 + 48);
                if (v28 >= v27)
                {
                  v30 = *(a1 + 32);
                  v31 = v28 - v30;
                  v32 = (v28 - v30) >> 3;
                  v33 = v32 + 1;
                  if ((v32 + 1) >> 61)
                  {
                    goto LABEL_137;
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
                    sub_245DF8830(a1 + 32, v35);
                  }

                  v36 = (v28 - v30) >> 3;
                  v37 = (8 * v32);
                  v38 = (8 * v32 - 8 * v36);
                  *v37 = 0;
                  v29 = v37 + 1;
                  memcpy(v38, v30, v31);
                  v39 = *(a1 + 32);
                  *(a1 + 32) = v38;
                  *(a1 + 40) = v29;
                  *(a1 + 48) = 0;
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

                *(a1 + 40) = v29;
                v40 = *(this + 1);
                if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
                {
                  goto LABEL_97;
                }

                *(v29 - 1) = *(*this + v40);
                v26 = *(this + 2);
                v25 = *(this + 1) + 8;
                *(this + 1) = v25;
              }

LABEL_98:
              PB::Reader::recallMark();
              goto LABEL_129;
            }

            v66 = *(a1 + 40);
            v65 = *(a1 + 48);
            if (v66 >= v65)
            {
              v74 = *(a1 + 32);
              v75 = v66 - v74;
              v76 = (v66 - v74) >> 3;
              v77 = v76 + 1;
              if ((v76 + 1) >> 61)
              {
LABEL_137:
                sub_245DF85A4();
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
                sub_245DF8830(a1 + 32, v79);
              }

              v86 = (v66 - v74) >> 3;
              v87 = (8 * v76);
              v88 = (8 * v76 - 8 * v86);
              *v87 = 0;
              v67 = v87 + 1;
              memcpy(v88, v74, v75);
              v89 = *(a1 + 32);
              *(a1 + 32) = v88;
              *(a1 + 40) = v67;
              *(a1 + 48) = 0;
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

            *(a1 + 40) = v67;
            v90 = *(this + 1);
            if (v90 > 0xFFFFFFFFFFFFFFF7 || v90 + 8 > *(this + 2))
            {
              goto LABEL_125;
            }

            *(v67 - 1) = *(*this + v90);
            goto LABEL_127;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 100) |= 8u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
          {
            goto LABEL_125;
          }

          *(a1 + 80) = *(*this + v45);
          goto LABEL_127;
        }

        if (v23 == 4)
        {
          *(a1 + 100) |= 1u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_125;
          }

          *(a1 + 56) = *(*this + v41);
          goto LABEL_127;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 100) |= 0x10u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
          {
            goto LABEL_125;
          }

          *(a1 + 88) = *(*this + v43);
          goto LABEL_127;
        }

        if (v23 == 2)
        {
          *(a1 + 100) |= 4u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_125;
          }

          *(a1 + 72) = *(*this + v24);
LABEL_127:
          v85 = *(this + 1) + 8;
          goto LABEL_128;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_135:
        v91 = 0;
        return v91 & 1;
      }

LABEL_129:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_133:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t sub_245EAA1E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 88));
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

  else if ((*(result + 100) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 56));
    if ((*(v3 + 100) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 100);
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 64));
  }

LABEL_7:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  if ((*(v3 + 100) & 0x20) != 0)
  {
    v11 = *(v3 + 96);

    return PB::Writer::write(this, v11);
  }

  return result;
}

uint64_t sub_245EAA30C(uint64_t result)
{
  *result = &unk_2858D3178;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 60) = 0;
  return result;
}

void sub_245EAA334(PB::Base *this)
{
  *this = &unk_2858D3178;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EAA398(PB::Base *a1)
{
  sub_245EAA334(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EAA3D0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3178;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 60) = 0;
  v5 = *(a2 + 60);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 40);
    v6 = 2;
    *(a1 + 60) = 2;
    *(a1 + 40) = v7;
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
    v8 = *(a2 + 32);
    v6 |= 1u;
    *(a1 + 60) = v6;
    *(a1 + 32) = v8;
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

  v12 = *(a2 + 56);
  v6 |= 0x10u;
  *(a1 + 60) = v6;
  *(a1 + 56) = v12;
  if ((*(a2 + 60) & 8) != 0)
  {
LABEL_8:
    v9 = *(a2 + 52);
    *(a1 + 60) = v6 | 8;
    *(a1 + 52) = v9;
  }

LABEL_9:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  if ((*(a2 + 60) & 4) != 0)
  {
    v10 = *(a2 + 48);
    *(a1 + 60) |= 4u;
    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t sub_245EAA4D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "deltaHeading", *(a1 + 48));
    v5 = *(a1 + 60);
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

  else if ((*(a1 + 60) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gravityZ", *(a1 + 52));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "lastStateTimestamp", *(a1 + 32));
  if ((*(a1 + 60) & 0x10) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "meanRotRate", *(a1 + 56));
  }

LABEL_6:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "quaternion", v8);
  }

  if ((*(a1 + 60) & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EAA5EC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_91;
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
        goto LABEL_91;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 == 4)
      {
        *(a1 + 60) |= 8u;
        v26 = *(this + 1);
        if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
        {
          goto LABEL_83;
        }

        *(a1 + 52) = *(*this + v26);
        goto LABEL_85;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          *(a1 + 60) |= 4u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
            goto LABEL_83;
          }

          *(a1 + 48) = *(*this + v24);
          goto LABEL_85;
        }

LABEL_41:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_87;
      }

      if ((v10 & 7) != 2)
      {
        v46 = *(a1 + 16);
        v45 = *(a1 + 24);
        if (v46 >= v45)
        {
          v48 = *(a1 + 8);
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
LABEL_94:
            sub_245DF85A4();
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
            sub_245DF85BC(a1 + 8, v53);
          }

          v54 = (v46 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = 0;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v57 = *(a1 + 8);
          *(a1 + 8) = v56;
          *(a1 + 16) = v47;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v47;
        v58 = *(this + 1);
        if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
        {
LABEL_83:
          *(this + 24) = 1;
          goto LABEL_87;
        }

        *(v47 - 1) = *(*this + v58);
LABEL_85:
        v28 = *(this + 1) + 4;
LABEL_86:
        *(this + 1) = v28;
        goto LABEL_87;
      }

      if (PB::Reader::placeMark())
      {
LABEL_93:
        v59 = 0;
        return v59 & 1;
      }

      v29 = *(this + 1);
      v30 = *(this + 2);
      while (v29 < v30 && (*(this + 24) & 1) == 0)
      {
        v32 = *(a1 + 16);
        v31 = *(a1 + 24);
        if (v32 >= v31)
        {
          v34 = *(a1 + 8);
          v35 = v32 - v34;
          v36 = (v32 - v34) >> 2;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            goto LABEL_94;
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
            sub_245DF85BC(a1 + 8, v39);
          }

          v40 = (v32 - v34) >> 2;
          v41 = (4 * v36);
          v42 = (4 * v36 - 4 * v40);
          *v41 = 0;
          v33 = v41 + 1;
          memcpy(v42, v34, v35);
          v43 = *(a1 + 8);
          *(a1 + 8) = v42;
          *(a1 + 16) = v33;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v33;
        v44 = *(this + 1);
        if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v33 - 1) = *(*this + v44);
        v30 = *(this + 2);
        v29 = *(this + 1) + 4;
        *(this + 1) = v29;
      }

      PB::Reader::recallMark();
LABEL_87:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_91;
      }
    }

    switch(v22)
    {
      case 1:
        *(a1 + 60) |= 2u;
        v25 = *(this + 1);
        if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
        {
          goto LABEL_83;
        }

        *(a1 + 40) = *(*this + v25);
        goto LABEL_46;
      case 2:
        *(a1 + 60) |= 1u;
        v27 = *(this + 1);
        if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
        {
          goto LABEL_83;
        }

        *(a1 + 32) = *(*this + v27);
LABEL_46:
        v28 = *(this + 1) + 8;
        goto LABEL_86;
      case 3:
        *(a1 + 60) |= 0x10u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
        {
          goto LABEL_83;
        }

        *(a1 + 56) = *(*this + v23);
        goto LABEL_85;
    }

    goto LABEL_41;
  }

LABEL_91:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sub_245EAAAC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 60);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      result = PB::Writer::write(this, *(v3 + 56));
      if ((*(v3 + 60) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 60) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    result = PB::Writer::write(this, *(v3 + 52));
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if ((*(v3 + 60) & 4) != 0)
  {
    v8 = *(v3 + 48);

    return PB::Writer::write(this, v8);
  }

  return result;
}

void *sub_245EAABB8(void *result)
{
  *result = &unk_2858D31B0;
  result[1] = 0;
  return result;
}

void sub_245EAABD8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D31B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EAAC58(PB::Base *a1)
{
  sub_245EAABD8(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EAAC90(void *result, uint64_t a2)
{
  *result = &unk_2858D31B0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EAAD38(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EAADB4(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245EAAFD0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

double sub_245EAAFEC(uint64_t a1)
{
  *a1 = &unk_2858D31E8;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245EAB028(PB::Base *this)
{
  *this = &unk_2858D31E8;
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

void sub_245EAB0AC(PB::Base *a1)
{
  sub_245EAB028(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EAB0E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *a1 = &unk_2858D31E8;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  if (*(a2 + 96))
  {
    v5 = *(a2 + 80);
    *(a1 + 96) = 1;
    *(a1 + 80) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_245DF86C8((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  v6 = *(a2 + 96);
  if ((v6 & 4) != 0)
  {
    v7 = *(a2 + 92);
    *(a1 + 96) |= 4u;
    *(a1 + 92) = v7;
    v6 = *(a2 + 96);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 88);
    *(a1 + 96) |= 2u;
    *(a1 + 88) = v8;
  }

  return a1;
}

uint64_t sub_245EAB1E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "attitude", v7);
  }

  v8 = *(a1 + 96);
  if ((v8 & 4) != 0)
  {
    v16 = *(a1 + 92);
    PB::TextFormatter::format(this, "isInitFinished");
    v8 = *(a1 + 96);
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

  else if ((*(a1 + 96) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 80));
  if ((*(a1 + 96) & 2) != 0)
  {
LABEL_6:
    v9 = *(a1 + 88);
    PB::TextFormatter::format(this, "trackingState");
  }

LABEL_7:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "translation", v12);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "velocity", v15);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EAB320(uint64_t a1, PB::Reader *this)
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
        goto LABEL_167;
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
        goto LABEL_167;
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
              goto LABEL_169;
            }

            v50 = *(this + 1);
            v51 = *(this + 2);
            while (v50 < v51 && (*(this + 24) & 1) == 0)
            {
              v53 = *(a1 + 64);
              v52 = *(a1 + 72);
              if (v53 >= v52)
              {
                v55 = *(a1 + 56);
                v56 = v53 - v55;
                v57 = (v53 - v55) >> 3;
                v58 = v57 + 1;
                if ((v57 + 1) >> 61)
                {
                  goto LABEL_170;
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
                  sub_245DF8830(a1 + 56, v60);
                }

                v61 = (v53 - v55) >> 3;
                v62 = (8 * v57);
                v63 = (8 * v57 - 8 * v61);
                *v62 = 0;
                v54 = v62 + 1;
                memcpy(v63, v55, v56);
                v64 = *(a1 + 56);
                *(a1 + 56) = v63;
                *(a1 + 64) = v54;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v54;
              v65 = *(this + 1);
              if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(this + 2))
              {
LABEL_119:
                *(this + 24) = 1;
                goto LABEL_120;
              }

              *(v54 - 1) = *(*this + v65);
              v51 = *(this + 2);
              v50 = *(this + 1) + 8;
              *(this + 1) = v50;
            }

            goto LABEL_120;
          }

          v87 = *(a1 + 64);
          v86 = *(a1 + 72);
          if (v87 >= v86)
          {
            v99 = *(a1 + 56);
            v100 = v87 - v99;
            v101 = (v87 - v99) >> 3;
            v102 = v101 + 1;
            if ((v101 + 1) >> 61)
            {
              goto LABEL_170;
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
              sub_245DF8830(a1 + 56, v104);
            }

            v117 = (v87 - v99) >> 3;
            v118 = (8 * v101);
            v119 = (8 * v101 - 8 * v117);
            *v118 = 0;
            v88 = v118 + 1;
            memcpy(v119, v99, v100);
            v120 = *(a1 + 56);
            *(a1 + 56) = v119;
            *(a1 + 64) = v88;
            *(a1 + 72) = 0;
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

          *(a1 + 64) = v88;
LABEL_158:
          v129 = *(this + 1);
          if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(this + 2))
          {
            goto LABEL_160;
          }

          *(v88 - 1) = *(*this + v129);
          goto LABEL_162;
        case 5:
          *(a1 + 96) |= 4u;
          v82 = *(this + 1);
          if (v82 >= *(this + 2))
          {
            v85 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v83 = v82 + 1;
            v84 = *(*this + v82);
            *(this + 1) = v83;
            v85 = v84 != 0;
          }

          *(a1 + 92) = v85;
          break;
        case 6:
          *(a1 + 96) |= 2u;
          v41 = *(this + 1);
          v40 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
          {
            v89 = 0;
            v90 = 0;
            v45 = 0;
            v17 = v40 >= v41;
            v91 = v40 - v41;
            if (!v17)
            {
              v91 = 0;
            }

            v92 = (v42 + v41);
            v93 = v41 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_148;
              }

              v94 = *v92;
              *(this + 1) = v93;
              v45 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              ++v93;
              v14 = v90++ > 8;
              if (v14)
              {
LABEL_112:
                LODWORD(v45) = 0;
                goto LABEL_148;
              }
            }

            if (*(this + 24))
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
                goto LABEL_112;
              }
            }
          }

LABEL_148:
          *(a1 + 88) = v45;
          break;
        default:
LABEL_79:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_169;
          }

          break;
      }

LABEL_163:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_167;
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
LABEL_169:
            v130 = 0;
            return v130 & 1;
          }

          v66 = *(this + 1);
          v67 = *(this + 2);
          while (v66 < v67 && (*(this + 24) & 1) == 0)
          {
            v69 = *(a1 + 16);
            v68 = *(a1 + 24);
            if (v69 >= v68)
            {
              v71 = *(a1 + 8);
              v72 = v69 - v71;
              v73 = (v69 - v71) >> 3;
              v74 = v73 + 1;
              if ((v73 + 1) >> 61)
              {
                goto LABEL_170;
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
                sub_245DF8830(a1 + 8, v76);
              }

              v77 = (v69 - v71) >> 3;
              v78 = (8 * v73);
              v79 = (8 * v73 - 8 * v77);
              *v78 = 0;
              v70 = v78 + 1;
              memcpy(v79, v71, v72);
              v80 = *(a1 + 8);
              *(a1 + 8) = v79;
              *(a1 + 16) = v70;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v70;
            v81 = *(this + 1);
            if (v81 > 0xFFFFFFFFFFFFFFF7 || v81 + 8 > *(this + 2))
            {
              goto LABEL_119;
            }

            *(v70 - 1) = *(*this + v81);
            v67 = *(this + 2);
            v66 = *(this + 1) + 8;
            *(this + 1) = v66;
          }

          goto LABEL_120;
        }

        v98 = *(a1 + 16);
        v97 = *(a1 + 24);
        if (v98 >= v97)
        {
          v111 = *(a1 + 8);
          v112 = v98 - v111;
          v113 = (v98 - v111) >> 3;
          v114 = v113 + 1;
          if ((v113 + 1) >> 61)
          {
LABEL_170:
            sub_245DF85A4();
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
            sub_245DF8830(a1 + 8, v116);
          }

          v125 = (v98 - v111) >> 3;
          v126 = (8 * v113);
          v127 = (8 * v113 - 8 * v125);
          *v126 = 0;
          v88 = v126 + 1;
          memcpy(v127, v111, v112);
          v128 = *(a1 + 8);
          *(a1 + 8) = v127;
          *(a1 + 16) = v88;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v88;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_79;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_169;
          }

          v24 = *(this + 1);
          v25 = *(this + 2);
          while (v24 < v25 && (*(this + 24) & 1) == 0)
          {
            v27 = *(a1 + 40);
            v26 = *(a1 + 48);
            if (v27 >= v26)
            {
              v29 = *(a1 + 32);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_170;
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
                sub_245DF8830(a1 + 32, v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(a1 + 32);
              *(a1 + 32) = v37;
              *(a1 + 40) = v28;
              *(a1 + 48) = 0;
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

            *(a1 + 40) = v28;
            v39 = *(this + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
            {
              goto LABEL_119;
            }

            *(v28 - 1) = *(*this + v39);
            v25 = *(this + 2);
            v24 = *(this + 1) + 8;
            *(this + 1) = v24;
          }

LABEL_120:
          PB::Reader::recallMark();
          goto LABEL_163;
        }

        v96 = *(a1 + 40);
        v95 = *(a1 + 48);
        if (v96 >= v95)
        {
          v105 = *(a1 + 32);
          v106 = v96 - v105;
          v107 = (v96 - v105) >> 3;
          v108 = v107 + 1;
          if ((v107 + 1) >> 61)
          {
            goto LABEL_170;
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
            sub_245DF8830(a1 + 32, v110);
          }

          v121 = (v96 - v105) >> 3;
          v122 = (8 * v107);
          v123 = (8 * v107 - 8 * v121);
          *v122 = 0;
          v88 = v122 + 1;
          memcpy(v123, v105, v106);
          v124 = *(a1 + 32);
          *(a1 + 32) = v123;
          *(a1 + 40) = v88;
          *(a1 + 48) = 0;
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

        *(a1 + 40) = v88;
      }

      goto LABEL_158;
    }

    *(a1 + 96) |= 1u;
    v49 = *(this + 1);
    if (v49 > 0xFFFFFFFFFFFFFFF7 || v49 + 8 > *(this + 2))
    {
LABEL_160:
      *(this + 24) = 1;
      goto LABEL_163;
    }

    *(a1 + 80) = *(*this + v49);
LABEL_162:
    *(this + 1) += 8;
    goto LABEL_163;
  }

LABEL_167:
  v130 = v4 ^ 1;
  return v130 & 1;
}

uint64_t sub_245EABB98(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 96))
  {
    result = PB::Writer::write(this, *(result + 80));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 96);
  if ((v13 & 4) != 0)
  {
    v14 = *(v3 + 92);
    result = PB::Writer::write(this);
    v13 = *(v3 + 96);
  }

  if ((v13 & 2) != 0)
  {
    v15 = *(v3 + 88);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EABC88(uint64_t result)
{
  *result = &unk_2858D3220;
  *(result + 44) = 0;
  return result;
}

void sub_245EABCB0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EABCE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3220;
  *(a1 + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 = 2;
    *(a1 + 44) = 2;
    *(a1 + 16) = result;
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 44) = v3;
    *(a1 + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 36);
    v3 |= 0x10u;
    *(a1 + 44) = v3;
    *(a1 + 36) = v6;
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

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 44) = v3;
  *(a1 + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 8);
    *(a1 + 44) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

LABEL_13:
  v8 = *(a2 + 40);
  v3 |= 0x20u;
  *(a1 + 44) = v3;
  *(a1 + 40) = v8;
  if (*(a2 + 44))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245EABDBC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 8) != 0)
  {
    v7 = *(a1 + 32);
    PB::TextFormatter::format(this, "gestureType");
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "hostPowerState");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "machContinuousTime", *(a1 + 8));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "receivedTime", *(a1 + 16));
  v5 = *(a1 + 44);
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
  v9 = *(a1 + 36);
  PB::TextFormatter::format(this, "state");
  if ((*(a1 + 44) & 4) != 0)
  {
LABEL_7:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "timestampPossible");
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EABEC0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_107;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 44) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v49 = 0;
              v50 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v51 = v2 - v31;
              v52 = (v32 + v31);
              v53 = v31 + 1;
              while (1)
              {
                if (!v51)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v54 = v53;
                v55 = *v52;
                *(this + 1) = v54;
                v35 |= (v55 & 0x7F) << v49;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                --v51;
                ++v52;
                v53 = v54 + 1;
                v14 = v50++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_93:
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

LABEL_94:
            *(a1 + 32) = v35;
            goto LABEL_103;
          case 5:
            *(a1 + 44) |= 0x20u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v48 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v47 = *(*this + v2++);
              *(this + 1) = v2;
              v48 = v47 != 0;
            }

            *(a1 + 40) = v48;
            goto LABEL_103;
          case 6:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_41:
              *(this + 24) = 1;
              goto LABEL_103;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_87;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_41;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_87:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_103;
          case 2:
            *(a1 + 44) |= 4u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v39;
              v66 = (v40 + v39);
              v67 = v39 + 1;
              while (1)
              {
                if (!v65)
                {
                  v43 = 0;
                  *(this + 24) = 1;
                  goto LABEL_102;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v43 |= (v69 & 0x7F) << v63;
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
                  v43 = 0;
                  goto LABEL_101;
                }
              }

              if (*(this + 24))
              {
                v43 = 0;
              }

LABEL_101:
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
                  v43 = 0;
                  break;
                }
              }
            }

LABEL_102:
            *(a1 + 24) = v43;
            goto LABEL_103;
          case 3:
            *(a1 + 44) |= 0x10u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v56 = 0;
              v57 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v58 = v2 - v23;
              v59 = (v24 + v23);
              v60 = v23 + 1;
              while (1)
              {
                if (!v58)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                v61 = v60;
                v62 = *v59;
                *(this + 1) = v61;
                v27 |= (v62 & 0x7F) << v56;
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
                  LODWORD(v27) = 0;
                  goto LABEL_97;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_97:
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

LABEL_98:
            *(a1 + 36) = v27;
            goto LABEL_103;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v70 = 0;
        return v70 & 1;
      }

      v2 = *(this + 1);
LABEL_103:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_107:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t sub_245EAC438(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
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

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
    result = PB::Writer::write(this);
    if ((*(v3 + 44) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v9 = *(v3 + 8);

  return PB::Writer::write(this, v9);
}

uint64_t sub_245EAC518(uint64_t result)
{
  *result = &unk_2858D3258;
  *(result + 84) = 0;
  return result;
}

void sub_245EAC540(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EAC578(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3258;
  *(result + 84) = 0;
  v2 = *(a2 + 84);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(result + 84) = 16;
    *(result + 40) = v4;
    v2 = *(a2 + 84);
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
    v5 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 84) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 84);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 68);
    v3 |= 0x200u;
    *(result + 84) = v3;
    *(result + 68) = v6;
    v2 = *(a2 + 84);
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

  v7 = *(a2 + 72);
  v3 |= 0x400u;
  *(result + 84) = v3;
  *(result + 72) = v7;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 76) = v8;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 81) = v9;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 79) = v10;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 80) = v11;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 78) = v12;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 82) = v13;
  v2 = *(a2 + 84);
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
  *(result + 84) = v3;
  *(result + 77) = v14;
  v2 = *(a2 + 84);
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
  v15 = *(a2 + 16);
  v3 |= 2u;
  *(result + 84) = v3;
  *(result + 16) = v15;
  v2 = *(a2 + 84);
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
  v16 = *(a2 + 8);
  v3 |= 1u;
  *(result + 84) = v3;
  *(result + 8) = v16;
  v2 = *(a2 + 84);
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
  v17 = *(a2 + 60);
  v3 |= 0x80u;
  *(result + 84) = v3;
  *(result + 60) = v17;
  v2 = *(a2 + 84);
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
  v18 = *(a2 + 32);
  v3 |= 8u;
  *(result + 84) = v3;
  *(result + 32) = v18;
  v2 = *(a2 + 84);
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
  v19 = *(a2 + 64);
  v3 |= 0x100u;
  *(result + 84) = v3;
  *(result + 64) = v19;
  v2 = *(a2 + 84);
  if ((v2 & 4) == 0)
  {
LABEL_21:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_38:
    v21 = *(a2 + 56);
    *(result + 84) = v3 | 0x40;
    *(result + 56) = v21;
    return result;
  }

LABEL_37:
  v20 = *(a2 + 24);
  v3 |= 4u;
  *(result + 84) = v3;
  *(result + 24) = v20;
  if ((*(a2 + 84) & 0x40) != 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_245EAC79C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 84);
  if ((v5 & 0x40) != 0)
  {
    v7 = *(a1 + 56);
    PB::TextFormatter::format(this, "detectionMode");
    v5 = *(a1 + 84);
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

  v8 = *(a1 + 76);
  PB::TextFormatter::format(this, "detectorRunning");
  v5 = *(a1 + 84);
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
  v9 = *(a1 + 77);
  PB::TextFormatter::format(this, "enableStateDetected");
  v5 = *(a1 + 84);
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
  v10 = *(a1 + 78);
  PB::TextFormatter::format(this, "fireAll");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "gestureDetectionDelay", *(a1 + 8));
  v5 = *(a1 + 84);
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
  v11 = *(a1 + 79);
  PB::TextFormatter::format(this, "gyroInUse");
  v5 = *(a1 + 84);
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
  v12 = *(a1 + 80);
  PB::TextFormatter::format(this, "hostAwake");
  v5 = *(a1 + 84);
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
  v13 = *(a1 + 60);
  PB::TextFormatter::format(this, "hostWakeCount");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "hostWakeDelay", *(a1 + 16));
  v5 = *(a1 + 84);
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
  v14 = *(a1 + 81);
  PB::TextFormatter::format(this, "invertSensors");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "runningModeDuration", *(a1 + 24));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "runningModeStartTime", *(a1 + 32));
  v5 = *(a1 + 84);
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
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "runningSwitchCount");
  v5 = *(a1 + 84);
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
  v16 = *(a1 + 68);
  PB::TextFormatter::format(this, "state");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "timestampPossible", *(a1 + 48));
  v5 = *(a1 + 84);
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
  v17 = *(a1 + 72);
  PB::TextFormatter::format(this, "type");
  if ((*(a1 + 84) & 0x20000) != 0)
  {
LABEL_19:
    v6 = *(a1 + 82);
    PB::TextFormatter::format(this, "wakePending");
  }

LABEL_20:

  return MEMORY[0x2821A4560](this);
}