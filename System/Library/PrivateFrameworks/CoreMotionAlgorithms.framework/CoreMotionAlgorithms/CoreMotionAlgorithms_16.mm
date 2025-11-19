uint64_t sub_245E06238(uint64_t a1, PB::Reader *this)
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
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_73:
              *(this + 24) = 1;
              goto LABEL_138;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 8;
LABEL_117:
            *(this + 1) = v2;
            goto LABEL_138;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_116;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_73;
              }

              *(a1 + 8) = *(*this + v2);
              goto LABEL_116;
            case 9:
              *(a1 + 68) |= 0x200u;
              v47 = *(this + 1);
              v2 = *(this + 2);
              v48 = *this;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v76 = 0;
                v77 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(this + 1);
                }

                v78 = v2 - v47;
                v79 = (v48 + v47);
                v80 = v47 + 1;
                while (1)
                {
                  if (!v78)
                  {
                    LODWORD(v51) = 0;
                    *(this + 24) = 1;
                    goto LABEL_137;
                  }

                  v81 = v80;
                  v82 = *v79;
                  *(this + 1) = v81;
                  v51 |= (v82 & 0x7F) << v76;
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
                    LODWORD(v51) = 0;
                    goto LABEL_136;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_136:
                v2 = v81;
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
                    LODWORD(v51) = 0;
                    break;
                  }
                }
              }

LABEL_137:
              *(a1 + 64) = v51;
              goto LABEL_138;
            case 0xA:
              *(a1 + 68) |= 0x80u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v69 = 0;
                v70 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v71 = v2 - v31;
                v72 = (v32 + v31);
                v73 = v31 + 1;
                while (1)
                {
                  if (!v71)
                  {
                    LODWORD(v35) = 0;
                    *(this + 24) = 1;
                    goto LABEL_133;
                  }

                  v74 = v73;
                  v75 = *v72;
                  *(this + 1) = v74;
                  v35 |= (v75 & 0x7F) << v69;
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
                    LODWORD(v35) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_132:
                v2 = v74;
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

LABEL_133:
              *(a1 + 56) = v35;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x40u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v57 = v2 - v39;
            v58 = (v40 + v39);
            v59 = v39 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v43) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v60 = v59;
              v61 = *v58;
              *(this + 1) = v60;
              v43 |= (v61 & 0x7F) << v55;
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
                LODWORD(v43) = 0;
                goto LABEL_124;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_124:
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
          *(a1 + 52) = v43;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 48) = *(*this + v2);
            v2 = *(this + 1) + 4;
            goto LABEL_117;
          case 4:
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_116;
          case 5:
            *(a1 + 68) |= 0x100u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v23;
              v65 = (v24 + v23);
              v66 = v23 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v27 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v27) = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_128:
              v2 = v67;
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

LABEL_129:
            *(a1 + 60) = v27;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_138:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_142:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_245E06988(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 68);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v7 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_21:
  v8 = *(v3 + 56);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E06AD8(uint64_t result)
{
  *result = &unk_2858CF6E8;
  *(result + 112) = 0;
  return result;
}

void sub_245E06B00(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E06B38(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF6E8;
  *(result + 112) = 0;
  v2 = *(a2 + 112);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 112) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 112);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 112) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 112);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 36);
    v3 |= 0x20u;
    *(result + 112) = v3;
    *(result + 36) = v6;
    v2 = *(a2 + 112);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 112) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 112);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 112) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 112);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = *(a2 + 28);
  v3 |= 8u;
  *(result + 112) = v3;
  *(result + 28) = v9;
  v2 = *(a2 + 112);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = *(a2 + 56);
  v3 |= 0x400u;
  *(result + 112) = v3;
  *(result + 56) = v10;
  v2 = *(a2 + 112);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a2 + 64);
  v3 |= 0x1000u;
  *(result + 112) = v3;
  *(result + 64) = v11;
  v2 = *(a2 + 112);
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 60);
  v3 |= 0x800u;
  *(result + 112) = v3;
  *(result + 60) = v12;
  v2 = *(a2 + 112);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(a2 + 68);
  v3 |= 0x2000u;
  *(result + 112) = v3;
  *(result + 68) = v13;
  v2 = *(a2 + 112);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a2 + 84);
  v3 |= 0x20000u;
  *(result + 112) = v3;
  *(result + 84) = v14;
  v2 = *(a2 + 112);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(a2 + 92);
  v3 |= 0x80000u;
  *(result + 112) = v3;
  *(result + 92) = v15;
  v2 = *(a2 + 112);
  if ((v2 & 0x40000) == 0)
  {
LABEL_17:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = *(a2 + 88);
  v3 |= 0x40000u;
  *(result + 112) = v3;
  *(result + 88) = v16;
  v2 = *(a2 + 112);
  if ((v2 & 0x100000) == 0)
  {
LABEL_18:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = *(a2 + 96);
  v3 |= 0x100000u;
  *(result + 112) = v3;
  *(result + 96) = v17;
  v2 = *(a2 + 112);
  if ((v2 & 0x100) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 112) = v3;
  *(result + 48) = v18;
  v2 = *(a2 + 112);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = *(a2 + 52);
  v3 |= 0x200u;
  *(result + 112) = v3;
  *(result + 52) = v19;
  v2 = *(a2 + 112);
  if ((v2 & 0x8000) == 0)
  {
LABEL_21:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = *(a2 + 76);
  v3 |= 0x8000u;
  *(result + 112) = v3;
  *(result + 76) = v20;
  v2 = *(a2 + 112);
  if ((v2 & 0x10000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = *(a2 + 80);
  v3 |= 0x10000u;
  *(result + 112) = v3;
  *(result + 80) = v21;
  v2 = *(a2 + 112);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = *(a2 + 72);
  v3 |= 0x4000u;
  *(result + 112) = v3;
  *(result + 72) = v22;
  v2 = *(a2 + 112);
  if ((v2 & 0x200000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(a2 + 100);
  v3 |= 0x200000u;
  *(result + 112) = v3;
  *(result + 100) = v23;
  v2 = *(a2 + 112);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 112) = v3;
  *(result + 44) = v24;
  v2 = *(a2 + 112);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = *(a2 + 24);
  v3 |= 4u;
  *(result + 112) = v3;
  *(result + 24) = v25;
  v2 = *(a2 + 112);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x800000) == 0)
    {
      return result;
    }

LABEL_50:
    *(result + 108) = *(a2 + 108);
    *(result + 112) = v3 | 0x800000;
    return result;
  }

LABEL_49:
  v26 = *(a2 + 104);
  v3 |= 0x400000u;
  *(result + 112) = v3;
  *(result + 104) = v26;
  if ((*(a2 + 112) & 0x800000) != 0)
  {
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_245E06E00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "configId");
    v5 = *(a1 + 112);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 28);
  PB::TextFormatter::format(this, "failure");
  v5 = *(a1 + 112);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 32);
  PB::TextFormatter::format(this, "frameNum");
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a1 + 36);
  PB::TextFormatter::format(this, "reportId");
  v5 = *(a1 + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "scanError");
  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 112);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a1 + 44);
  PB::TextFormatter::format(this, "temperature");
  v5 = *(a1 + 112);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  v5 = *(a1 + 112);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a1 + 48);
  PB::TextFormatter::format(this, "ts0CalCount");
  v5 = *(a1 + 112);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "ts0CalnA", *(a1 + 52));
  v5 = *(a1 + 112);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v15 = *(a1 + 56);
  PB::TextFormatter::format(this, "ts0Dark0");
  v5 = *(a1 + 112);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = *(a1 + 60);
  PB::TextFormatter::format(this, "ts0Dark1");
  v5 = *(a1 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v17 = *(a1 + 64);
  PB::TextFormatter::format(this, "ts0Light");
  v5 = *(a1 + 112);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = *(a1 + 68);
  PB::TextFormatter::format(this, "ts0PdVf");
  v5 = *(a1 + 112);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = *(a1 + 72);
  PB::TextFormatter::format(this, "ts0RxGain");
  v5 = *(a1 + 112);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(a1 + 76);
  PB::TextFormatter::format(this, "ts1CalCount");
  v5 = *(a1 + 112);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "ts1CalnA", *(a1 + 80));
  v5 = *(a1 + 112);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a1 + 84);
  PB::TextFormatter::format(this, "ts1Dark0");
  v5 = *(a1 + 112);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a1 + 88);
  PB::TextFormatter::format(this, "ts1Dark1");
  v5 = *(a1 + 112);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a1 + 92);
  PB::TextFormatter::format(this, "ts1Light");
  v5 = *(a1 + 112);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a1 + 96);
  PB::TextFormatter::format(this, "ts1PdVf");
  v5 = *(a1 + 112);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a1 + 100);
  PB::TextFormatter::format(this, "ts1RxGain");
  v5 = *(a1 + 112);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v26 = *(a1 + 104);
  PB::TextFormatter::format(this, "tx0CurrentuA");
  if ((*(a1 + 112) & 0x800000) != 0)
  {
LABEL_25:
    v6 = *(a1 + 108);
    PB::TextFormatter::format(this, "tx1CurrentuA");
  }

LABEL_26:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E07144(uint64_t a1, PB::Reader *this)
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
            goto LABEL_440;
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

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 112) |= 2u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_101;
          }

          *(a1 + 16) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_351;
        case 2u:
          *(a1 + 112) |= 1u;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_402;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_260:
            v111 = 0;
            goto LABEL_402;
          }

          v269 = 0;
          v270 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v271 = v106 - v107;
          if (!v17)
          {
            v271 = 0;
          }

          v272 = (v108 + v107);
          v273 = v107 + 1;
          while (2)
          {
            if (v271)
            {
              v274 = *v272;
              *(this + 1) = v273;
              v111 |= (v274 & 0x7F) << v269;
              if (v274 < 0)
              {
                v269 += 7;
                --v271;
                ++v272;
                ++v273;
                v14 = v270++ > 8;
                if (v14)
                {
                  goto LABEL_260;
                }

                continue;
              }

              if (*(this + 24))
              {
                v111 = 0;
              }
            }

            else
            {
              v111 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_402:
          *(a1 + 8) = v111;
          goto LABEL_436;
        case 3u:
          *(a1 + 112) |= 0x20u;
          v79 = *(this + 1);
          v78 = *(this + 2);
          v80 = *this;
          if (v79 <= 0xFFFFFFFFFFFFFFF5 && v79 + 10 <= v78)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = (v80 + v79);
            v85 = v79 + 1;
            do
            {
              *(this + 1) = v85;
              v86 = *v84++;
              v83 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_393;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_236:
            LODWORD(v83) = 0;
            goto LABEL_393;
          }

          v251 = 0;
          v252 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v253 = v78 - v79;
          if (!v17)
          {
            v253 = 0;
          }

          v254 = (v80 + v79);
          v255 = v79 + 1;
          while (2)
          {
            if (v253)
            {
              v256 = *v254;
              *(this + 1) = v255;
              v83 |= (v256 & 0x7F) << v251;
              if (v256 < 0)
              {
                v251 += 7;
                --v253;
                ++v254;
                ++v255;
                v14 = v252++ > 8;
                if (v14)
                {
                  goto LABEL_236;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v83) = 0;
              }
            }

            else
            {
              LODWORD(v83) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_393:
          *(a1 + 36) = v83;
          goto LABEL_436;
        case 4u:
          *(a1 + 112) |= 0x10u;
          v89 = *(this + 1);
          v88 = *(this + 2);
          v90 = *this;
          if (v89 <= 0xFFFFFFFFFFFFFFF5 && v89 + 10 <= v88)
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = (v90 + v89);
            v95 = v89 + 1;
            do
            {
              *(this + 1) = v95;
              v96 = *v94++;
              v93 |= (v96 & 0x7F) << v91;
              if ((v96 & 0x80) == 0)
              {
                goto LABEL_396;
              }

              v91 += 7;
              ++v95;
              v14 = v92++ > 8;
            }

            while (!v14);
LABEL_244:
            LODWORD(v93) = 0;
            goto LABEL_396;
          }

          v257 = 0;
          v258 = 0;
          v93 = 0;
          v17 = v88 >= v89;
          v259 = v88 - v89;
          if (!v17)
          {
            v259 = 0;
          }

          v260 = (v90 + v89);
          v261 = v89 + 1;
          while (2)
          {
            if (v259)
            {
              v262 = *v260;
              *(this + 1) = v261;
              v93 |= (v262 & 0x7F) << v257;
              if (v262 < 0)
              {
                v257 += 7;
                --v259;
                ++v260;
                ++v261;
                v14 = v258++ > 8;
                if (v14)
                {
                  goto LABEL_244;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v93) = 0;
              }
            }

            else
            {
              LODWORD(v93) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_396:
          *(a1 + 32) = v93;
          goto LABEL_436;
        case 5u:
          *(a1 + 112) |= 0x40u;
          v52 = *(this + 1);
          v51 = *(this + 2);
          v53 = *this;
          if (v52 <= 0xFFFFFFFFFFFFFFF5 && v52 + 10 <= v51)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            do
            {
              *(this + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                goto LABEL_384;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
            }

            while (!v14);
LABEL_212:
            LODWORD(v56) = 0;
            goto LABEL_384;
          }

          v233 = 0;
          v234 = 0;
          v56 = 0;
          v17 = v51 >= v52;
          v235 = v51 - v52;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v53 + v52);
          v237 = v52 + 1;
          while (2)
          {
            if (v235)
            {
              v238 = *v236;
              *(this + 1) = v237;
              v56 |= (v238 & 0x7F) << v233;
              if (v238 < 0)
              {
                v233 += 7;
                --v235;
                ++v236;
                ++v237;
                v14 = v234++ > 8;
                if (v14)
                {
                  goto LABEL_212;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v56) = 0;
              }
            }

            else
            {
              LODWORD(v56) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_384:
          *(a1 + 40) = v56;
          goto LABEL_436;
        case 6u:
          *(a1 + 112) |= 8u;
          v126 = *(this + 1);
          v125 = *(this + 2);
          v127 = *this;
          if (v126 <= 0xFFFFFFFFFFFFFFF5 && v126 + 10 <= v125)
          {
            v128 = 0;
            v129 = 0;
            v130 = 0;
            v131 = (v127 + v126);
            v132 = v126 + 1;
            do
            {
              *(this + 1) = v132;
              v133 = *v131++;
              v130 |= (v133 & 0x7F) << v128;
              if ((v133 & 0x80) == 0)
              {
                goto LABEL_408;
              }

              v128 += 7;
              ++v132;
              v14 = v129++ > 8;
            }

            while (!v14);
LABEL_276:
            LODWORD(v130) = 0;
            goto LABEL_408;
          }

          v281 = 0;
          v282 = 0;
          v130 = 0;
          v17 = v125 >= v126;
          v283 = v125 - v126;
          if (!v17)
          {
            v283 = 0;
          }

          v284 = (v127 + v126);
          v285 = v126 + 1;
          while (2)
          {
            if (v283)
            {
              v286 = *v284;
              *(this + 1) = v285;
              v130 |= (v286 & 0x7F) << v281;
              if (v286 < 0)
              {
                v281 += 7;
                --v283;
                ++v284;
                ++v285;
                v14 = v282++ > 8;
                if (v14)
                {
                  goto LABEL_276;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v130) = 0;
              }
            }

            else
            {
              LODWORD(v130) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_408:
          *(a1 + 28) = v130;
          goto LABEL_436;
        case 7u:
          *(a1 + 112) |= 0x400u;
          v153 = *(this + 1);
          v152 = *(this + 2);
          v154 = *this;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(this + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_417;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_300:
            LODWORD(v157) = 0;
            goto LABEL_417;
          }

          v299 = 0;
          v300 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v301 = v152 - v153;
          if (!v17)
          {
            v301 = 0;
          }

          v302 = (v154 + v153);
          v303 = v153 + 1;
          while (2)
          {
            if (v301)
            {
              v304 = *v302;
              *(this + 1) = v303;
              v157 |= (v304 & 0x7F) << v299;
              if (v304 < 0)
              {
                v299 += 7;
                --v301;
                ++v302;
                ++v303;
                v14 = v300++ > 8;
                if (v14)
                {
                  goto LABEL_300;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v157) = 0;
              }
            }

            else
            {
              LODWORD(v157) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_417:
          *(a1 + 56) = v157;
          goto LABEL_436;
        case 8u:
          *(a1 + 112) |= 0x1000u;
          v98 = *(this + 1);
          v97 = *(this + 2);
          v99 = *this;
          if (v98 <= 0xFFFFFFFFFFFFFFF5 && v98 + 10 <= v97)
          {
            v100 = 0;
            v101 = 0;
            v102 = 0;
            v103 = (v99 + v98);
            v104 = v98 + 1;
            do
            {
              *(this + 1) = v104;
              v105 = *v103++;
              v102 |= (v105 & 0x7F) << v100;
              if ((v105 & 0x80) == 0)
              {
                goto LABEL_399;
              }

              v100 += 7;
              ++v104;
              v14 = v101++ > 8;
            }

            while (!v14);
LABEL_252:
            LODWORD(v102) = 0;
            goto LABEL_399;
          }

          v263 = 0;
          v264 = 0;
          v102 = 0;
          v17 = v97 >= v98;
          v265 = v97 - v98;
          if (!v17)
          {
            v265 = 0;
          }

          v266 = (v99 + v98);
          v267 = v98 + 1;
          while (2)
          {
            if (v265)
            {
              v268 = *v266;
              *(this + 1) = v267;
              v102 |= (v268 & 0x7F) << v263;
              if (v268 < 0)
              {
                v263 += 7;
                --v265;
                ++v266;
                ++v267;
                v14 = v264++ > 8;
                if (v14)
                {
                  goto LABEL_252;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v102) = 0;
              }
            }

            else
            {
              LODWORD(v102) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_399:
          *(a1 + 64) = v102;
          goto LABEL_436;
        case 9u:
          *(a1 + 112) |= 0x800u;
          v180 = *(this + 1);
          v179 = *(this + 2);
          v181 = *this;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(this + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_426;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_324:
            LODWORD(v184) = 0;
            goto LABEL_426;
          }

          v317 = 0;
          v318 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v319 = v179 - v180;
          if (!v17)
          {
            v319 = 0;
          }

          v320 = (v181 + v180);
          v321 = v180 + 1;
          while (2)
          {
            if (v319)
            {
              v322 = *v320;
              *(this + 1) = v321;
              v184 |= (v322 & 0x7F) << v317;
              if (v322 < 0)
              {
                v317 += 7;
                --v319;
                ++v320;
                ++v321;
                v14 = v318++ > 8;
                if (v14)
                {
                  goto LABEL_324;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_426:
          *(a1 + 60) = v184;
          goto LABEL_436;
        case 0xAu:
          *(a1 + 112) |= 0x2000u;
          v70 = *(this + 1);
          v69 = *(this + 2);
          v71 = *this;
          if (v70 <= 0xFFFFFFFFFFFFFFF5 && v70 + 10 <= v69)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            do
            {
              *(this + 1) = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                goto LABEL_390;
              }

              v72 += 7;
              ++v76;
              v14 = v73++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v74) = 0;
            goto LABEL_390;
          }

          v245 = 0;
          v246 = 0;
          v74 = 0;
          v17 = v69 >= v70;
          v247 = v69 - v70;
          if (!v17)
          {
            v247 = 0;
          }

          v248 = (v71 + v70);
          v249 = v70 + 1;
          while (2)
          {
            if (v247)
            {
              v250 = *v248;
              *(this + 1) = v249;
              v74 |= (v250 & 0x7F) << v245;
              if (v250 < 0)
              {
                v245 += 7;
                --v247;
                ++v248;
                ++v249;
                v14 = v246++ > 8;
                if (v14)
                {
                  goto LABEL_228;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v74) = 0;
              }
            }

            else
            {
              LODWORD(v74) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_390:
          *(a1 + 68) = v74;
          goto LABEL_436;
        case 0xBu:
          *(a1 + 112) |= 0x20000u;
          v171 = *(this + 1);
          v170 = *(this + 2);
          v172 = *this;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(this + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_423;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_316:
            LODWORD(v175) = 0;
            goto LABEL_423;
          }

          v311 = 0;
          v312 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v313 = v170 - v171;
          if (!v17)
          {
            v313 = 0;
          }

          v314 = (v172 + v171);
          v315 = v171 + 1;
          while (2)
          {
            if (v313)
            {
              v316 = *v314;
              *(this + 1) = v315;
              v175 |= (v316 & 0x7F) << v311;
              if (v316 < 0)
              {
                v311 += 7;
                --v313;
                ++v314;
                ++v315;
                v14 = v312++ > 8;
                if (v14)
                {
                  goto LABEL_316;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v175) = 0;
              }
            }

            else
            {
              LODWORD(v175) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_423:
          *(a1 + 84) = v175;
          goto LABEL_436;
        case 0xCu:
          *(a1 + 112) |= 0x80000u;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 <= 0xFFFFFFFFFFFFFFF5 && v43 + 10 <= v42)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            do
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
            }

            while (!v14);
LABEL_204:
            LODWORD(v47) = 0;
            goto LABEL_381;
          }

          v227 = 0;
          v228 = 0;
          v47 = 0;
          v17 = v42 >= v43;
          v229 = v42 - v43;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v44 + v43);
          v231 = v43 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(this + 1) = v231;
              v47 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_204;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }
            }

            else
            {
              LODWORD(v47) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(a1 + 92) = v47;
          goto LABEL_436;
        case 0xDu:
          *(a1 + 112) |= 0x40000u;
          v61 = *(this + 1);
          v60 = *(this + 2);
          v62 = *this;
          if (v61 <= 0xFFFFFFFFFFFFFFF5 && v61 + 10 <= v60)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            do
            {
              *(this + 1) = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v63 += 7;
              ++v67;
              v14 = v64++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v65) = 0;
            goto LABEL_387;
          }

          v239 = 0;
          v240 = 0;
          v65 = 0;
          v17 = v60 >= v61;
          v241 = v60 - v61;
          if (!v17)
          {
            v241 = 0;
          }

          v242 = (v62 + v61);
          v243 = v61 + 1;
          while (2)
          {
            if (v241)
            {
              v244 = *v242;
              *(this + 1) = v243;
              v65 |= (v244 & 0x7F) << v239;
              if (v244 < 0)
              {
                v239 += 7;
                --v241;
                ++v242;
                ++v243;
                v14 = v240++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v65) = 0;
              }
            }

            else
            {
              LODWORD(v65) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(a1 + 88) = v65;
          goto LABEL_436;
        case 0xEu:
          *(a1 + 112) |= 0x100000u;
          v144 = *(this + 1);
          v143 = *(this + 2);
          v145 = *this;
          if (v144 <= 0xFFFFFFFFFFFFFFF5 && v144 + 10 <= v143)
          {
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = (v145 + v144);
            v150 = v144 + 1;
            do
            {
              *(this + 1) = v150;
              v151 = *v149++;
              v148 |= (v151 & 0x7F) << v146;
              if ((v151 & 0x80) == 0)
              {
                goto LABEL_414;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_292:
            LODWORD(v148) = 0;
            goto LABEL_414;
          }

          v293 = 0;
          v294 = 0;
          v148 = 0;
          v17 = v143 >= v144;
          v295 = v143 - v144;
          if (!v17)
          {
            v295 = 0;
          }

          v296 = (v145 + v144);
          v297 = v144 + 1;
          while (2)
          {
            if (v295)
            {
              v298 = *v296;
              *(this + 1) = v297;
              v148 |= (v298 & 0x7F) << v293;
              if (v298 < 0)
              {
                v293 += 7;
                --v295;
                ++v296;
                ++v297;
                v14 = v294++ > 8;
                if (v14)
                {
                  goto LABEL_292;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v148) = 0;
              }
            }

            else
            {
              LODWORD(v148) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_414:
          *(a1 + 96) = v148;
          goto LABEL_436;
        case 0xFu:
          *(a1 + 112) |= 0x100u;
          v34 = *(this + 1);
          v33 = *(this + 2);
          v35 = *this;
          if (v34 <= 0xFFFFFFFFFFFFFFF5 && v34 + 10 <= v33)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            do
            {
              *(this + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_378;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v38) = 0;
            goto LABEL_378;
          }

          v221 = 0;
          v222 = 0;
          v38 = 0;
          v17 = v33 >= v34;
          v223 = v33 - v34;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v35 + v34);
          v225 = v34 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(this + 1) = v225;
              v38 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              LODWORD(v38) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_378:
          *(a1 + 48) = v38;
          goto LABEL_436;
        case 0x10u:
          *(a1 + 112) |= 0x200u;
          v87 = *(this + 1);
          if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(this + 2))
          {
            goto LABEL_101;
          }

          *(a1 + 52) = *(*this + v87);
          goto LABEL_350;
        case 0x11u:
          *(a1 + 112) |= 0x8000u;
          v25 = *(this + 1);
          v24 = *(this + 2);
          v26 = *this;
          if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            do
            {
              *(this + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_375;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v29) = 0;
            goto LABEL_375;
          }

          v215 = 0;
          v216 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v217 = v24 - v25;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v26 + v25);
          v219 = v25 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(this + 1) = v219;
              v29 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_375:
          *(a1 + 76) = v29;
          goto LABEL_436;
        case 0x12u:
          *(a1 + 112) |= 0x10000u;
          v115 = *(this + 1);
          if (v115 <= 0xFFFFFFFFFFFFFFFBLL && v115 + 4 <= *(this + 2))
          {
            *(a1 + 80) = *(*this + v115);
LABEL_350:
            v23 = *(this + 1) + 4;
LABEL_351:
            *(this + 1) = v23;
          }

          else
          {
LABEL_101:
            *(this + 24) = 1;
          }

          goto LABEL_436;
        case 0x13u:
          *(a1 + 112) |= 0x4000u;
          v162 = *(this + 1);
          v161 = *(this + 2);
          v163 = *this;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(this + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_420;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_308:
            LODWORD(v166) = 0;
            goto LABEL_420;
          }

          v305 = 0;
          v306 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v307 = v161 - v162;
          if (!v17)
          {
            v307 = 0;
          }

          v308 = (v163 + v162);
          v309 = v162 + 1;
          while (2)
          {
            if (v307)
            {
              v310 = *v308;
              *(this + 1) = v309;
              v166 |= (v310 & 0x7F) << v305;
              if (v310 < 0)
              {
                v305 += 7;
                --v307;
                ++v308;
                ++v309;
                v14 = v306++ > 8;
                if (v14)
                {
                  goto LABEL_308;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v166) = 0;
              }
            }

            else
            {
              LODWORD(v166) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_420:
          *(a1 + 72) = v166;
          goto LABEL_436;
        case 0x14u:
          *(a1 + 112) |= 0x200000u;
          v198 = *(this + 1);
          v197 = *(this + 2);
          v199 = *this;
          if (v198 <= 0xFFFFFFFFFFFFFFF5 && v198 + 10 <= v197)
          {
            v200 = 0;
            v201 = 0;
            v202 = 0;
            v203 = (v199 + v198);
            v204 = v198 + 1;
            do
            {
              *(this + 1) = v204;
              v205 = *v203++;
              v202 |= (v205 & 0x7F) << v200;
              if ((v205 & 0x80) == 0)
              {
                goto LABEL_432;
              }

              v200 += 7;
              ++v204;
              v14 = v201++ > 8;
            }

            while (!v14);
LABEL_340:
            LODWORD(v202) = 0;
            goto LABEL_432;
          }

          v329 = 0;
          v330 = 0;
          v202 = 0;
          v17 = v197 >= v198;
          v331 = v197 - v198;
          if (!v17)
          {
            v331 = 0;
          }

          v332 = (v199 + v198);
          v333 = v198 + 1;
          while (2)
          {
            if (v331)
            {
              v334 = *v332;
              *(this + 1) = v333;
              v202 |= (v334 & 0x7F) << v329;
              if (v334 < 0)
              {
                v329 += 7;
                --v331;
                ++v332;
                ++v333;
                v14 = v330++ > 8;
                if (v14)
                {
                  goto LABEL_340;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v202) = 0;
              }
            }

            else
            {
              LODWORD(v202) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_432:
          *(a1 + 100) = v202;
          goto LABEL_436;
        case 0x15u:
          *(a1 + 112) |= 0x80u;
          v117 = *(this + 1);
          v116 = *(this + 2);
          v118 = *this;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(this + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_405;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_268:
            LODWORD(v121) = 0;
            goto LABEL_405;
          }

          v275 = 0;
          v276 = 0;
          v121 = 0;
          v17 = v116 >= v117;
          v277 = v116 - v117;
          if (!v17)
          {
            v277 = 0;
          }

          v278 = (v118 + v117);
          v279 = v117 + 1;
          while (2)
          {
            if (v277)
            {
              v280 = *v278;
              *(this + 1) = v279;
              v121 |= (v280 & 0x7F) << v275;
              if (v280 < 0)
              {
                v275 += 7;
                --v277;
                ++v278;
                ++v279;
                v14 = v276++ > 8;
                if (v14)
                {
                  goto LABEL_268;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_405:
          *(a1 + 44) = v121;
          goto LABEL_436;
        case 0x16u:
          *(a1 + 112) |= 4u;
          v135 = *(this + 1);
          v134 = *(this + 2);
          v136 = *this;
          if (v135 <= 0xFFFFFFFFFFFFFFF5 && v135 + 10 <= v134)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = (v136 + v135);
            v141 = v135 + 1;
            do
            {
              *(this + 1) = v141;
              v142 = *v140++;
              v139 |= (v142 & 0x7F) << v137;
              if ((v142 & 0x80) == 0)
              {
                goto LABEL_411;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_284:
            LODWORD(v139) = 0;
            goto LABEL_411;
          }

          v287 = 0;
          v288 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v289 = v134 - v135;
          if (!v17)
          {
            v289 = 0;
          }

          v290 = (v136 + v135);
          v291 = v135 + 1;
          while (2)
          {
            if (v289)
            {
              v292 = *v290;
              *(this + 1) = v291;
              v139 |= (v292 & 0x7F) << v287;
              if (v292 < 0)
              {
                v287 += 7;
                --v289;
                ++v290;
                ++v291;
                v14 = v288++ > 8;
                if (v14)
                {
                  goto LABEL_284;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v139) = 0;
              }
            }

            else
            {
              LODWORD(v139) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_411:
          *(a1 + 24) = v139;
          goto LABEL_436;
        case 0x17u:
          *(a1 + 112) |= 0x400000u;
          v189 = *(this + 1);
          v188 = *(this + 2);
          v190 = *this;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(this + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_429;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_332:
            LODWORD(v193) = 0;
            goto LABEL_429;
          }

          v323 = 0;
          v324 = 0;
          v193 = 0;
          v17 = v188 >= v189;
          v325 = v188 - v189;
          if (!v17)
          {
            v325 = 0;
          }

          v326 = (v190 + v189);
          v327 = v189 + 1;
          while (2)
          {
            if (v325)
            {
              v328 = *v326;
              *(this + 1) = v327;
              v193 |= (v328 & 0x7F) << v323;
              if (v328 < 0)
              {
                v323 += 7;
                --v325;
                ++v326;
                ++v327;
                v14 = v324++ > 8;
                if (v14)
                {
                  goto LABEL_332;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_429:
          *(a1 + 104) = v193;
          goto LABEL_436;
        case 0x18u:
          *(a1 + 112) |= 0x800000u;
          v207 = *(this + 1);
          v206 = *(this + 2);
          v208 = *this;
          if (v207 <= 0xFFFFFFFFFFFFFFF5 && v207 + 10 <= v206)
          {
            v209 = 0;
            v210 = 0;
            v211 = 0;
            v212 = (v208 + v207);
            v213 = v207 + 1;
            do
            {
              *(this + 1) = v213;
              v214 = *v212++;
              v211 |= (v214 & 0x7F) << v209;
              if ((v214 & 0x80) == 0)
              {
                goto LABEL_435;
              }

              v209 += 7;
              ++v213;
              v14 = v210++ > 8;
            }

            while (!v14);
LABEL_348:
            LODWORD(v211) = 0;
            goto LABEL_435;
          }

          v335 = 0;
          v336 = 0;
          v211 = 0;
          v17 = v206 >= v207;
          v337 = v206 - v207;
          if (!v17)
          {
            v337 = 0;
          }

          v338 = (v208 + v207);
          v339 = v207 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_436;
          }

          v342 = 0;
          return v342 & 1;
      }

      while (1)
      {
        if (!v337)
        {
          LODWORD(v211) = 0;
          *(this + 24) = 1;
          goto LABEL_435;
        }

        v340 = *v338;
        *(this + 1) = v339;
        v211 |= (v340 & 0x7F) << v335;
        if ((v340 & 0x80) == 0)
        {
          break;
        }

        v335 += 7;
        --v337;
        ++v338;
        ++v339;
        v14 = v336++ > 8;
        if (v14)
        {
          goto LABEL_348;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v211) = 0;
      }

LABEL_435:
      *(a1 + 108) = v211;
LABEL_436:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_440:
  v342 = v4 ^ 1;
  return v342 & 1;
}

uint64_t sub_245E087AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 112);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 112);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v24 = *(v3 + 104);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 112) & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  v23 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x800000) == 0)
  {
    return result;
  }

LABEL_49:
  v25 = *(v3 + 108);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E08A84(uint64_t result)
{
  *result = &unk_2858CF720;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_245E08AB0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E08AE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF720;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 8);
    *(a1 + 16) = 1;
    *(a1 + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 12);
    *(a1 + 16) = v2;
    *(a1 + 12) = result;
  }

  return result;
}

uint64_t sub_245E08B50(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "status");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 12));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E08BCC(uint64_t a1, PB::Reader *this)
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
        *(a1 + 16) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 12) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
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
        *(a1 + 8) = v26;
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

uint64_t sub_245E08E98(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_245E08F04(uint64_t result)
{
  *result = &unk_2858CF758;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245E08F28(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF758;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E08FA8(PB::Base *a1)
{
  sub_245E08F28(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E08FE0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF758;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 24);
    *(result + 32) |= 2u;
    *(result + 24) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 1) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 28);
  *(result + 32) |= 4u;
  *(result + 28) = v5;
  if ((*(a2 + 32) & 1) == 0)
  {
    return result;
  }

LABEL_6:
  v3 = *(a2 + 16);
  *(result + 32) |= 1u;
  *(result + 16) = v3;
  return result;
}

uint64_t sub_245E090EC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 32) & 2) != 0)
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "magnetometer");
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 16);
    PB::TextFormatter::format(this, "sensorTime");
    v7 = *(a1 + 32);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E091BC(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 4u;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v62 = 0;
            v63 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v64 = v41 - v42;
            if (!v17)
            {
              v64 = 0;
            }

            v65 = (v43 + v42);
            v66 = v42 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_86;
              }

              v67 = *v65;
              *(this + 1) = v66;
              v46 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
LABEL_74:
                LODWORD(v46) = 0;
                goto LABEL_86;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v46) = 0;
            }
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              *(this + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_86:
          *(a1 + 28) = v46;
          goto LABEL_87;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v56 = 0;
            v57 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v58 = v32 - v33;
            if (!v17)
            {
              v58 = 0;
            }

            v59 = (v34 + v33);
            v60 = v33 + 1;
            while (1)
            {
              if (!v58)
              {
                v37 = 0;
                *(this + 24) = 1;
                goto LABEL_83;
              }

              v61 = *v59;
              *(this + 1) = v60;
              v37 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              ++v60;
              v14 = v57++ > 8;
              if (v14)
              {
LABEL_66:
                v37 = 0;
                goto LABEL_83;
              }
            }

            if (*(this + 24))
            {
              v37 = 0;
            }
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
                goto LABEL_66;
              }
            }
          }

LABEL_83:
          *(a1 + 16) = v37;
          goto LABEL_87;
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
          *(a1 + 32) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v52 = v23 - v24;
            if (!v17)
            {
              v52 = 0;
            }

            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_80;
              }

              v55 = *v53;
              *(this + 1) = v54;
              v28 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
LABEL_58:
                LODWORD(v28) = 0;
                goto LABEL_80;
              }
            }

            if (*(this + 24))
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
              *(this + 1) = v30;
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
                goto LABEL_58;
              }
            }
          }

LABEL_80:
          *(a1 + 24) = v28;
          goto LABEL_87;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v69 = 0;
        return v69 & 1;
      }

LABEL_87:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t sub_245E096D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) == 0)
  {
    if ((*(v3 + 32) & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_245E09774(void *result)
{
  *result = &unk_2858CF790;
  result[1] = 0;
  return result;
}

void sub_245E09794(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF790;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E09814(PB::Base *a1)
{
  sub_245E09794(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E0984C(void *result, uint64_t a2)
{
  *result = &unk_2858CF790;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E098F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E09970(int a1, PB::Reader *this)
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

uint64_t sub_245E09BAC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

double sub_245E09BC8(uint64_t a1)
{
  *a1 = &unk_2858CF7C8;
  *(a1 + 224) = 0;
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
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

void sub_245E09C20(PB::Base *this)
{
  *this = &unk_2858CF7C8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }

  PB::Base::~Base(this);
}

void sub_245E09CF4(PB::Base *a1)
{
  sub_245E09C20(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E09D2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF7C8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  v5 = *(a2 + 224);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 208);
    v6 = 2;
    *(a1 + 224) = 2;
    *(a1 + 208) = v7;
    v5 = *(a2 + 224);
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (*(a2 + 224))
  {
LABEL_5:
    v8 = *(a2 + 200);
    v6 |= 1u;
    *(a1 + 224) = v6;
    *(a1 + 200) = v8;
    v5 = *(a2 + 224);
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = *(a2 + 220);
  v6 |= 8u;
  *(a1 + 224) = v6;
  *(a1 + 220) = v11;
  if ((*(a2 + 224) & 4) != 0)
  {
LABEL_8:
    v9 = *(a2 + 216);
    *(a1 + 224) = v6 | 4;
    *(a1 + 216) = v9;
  }

LABEL_9:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
    sub_245DF843C((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
    sub_245DF843C((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
    sub_245DF843C((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  }

  return a1;
}

uint64_t sub_245E09EE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "dark0");
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "dark1");
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "dark2");
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "dark3");
  }

  v17 = *(a1 + 224);
  if ((v17 & 4) != 0)
  {
    v18 = *(a1 + 216);
    PB::TextFormatter::format(this, "error");
    v17 = *(a1 + 224);
  }

  if ((v17 & 8) != 0)
  {
    v19 = *(a1 + 220);
    PB::TextFormatter::format(this, "frameNum");
  }

  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "ledCurrent");
  }

  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    PB::TextFormatter::format(this, "light0");
  }

  v26 = *(a1 + 152);
  v27 = *(a1 + 160);
  while (v26 != v27)
  {
    v28 = *v26++;
    PB::TextFormatter::format(this, "light1");
  }

  v29 = *(a1 + 176);
  v30 = *(a1 + 184);
  while (v29 != v30)
  {
    v31 = *v29++;
    PB::TextFormatter::format(this, "rxGain");
  }

  v32 = *(a1 + 224);
  if (v32)
  {
    v33 = *(a1 + 200);
    PB::TextFormatter::format(this, "sensorTime");
    v32 = *(a1 + 224);
  }

  if ((v32 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 208));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0A108(uint64_t a1, PB::Reader *this)
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
          v49 = v15++ > 8;
          if (v49)
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
        v49 = v9++ > 8;
        if (v49)
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 160);
                  while (1)
                  {
                    v147 = *(a1 + 168);
                    if (v32 >= v147)
                    {
                      v148 = *(a1 + 152);
                      v149 = v32 - v148;
                      v150 = (v32 - v148) >> 2;
                      v151 = v150 + 1;
                      if ((v150 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v152 = v147 - v148;
                      if (v152 >> 1 > v151)
                      {
                        v151 = v152 >> 1;
                      }

                      if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v153 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v153 = v151;
                      }

                      if (v153)
                      {
                        sub_245DF85BC(a1 + 152, v153);
                      }

                      v154 = (v32 - v148) >> 2;
                      v155 = (4 * v150);
                      v156 = (4 * v150 - 4 * v154);
                      *v155 = 0;
                      v32 = (v155 + 1);
                      memcpy(v156, v148, v149);
                      v157 = *(a1 + 152);
                      *(a1 + 152) = v156;
                      *(a1 + 160) = v32;
                      *(a1 + 168) = 0;
                      if (v157)
                      {
                        operator delete(v157);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 160) = v32;
                    v159 = *(this + 1);
                    v158 = *(this + 2);
                    v160 = *this;
                    v161 = 0;
                    v162 = 0;
                    if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                    {
                      break;
                    }

                    v169 = 0;
                    v170 = (v160 + v159);
                    v171 = v159 + 1;
                    while (1)
                    {
                      v167 = v171;
                      *(this + 1) = v171;
                      v172 = *v170++;
                      v169 |= (v172 & 0x7F) << v161;
                      if ((v172 & 0x80) == 0)
                      {
                        break;
                      }

                      v161 += 7;
                      ++v171;
                      v49 = v162++ > 8;
                      if (v49)
                      {
                        goto LABEL_243;
                      }
                    }

LABEL_246:
                    *(v32 - 1) = v169;
                    if (v167 >= v158 || (*(this + 24) & 1) != 0)
                    {
                      goto LABEL_374;
                    }
                  }

                  v169 = 0;
                  v164 = v158 - v159;
                  if (v158 < v159)
                  {
                    v164 = 0;
                  }

                  v165 = (v160 + v159);
                  v166 = v159 + 1;
                  while (v164)
                  {
                    v167 = v166;
                    v168 = *v165;
                    *(this + 1) = v167;
                    v169 |= (v168 & 0x7F) << v161;
                    if ((v168 & 0x80) == 0)
                    {
                      if (*(this + 24))
                      {
                        LODWORD(v169) = 0;
                      }

                      goto LABEL_246;
                    }

                    v161 += 7;
                    --v164;
                    ++v165;
                    v166 = v167 + 1;
                    v49 = v162++ > 8;
                    if (v49)
                    {
LABEL_243:
                      LODWORD(v169) = 0;
                      goto LABEL_246;
                    }
                  }

LABEL_373:
                  *(this + 24) = 1;
                  *(v32 - 1) = 0;
                }

                goto LABEL_374;
              }

              v288 = *(a1 + 160);
              v287 = *(a1 + 168);
              if (v288 >= v287)
              {
                v319 = *(a1 + 152);
                v320 = v288 - v319;
                v321 = (v288 - v319) >> 2;
                v322 = v321 + 1;
                if ((v321 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v323 = v287 - v319;
                if (v323 >> 1 > v322)
                {
                  v322 = v323 >> 1;
                }

                if (v323 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v324 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v324 = v322;
                }

                if (v324)
                {
                  sub_245DF85BC(a1 + 152, v324);
                }

                v416 = (v288 - v319) >> 2;
                v417 = (4 * v321);
                v418 = (4 * v321 - 4 * v416);
                *v417 = 0;
                v268 = v417 + 1;
                memcpy(v418, v319, v320);
                v419 = *(a1 + 152);
                *(a1 + 152) = v418;
                *(a1 + 160) = v268;
                *(a1 + 168) = 0;
                if (v419)
                {
                  operator delete(v419);
                }
              }

              else
              {
                *v288 = 0;
                v268 = v288 + 4;
              }

              *(a1 + 160) = v268;
              v421 = *(this + 1);
              v420 = *(this + 2);
              v422 = *this;
              if (v421 <= 0xFFFFFFFFFFFFFFF5 && v421 + 10 <= v420)
              {
                v423 = 0;
                v424 = 0;
                v352 = 0;
                v425 = (v422 + v421);
                v426 = v421 + 1;
                while (1)
                {
                  *(this + 1) = v426;
                  v427 = *v425++;
                  v352 |= (v427 & 0x7F) << v423;
                  if ((v427 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v423 += 7;
                  ++v426;
                  v49 = v424++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v428 = 0;
              v429 = 0;
              v352 = 0;
              v16 = v420 >= v421;
              v430 = v420 - v421;
              if (!v16)
              {
                v430 = 0;
              }

              v431 = (v422 + v421);
              v432 = v421 + 1;
              while (v430)
              {
                v433 = *v431;
                *(this + 1) = v432;
                v352 |= (v433 & 0x7F) << v428;
                if ((v433 & 0x80) == 0)
                {
LABEL_631:
                  if (*(this + 24))
                  {
                    LODWORD(v352) = 0;
                  }

                  goto LABEL_633;
                }

                v428 += 7;
                --v430;
                ++v431;
                ++v432;
                v49 = v429++ > 8;
                if (v49)
                {
LABEL_629:
                  LODWORD(v352) = 0;
                  goto LABEL_633;
                }
              }

              goto LABEL_630;
            case 0xB:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 184);
                  do
                  {
                    v234 = *(a1 + 192);
                    if (v32 >= v234)
                    {
                      v235 = *(a1 + 176);
                      v236 = v32 - v235;
                      v237 = (v32 - v235) >> 2;
                      v238 = v237 + 1;
                      if ((v237 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v239 = v234 - v235;
                      if (v239 >> 1 > v238)
                      {
                        v238 = v239 >> 1;
                      }

                      if (v239 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v240 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v240 = v238;
                      }

                      if (v240)
                      {
                        sub_245DF85BC(a1 + 176, v240);
                      }

                      v241 = (v32 - v235) >> 2;
                      v242 = (4 * v237);
                      v243 = (4 * v237 - 4 * v241);
                      *v242 = 0;
                      v32 = (v242 + 1);
                      memcpy(v243, v235, v236);
                      v244 = *(a1 + 176);
                      *(a1 + 176) = v243;
                      *(a1 + 184) = v32;
                      *(a1 + 192) = 0;
                      if (v244)
                      {
                        operator delete(v244);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 184) = v32;
                    v246 = *(this + 1);
                    v245 = *(this + 2);
                    v247 = *this;
                    v248 = 0;
                    v249 = 0;
                    if (v246 > 0xFFFFFFFFFFFFFFF5 || v246 + 10 > v245)
                    {
                      v256 = 0;
                      v251 = v245 - v246;
                      if (v245 < v246)
                      {
                        v251 = 0;
                      }

                      v252 = (v247 + v246);
                      v253 = v246 + 1;
                      while (1)
                      {
                        if (!v251)
                        {
                          goto LABEL_373;
                        }

                        v254 = v253;
                        v255 = *v252;
                        *(this + 1) = v254;
                        v256 |= (v255 & 0x7F) << v248;
                        if ((v255 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        --v251;
                        ++v252;
                        v253 = v254 + 1;
                        v49 = v249++ > 8;
                        if (v49)
                        {
LABEL_367:
                          LODWORD(v256) = 0;
                          goto LABEL_370;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v256) = 0;
                      }
                    }

                    else
                    {
                      v256 = 0;
                      v257 = (v247 + v246);
                      v258 = v246 + 1;
                      while (1)
                      {
                        v254 = v258;
                        *(this + 1) = v258;
                        v259 = *v257++;
                        v256 |= (v259 & 0x7F) << v248;
                        if ((v259 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        ++v258;
                        v49 = v249++ > 8;
                        if (v49)
                        {
                          goto LABEL_367;
                        }
                      }
                    }

LABEL_370:
                    *(v32 - 1) = v256;
                  }

                  while (v254 < v245 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v294 = *(a1 + 184);
              v293 = *(a1 + 192);
              if (v294 >= v293)
              {
                v337 = *(a1 + 176);
                v338 = v294 - v337;
                v339 = (v294 - v337) >> 2;
                v340 = v339 + 1;
                if ((v339 + 1) >> 62)
                {
LABEL_641:
                  sub_245DF85A4();
                }

                v341 = v293 - v337;
                if (v341 >> 1 > v340)
                {
                  v340 = v341 >> 1;
                }

                if (v341 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v342 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v342 = v340;
                }

                if (v342)
                {
                  sub_245DF85BC(a1 + 176, v342);
                }

                v470 = (v294 - v337) >> 2;
                v471 = (4 * v339);
                v472 = (4 * v339 - 4 * v470);
                *v471 = 0;
                v268 = v471 + 1;
                memcpy(v472, v337, v338);
                v473 = *(a1 + 176);
                *(a1 + 176) = v472;
                *(a1 + 184) = v268;
                *(a1 + 192) = 0;
                if (v473)
                {
                  operator delete(v473);
                }
              }

              else
              {
                *v294 = 0;
                v268 = v294 + 4;
              }

              *(a1 + 184) = v268;
              v475 = *(this + 1);
              v474 = *(this + 2);
              v476 = *this;
              if (v475 <= 0xFFFFFFFFFFFFFFF5 && v475 + 10 <= v474)
              {
                v477 = 0;
                v478 = 0;
                v352 = 0;
                v479 = (v476 + v475);
                v480 = v475 + 1;
                while (1)
                {
                  *(this + 1) = v480;
                  v481 = *v479++;
                  v352 |= (v481 & 0x7F) << v477;
                  if ((v481 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v477 += 7;
                  ++v480;
                  v49 = v478++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v482 = 0;
              v483 = 0;
              v352 = 0;
              v16 = v474 >= v475;
              v484 = v474 - v475;
              if (!v16)
              {
                v484 = 0;
              }

              v485 = (v476 + v475);
              v486 = v475 + 1;
              while (v484)
              {
                v487 = *v485;
                *(this + 1) = v486;
                v352 |= (v487 & 0x7F) << v482;
                if ((v487 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v482 += 7;
                --v484;
                ++v485;
                ++v486;
                v49 = v483++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 0xC:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 112);
                  do
                  {
                    v85 = *(a1 + 120);
                    if (v32 >= v85)
                    {
                      v86 = *(a1 + 104);
                      v87 = v32 - v86;
                      v88 = (v32 - v86) >> 2;
                      v89 = v88 + 1;
                      if ((v88 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v90 = v85 - v86;
                      if (v90 >> 1 > v89)
                      {
                        v89 = v90 >> 1;
                      }

                      if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v91 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v91 = v89;
                      }

                      if (v91)
                      {
                        sub_245DF85BC(a1 + 104, v91);
                      }

                      v92 = (v32 - v86) >> 2;
                      v93 = (4 * v88);
                      v94 = (4 * v88 - 4 * v92);
                      *v93 = 0;
                      v32 = (v93 + 1);
                      memcpy(v94, v86, v87);
                      v95 = *(a1 + 104);
                      *(a1 + 104) = v94;
                      *(a1 + 112) = v32;
                      *(a1 + 120) = 0;
                      if (v95)
                      {
                        operator delete(v95);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 112) = v32;
                    v97 = *(this + 1);
                    v96 = *(this + 2);
                    v98 = *this;
                    v99 = 0;
                    v100 = 0;
                    if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v96)
                    {
                      v107 = 0;
                      v102 = v96 - v97;
                      if (v96 < v97)
                      {
                        v102 = 0;
                      }

                      v103 = (v98 + v97);
                      v104 = v97 + 1;
                      while (1)
                      {
                        if (!v102)
                        {
                          goto LABEL_373;
                        }

                        v105 = v104;
                        v106 = *v103;
                        *(this + 1) = v105;
                        v107 |= (v106 & 0x7F) << v99;
                        if ((v106 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        --v102;
                        ++v103;
                        v104 = v105 + 1;
                        v49 = v100++ > 8;
                        if (v49)
                        {
LABEL_155:
                          LODWORD(v107) = 0;
                          goto LABEL_158;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v107) = 0;
                      }
                    }

                    else
                    {
                      v107 = 0;
                      v108 = (v98 + v97);
                      v109 = v97 + 1;
                      while (1)
                      {
                        v105 = v109;
                        *(this + 1) = v109;
                        v110 = *v108++;
                        v107 |= (v110 & 0x7F) << v99;
                        if ((v110 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        ++v109;
                        v49 = v100++ > 8;
                        if (v49)
                        {
                          goto LABEL_155;
                        }
                      }
                    }

LABEL_158:
                    *(v32 - 1) = v107;
                  }

                  while (v105 < v96 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v272 = *(a1 + 112);
              v271 = *(a1 + 120);
              if (v272 >= v271)
              {
                v307 = *(a1 + 104);
                v308 = v272 - v307;
                v309 = (v272 - v307) >> 2;
                v310 = v309 + 1;
                if ((v309 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v311 = v271 - v307;
                if (v311 >> 1 > v310)
                {
                  v310 = v311 >> 1;
                }

                if (v311 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v312 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v312 = v310;
                }

                if (v312)
                {
                  sub_245DF85BC(a1 + 104, v312);
                }

                v380 = (v272 - v307) >> 2;
                v381 = (4 * v309);
                v382 = (4 * v309 - 4 * v380);
                *v381 = 0;
                v268 = v381 + 1;
                memcpy(v382, v307, v308);
                v383 = *(a1 + 104);
                *(a1 + 104) = v382;
                *(a1 + 112) = v268;
                *(a1 + 120) = 0;
                if (v383)
                {
                  operator delete(v383);
                }
              }

              else
              {
                *v272 = 0;
                v268 = v272 + 4;
              }

              *(a1 + 112) = v268;
              v385 = *(this + 1);
              v384 = *(this + 2);
              v386 = *this;
              if (v385 <= 0xFFFFFFFFFFFFFFF5 && v385 + 10 <= v384)
              {
                v387 = 0;
                v388 = 0;
                v352 = 0;
                v389 = (v386 + v385);
                v390 = v385 + 1;
                while (1)
                {
                  *(this + 1) = v390;
                  v391 = *v389++;
                  v352 |= (v391 & 0x7F) << v387;
                  if ((v391 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v387 += 7;
                  ++v390;
                  v49 = v388++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v392 = 0;
              v393 = 0;
              v352 = 0;
              v16 = v384 >= v385;
              v394 = v384 - v385;
              if (!v16)
              {
                v394 = 0;
              }

              v395 = (v386 + v385);
              v396 = v385 + 1;
              while (v394)
              {
                v397 = *v395;
                *(this + 1) = v396;
                v352 |= (v397 & 0x7F) << v392;
                if ((v397 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v392 += 7;
                --v394;
                ++v395;
                ++v396;
                v49 = v393++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 64);
                  do
                  {
                    v112 = *(a1 + 72);
                    if (v32 >= v112)
                    {
                      v113 = *(a1 + 56);
                      v114 = v32 - v113;
                      v115 = (v32 - v113) >> 2;
                      v116 = v115 + 1;
                      if ((v115 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v117 = v112 - v113;
                      if (v117 >> 1 > v116)
                      {
                        v116 = v117 >> 1;
                      }

                      if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v118 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v118 = v116;
                      }

                      if (v118)
                      {
                        sub_245DF85BC(a1 + 56, v118);
                      }

                      v119 = (v32 - v113) >> 2;
                      v120 = (4 * v115);
                      v121 = (4 * v115 - 4 * v119);
                      *v120 = 0;
                      v32 = (v120 + 1);
                      memcpy(v121, v113, v114);
                      v122 = *(a1 + 56);
                      *(a1 + 56) = v121;
                      *(a1 + 64) = v32;
                      *(a1 + 72) = 0;
                      if (v122)
                      {
                        operator delete(v122);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 64) = v32;
                    v124 = *(this + 1);
                    v123 = *(this + 2);
                    v125 = *this;
                    v126 = 0;
                    v127 = 0;
                    if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                    {
                      v134 = 0;
                      v129 = v123 - v124;
                      if (v123 < v124)
                      {
                        v129 = 0;
                      }

                      v130 = (v125 + v124);
                      v131 = v124 + 1;
                      while (1)
                      {
                        if (!v129)
                        {
                          goto LABEL_373;
                        }

                        v132 = v131;
                        v133 = *v130;
                        *(this + 1) = v132;
                        v134 |= (v133 & 0x7F) << v126;
                        if ((v133 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        --v129;
                        ++v130;
                        v131 = v132 + 1;
                        v49 = v127++ > 8;
                        if (v49)
                        {
LABEL_197:
                          LODWORD(v134) = 0;
                          goto LABEL_200;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v134) = 0;
                      }
                    }

                    else
                    {
                      v134 = 0;
                      v135 = (v125 + v124);
                      v136 = v124 + 1;
                      while (1)
                      {
                        v132 = v136;
                        *(this + 1) = v136;
                        v137 = *v135++;
                        v134 |= (v137 & 0x7F) << v126;
                        if ((v137 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        ++v136;
                        v49 = v127++ > 8;
                        if (v49)
                        {
                          goto LABEL_197;
                        }
                      }
                    }

LABEL_200:
                    *(v32 - 1) = v134;
                  }

                  while (v132 < v123 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v286 = *(a1 + 64);
              v285 = *(a1 + 72);
              if (v286 >= v285)
              {
                v313 = *(a1 + 56);
                v314 = v286 - v313;
                v315 = (v286 - v313) >> 2;
                v316 = v315 + 1;
                if ((v315 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v317 = v285 - v313;
                if (v317 >> 1 > v316)
                {
                  v316 = v317 >> 1;
                }

                if (v317 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v318 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v318 = v316;
                }

                if (v318)
                {
                  sub_245DF85BC(a1 + 56, v318);
                }

                v398 = (v286 - v313) >> 2;
                v399 = (4 * v315);
                v400 = (4 * v315 - 4 * v398);
                *v399 = 0;
                v268 = v399 + 1;
                memcpy(v400, v313, v314);
                v401 = *(a1 + 56);
                *(a1 + 56) = v400;
                *(a1 + 64) = v268;
                *(a1 + 72) = 0;
                if (v401)
                {
                  operator delete(v401);
                }
              }

              else
              {
                *v286 = 0;
                v268 = v286 + 4;
              }

              *(a1 + 64) = v268;
              v403 = *(this + 1);
              v402 = *(this + 2);
              v404 = *this;
              if (v403 <= 0xFFFFFFFFFFFFFFF5 && v403 + 10 <= v402)
              {
                v405 = 0;
                v406 = 0;
                v352 = 0;
                v407 = (v404 + v403);
                v408 = v403 + 1;
                while (1)
                {
                  *(this + 1) = v408;
                  v409 = *v407++;
                  v352 |= (v409 & 0x7F) << v405;
                  if ((v409 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v405 += 7;
                  ++v408;
                  v49 = v406++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v410 = 0;
              v411 = 0;
              v352 = 0;
              v16 = v402 >= v403;
              v412 = v402 - v403;
              if (!v16)
              {
                v412 = 0;
              }

              v413 = (v404 + v403);
              v414 = v403 + 1;
              while (v412)
              {
                v415 = *v413;
                *(this + 1) = v414;
                v352 |= (v415 & 0x7F) << v410;
                if ((v415 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v410 += 7;
                --v412;
                ++v413;
                ++v414;
                v49 = v411++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 8:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 88);
                  do
                  {
                    v182 = *(a1 + 96);
                    if (v32 >= v182)
                    {
                      v183 = *(a1 + 80);
                      v184 = v32 - v183;
                      v185 = (v32 - v183) >> 2;
                      v186 = v185 + 1;
                      if ((v185 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v187 = v182 - v183;
                      if (v187 >> 1 > v186)
                      {
                        v186 = v187 >> 1;
                      }

                      if (v187 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v188 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v188 = v186;
                      }

                      if (v188)
                      {
                        sub_245DF85BC(a1 + 80, v188);
                      }

                      v189 = (v32 - v183) >> 2;
                      v190 = (4 * v185);
                      v191 = (4 * v185 - 4 * v189);
                      *v190 = 0;
                      v32 = (v190 + 1);
                      memcpy(v191, v183, v184);
                      v192 = *(a1 + 80);
                      *(a1 + 80) = v191;
                      *(a1 + 88) = v32;
                      *(a1 + 96) = 0;
                      if (v192)
                      {
                        operator delete(v192);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 88) = v32;
                    v194 = *(this + 1);
                    v193 = *(this + 2);
                    v195 = *this;
                    v196 = 0;
                    v197 = 0;
                    if (v194 > 0xFFFFFFFFFFFFFFF5 || v194 + 10 > v193)
                    {
                      v204 = 0;
                      v199 = v193 - v194;
                      if (v193 < v194)
                      {
                        v199 = 0;
                      }

                      v200 = (v195 + v194);
                      v201 = v194 + 1;
                      while (1)
                      {
                        if (!v199)
                        {
                          goto LABEL_373;
                        }

                        v202 = v201;
                        v203 = *v200;
                        *(this + 1) = v202;
                        v204 |= (v203 & 0x7F) << v196;
                        if ((v203 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        --v199;
                        ++v200;
                        v201 = v202 + 1;
                        v49 = v197++ > 8;
                        if (v49)
                        {
LABEL_289:
                          LODWORD(v204) = 0;
                          goto LABEL_292;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v204) = 0;
                      }
                    }

                    else
                    {
                      v204 = 0;
                      v205 = (v195 + v194);
                      v206 = v194 + 1;
                      while (1)
                      {
                        v202 = v206;
                        *(this + 1) = v206;
                        v207 = *v205++;
                        v204 |= (v207 & 0x7F) << v196;
                        if ((v207 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        ++v206;
                        v49 = v197++ > 8;
                        if (v49)
                        {
                          goto LABEL_289;
                        }
                      }
                    }

LABEL_292:
                    *(v32 - 1) = v204;
                  }

                  while (v202 < v193 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v290 = *(a1 + 88);
              v289 = *(a1 + 96);
              if (v290 >= v289)
              {
                v325 = *(a1 + 80);
                v326 = v290 - v325;
                v327 = (v290 - v325) >> 2;
                v328 = v327 + 1;
                if ((v327 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v329 = v289 - v325;
                if (v329 >> 1 > v328)
                {
                  v328 = v329 >> 1;
                }

                if (v329 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v330 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v330 = v328;
                }

                if (v330)
                {
                  sub_245DF85BC(a1 + 80, v330);
                }

                v434 = (v290 - v325) >> 2;
                v435 = (4 * v327);
                v436 = (4 * v327 - 4 * v434);
                *v435 = 0;
                v268 = v435 + 1;
                memcpy(v436, v325, v326);
                v437 = *(a1 + 80);
                *(a1 + 80) = v436;
                *(a1 + 88) = v268;
                *(a1 + 96) = 0;
                if (v437)
                {
                  operator delete(v437);
                }
              }

              else
              {
                *v290 = 0;
                v268 = v290 + 4;
              }

              *(a1 + 88) = v268;
              v439 = *(this + 1);
              v438 = *(this + 2);
              v440 = *this;
              if (v439 <= 0xFFFFFFFFFFFFFFF5 && v439 + 10 <= v438)
              {
                v441 = 0;
                v442 = 0;
                v352 = 0;
                v443 = (v440 + v439);
                v444 = v439 + 1;
                while (1)
                {
                  *(this + 1) = v444;
                  v445 = *v443++;
                  v352 |= (v445 & 0x7F) << v441;
                  if ((v445 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v441 += 7;
                  ++v444;
                  v49 = v442++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v446 = 0;
              v447 = 0;
              v352 = 0;
              v16 = v438 >= v439;
              v448 = v438 - v439;
              if (!v16)
              {
                v448 = 0;
              }

              v449 = (v440 + v439);
              v450 = v439 + 1;
              while (v448)
              {
                v451 = *v449;
                *(this + 1) = v450;
                v352 |= (v451 & 0x7F) << v446;
                if ((v451 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v446 += 7;
                --v448;
                ++v449;
                ++v450;
                v49 = v447++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 9:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 136);
                  do
                  {
                    v33 = *(a1 + 144);
                    if (v32 >= v33)
                    {
                      v34 = *(a1 + 128);
                      v35 = v32 - v34;
                      v36 = (v32 - v34) >> 2;
                      v37 = v36 + 1;
                      if ((v36 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v38 = v33 - v34;
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
                        sub_245DF85BC(a1 + 128, v39);
                      }

                      v40 = (v32 - v34) >> 2;
                      v41 = (4 * v36);
                      v42 = (4 * v36 - 4 * v40);
                      *v41 = 0;
                      v32 = (v41 + 1);
                      memcpy(v42, v34, v35);
                      v43 = *(a1 + 128);
                      *(a1 + 128) = v42;
                      *(a1 + 136) = v32;
                      *(a1 + 144) = 0;
                      if (v43)
                      {
                        operator delete(v43);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 136) = v32;
                    v45 = *(this + 1);
                    v44 = *(this + 2);
                    v46 = *this;
                    v47 = 0;
                    v48 = 0;
                    v49 = v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v44;
                    if (v49)
                    {
                      v55 = 0;
                      v50 = v44 - v45;
                      if (v44 < v45)
                      {
                        v50 = 0;
                      }

                      v51 = (v46 + v45);
                      v52 = v45 + 1;
                      while (1)
                      {
                        if (!v50)
                        {
                          goto LABEL_373;
                        }

                        v53 = v52;
                        v54 = *v51;
                        *(this + 1) = v53;
                        v55 |= (v54 & 0x7F) << v47;
                        if ((v54 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        --v50;
                        ++v51;
                        v52 = v53 + 1;
                        v49 = v48++ > 8;
                        if (v49)
                        {
LABEL_71:
                          LODWORD(v55) = 0;
                          goto LABEL_74;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v55) = 0;
                      }
                    }

                    else
                    {
                      v55 = 0;
                      v56 = (v46 + v45);
                      v57 = v45 + 1;
                      while (1)
                      {
                        v53 = v57;
                        *(this + 1) = v57;
                        v58 = *v56++;
                        v55 |= (v58 & 0x7F) << v47;
                        if ((v58 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        ++v57;
                        v49 = v48++ > 8;
                        if (v49)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

LABEL_74:
                    *(v32 - 1) = v55;
                  }

                  while (v53 < v44 && (*(this + 24) & 1) == 0);
                }

LABEL_374:
                PB::Reader::recallMark();
                goto LABEL_634;
              }

              v267 = *(a1 + 136);
              v266 = *(a1 + 144);
              if (v267 >= v266)
              {
                v295 = *(a1 + 128);
                v296 = v267 - v295;
                v297 = (v267 - v295) >> 2;
                v298 = v297 + 1;
                if ((v297 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v299 = v266 - v295;
                if (v299 >> 1 > v298)
                {
                  v298 = v299 >> 1;
                }

                if (v299 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v300 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v300 = v298;
                }

                if (v300)
                {
                  sub_245DF85BC(a1 + 128, v300);
                }

                v343 = (v267 - v295) >> 2;
                v344 = (4 * v297);
                v345 = (4 * v297 - 4 * v343);
                *v344 = 0;
                v268 = v344 + 1;
                memcpy(v345, v295, v296);
                v346 = *(a1 + 128);
                *(a1 + 128) = v345;
                *(a1 + 136) = v268;
                *(a1 + 144) = 0;
                if (v346)
                {
                  operator delete(v346);
                }
              }

              else
              {
                *v267 = 0;
                v268 = v267 + 4;
              }

              *(a1 + 136) = v268;
              v348 = *(this + 1);
              v347 = *(this + 2);
              v349 = *this;
              if (v348 <= 0xFFFFFFFFFFFFFFF5 && v348 + 10 <= v347)
              {
                v350 = 0;
                v351 = 0;
                v352 = 0;
                v353 = (v349 + v348);
                v354 = v348 + 1;
                while (1)
                {
                  *(this + 1) = v354;
                  v355 = *v353++;
                  v352 |= (v355 & 0x7F) << v350;
                  if ((v355 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v350 += 7;
                  ++v354;
                  v49 = v351++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v356 = 0;
              v357 = 0;
              v352 = 0;
              v16 = v347 >= v348;
              v358 = v347 - v348;
              if (!v16)
              {
                v358 = 0;
              }

              v359 = (v349 + v348);
              v360 = v348 + 1;
              while (v358)
              {
                v361 = *v359;
                *(this + 1) = v360;
                v352 |= (v361 & 0x7F) << v356;
                if ((v361 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v356 += 7;
                --v358;
                ++v359;
                ++v360;
                v49 = v357++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 224) |= 4u;
            v139 = *(this + 1);
            v138 = *(this + 2);
            v140 = *this;
            if (v139 > 0xFFFFFFFFFFFFFFF5 || v139 + 10 > v138)
            {
              v273 = 0;
              v274 = 0;
              v143 = 0;
              v16 = v138 >= v139;
              v275 = v138 - v139;
              if (!v16)
              {
                v275 = 0;
              }

              v276 = (v140 + v139);
              v277 = v139 + 1;
              while (1)
              {
                if (!v275)
                {
                  LODWORD(v143) = 0;
                  *(this + 24) = 1;
                  goto LABEL_490;
                }

                v278 = *v276;
                *(this + 1) = v277;
                v143 |= (v278 & 0x7F) << v273;
                if ((v278 & 0x80) == 0)
                {
                  break;
                }

                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v49 = v274++ > 8;
                if (v49)
                {
LABEL_398:
                  LODWORD(v143) = 0;
                  goto LABEL_490;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v143) = 0;
              }
            }

            else
            {
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v144 = (v140 + v139);
              v145 = v139 + 1;
              while (1)
              {
                *(this + 1) = v145;
                v146 = *v144++;
                v143 |= (v146 & 0x7F) << v141;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v141 += 7;
                ++v145;
                v49 = v142++ > 8;
                if (v49)
                {
                  goto LABEL_398;
                }
              }
            }

LABEL_490:
            *(a1 + 216) = v143;
            goto LABEL_634;
          case 5:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v32 = *(a1 + 16);
                do
                {
                  v208 = *(a1 + 24);
                  if (v32 >= v208)
                  {
                    v209 = *(a1 + 8);
                    v210 = v32 - v209;
                    v211 = (v32 - v209) >> 2;
                    v212 = v211 + 1;
                    if ((v211 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v213 = v208 - v209;
                    if (v213 >> 1 > v212)
                    {
                      v212 = v213 >> 1;
                    }

                    if (v213 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v214 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v214 = v212;
                    }

                    if (v214)
                    {
                      sub_245DF85BC(a1 + 8, v214);
                    }

                    v215 = (v32 - v209) >> 2;
                    v216 = (4 * v211);
                    v217 = (4 * v211 - 4 * v215);
                    *v216 = 0;
                    v32 = (v216 + 1);
                    memcpy(v217, v209, v210);
                    v218 = *(a1 + 8);
                    *(a1 + 8) = v217;
                    *(a1 + 16) = v32;
                    *(a1 + 24) = 0;
                    if (v218)
                    {
                      operator delete(v218);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(a1 + 16) = v32;
                  v220 = *(this + 1);
                  v219 = *(this + 2);
                  v221 = *this;
                  v222 = 0;
                  v223 = 0;
                  if (v220 > 0xFFFFFFFFFFFFFFF5 || v220 + 10 > v219)
                  {
                    v230 = 0;
                    v225 = v219 - v220;
                    if (v219 < v220)
                    {
                      v225 = 0;
                    }

                    v226 = (v221 + v220);
                    v227 = v220 + 1;
                    while (1)
                    {
                      if (!v225)
                      {
                        goto LABEL_373;
                      }

                      v228 = v227;
                      v229 = *v226;
                      *(this + 1) = v228;
                      v230 |= (v229 & 0x7F) << v222;
                      if ((v229 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      --v225;
                      ++v226;
                      v227 = v228 + 1;
                      v49 = v223++ > 8;
                      if (v49)
                      {
LABEL_328:
                        LODWORD(v230) = 0;
                        goto LABEL_331;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v230) = 0;
                    }
                  }

                  else
                  {
                    v230 = 0;
                    v231 = (v221 + v220);
                    v232 = v220 + 1;
                    while (1)
                    {
                      v228 = v232;
                      *(this + 1) = v232;
                      v233 = *v231++;
                      v230 |= (v233 & 0x7F) << v222;
                      if ((v233 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      ++v232;
                      v49 = v223++ > 8;
                      if (v49)
                      {
                        goto LABEL_328;
                      }
                    }
                  }

LABEL_331:
                  *(v32 - 1) = v230;
                }

                while (v228 < v219 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v292 = *(a1 + 16);
            v291 = *(a1 + 24);
            if (v292 >= v291)
            {
              v331 = *(a1 + 8);
              v332 = v292 - v331;
              v333 = (v292 - v331) >> 2;
              v334 = v333 + 1;
              if ((v333 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v335 = v291 - v331;
              if (v335 >> 1 > v334)
              {
                v334 = v335 >> 1;
              }

              if (v335 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v336 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v336 = v334;
              }

              if (v336)
              {
                sub_245DF85BC(a1 + 8, v336);
              }

              v452 = (v292 - v331) >> 2;
              v453 = (4 * v333);
              v454 = (4 * v333 - 4 * v452);
              *v453 = 0;
              v268 = v453 + 1;
              memcpy(v454, v331, v332);
              v455 = *(a1 + 8);
              *(a1 + 8) = v454;
              *(a1 + 16) = v268;
              *(a1 + 24) = 0;
              if (v455)
              {
                operator delete(v455);
              }
            }

            else
            {
              *v292 = 0;
              v268 = v292 + 4;
            }

            *(a1 + 16) = v268;
            v457 = *(this + 1);
            v456 = *(this + 2);
            v458 = *this;
            if (v457 <= 0xFFFFFFFFFFFFFFF5 && v457 + 10 <= v456)
            {
              v459 = 0;
              v460 = 0;
              v352 = 0;
              v461 = (v458 + v457);
              v462 = v457 + 1;
              while (1)
              {
                *(this + 1) = v462;
                v463 = *v461++;
                v352 |= (v463 & 0x7F) << v459;
                if ((v463 & 0x80) == 0)
                {
                  goto LABEL_633;
                }

                v459 += 7;
                ++v462;
                v49 = v460++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }
            }

            v464 = 0;
            v465 = 0;
            v352 = 0;
            v16 = v456 >= v457;
            v466 = v456 - v457;
            if (!v16)
            {
              v466 = 0;
            }

            v467 = (v458 + v457);
            v468 = v457 + 1;
            while (v466)
            {
              v469 = *v467;
              *(this + 1) = v468;
              v352 |= (v469 & 0x7F) << v464;
              if ((v469 & 0x80) == 0)
              {
                goto LABEL_631;
              }

              v464 += 7;
              --v466;
              ++v467;
              ++v468;
              v49 = v465++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }

LABEL_630:
            LODWORD(v352) = 0;
            *(this + 24) = 1;
LABEL_633:
            *(v268 - 1) = v352;
            goto LABEL_634;
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v32 = *(a1 + 40);
                do
                {
                  v59 = *(a1 + 48);
                  if (v32 >= v59)
                  {
                    v60 = *(a1 + 32);
                    v61 = v32 - v60;
                    v62 = (v32 - v60) >> 2;
                    v63 = v62 + 1;
                    if ((v62 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v64 = v59 - v60;
                    if (v64 >> 1 > v63)
                    {
                      v63 = v64 >> 1;
                    }

                    if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v65 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v65)
                    {
                      sub_245DF85BC(a1 + 32, v65);
                    }

                    v66 = (v32 - v60) >> 2;
                    v67 = (4 * v62);
                    v68 = (4 * v62 - 4 * v66);
                    *v67 = 0;
                    v32 = (v67 + 1);
                    memcpy(v68, v60, v61);
                    v69 = *(a1 + 32);
                    *(a1 + 32) = v68;
                    *(a1 + 40) = v32;
                    *(a1 + 48) = 0;
                    if (v69)
                    {
                      operator delete(v69);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(a1 + 40) = v32;
                  v71 = *(this + 1);
                  v70 = *(this + 2);
                  v72 = *this;
                  v73 = 0;
                  v74 = 0;
                  if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v70)
                  {
                    v81 = 0;
                    v76 = v70 - v71;
                    if (v70 < v71)
                    {
                      v76 = 0;
                    }

                    v77 = (v72 + v71);
                    v78 = v71 + 1;
                    while (1)
                    {
                      if (!v76)
                      {
                        goto LABEL_373;
                      }

                      v79 = v78;
                      v80 = *v77;
                      *(this + 1) = v79;
                      v81 |= (v80 & 0x7F) << v73;
                      if ((v80 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      --v76;
                      ++v77;
                      v78 = v79 + 1;
                      v49 = v74++ > 8;
                      if (v49)
                      {
LABEL_113:
                        LODWORD(v81) = 0;
                        goto LABEL_116;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v81) = 0;
                    }
                  }

                  else
                  {
                    v81 = 0;
                    v82 = (v72 + v71);
                    v83 = v71 + 1;
                    while (1)
                    {
                      v79 = v83;
                      *(this + 1) = v83;
                      v84 = *v82++;
                      v81 |= (v84 & 0x7F) << v73;
                      if ((v84 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      ++v83;
                      v49 = v74++ > 8;
                      if (v49)
                      {
                        goto LABEL_113;
                      }
                    }
                  }

LABEL_116:
                  *(v32 - 1) = v81;
                }

                while (v79 < v70 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v270 = *(a1 + 40);
            v269 = *(a1 + 48);
            if (v270 >= v269)
            {
              v301 = *(a1 + 32);
              v302 = v270 - v301;
              v303 = (v270 - v301) >> 2;
              v304 = v303 + 1;
              if ((v303 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v305 = v269 - v301;
              if (v305 >> 1 > v304)
              {
                v304 = v305 >> 1;
              }

              if (v305 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v306 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v306 = v304;
              }

              if (v306)
              {
                sub_245DF85BC(a1 + 32, v306);
              }

              v362 = (v270 - v301) >> 2;
              v363 = (4 * v303);
              v364 = (4 * v303 - 4 * v362);
              *v363 = 0;
              v268 = v363 + 1;
              memcpy(v364, v301, v302);
              v365 = *(a1 + 32);
              *(a1 + 32) = v364;
              *(a1 + 40) = v268;
              *(a1 + 48) = 0;
              if (v365)
              {
                operator delete(v365);
              }
            }

            else
            {
              *v270 = 0;
              v268 = v270 + 4;
            }

            *(a1 + 40) = v268;
            v367 = *(this + 1);
            v366 = *(this + 2);
            v368 = *this;
            if (v367 > 0xFFFFFFFFFFFFFFF5 || v367 + 10 > v366)
            {
              v374 = 0;
              v375 = 0;
              v352 = 0;
              v16 = v366 >= v367;
              v376 = v366 - v367;
              if (!v16)
              {
                v376 = 0;
              }

              v377 = (v368 + v367);
              v378 = v367 + 1;
              while (v376)
              {
                v379 = *v377;
                *(this + 1) = v378;
                v352 |= (v379 & 0x7F) << v374;
                if ((v379 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v374 += 7;
                --v376;
                ++v377;
                ++v378;
                v49 = v375++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            }

            v369 = 0;
            v370 = 0;
            v352 = 0;
            v371 = (v368 + v367);
            v372 = v367 + 1;
            while (1)
            {
              *(this + 1) = v372;
              v373 = *v371++;
              v352 |= (v373 & 0x7F) << v369;
              if ((v373 & 0x80) == 0)
              {
                goto LABEL_633;
              }

              v369 += 7;
              ++v372;
              v49 = v370++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 224) |= 2u;
            v111 = *(this + 1);
            if (v111 <= 0xFFFFFFFFFFFFFFF7 && v111 + 8 <= *(this + 2))
            {
              *(a1 + 208) = *(*this + v111);
              *(this + 1) += 8;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_634;
          case 2:
            *(a1 + 224) |= 1u;
            v174 = *(this + 1);
            v173 = *(this + 2);
            v175 = *this;
            if (v174 > 0xFFFFFFFFFFFFFFF5 || v174 + 10 > v173)
            {
              v279 = 0;
              v280 = 0;
              v178 = 0;
              v16 = v173 >= v174;
              v281 = v173 - v174;
              if (!v16)
              {
                v281 = 0;
              }

              v282 = (v175 + v174);
              v283 = v174 + 1;
              while (1)
              {
                if (!v281)
                {
                  v178 = 0;
                  *(this + 24) = 1;
                  goto LABEL_493;
                }

                v284 = *v282;
                *(this + 1) = v283;
                v178 |= (v284 & 0x7F) << v279;
                if ((v284 & 0x80) == 0)
                {
                  break;
                }

                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v49 = v280++ > 8;
                if (v49)
                {
LABEL_406:
                  v178 = 0;
                  goto LABEL_493;
                }
              }

              if (*(this + 24))
              {
                v178 = 0;
              }
            }

            else
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              v179 = (v175 + v174);
              v180 = v174 + 1;
              while (1)
              {
                *(this + 1) = v180;
                v181 = *v179++;
                v178 |= (v181 & 0x7F) << v176;
                if ((v181 & 0x80) == 0)
                {
                  break;
                }

                v176 += 7;
                ++v180;
                v49 = v177++ > 8;
                if (v49)
                {
                  goto LABEL_406;
                }
              }
            }

LABEL_493:
            *(a1 + 200) = v178;
            goto LABEL_634;
          case 3:
            *(a1 + 224) |= 8u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v260 = 0;
              v261 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v262 = v23 - v24;
              if (!v16)
              {
                v262 = 0;
              }

              v263 = (v25 + v24);
              v264 = v24 + 1;
              while (1)
              {
                if (!v262)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_487;
                }

                v265 = *v263;
                *(this + 1) = v264;
                v28 |= (v265 & 0x7F) << v260;
                if ((v265 & 0x80) == 0)
                {
                  break;
                }

                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v49 = v261++ > 8;
                if (v49)
                {
LABEL_384:
                  LODWORD(v28) = 0;
                  goto LABEL_487;
                }
              }

              if (*(this + 24))
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
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v49 = v27++ > 8;
                if (v49)
                {
                  goto LABEL_384;
                }
              }
            }

LABEL_487:
            *(a1 + 220) = v28;
            goto LABEL_634;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_640:
        v488 = 0;
        return v488 & 1;
      }

LABEL_634:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v488 = v4 ^ 1;
  return v488 & 1;
}

uint64_t sub_245E0BF04(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 208));
    v4 = *(v3 + 224);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_33:
      v31 = *(v3 + 220);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 224) & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 224) & 1) == 0)
  {
    goto LABEL_3;
  }

  v30 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v4 & 4) != 0)
  {
LABEL_5:
    v5 = *(v3 + 216);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::writeVarInt(this);
  }

  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::writeVarInt(this);
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = PB::Writer::writeVarInt(this);
  }

  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    result = PB::Writer::writeVarInt(this);
  }

  v18 = *(v3 + 128);
  v19 = *(v3 + 136);
  while (v18 != v19)
  {
    v20 = *v18++;
    result = PB::Writer::writeVarInt(this);
  }

  v21 = *(v3 + 152);
  v22 = *(v3 + 160);
  while (v21 != v22)
  {
    v23 = *v21++;
    result = PB::Writer::writeVarInt(this);
  }

  v24 = *(v3 + 176);
  v25 = *(v3 + 184);
  while (v24 != v25)
  {
    v26 = *v24++;
    result = PB::Writer::writeVarInt(this);
  }

  v28 = *(v3 + 104);
  v27 = *(v3 + 112);
  while (v28 != v27)
  {
    v29 = *v28++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245E0C0A0(uint64_t result)
{
  *result = &unk_2858CF800;
  *(result + 56) = 0;
  return result;
}

void sub_245E0C0C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0C100(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF800;
  *(result + 56) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 56) = 4;
    *(result + 24) = v4;
    v2 = *(a2 + 56);
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
    v5 = *(a2 + 36);
    v3 |= 0x20u;
    *(result + 56) = v3;
    *(result + 36) = v5;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 52);
    v3 |= 0x200u;
    *(result + 56) = v3;
    *(result + 52) = v6;
    v2 = *(a2 + 56);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 56) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 56);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 16);
  v3 |= 2u;
  *(result + 56) = v3;
  *(result + 16) = v8;
  v2 = *(a2 + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 56) = v3;
  *(result + 48) = v9;
  v2 = *(a2 + 56);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 56) = v3;
  *(result + 44) = v10;
  v2 = *(a2 + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 56) = v3;
  *(result + 40) = v11;
  v2 = *(a2 + 56);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_22:
    v13 = *(a2 + 28);
    *(result + 56) = v3 | 8;
    *(result + 28) = v13;
    return result;
  }

LABEL_21:
  v12 = *(a2 + 8);
  v3 |= 1u;
  *(result + 56) = v3;
  *(result + 8) = v12;
  if ((*(a2 + 56) & 8) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245E0C244(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "base", *(a1 + 24));
    v5 = *(a1 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 28);
  PB::TextFormatter::format(this, "broken");
  v5 = *(a1 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "peak", *(a1 + 36));
  v5 = *(a1 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "sensor");
  v5 = *(a1 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "sequenceNumber");
  v5 = *(a1 + 56);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "status");
  v5 = *(a1 + 56);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "temp", *(a1 + 52));
  if ((*(a1 + 56) & 2) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0C3C8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_176;
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
            *(a1 + 56) |= 0x100u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v39;
              v81 = (v40 + v39);
              v82 = v39 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v43 |= (v84 & 0x7F) << v78;
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
                  LODWORD(v43) = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_154:
              v2 = v83;
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

LABEL_155:
            *(a1 + 48) = v43;
            goto LABEL_172;
          }

          if (v22 == 7)
          {
            *(a1 + 56) |= 0x80u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v73 = v2 - v31;
              v74 = (v32 + v31);
              v75 = v31 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_151;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v35 |= (v77 & 0x7F) << v71;
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
                  LODWORD(v35) = 0;
                  goto LABEL_150;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_150:
              v2 = v76;
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

LABEL_151:
            *(a1 + 44) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 56) |= 0x40u;
              v47 = *(this + 1);
              v2 = *(this + 2);
              v48 = *this;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v85 = 0;
                v86 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(this + 1);
                }

                v87 = v2 - v47;
                v88 = (v48 + v47);
                v89 = v47 + 1;
                while (1)
                {
                  if (!v87)
                  {
                    LODWORD(v51) = 0;
                    *(this + 24) = 1;
                    goto LABEL_159;
                  }

                  v90 = v89;
                  v91 = *v88;
                  *(this + 1) = v90;
                  v51 |= (v91 & 0x7F) << v85;
                  if ((v91 & 0x80) == 0)
                  {
                    break;
                  }

                  v85 += 7;
                  --v87;
                  ++v88;
                  v89 = v90 + 1;
                  v14 = v86++ > 8;
                  if (v14)
                  {
                    LODWORD(v51) = 0;
                    goto LABEL_158;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_158:
                v2 = v90;
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
                    LODWORD(v51) = 0;
                    break;
                  }
                }
              }

LABEL_159:
              *(a1 + 40) = v51;
              goto LABEL_172;
            case 9:
              *(a1 + 56) |= 0x10u;
              v63 = *(this + 1);
              v2 = *(this + 2);
              v64 = *this;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v106 = 0;
                v107 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(this + 1);
                }

                v108 = v2 - v63;
                v109 = (v64 + v63);
                v110 = v63 + 1;
                while (1)
                {
                  if (!v108)
                  {
                    LODWORD(v67) = 0;
                    *(this + 24) = 1;
                    goto LABEL_171;
                  }

                  v111 = v110;
                  v112 = *v109;
                  *(this + 1) = v111;
                  v67 |= (v112 & 0x7F) << v106;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  --v108;
                  ++v109;
                  v110 = v111 + 1;
                  v14 = v107++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_170;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_170:
                v2 = v111;
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
                  *(this + 1) = v69;
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

LABEL_171:
              *(a1 + 32) = v67;
              goto LABEL_172;
            case 0xA:
              *(a1 + 56) |= 1u;
              v23 = *(this + 1);
              v2 = *(this + 2);
              v24 = *this;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v92 = 0;
                v93 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(this + 1);
                }

                v94 = v2 - v23;
                v95 = (v24 + v23);
                v96 = v23 + 1;
                while (1)
                {
                  if (!v94)
                  {
                    v27 = 0;
                    *(this + 24) = 1;
                    goto LABEL_163;
                  }

                  v97 = v96;
                  v98 = *v95;
                  *(this + 1) = v97;
                  v27 |= (v98 & 0x7F) << v92;
                  if ((v98 & 0x80) == 0)
                  {
                    break;
                  }

                  v92 += 7;
                  --v94;
                  ++v95;
                  v96 = v97 + 1;
                  v14 = v93++ > 8;
                  if (v14)
                  {
                    v27 = 0;
                    goto LABEL_162;
                  }
                }

                if (*(this + 24))
                {
                  v27 = 0;
                }

LABEL_162:
                v2 = v97;
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
                    v27 = 0;
                    break;
                  }
                }
              }

LABEL_163:
              *(a1 + 8) = v27;
              goto LABEL_172;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 56) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_67:
            *(this + 24) = 1;
            goto LABEL_172;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_140;
        }

        if (v22 == 2)
        {
          *(a1 + 56) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_140;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 56) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 52) = *(*this + v2);
LABEL_140:
            v2 = *(this + 1) + 4;
LABEL_141:
            *(this + 1) = v2;
            goto LABEL_172;
          case 4:
            *(a1 + 56) |= 8u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v99 = 0;
              v100 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v101 = v2 - v55;
              v102 = (v56 + v55);
              v103 = v55 + 1;
              while (1)
              {
                if (!v101)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_167;
                }

                v104 = v103;
                v105 = *v102;
                *(this + 1) = v104;
                v59 |= (v105 & 0x7F) << v99;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                --v101;
                ++v102;
                v103 = v104 + 1;
                v14 = v100++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_166;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_166:
              v2 = v104;
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
                *(this + 1) = v61;
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

LABEL_167:
            *(a1 + 28) = v59;
            goto LABEL_172;
          case 5:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(this + 1);
LABEL_172:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_176:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_245E0CCB0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 56);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 56) & 1) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v3 + 8);

  return PB::Writer::writeVarInt(this);
}

double sub_245E0CE00(uint64_t a1)
{
  *a1 = &unk_2858CF838;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245E0CE3C(uint64_t a1)
{
  *a1 = &unk_2858CF838;
  v4 = (a1 + 56);
  sub_245DF837C(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(a1);
}

void sub_245E0CEBC(uint64_t a1)
{
  sub_245E0CE3C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0CEF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *a1 = &unk_2858CF838;
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  if ((*(a2 + 104) & 8) != 0)
  {
    v5 = *(a2 + 92);
    *(a1 + 104) = 8;
    *(a1 + 92) = v5;
    v4 = 12;
    if ((*(a2 + 104) & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 4;
  if ((*(a2 + 104) & 4) != 0)
  {
LABEL_5:
    v6 = *(a2 + 88);
    *(a1 + 104) = v4;
    *(a1 + 88) = v6;
  }

LABEL_6:
  v7 = *(a2 + 56);
  if (v7 != *(a2 + 64))
  {
    v8 = *v7;
    sub_245DB85BC();
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v9 = *(a2 + 104);
  if (v9)
  {
    v12 = *(a2 + 80);
    *(a1 + 104) |= 1u;
    *(a1 + 80) = v12;
    v9 = *(a2 + 104);
    if ((v9 & 0x10) == 0)
    {
LABEL_12:
      if ((v9 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      v14 = *(a2 + 84);
      *(a1 + 104) |= 2u;
      *(a1 + 84) = v14;
      if ((*(a2 + 104) & 0x20) == 0)
      {
        return a1;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 104) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v13 = *(a2 + 96);
  *(a1 + 104) |= 0x10u;
  *(a1 + 96) = v13;
  v9 = *(a2 + 104);
  if ((v9 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v9 & 0x20) != 0)
  {
LABEL_14:
    v10 = *(a2 + 100);
    *(a1 + 104) |= 0x20u;
    *(a1 + 100) = v10;
  }

  return a1;
}

uint64_t sub_245E0D084(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 104);
  if (v5)
  {
    v19 = *(a1 + 80);
    PB::TextFormatter::format(this, "conchaDropped");
    v5 = *(a1 + 104);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 104) & 2) == 0)
  {
    goto LABEL_3;
  }

  v20 = *(a1 + 84);
  PB::TextFormatter::format(this, "conchaRecovered");
  v5 = *(a1 + 104);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  v21 = *(a1 + 88);
  PB::TextFormatter::format(this, "iedState");
  if ((*(a1 + 104) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 92);
    PB::TextFormatter::format(this, "location");
  }

LABEL_6:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "mean", v9);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, this, "optical");
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(a1 + 96);
    PB::TextFormatter::format(this, "tragusDropped");
    v13 = *(a1 + 104);
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = *(a1 + 100);
    PB::TextFormatter::format(this, "tragusRecovered");
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "variance", v18);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0D234(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            sub_245DB8A98();
          }

          if (v23 == 4)
          {
            if (v22 != 2)
            {
              v117 = *(a1 + 16);
              v116 = *(a1 + 24);
              if (v117 >= v116)
              {
                v151 = *(a1 + 8);
                v152 = v117 - v151;
                v153 = (v117 - v151) >> 2;
                v154 = v153 + 1;
                if ((v153 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v155 = v116 - v151;
                if (v155 >> 1 > v154)
                {
                  v154 = v155 >> 1;
                }

                if (v155 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v156 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v156 = v154;
                }

                if (v156)
                {
                  sub_245DF85BC(a1 + 8, v156);
                }

                v163 = (v117 - v151) >> 2;
                v164 = (4 * v153);
                v165 = (4 * v153 - 4 * v163);
                *v164 = 0;
                v118 = v164 + 1;
                memcpy(v165, v151, v152);
                v166 = *(a1 + 8);
                *(a1 + 8) = v165;
                *(a1 + 16) = v118;
                *(a1 + 24) = 0;
                if (v166)
                {
                  operator delete(v166);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 4;
              }

              *(a1 + 16) = v118;
LABEL_219:
              v171 = *(this + 1);
              if (v171 <= 0xFFFFFFFFFFFFFFFBLL && v171 + 4 <= *(this + 2))
              {
                *(v118 - 1) = *(*this + v171);
                *(this + 1) += 4;
              }

              else
              {
                *(this + 24) = 1;
              }

              goto LABEL_223;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_229;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 16);
              v44 = *(a1 + 24);
              if (v45 >= v44)
              {
                v47 = *(a1 + 8);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_245DF85BC(a1 + 8, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 8);
                *(a1 + 8) = v55;
                *(a1 + 16) = v46;
                *(a1 + 24) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(a1 + 16) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
LABEL_171:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_172;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(a1 + 104) |= 8u;
            v68 = *(this + 1);
            v67 = *(this + 2);
            v69 = *this;
            if (v68 > 0xFFFFFFFFFFFFFFF5 || v68 + 10 > v67)
            {
              v125 = 0;
              v126 = 0;
              v72 = 0;
              v17 = v67 >= v68;
              v127 = v67 - v68;
              if (!v17)
              {
                v127 = 0;
              }

              v128 = (v69 + v68);
              v129 = v68 + 1;
              while (1)
              {
                if (!v127)
                {
                  LODWORD(v72) = 0;
                  *(this + 24) = 1;
                  goto LABEL_203;
                }

                v130 = *v128;
                *(this + 1) = v129;
                v72 |= (v130 & 0x7F) << v125;
                if ((v130 & 0x80) == 0)
                {
                  break;
                }

                v125 += 7;
                --v127;
                ++v128;
                ++v129;
                v14 = v126++ > 8;
                if (v14)
                {
LABEL_144:
                  LODWORD(v72) = 0;
                  goto LABEL_203;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v69 + v68);
              v74 = v68 + 1;
              while (1)
              {
                *(this + 1) = v74;
                v75 = *v73++;
                v72 |= (v75 & 0x7F) << v70;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                ++v74;
                v14 = v71++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }
              }
            }

LABEL_203:
            *(a1 + 92) = v72;
            goto LABEL_223;
          }

          if (v23 == 2)
          {
            *(a1 + 104) |= 4u;
            v34 = *(this + 1);
            v33 = *(this + 2);
            v35 = *this;
            if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33)
            {
              v110 = 0;
              v111 = 0;
              v38 = 0;
              v17 = v33 >= v34;
              v112 = v33 - v34;
              if (!v17)
              {
                v112 = 0;
              }

              v113 = (v35 + v34);
              v114 = v34 + 1;
              while (1)
              {
                if (!v112)
                {
                  LODWORD(v38) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v115 = *v113;
                *(this + 1) = v114;
                v38 |= (v115 & 0x7F) << v110;
                if ((v115 & 0x80) == 0)
                {
                  break;
                }

                v110 += 7;
                --v112;
                ++v113;
                ++v114;
                v14 = v111++ > 8;
                if (v14)
                {
LABEL_126:
                  LODWORD(v38) = 0;
                  goto LABEL_197;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = (v35 + v34);
              v40 = v34 + 1;
              while (1)
              {
                *(this + 1) = v40;
                v41 = *v39++;
                v38 |= (v41 & 0x7F) << v36;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v40;
                v14 = v37++ > 8;
                if (v14)
                {
                  goto LABEL_126;
                }
              }
            }

LABEL_197:
            *(a1 + 88) = v38;
            goto LABEL_223;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 != 2)
          {
            v144 = *(a1 + 40);
            v143 = *(a1 + 48);
            if (v144 >= v143)
            {
              v157 = *(a1 + 32);
              v158 = v144 - v157;
              v159 = (v144 - v157) >> 2;
              v160 = v159 + 1;
              if ((v159 + 1) >> 62)
              {
LABEL_230:
                sub_245DF85A4();
              }

              v161 = v143 - v157;
              if (v161 >> 1 > v160)
              {
                v160 = v161 >> 1;
              }

              if (v161 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v162 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v162 = v160;
              }

              if (v162)
              {
                sub_245DF85BC(a1 + 32, v162);
              }

              v167 = (v144 - v157) >> 2;
              v168 = (4 * v159);
              v169 = (4 * v159 - 4 * v167);
              *v168 = 0;
              v118 = v168 + 1;
              memcpy(v169, v157, v158);
              v170 = *(a1 + 32);
              *(a1 + 32) = v169;
              *(a1 + 40) = v118;
              *(a1 + 48) = 0;
              if (v170)
              {
                operator delete(v170);
              }
            }

            else
            {
              *v144 = 0;
              v118 = v144 + 4;
            }

            *(a1 + 40) = v118;
            goto LABEL_219;
          }

          if (PB::Reader::placeMark())
          {
            goto LABEL_229;
          }

          v85 = *(this + 1);
          v86 = *(this + 2);
          while (v85 < v86 && (*(this + 24) & 1) == 0)
          {
            v88 = *(a1 + 40);
            v87 = *(a1 + 48);
            if (v88 >= v87)
            {
              v90 = *(a1 + 32);
              v91 = v88 - v90;
              v92 = (v88 - v90) >> 2;
              v93 = v92 + 1;
              if ((v92 + 1) >> 62)
              {
                goto LABEL_230;
              }

              v94 = v87 - v90;
              if (v94 >> 1 > v93)
              {
                v93 = v94 >> 1;
              }

              if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v95 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v93;
              }

              if (v95)
              {
                sub_245DF85BC(a1 + 32, v95);
              }

              v96 = (v88 - v90) >> 2;
              v97 = (4 * v92);
              v98 = (4 * v92 - 4 * v96);
              *v97 = 0;
              v89 = v97 + 1;
              memcpy(v98, v90, v91);
              v99 = *(a1 + 32);
              *(a1 + 32) = v98;
              *(a1 + 40) = v89;
              *(a1 + 48) = 0;
              if (v99)
              {
                operator delete(v99);
              }
            }

            else
            {
              *v88 = 0;
              v89 = v88 + 4;
            }

            *(a1 + 40) = v89;
            v100 = *(this + 1);
            if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
            {
              goto LABEL_171;
            }

            *(v89 - 1) = *(*this + v100);
            v86 = *(this + 2);
            v85 = *(this + 1) + 4;
            *(this + 1) = v85;
          }

LABEL_172:
          PB::Reader::recallMark();
          goto LABEL_223;
        }

        if (v23 == 6)
        {
          *(a1 + 104) |= 1u;
          v59 = *(this + 1);
          v58 = *(this + 2);
          v60 = *this;
          if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v58)
          {
            v119 = 0;
            v120 = 0;
            v63 = 0;
            v17 = v58 >= v59;
            v121 = v58 - v59;
            if (!v17)
            {
              v121 = 0;
            }

            v122 = (v60 + v59);
            v123 = v59 + 1;
            while (1)
            {
              if (!v121)
              {
                LODWORD(v63) = 0;
                *(this + 24) = 1;
                goto LABEL_200;
              }

              v124 = *v122;
              *(this + 1) = v123;
              v63 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              --v121;
              ++v122;
              ++v123;
              v14 = v120++ > 8;
              if (v14)
              {
LABEL_136:
                LODWORD(v63) = 0;
                goto LABEL_200;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v63) = 0;
            }
          }

          else
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            while (1)
            {
              *(this + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v65;
              v14 = v62++ > 8;
              if (v14)
              {
                goto LABEL_136;
              }
            }
          }

LABEL_200:
          *(a1 + 80) = v63;
          goto LABEL_223;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(a1 + 104) |= 0x10u;
            v77 = *(this + 1);
            v76 = *(this + 2);
            v78 = *this;
            if (v77 > 0xFFFFFFFFFFFFFFF5 || v77 + 10 > v76)
            {
              v131 = 0;
              v132 = 0;
              v81 = 0;
              v17 = v76 >= v77;
              v133 = v76 - v77;
              if (!v17)
              {
                v133 = 0;
              }

              v134 = (v78 + v77);
              v135 = v77 + 1;
              while (1)
              {
                if (!v133)
                {
                  LODWORD(v81) = 0;
                  *(this + 24) = 1;
                  goto LABEL_206;
                }

                v136 = *v134;
                *(this + 1) = v135;
                v81 |= (v136 & 0x7F) << v131;
                if ((v136 & 0x80) == 0)
                {
                  break;
                }

                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
LABEL_152:
                  LODWORD(v81) = 0;
                  goto LABEL_206;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = (v78 + v77);
              v83 = v77 + 1;
              while (1)
              {
                *(this + 1) = v83;
                v84 = *v82++;
                v81 |= (v84 & 0x7F) << v79;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                ++v83;
                v14 = v80++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }
              }
            }

LABEL_206:
            *(a1 + 96) = v81;
            goto LABEL_223;
          case 8:
            *(a1 + 104) |= 2u;
            v102 = *(this + 1);
            v101 = *(this + 2);
            v103 = *this;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v145 = 0;
              v146 = 0;
              v106 = 0;
              v17 = v101 >= v102;
              v147 = v101 - v102;
              if (!v17)
              {
                v147 = 0;
              }

              v148 = (v103 + v102);
              v149 = v102 + 1;
              while (1)
              {
                if (!v147)
                {
                  LODWORD(v106) = 0;
                  *(this + 24) = 1;
                  goto LABEL_212;
                }

                v150 = *v148;
                *(this + 1) = v149;
                v106 |= (v150 & 0x7F) << v145;
                if ((v150 & 0x80) == 0)
                {
                  break;
                }

                v145 += 7;
                --v147;
                ++v148;
                ++v149;
                v14 = v146++ > 8;
                if (v14)
                {
LABEL_170:
                  LODWORD(v106) = 0;
                  goto LABEL_212;
                }
              }

              if (*(this + 24))
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
                *(this + 1) = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_170;
                }
              }
            }

LABEL_212:
            *(a1 + 84) = v106;
            goto LABEL_223;
          case 9:
            *(a1 + 104) |= 0x20u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v137 = 0;
              v138 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v139 = v24 - v25;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v26 + v25);
              v141 = v25 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_209;
                }

                v142 = *v140;
                *(this + 1) = v141;
                v29 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_160:
                  LODWORD(v29) = 0;
                  goto LABEL_209;
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
                  goto LABEL_160;
                }
              }
            }

LABEL_209:
            *(a1 + 100) = v29;
            goto LABEL_223;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_229:
        v172 = 0;
        return v172 & 1;
      }

LABEL_223:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v172 = v4 ^ 1;
  return v172 & 1;
}