uint64_t sub_245DC4F54(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 104))
  {
    v4 = *(result + 56);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeVarInt(this);
  }

  v8 = *(v3 + 104);
  if ((v8 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = PB::Writer::write(this, *(v3 + 92));
  v8 = *(v3 + 104);
  if ((v8 & 0x80) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 96));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    v15 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  v14 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v8 & 4) != 0)
  {
LABEL_12:
    v9 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_13:
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::writeVarInt(this);
  }

  v13 = *(v3 + 104);
  if ((v13 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 84));
    v13 = *(v3 + 104);
  }

  if ((v13 & 8) != 0)
  {
    v16 = *(v3 + 80);

    return PB::Writer::write(this, v16);
  }

  return result;
}

uint64_t sub_245DC50CC(uint64_t result)
{
  *result = &unk_2858CDCA8;
  *(result + 68) = 0;
  return result;
}

void sub_245DC50F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DC512C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDCA8;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x400) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 1024;
    *(result + 68) = 1024;
    *(result + 64) = v4;
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
    v5 = *(a2 + 52);
    v3 |= 0x80u;
    *(result + 68) = v3;
    *(result + 52) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 48);
    v3 |= 0x40u;
    *(result + 68) = v3;
    *(result + 48) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 60);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 60) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 56);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 56) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 40) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 68) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 68);
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_24:
    v14 = *(a2 + 32);
    *(result + 68) = v3 | 8;
    *(result + 32) = v14;
    return result;
  }

LABEL_23:
  v13 = *(a2 + 44);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 44) = v13;
  if ((*(a2 + 68) & 8) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245DC528C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x10) != 0)
  {
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "diffPeakTimestampTrigger");
    v5 = *(a1 + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
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

  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "maxAccelNormInWindow", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 64);
  PB::TextFormatter::format(this, "pass");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "peakPressure", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 68);
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
  v11 = *(a1 + 52);
  PB::TextFormatter::format(this, "pressureODR");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "riseTime", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 68) & 0x200) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "width", *(a1 + 60));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC5430(uint64_t a1, PB::Reader *this)
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
            goto LABEL_180;
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
            *(a1 + 68) |= 0x400u;
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

            *(a1 + 64) = v48;
            goto LABEL_176;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x80u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v73 = 0;
              v74 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v75 = v2 - v39;
              v76 = (v40 + v39);
              v77 = v39 + 1;
              while (1)
              {
                if (!v75)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v78 = v77;
                v79 = *v76;
                *(this + 1) = v78;
                v43 |= (v79 & 0x7F) << v73;
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
                  LODWORD(v43) = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_154:
              v2 = v78;
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
            *(a1 + 52) = v43;
            goto LABEL_176;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 68) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_77:
                *(this + 24) = 1;
                goto LABEL_176;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_145;
            case 4:
              *(a1 + 68) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_77;
              }

              *(a1 + 60) = *(*this + v2);
              goto LABEL_145;
            case 5:
              *(a1 + 68) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_77;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_145;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 68) |= 2u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v65;
              v111 = (v66 + v65);
              v112 = v65 + 1;
              while (1)
              {
                if (!v110)
                {
                  v69 = 0;
                  *(this + 24) = 1;
                  goto LABEL_175;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v69 |= (v114 & 0x7F) << v108;
                if ((v114 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                v112 = v113 + 1;
                v14 = v109++ > 8;
                if (v14)
                {
                  v69 = 0;
                  goto LABEL_174;
                }
              }

              if (*(this + 24))
              {
                v69 = 0;
              }

LABEL_174:
              v2 = v113;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(this + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  v69 = 0;
                  break;
                }
              }
            }

LABEL_175:
            *(a1 + 16) = v69;
            goto LABEL_176;
          case 0xA:
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_77;
            }

            *(a1 + 44) = *(*this + v2);
LABEL_145:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_176;
          case 0xB:
            *(a1 + 68) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v96 = v2 - v31;
              v97 = (v32 + v31);
              v98 = v31 + 1;
              while (1)
              {
                if (!v96)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_167;
                }

                v99 = v98;
                v100 = *v97;
                *(this + 1) = v99;
                v35 |= (v100 & 0x7F) << v94;
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
                  v35 = 0;
                  goto LABEL_166;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_166:
              v2 = v99;
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
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_167:
            *(a1 + 32) = v35;
            goto LABEL_176;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 68) |= 4u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v101 = 0;
              v102 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v103 = v2 - v57;
              v104 = (v58 + v57);
              v105 = v57 + 1;
              while (1)
              {
                if (!v103)
                {
                  v61 = 0;
                  *(this + 24) = 1;
                  goto LABEL_171;
                }

                v106 = v105;
                v107 = *v104;
                *(this + 1) = v106;
                v61 |= (v107 & 0x7F) << v101;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v101 += 7;
                --v103;
                ++v104;
                v105 = v106 + 1;
                v14 = v102++ > 8;
                if (v14)
                {
                  v61 = 0;
                  goto LABEL_170;
                }
              }

              if (*(this + 24))
              {
                v61 = 0;
              }

LABEL_170:
              v2 = v106;
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
                  v61 = 0;
                  break;
                }
              }
            }

LABEL_171:
            *(a1 + 24) = v61;
            goto LABEL_176;
          case 7:
            *(a1 + 68) |= 0x10u;
            v49 = *(this + 1);
            v2 = *(this + 2);
            v50 = *this;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v49;
              v83 = (v50 + v49);
              v84 = v49 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v53) = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v53 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v53) = 0;
                  goto LABEL_158;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_158:
              v2 = v85;
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

LABEL_159:
            *(a1 + 40) = v53;
            goto LABEL_176;
          case 8:
            *(a1 + 68) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v87 = 0;
              v88 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v89 = v2 - v23;
              v90 = (v24 + v23);
              v91 = v23 + 1;
              while (1)
              {
                if (!v89)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_163;
                }

                v92 = v91;
                v93 = *v90;
                *(this + 1) = v92;
                v27 |= (v93 & 0x7F) << v87;
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
                  v27 = 0;
                  goto LABEL_162;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_162:
              v2 = v92;
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
            goto LABEL_176;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_176:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_180:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_245DC5D5C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x400) != 0)
  {
    v5 = *(result + 64);
    result = PB::Writer::write(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
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

  v6 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 68) & 8) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v10 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_23:
  v11 = *(v3 + 32);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DC5EC8(uint64_t result)
{
  *result = &unk_2858CDCE0;
  *(result + 108) = 0;
  return result;
}

void sub_245DC5EF0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DC5F28(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDCE0;
  *(a1 + 108) = 0;
  v2 = *(a2 + 108);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 100);
    v3 = 0x800000;
    *(a1 + 108) = 0x800000;
    *(a1 + 100) = v4;
    v2 = *(a2 + 108);
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 84);
    v3 |= 0x80000u;
    *(a1 + 108) = v3;
    *(a1 + 84) = v5;
    v2 = *(a2 + 108);
  }

LABEL_6:
  if ((v2 & 0x20000) != 0)
  {
    result = *(a2 + 76);
    v3 |= 0x20000u;
    *(a1 + 108) = v3;
    *(a1 + 76) = result;
    v2 = *(a2 + 108);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 72);
  v3 |= 0x10000u;
  *(a1 + 108) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x8000) == 0)
  {
LABEL_9:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 68);
  v3 |= 0x8000u;
  *(a1 + 108) = v3;
  *(a1 + 68) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x200000) == 0)
  {
LABEL_10:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 92);
  v3 |= 0x200000u;
  *(a1 + 108) = v3;
  *(a1 + 92) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x40000) == 0)
  {
LABEL_11:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 80);
  v3 |= 0x40000u;
  *(a1 + 108) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x400000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 96);
  v3 |= 0x400000u;
  *(a1 + 108) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x1000) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 56);
  v3 |= 0x1000u;
  *(a1 + 108) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 88);
  v3 |= 0x100000u;
  *(a1 + 108) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 64);
  v3 |= 0x4000u;
  *(a1 + 108) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 60);
  v3 |= 0x2000u;
  *(a1 + 108) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = *(a2 + 103);
  v3 |= 0x4000000u;
  *(a1 + 108) = v3;
  *(a1 + 103) = v7;
  v2 = *(a2 + 108);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  v8 = *(a2 + 102);
  v3 |= 0x2000000u;
  *(a1 + 108) = v3;
  *(a1 + 102) = v8;
  v2 = *(a2 + 108);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v9 = *(a2 + 101);
  v3 |= 0x1000000u;
  *(a1 + 108) = v3;
  *(a1 + 101) = v9;
  v2 = *(a2 + 108);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_20:
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(a2 + 104);
  v3 |= 0x8000000u;
  *(a1 + 108) = v3;
  *(a1 + 104) = v10;
  v2 = *(a2 + 108);
  if ((v2 & 2) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = *(a2 + 12);
  v3 |= 2u;
  *(a1 + 108) = v3;
  *(a1 + 12) = v11;
  v2 = *(a2 + 108);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 52);
  v3 |= 0x800u;
  *(a1 + 108) = v3;
  *(a1 + 52) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  v12 = *(a2 + 40);
  v3 |= 0x100u;
  *(a1 + 108) = v3;
  *(a1 + 40) = v12;
  v2 = *(a2 + 108);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a2 + 36);
  v3 |= 0x80u;
  *(a1 + 108) = v3;
  *(a1 + 36) = v13;
  v2 = *(a2 + 108);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 32);
  v3 |= 0x40u;
  *(a1 + 108) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x20) == 0)
  {
LABEL_26:
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = *(a2 + 28);
  v3 |= 0x20u;
  *(a1 + 108) = v3;
  *(a1 + 28) = result;
  v2 = *(a2 + 108);
  if ((v2 & 8) == 0)
  {
LABEL_27:
    if ((v2 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = *(a2 + 20);
  v3 |= 8u;
  *(a1 + 108) = v3;
  *(a1 + 20) = result;
  v2 = *(a2 + 108);
  if ((v2 & 4) == 0)
  {
LABEL_28:
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = *(a2 + 16);
  v3 |= 4u;
  *(a1 + 108) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 108);
  if ((v2 & 1) == 0)
  {
LABEL_29:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 108) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x10) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 24);
  v3 |= 0x10u;
  *(a1 + 108) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 108);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

LABEL_58:
    result = *(a2 + 44);
    *(a1 + 108) = v3 | 0x200;
    *(a1 + 44) = result;
    return result;
  }

LABEL_57:
  result = *(a2 + 48);
  v3 |= 0x400u;
  *(a1 + 108) = v3;
  *(a1 + 48) = result;
  if ((*(a2 + 108) & 0x200) != 0)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_245DC6264(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 108);
  if (v5)
  {
    PB::TextFormatter::format(this, "configDelaySpreadFpThreshold", *(a1 + 8));
    v5 = *(a1 + 108);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 12);
  PB::TextFormatter::format(this, "configFeatureSamples");
  v5 = *(a1 + 108);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "configNonPlanarDelaySpreadThreshold", *(a1 + 16));
  v5 = *(a1 + 108);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "configNonPlanarPaprThreshold", *(a1 + 20));
  v5 = *(a1 + 108);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "configPeakEnergyFpThreshold", *(a1 + 24));
  v5 = *(a1 + 108);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "configPlanarDelaySpreadThreshold", *(a1 + 28));
  v5 = *(a1 + 108);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "configPlanarPaprThreshold", *(a1 + 32));
  v5 = *(a1 + 108);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "configPostTriggerLimitTime");
  v5 = *(a1 + 108);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "configPreTriggerLimitTime");
  v5 = *(a1 + 108);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "configRawRmsMaxFpThreshold", *(a1 + 44));
  v5 = *(a1 + 108);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "configRawRmsMeanFpThreshold", *(a1 + 48));
  v5 = *(a1 + 108);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "configRmsClipMinAmp", *(a1 + 52));
  v5 = *(a1 + 108);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "delaySpread", *(a1 + 56));
  v5 = *(a1 + 108);
  if ((v5 & 0x800000) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(a1 + 100);
  PB::TextFormatter::format(this, "isAudioTPQ");
  v5 = *(a1 + 108);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = *(a1 + 101);
  PB::TextFormatter::format(this, "isFpThresholdsMet");
  v5 = *(a1 + 108);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = *(a1 + 102);
  PB::TextFormatter::format(this, "isNonPlanarTp");
  v5 = *(a1 + 108);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v12 = *(a1 + 103);
  PB::TextFormatter::format(this, "isPlanarTp");
  v5 = *(a1 + 108);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a1 + 104);
  PB::TextFormatter::format(this, "isTauBarWithinRange");
  v5 = *(a1 + 108);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "papr", *(a1 + 60));
  v5 = *(a1 + 108);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "peakEnergy", *(a1 + 64));
  v5 = *(a1 + 108);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "rawRmsMax", *(a1 + 68));
  v5 = *(a1 + 108);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "rawRmsMean", *(a1 + 72));
  v5 = *(a1 + 108);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "rawRmsSum", *(a1 + 76));
  v5 = *(a1 + 108);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "rmsClipSum", *(a1 + 80));
  v5 = *(a1 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = *(a1 + 84);
  PB::TextFormatter::format(this, "sampleCount");
  v5 = *(a1 + 108);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "t2TimesRmsClipSum", *(a1 + 88));
  v5 = *(a1 + 108);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  PB::TextFormatter::format(this, "tTimesRmsClipSum", *(a1 + 92));
  if ((*(a1 + 108) & 0x400000) != 0)
  {
LABEL_29:
    PB::TextFormatter::format(this, "tauBar", *(a1 + 96));
  }

LABEL_30:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC6628(uint64_t a1, PB::Reader *this)
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
        goto LABEL_188;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 108) |= 0x800000u;
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

          *(a1 + 100) = v23;
          goto LABEL_164;
        case 2u:
          *(a1 + 108) |= 0x80000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v38;
            v74 = (v39 + v38);
            v75 = v38 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_178;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v42 |= (v77 & 0x7F) << v71;
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
                LODWORD(v42) = 0;
LABEL_177:
                v2 = v76;
                goto LABEL_178;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_177;
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
              goto LABEL_178;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_178:
          *(a1 + 84) = v42;
          goto LABEL_164;
        case 3u:
          *(a1 + 108) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_163;
        case 4u:
          *(a1 + 108) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_163;
        case 5u:
          *(a1 + 108) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_163;
        case 6u:
          *(a1 + 108) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_163;
        case 7u:
          *(a1 + 108) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_163;
        case 8u:
          *(a1 + 108) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_163;
        case 9u:
          *(a1 + 108) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_163;
        case 0xAu:
          *(a1 + 108) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_163;
        case 0xBu:
          *(a1 + 108) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_163;
        case 0xCu:
          *(a1 + 108) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_163;
        case 0xDu:
          *(a1 + 108) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v34 = *(*this + v2++);
            *(this + 1) = v2;
            v35 = v34 != 0;
          }

          *(a1 + 103) = v35;
          goto LABEL_164;
        case 0xEu:
          *(a1 + 108) |= 0x2000000u;
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

          *(a1 + 102) = v47;
          goto LABEL_164;
        case 0xFu:
          *(a1 + 108) |= 0x1000000u;
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

          *(a1 + 101) = v33;
          goto LABEL_164;
        case 0x10u:
          *(a1 + 108) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v37 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = *(*this + v2++);
            *(this + 1) = v2;
            v37 = v36 != 0;
          }

          *(a1 + 104) = v37;
          goto LABEL_164;
        case 0x11u:
          *(a1 + 108) |= 2u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v24;
            v67 = (v25 + v24);
            v68 = v24 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_174;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v28 |= (v70 & 0x7F) << v64;
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
                LODWORD(v28) = 0;
LABEL_173:
                v2 = v69;
                goto LABEL_174;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_173;
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
              goto LABEL_174;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_174:
          *(a1 + 12) = v28;
          goto LABEL_164;
        case 0x12u:
          *(a1 + 108) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_163;
        case 0x13u:
          *(a1 + 108) |= 0x100u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v80 = v2 - v48;
            v81 = (v49 + v48);
            v82 = v48 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_182;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v52 |= (v84 & 0x7F) << v78;
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
                LODWORD(v52) = 0;
LABEL_181:
                v2 = v83;
                goto LABEL_182;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_181;
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
              goto LABEL_182;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_182:
          *(a1 + 40) = v52;
          goto LABEL_164;
        case 0x14u:
          *(a1 + 108) |= 0x80u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v87 = v2 - v56;
            v88 = (v57 + v56);
            v89 = v56 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_186;
              }

              v90 = v89;
              v91 = *v88;
              *(this + 1) = v90;
              v60 |= (v91 & 0x7F) << v85;
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
                LODWORD(v60) = 0;
LABEL_185:
                v2 = v90;
                goto LABEL_186;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_185;
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
              goto LABEL_186;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_186:
          *(a1 + 36) = v60;
          goto LABEL_164;
        case 0x15u:
          *(a1 + 108) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_163;
        case 0x16u:
          *(a1 + 108) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_163;
        case 0x17u:
          *(a1 + 108) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_163;
        case 0x18u:
          *(a1 + 108) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_163;
        case 0x19u:
          *(a1 + 108) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_163;
        case 0x1Au:
          *(a1 + 108) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_163;
        case 0x1Bu:
          *(a1 + 108) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_163;
        case 0x1Cu:
          *(a1 + 108) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_119:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 44) = *(*this + v2);
LABEL_163:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_164;
        default:
          if (!PB::Reader::skip(this))
          {
            v92 = 0;
            return v92 & 1;
          }

          v2 = *(this + 1);
LABEL_164:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_188;
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

LABEL_188:
  v92 = v4 ^ 1;
  return v92 & 1;
}

uint64_t sub_245DC71EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 108);
  if ((v4 & 0x800000) != 0)
  {
    v5 = *(result + 100);
    result = PB::Writer::write(this);
    v4 = *(v3 + 108);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x20000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 108);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 108);
  if ((v4 & 0x8000) == 0)
  {
LABEL_6:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 108);
  if ((v4 & 0x200000) == 0)
  {
LABEL_7:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 108);
  if ((v4 & 0x40000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 108);
  if ((v4 & 0x400000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 108);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 108);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 108);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(v3 + 103);
  result = PB::Writer::write(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(v3 + 102);
  result = PB::Writer::write(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = *(v3 + 101);
  result = PB::Writer::write(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_17:
    if ((v4 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 104);
  result = PB::Writer::write(this);
  v4 = *(v3 + 108);
  if ((v4 & 2) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 12);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 108);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v13 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 108);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 108);
  if ((v4 & 0x20) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 108);
  if ((v4 & 8) == 0)
  {
LABEL_24:
    if ((v4 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 108);
  if ((v4 & 4) == 0)
  {
LABEL_25:
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 108);
  if ((v4 & 1) == 0)
  {
LABEL_26:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 108);
  if ((v4 & 0x10) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 108) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_57;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 108);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_57:
  v14 = *(v3 + 44);

  return PB::Writer::write(this, v14);
}

uint64_t sub_245DC7534(uint64_t result)
{
  *result = &unk_2858CDD18;
  *(result + 152) = 0;
  return result;
}

void sub_245DC755C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DC7594(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDD18;
  *(a1 + 152) = 0;
  v2 = *(a2 + 152);
  if ((v2 & 0x20000000) != 0)
  {
    v4 = *(a2 + 148);
    v3 = 0x20000000;
    *(a1 + 152) = 0x20000000;
    *(a1 + 148) = v4;
    v2 = *(a2 + 152);
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
    result = *(a2 + 116);
    v3 |= 0x200000u;
    *(a1 + 152) = v3;
    *(a1 + 116) = result;
    v2 = *(a2 + 152);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 152) = v3;
    *(a1 + 24) = v6;
    v2 = *(a2 + 152);
    if ((v2 & 0x10000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 144);
  v3 |= 0x10000000u;
  *(a1 + 152) = v3;
  *(a1 + 144) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 136);
  v3 |= 0x4000000u;
  *(a1 + 152) = v3;
  *(a1 + 136) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = *(a2 + 112);
  v3 |= 0x100000u;
  *(a1 + 152) = v3;
  *(a1 + 112) = v7;
  v2 = *(a2 + 152);
  if ((v2 & 0x40000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 104);
  v3 |= 0x40000u;
  *(a1 + 152) = v3;
  *(a1 + 104) = v8;
  v2 = *(a2 + 152);
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 152) = v3;
  *(a1 + 40) = v9;
  v2 = *(a2 + 152);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 140);
  v3 |= 0x8000000u;
  *(a1 + 152) = v3;
  *(a1 + 140) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(a2 + 92);
  v3 |= 0x8000u;
  *(a1 + 152) = v3;
  *(a1 + 92) = v10;
  v2 = *(a2 + 152);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(a2 + 88);
  v3 |= 0x4000u;
  *(a1 + 152) = v3;
  *(a1 + 88) = v11;
  v2 = *(a2 + 152);
  if ((v2 & 0x800000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 124);
  v3 |= 0x800000u;
  *(a1 + 152) = v3;
  *(a1 + 124) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x400000) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 120);
  v3 |= 0x400000u;
  *(a1 + 152) = v3;
  *(a1 + 120) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 128);
  v3 |= 0x1000000u;
  *(a1 + 152) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 84);
  v3 |= 0x2000u;
  *(a1 + 152) = v3;
  *(a1 + 84) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x1000) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 80);
  v3 |= 0x1000u;
  *(a1 + 152) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 76);
  v3 |= 0x800u;
  *(a1 + 152) = v3;
  *(a1 + 76) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x400) == 0)
  {
LABEL_22:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 72);
  v3 |= 0x400u;
  *(a1 + 152) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x200) == 0)
  {
LABEL_23:
    if ((v2 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 68);
  v3 |= 0x200u;
  *(a1 + 152) = v3;
  *(a1 + 68) = result;
  v2 = *(a2 + 152);
  if ((v2 & 1) == 0)
  {
LABEL_24:
    if ((v2 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 152) = v3;
  *(a1 + 8) = v12;
  v2 = *(a2 + 152);
  if ((v2 & 2) == 0)
  {
LABEL_25:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 152) = v3;
  *(a1 + 16) = v13;
  v2 = *(a2 + 152);
  if ((v2 & 0x10000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = *(a2 + 96);
  v3 |= 0x10000u;
  *(a1 + 152) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x20) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 152) = v3;
  *(a1 + 48) = v14;
  v2 = *(a2 + 152);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 132);
  v3 |= 0x2000000u;
  *(a1 + 152) = v3;
  *(a1 + 132) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x20000) == 0)
  {
LABEL_29:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 100);
  v3 |= 0x20000u;
  *(a1 + 152) = v3;
  *(a1 + 100) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x100) == 0)
  {
LABEL_30:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 64);
  v3 |= 0x100u;
  *(a1 + 152) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 152);
  if ((v2 & 0x80000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v15 = *(a2 + 108);
  v3 |= 0x80000u;
  *(a1 + 152) = v3;
  *(a1 + 108) = v15;
  v2 = *(a2 + 152);
  if ((v2 & 0x40) == 0)
  {
LABEL_32:
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 152) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 152);
  if ((v2 & 8) == 0)
  {
LABEL_33:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_62:
    result = *(a2 + 60);
    *(a1 + 152) = v3 | 0x80;
    *(a1 + 60) = result;
    return result;
  }

LABEL_61:
  v16 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 152) = v3;
  *(a1 + 32) = v16;
  if ((*(a2 + 152) & 0x80) != 0)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_245DC7908(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 152);
  if ((v5 & 0x20000000) != 0)
  {
    v6 = *(a1 + 148);
    PB::TextFormatter::format(this, "airbagDetected");
    v5 = *(a1 + 152);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "configMaximumAccelBaroTimeDifferenceThreshold", *(a1 + 56));
  v5 = *(a1 + 152);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "configMinimumAccelNormInWindowThreshold", *(a1 + 60));
  v5 = *(a1 + 152);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "configMinimumAccelNormOverEpochThreshold", *(a1 + 64));
  v5 = *(a1 + 152);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "configMinimumAccelNormThreshold", *(a1 + 68));
  v5 = *(a1 + 152);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "configMinimumWidthThreshold", *(a1 + 72));
  v5 = *(a1 + 152);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "configPeakPressureThreshold", *(a1 + 76));
  v5 = *(a1 + 152);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "configRiseTimeThreshold", *(a1 + 80));
  v5 = *(a1 + 152);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "configWidthThreshold", *(a1 + 84));
  v5 = *(a1 + 152);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(a1 + 88);
  PB::TextFormatter::format(this, "diffPeakTimeTrigger");
  v5 = *(a1 + 152);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(a1 + 92);
  PB::TextFormatter::format(this, "diffTimeTrigger");
  v5 = *(a1 + 152);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 152);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 152);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = *(a1 + 24);
  PB::TextFormatter::format(this, "eventStartTime");
  v5 = *(a1 + 152);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "maxAccelNormInWindow", *(a1 + 96));
  v5 = *(a1 + 152);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "maxAccelNormOverEpoch", *(a1 + 100));
  v5 = *(a1 + 152);
  if ((v5 & 8) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "maxAccelNormOverEpochTimestamp");
  v5 = *(a1 + 152);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a1 + 104);
  PB::TextFormatter::format(this, "numAirbags");
  v5 = *(a1 + 152);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a1 + 108);
  PB::TextFormatter::format(this, "numBarosInEpoch");
  v5 = *(a1 + 152);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a1 + 112);
  PB::TextFormatter::format(this, "odr");
  v5 = *(a1 + 152);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "peakPressure", *(a1 + 116));
  v5 = *(a1 + 152);
  if ((v5 & 0x10) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v16 = *(a1 + 40);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 152);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "postEventPressureMedian", *(a1 + 120));
  v5 = *(a1 + 152);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "preEventPressureMedian", *(a1 + 124));
  v5 = *(a1 + 152);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "prePostEventPressureMedian", *(a1 + 128));
  v5 = *(a1 + 152);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "pressureMedian", *(a1 + 132));
  v5 = *(a1 + 152);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "riseTime", *(a1 + 136));
  v5 = *(a1 + 152);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "riseTimeTo80", *(a1 + 140));
  v5 = *(a1 + 152);
  if ((v5 & 0x20) == 0)
  {
LABEL_30:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  v17 = *(a1 + 48);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 152) & 0x10000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(this, "width", *(a1 + 144));
  }

LABEL_32:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC7D0C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_298;
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
          *(a1 + 152) |= 0x20000000u;
          v22 = *(this + 1);
          if (v22 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v23 = v22 + 1;
            v24 = *(*this + v22);
            *(this + 1) = v23;
            v25 = v24 != 0;
          }

          *(a1 + 148) = v25;
          goto LABEL_250;
        case 2u:
          *(a1 + 152) |= 0x200000u;
          v63 = *(this + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 116) = *(*this + v63);
          goto LABEL_249;
        case 3u:
          *(a1 + 152) |= 4u;
          v44 = *(this + 1);
          v43 = *(this + 2);
          v45 = *this;
          if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            do
            {
              *(this + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_269;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_173:
            v48 = 0;
            goto LABEL_269;
          }

          v149 = 0;
          v150 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v151 = v43 - v44;
          if (!v17)
          {
            v151 = 0;
          }

          v152 = (v45 + v44);
          v153 = v44 + 1;
          while (2)
          {
            if (v151)
            {
              v154 = *v152;
              *(this + 1) = v153;
              v48 |= (v154 & 0x7F) << v149;
              if (v154 < 0)
              {
                v149 += 7;
                --v151;
                ++v152;
                ++v153;
                v14 = v150++ > 8;
                if (v14)
                {
                  goto LABEL_173;
                }

                continue;
              }

              if (*(this + 24))
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_269:
          *(a1 + 24) = v48;
          goto LABEL_250;
        case 4u:
          *(a1 + 152) |= 0x10000000u;
          v53 = *(this + 1);
          if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 144) = *(*this + v53);
          goto LABEL_249;
        case 5u:
          *(a1 + 152) |= 0x4000000u;
          v30 = *(this + 1);
          if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 136) = *(*this + v30);
          goto LABEL_249;
        case 6u:
          *(a1 + 152) |= 0x100000u;
          v75 = *(this + 1);
          v74 = *(this + 2);
          v76 = *this;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(this + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_199:
            LODWORD(v79) = 0;
            goto LABEL_278;
          }

          v167 = 0;
          v168 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v169 = v74 - v75;
          if (!v17)
          {
            v169 = 0;
          }

          v170 = (v76 + v75);
          v171 = v75 + 1;
          while (2)
          {
            if (v169)
            {
              v172 = *v170;
              *(this + 1) = v171;
              v79 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                --v169;
                ++v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_199;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_278:
          *(a1 + 112) = v79;
          goto LABEL_250;
        case 7u:
          *(a1 + 152) |= 0x40000u;
          v86 = *(this + 1);
          v85 = *(this + 2);
          v87 = *this;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(this + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_207:
            LODWORD(v90) = 0;
            goto LABEL_281;
          }

          v173 = 0;
          v174 = 0;
          v90 = 0;
          v17 = v85 >= v86;
          v175 = v85 - v86;
          if (!v17)
          {
            v175 = 0;
          }

          v176 = (v87 + v86);
          v177 = v86 + 1;
          while (2)
          {
            if (v175)
            {
              v178 = *v176;
              *(this + 1) = v177;
              v90 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_207;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(a1 + 104) = v90;
          goto LABEL_250;
        case 8u:
          *(a1 + 152) |= 0x10u;
          v55 = *(this + 1);
          v54 = *(this + 2);
          v56 = *this;
          if (v55 <= 0xFFFFFFFFFFFFFFF5 && v55 + 10 <= v54)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v56 + v55);
            v61 = v55 + 1;
            do
            {
              *(this + 1) = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                goto LABEL_272;
              }

              v57 += 7;
              ++v61;
              v14 = v58++ > 8;
            }

            while (!v14);
LABEL_181:
            v59 = 0;
            goto LABEL_272;
          }

          v155 = 0;
          v156 = 0;
          v59 = 0;
          v17 = v54 >= v55;
          v157 = v54 - v55;
          if (!v17)
          {
            v157 = 0;
          }

          v158 = (v56 + v55);
          v159 = v55 + 1;
          while (2)
          {
            if (v157)
            {
              v160 = *v158;
              *(this + 1) = v159;
              v59 |= (v160 & 0x7F) << v155;
              if (v160 < 0)
              {
                v155 += 7;
                --v157;
                ++v158;
                ++v159;
                v14 = v156++ > 8;
                if (v14)
                {
                  goto LABEL_181;
                }

                continue;
              }

              if (*(this + 24))
              {
                v59 = 0;
              }
            }

            else
            {
              v59 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_272:
          *(a1 + 40) = v59;
          goto LABEL_250;
        case 9u:
          *(a1 + 152) |= 0x8000000u;
          v104 = *(this + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 140) = *(*this + v104);
          goto LABEL_249;
        case 0xAu:
          *(a1 + 152) |= 0x8000u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_266;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_165:
            LODWORD(v37) = 0;
            goto LABEL_266;
          }

          v143 = 0;
          v144 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v145 = v32 - v33;
          if (!v17)
          {
            v145 = 0;
          }

          v146 = (v34 + v33);
          v147 = v33 + 1;
          while (2)
          {
            if (v145)
            {
              v148 = *v146;
              *(this + 1) = v147;
              v37 |= (v148 & 0x7F) << v143;
              if (v148 < 0)
              {
                v143 += 7;
                --v145;
                ++v146;
                ++v147;
                v14 = v144++ > 8;
                if (v14)
                {
                  goto LABEL_165;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_266:
          *(a1 + 92) = v37;
          goto LABEL_250;
        case 0xBu:
          *(a1 + 152) |= 0x4000u;
          v96 = *(this + 1);
          v95 = *(this + 2);
          v97 = *this;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(this + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_284;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_215:
            LODWORD(v100) = 0;
            goto LABEL_284;
          }

          v179 = 0;
          v180 = 0;
          v100 = 0;
          v17 = v95 >= v96;
          v181 = v95 - v96;
          if (!v17)
          {
            v181 = 0;
          }

          v182 = (v97 + v96);
          v183 = v96 + 1;
          while (2)
          {
            if (v181)
            {
              v184 = *v182;
              *(this + 1) = v183;
              v100 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                --v181;
                ++v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_215;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_284:
          *(a1 + 88) = v100;
          goto LABEL_250;
        case 0xCu:
          *(a1 + 152) |= 0x800000u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 124) = *(*this + v29);
          goto LABEL_249;
        case 0xDu:
          *(a1 + 152) |= 0x400000u;
          v31 = *(this + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 120) = *(*this + v31);
          goto LABEL_249;
        case 0xEu:
          *(a1 + 152) |= 0x1000000u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 128) = *(*this + v84);
          goto LABEL_249;
        case 0xFu:
          *(a1 + 152) |= 0x2000u;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 84) = *(*this + v28);
          goto LABEL_249;
        case 0x10u:
          *(a1 + 152) |= 0x1000u;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 80) = *(*this + v52);
          goto LABEL_249;
        case 0x11u:
          *(a1 + 152) |= 0x800u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 76) = *(*this + v27);
          goto LABEL_249;
        case 0x12u:
          *(a1 + 152) |= 0x400u;
          v64 = *(this + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 72) = *(*this + v64);
          goto LABEL_249;
        case 0x13u:
          *(a1 + 152) |= 0x200u;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 68) = *(*this + v94);
          goto LABEL_249;
        case 0x14u:
          *(a1 + 152) |= 1u;
          v115 = *(this + 1);
          v114 = *(this + 2);
          v116 = *this;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(this + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_290;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_231:
            v119 = 0;
            goto LABEL_290;
          }

          v191 = 0;
          v192 = 0;
          v119 = 0;
          v17 = v114 >= v115;
          v193 = v114 - v115;
          if (!v17)
          {
            v193 = 0;
          }

          v194 = (v116 + v115);
          v195 = v115 + 1;
          while (2)
          {
            if (v193)
            {
              v196 = *v194;
              *(this + 1) = v195;
              v119 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                --v193;
                ++v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_231;
                }

                continue;
              }

              if (*(this + 24))
              {
                v119 = 0;
              }
            }

            else
            {
              v119 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_290:
          *(a1 + 8) = v119;
          goto LABEL_250;
        case 0x15u:
          *(a1 + 152) |= 2u;
          v66 = *(this + 1);
          v65 = *(this + 2);
          v67 = *this;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(this + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_191:
            v70 = 0;
            goto LABEL_275;
          }

          v161 = 0;
          v162 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v163 = v65 - v66;
          if (!v17)
          {
            v163 = 0;
          }

          v164 = (v67 + v66);
          v165 = v66 + 1;
          while (2)
          {
            if (v163)
            {
              v166 = *v164;
              *(this + 1) = v165;
              v70 |= (v166 & 0x7F) << v161;
              if (v166 < 0)
              {
                v161 += 7;
                --v163;
                ++v164;
                ++v165;
                v14 = v162++ > 8;
                if (v14)
                {
                  goto LABEL_191;
                }

                continue;
              }

              if (*(this + 24))
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 16) = v70;
          goto LABEL_250;
        case 0x16u:
          *(a1 + 152) |= 0x10000u;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 96) = *(*this + v83);
          goto LABEL_249;
        case 0x17u:
          *(a1 + 152) |= 0x20u;
          v106 = *(this + 1);
          v105 = *(this + 2);
          v107 = *this;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(this + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_287;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_223:
            v110 = 0;
            goto LABEL_287;
          }

          v185 = 0;
          v186 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v187 = v105 - v106;
          if (!v17)
          {
            v187 = 0;
          }

          v188 = (v107 + v106);
          v189 = v106 + 1;
          while (2)
          {
            if (v187)
            {
              v190 = *v188;
              *(this + 1) = v189;
              v110 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                --v187;
                ++v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_223;
                }

                continue;
              }

              if (*(this + 24))
              {
                v110 = 0;
              }
            }

            else
            {
              v110 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_287:
          *(a1 + 48) = v110;
          goto LABEL_250;
        case 0x18u:
          *(a1 + 152) |= 0x2000000u;
          v123 = *(this + 1);
          if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 132) = *(*this + v123);
          goto LABEL_249;
        case 0x19u:
          *(a1 + 152) |= 0x20000u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 100) = *(*this + v42);
          goto LABEL_249;
        case 0x1Au:
          *(a1 + 152) |= 0x100u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 64) = *(*this + v41);
          goto LABEL_249;
        case 0x1Bu:
          *(a1 + 152) |= 0x80000u;
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
                goto LABEL_296;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_247:
            LODWORD(v139) = 0;
            goto LABEL_296;
          }

          v203 = 0;
          v204 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v205 = v134 - v135;
          if (!v17)
          {
            v205 = 0;
          }

          v206 = (v136 + v135);
          v207 = v135 + 1;
          while (2)
          {
            if (v205)
            {
              v208 = *v206;
              *(this + 1) = v207;
              v139 |= (v208 & 0x7F) << v203;
              if (v208 < 0)
              {
                v203 += 7;
                --v205;
                ++v206;
                ++v207;
                v14 = v204++ > 8;
                if (v14)
                {
                  goto LABEL_247;
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

LABEL_296:
          *(a1 + 108) = v139;
          goto LABEL_250;
        case 0x1Cu:
          *(a1 + 152) |= 0x40u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
          {
            goto LABEL_150;
          }

          *(a1 + 56) = *(*this + v26);
          goto LABEL_249;
        case 0x1Du:
          *(a1 + 152) |= 8u;
          v125 = *(this + 1);
          v124 = *(this + 2);
          v126 = *this;
          if (v125 <= 0xFFFFFFFFFFFFFFF5 && v125 + 10 <= v124)
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
            v130 = (v126 + v125);
            v131 = v125 + 1;
            do
            {
              *(this + 1) = v131;
              v132 = *v130++;
              v129 |= (v132 & 0x7F) << v127;
              if ((v132 & 0x80) == 0)
              {
                goto LABEL_293;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_239:
            v129 = 0;
            goto LABEL_293;
          }

          v197 = 0;
          v198 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v199 = v124 - v125;
          if (!v17)
          {
            v199 = 0;
          }

          v200 = (v126 + v125);
          v201 = v125 + 1;
          break;
        case 0x1Eu:
          *(a1 + 152) |= 0x80u;
          v133 = *(this + 1);
          if (v133 <= 0xFFFFFFFFFFFFFFFBLL && v133 + 4 <= *(this + 2))
          {
            *(a1 + 60) = *(*this + v133);
LABEL_249:
            *(this + 1) += 4;
          }

          else
          {
LABEL_150:
            *(this + 24) = 1;
          }

          goto LABEL_250;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_250;
          }

          v210 = 0;
          return v210 & 1;
      }

      while (1)
      {
        if (!v199)
        {
          v129 = 0;
          *(this + 24) = 1;
          goto LABEL_293;
        }

        v202 = *v200;
        *(this + 1) = v201;
        v129 |= (v202 & 0x7F) << v197;
        if ((v202 & 0x80) == 0)
        {
          break;
        }

        v197 += 7;
        --v199;
        ++v200;
        ++v201;
        v14 = v198++ > 8;
        if (v14)
        {
          goto LABEL_239;
        }
      }

      if (*(this + 24))
      {
        v129 = 0;
      }

LABEL_293:
      *(a1 + 32) = v129;
LABEL_250:
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

LABEL_298:
  v210 = v4 ^ 1;
  return v210 & 1;
}

uint64_t sub_245DC8DD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 152);
  if ((v4 & 0x20000000) != 0)
  {
    v5 = *(result + 148);
    result = PB::Writer::write(this);
    v4 = *(v3 + 152);
    if ((v4 & 0x200000) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 152);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 152);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 152);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x40000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x800000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 152);
  if ((v4 & 0x400000) == 0)
  {
LABEL_14:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 152);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 152);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 152);
  if ((v4 & 0x1000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 152);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 152);
  if ((v4 & 0x400) == 0)
  {
LABEL_19:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 152);
  if ((v4 & 0x200) == 0)
  {
LABEL_20:
    if ((v4 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 152);
  if ((v4 & 1) == 0)
  {
LABEL_21:
    if ((v4 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 2) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x10000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v14 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 152);
  if ((v4 & 0x20000) == 0)
  {
LABEL_26:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 152);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v15 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x40) == 0)
  {
LABEL_29:
    if ((v4 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v16 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 152) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_61;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 152);
  if ((v4 & 8) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_61:
  v17 = *(v3 + 60);

  return PB::Writer::write(this, v17);
}

uint64_t sub_245DC9158(uint64_t result)
{
  *result = &unk_2858CDD50;
  *(result + 300) = 0;
  *(result + 292) = 0;
  return result;
}

void sub_245DC9188(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DC91C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDD50;
  v2 = (a1 + 292);
  *(a1 + 300) = 0;
  *(a1 + 292) = 0;
  v3 = (a2 + 292);
  v4 = *(a2 + 292);
  if (v4)
  {
    v6 = *(a2 + 8);
    v5 = 1;
    *v2 = 1;
    *(a1 + 8) = v6;
    if ((*v3 & 0x10000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x10000000000000) != 0)
  {
LABEL_5:
    result = *(a2 + 220);
    v5 |= 0x10000000000000uLL;
    *v2 = v5;
    *(a1 + 220) = result;
  }

LABEL_6:
  v8 = *(a2 + 300);
  if ((v8 & 0x800) != 0)
  {
    v10 = *(a2 + 288);
    v9 = 2048;
    *(a1 + 300) = 2048;
    *(a1 + 288) = v10;
    v8 = *(a2 + 300);
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 0;
  if ((*(a2 + 300) & 0x400) != 0)
  {
LABEL_10:
    v11 = *(a2 + 287);
    v9 |= 0x400u;
    *(a1 + 300) = v9;
    *(a1 + 287) = v11;
    v8 = *(a2 + 300);
  }

LABEL_11:
  if ((v8 & 0x100) != 0)
  {
    v28 = *(a2 + 285);
    v9 |= 0x100u;
    *(a1 + 300) = v9;
    *(a1 + 285) = v28;
    v8 = *(a2 + 300);
    if ((v8 & 0x20) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(a2 + 282);
  v9 |= 0x20u;
  *(a1 + 300) = v9;
  *(a1 + 282) = v29;
  if ((*(a2 + 300) & 0x10) != 0)
  {
LABEL_14:
    v12 = *(a2 + 281);
    v9 |= 0x10u;
    *(a1 + 300) = v9;
    *(a1 + 281) = v12;
  }

LABEL_15:
  if ((*(a2 + 294) & 0x20) != 0)
  {
    v13 = *(a2 + 96);
    v5 |= 0x200000uLL;
    *v2 = v5;
    *(a1 + 96) = v13;
  }

  v14 = *(a2 + 300);
  if ((v14 & 8) != 0)
  {
    v15 = *(a2 + 280);
    v9 |= 8u;
    *(a1 + 300) = v9;
    *(a1 + 280) = v15;
    v14 = *(a2 + 300);
  }

  if ((v14 & 0x80) != 0)
  {
    v16 = *(a2 + 284);
    v9 |= 0x80u;
    *(a1 + 300) = v9;
    *(a1 + 284) = v16;
  }

  v17 = *v3;
  if ((*v3 & 0x20000) != 0)
  {
    result = *(a2 + 80);
    v5 |= 0x20000uLL;
    *v2 = v5;
    *(a1 + 80) = result;
    v17 = *v3;
    if ((*v3 & 0x10000) == 0)
    {
LABEL_23:
      if ((v17 & 0x2000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_105;
    }
  }

  else if ((v17 & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  result = *(a2 + 76);
  v5 |= 0x10000uLL;
  *v2 = v5;
  *(a1 + 76) = result;
  v17 = *v3;
  if ((*v3 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = *(a2 + 112);
  v5 |= 0x2000000uLL;
  *v2 = v5;
  *(a1 + 112) = result;
  v17 = *v3;
  if ((*v3 & 0x40000000) == 0)
  {
LABEL_25:
    if ((v17 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = *(a2 + 132);
  v5 |= 0x40000000uLL;
  *v2 = v5;
  *(a1 + 132) = result;
  v17 = *v3;
  if ((*v3 & 0x800000000) == 0)
  {
LABEL_26:
    if ((v17 & 0x20000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = *(a2 + 152);
  v5 |= 0x800000000uLL;
  *v2 = v5;
  *(a1 + 152) = result;
  v17 = *v3;
  if ((*v3 & 0x20000000000000) == 0)
  {
LABEL_27:
    if ((v17 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = *(a2 + 224);
  v5 |= 0x20000000000000uLL;
  *v2 = v5;
  *(a1 + 224) = result;
  v17 = *v3;
  if ((*v3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = *(a2 + 116);
  v5 |= 0x4000000uLL;
  *v2 = v5;
  *(a1 + 116) = result;
  v17 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v17 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = *(a2 + 136);
  v5 |= 0x80000000uLL;
  *v2 = v5;
  *(a1 + 136) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((v17 & 0x40000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = *(a2 + 156);
  v5 |= 0x1000000000uLL;
  *v2 = v5;
  *(a1 + 156) = result;
  v17 = *v3;
  if ((*v3 & 0x40000000000000) == 0)
  {
LABEL_31:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = *(a2 + 228);
  v5 |= 0x40000000000000uLL;
  *v2 = v5;
  *(a1 + 228) = result;
  v17 = *v3;
  if ((*v3 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = *(a2 + 120);
  v5 |= 0x8000000uLL;
  *v2 = v5;
  *(a1 + 120) = result;
  v17 = *v3;
  if ((*v3 & 0x100000000) == 0)
  {
LABEL_33:
    if ((v17 & 0x2000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = *(a2 + 140);
  v5 |= 0x100000000uLL;
  *v2 = v5;
  *(a1 + 140) = result;
  v17 = *v3;
  if ((*v3 & 0x2000000000) == 0)
  {
LABEL_34:
    if ((v17 & 0x80000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = *(a2 + 160);
  v5 |= 0x2000000000uLL;
  *v2 = v5;
  *(a1 + 160) = result;
  v17 = *v3;
  if ((*v3 & 0x80000000000000) == 0)
  {
LABEL_35:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = *(a2 + 232);
  v5 |= 0x80000000000000uLL;
  *v2 = v5;
  *(a1 + 232) = result;
  v17 = *v3;
  if ((*v3 & 0x400000) == 0)
  {
LABEL_36:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = *(a2 + 100);
  v5 |= 0x400000uLL;
  *v2 = v5;
  *(a1 + 100) = result;
  v17 = *v3;
  if ((*v3 & 0x800000) == 0)
  {
LABEL_37:
    if ((v17 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = *(a2 + 104);
  v5 |= 0x800000uLL;
  *v2 = v5;
  *(a1 + 104) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v17 & 0x800000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = *(a2 + 108);
  v5 |= 0x1000000uLL;
  *v2 = v5;
  *(a1 + 108) = result;
  v17 = *v3;
  if ((*v3 & 0x800000000000000) == 0)
  {
LABEL_39:
    if ((v17 & 0x400000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = *(a2 + 248);
  v5 |= 0x800000000000000uLL;
  *v2 = v5;
  *(a1 + 248) = result;
  v17 = *v3;
  if ((*v3 & 0x400000000000000) == 0)
  {
LABEL_40:
    if ((v17 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = *(a2 + 244);
  v5 |= 0x400000000000000uLL;
  *v2 = v5;
  *(a1 + 244) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000000000000) == 0)
  {
LABEL_41:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = *(a2 + 252);
  v5 |= 0x1000000000000000uLL;
  *v2 = v5;
  *(a1 + 252) = result;
  v17 = *v3;
  if ((*v3 & 0x40) == 0)
  {
LABEL_42:
    if ((v17 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = *(a2 + 36);
  v5 |= 0x40uLL;
  *v2 = v5;
  *(a1 + 36) = result;
  v17 = *v3;
  if ((*v3 & 2) == 0)
  {
LABEL_43:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_124:
  result = *(a2 + 16);
  v5 |= 2uLL;
  *v2 = v5;
  *(a1 + 16) = result;
  if ((*v3 & 0x8000) != 0)
  {
LABEL_44:
    result = *(a2 + 72);
    v5 |= 0x8000uLL;
    *v2 = v5;
    *(a1 + 72) = result;
  }

LABEL_45:
  v18 = *(a2 + 300);
  if ((v18 & 0x4000) != 0)
  {
    v19 = *(a2 + 291);
    v9 |= 0x4000u;
    *(a1 + 300) = v9;
    *(a1 + 291) = v19;
    v18 = *(a2 + 300);
  }

  if ((v18 & 0x40) != 0)
  {
    v20 = *(a2 + 283);
    v9 |= 0x40u;
    *(a1 + 300) = v9;
    *(a1 + 283) = v20;
  }

  v21 = *v3;
  if ((*v3 & 0x80) != 0)
  {
    result = *(a2 + 40);
    v5 |= 0x80uLL;
    *v2 = v5;
    *(a1 + 40) = result;
    v21 = *v3;
    if ((*v3 & 0x400) == 0)
    {
LABEL_51:
      if ((v21 & 0x200) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_128;
    }
  }

  else if ((v21 & 0x400) == 0)
  {
    goto LABEL_51;
  }

  result = *(a2 + 52);
  v5 |= 0x400uLL;
  *v2 = v5;
  *(a1 + 52) = result;
  v21 = *v3;
  if ((*v3 & 0x200) == 0)
  {
LABEL_52:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = *(a2 + 48);
  v5 |= 0x200uLL;
  *v2 = v5;
  *(a1 + 48) = result;
  v21 = *v3;
  if ((*v3 & 0x100) == 0)
  {
LABEL_53:
    if ((v21 & 4) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = *(a2 + 44);
  v5 |= 0x100uLL;
  *v2 = v5;
  *(a1 + 44) = result;
  v21 = *v3;
  if ((*v3 & 4) == 0)
  {
LABEL_54:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = *(a2 + 20);
  v5 |= 4uLL;
  *v2 = v5;
  *(a1 + 20) = result;
  v21 = *v3;
  if ((*v3 & 0x20) == 0)
  {
LABEL_55:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = *(a2 + 32);
  v5 |= 0x20uLL;
  *v2 = v5;
  *(a1 + 32) = result;
  v21 = *v3;
  if ((*v3 & 0x10) == 0)
  {
LABEL_56:
    if ((v21 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = *(a2 + 28);
  v5 |= 0x10uLL;
  *v2 = v5;
  *(a1 + 28) = result;
  v21 = *v3;
  if ((*v3 & 8) == 0)
  {
LABEL_57:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = *(a2 + 24);
  v5 |= 8uLL;
  *v2 = v5;
  *(a1 + 24) = result;
  v21 = *v3;
  if ((*v3 & 0x800) == 0)
  {
LABEL_58:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = *(a2 + 56);
  v5 |= 0x800uLL;
  *v2 = v5;
  *(a1 + 56) = result;
  v21 = *v3;
  if ((*v3 & 0x4000) == 0)
  {
LABEL_59:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = *(a2 + 68);
  v5 |= 0x4000uLL;
  *v2 = v5;
  *(a1 + 68) = result;
  v21 = *v3;
  if ((*v3 & 0x2000) == 0)
  {
LABEL_60:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = *(a2 + 64);
  v5 |= 0x2000uLL;
  *v2 = v5;
  *(a1 + 64) = result;
  v21 = *v3;
  if ((*v3 & 0x1000) == 0)
  {
LABEL_61:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = *(a2 + 60);
  v5 |= 0x1000uLL;
  *v2 = v5;
  *(a1 + 60) = result;
  v21 = *v3;
  if ((*v3 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v21 & 0x200000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = *(a2 + 124);
  v5 |= 0x10000000uLL;
  *v2 = v5;
  *(a1 + 124) = result;
  v21 = *v3;
  if ((*v3 & 0x200000000) == 0)
  {
LABEL_63:
    if ((v21 & 0x4000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = *(a2 + 144);
  v5 |= 0x200000000uLL;
  *v2 = v5;
  *(a1 + 144) = result;
  v21 = *v3;
  if ((*v3 & 0x4000000000) == 0)
  {
LABEL_64:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_141;
  }

LABEL_140:
  result = *(a2 + 164);
  v5 |= 0x4000000000uLL;
  *v2 = v5;
  *(a1 + 164) = result;
  v21 = *v3;
  if ((*v3 & 0x100000000000000) == 0)
  {
LABEL_65:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_142;
  }

LABEL_141:
  result = *(a2 + 236);
  v5 |= 0x100000000000000uLL;
  *v2 = v5;
  *(a1 + 236) = result;
  v21 = *v3;
  if ((*v3 & 0x20000000) == 0)
  {
LABEL_66:
    if ((v21 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = *(a2 + 128);
  v5 |= 0x20000000uLL;
  *v2 = v5;
  *(a1 + 128) = result;
  v21 = *v3;
  if ((*v3 & 0x400000000) == 0)
  {
LABEL_67:
    if ((v21 & 0x8000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_144;
  }

LABEL_143:
  result = *(a2 + 148);
  v5 |= 0x400000000uLL;
  *v2 = v5;
  *(a1 + 148) = result;
  v21 = *v3;
  if ((*v3 & 0x8000000000) == 0)
  {
LABEL_68:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_144:
  result = *(a2 + 168);
  v5 |= 0x8000000000uLL;
  *v2 = v5;
  *(a1 + 168) = result;
  if ((*v3 & 0x200000000000000) != 0)
  {
LABEL_69:
    result = *(a2 + 240);
    v5 |= 0x200000000000000uLL;
    *v2 = v5;
    *(a1 + 240) = result;
  }

LABEL_70:
  if ((*(a2 + 300) & 0x200) != 0)
  {
    v22 = *(a2 + 286);
    v9 |= 0x200u;
    *(a1 + 300) = v9;
    *(a1 + 286) = v22;
  }

  if ((*v3 & 0x8000000000000000) == 0)
  {
    if ((*v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  result = *(a2 + 264);
  v5 |= 0x8000000000000000;
  *v2 = v5;
  *(a1 + 264) = result;
  if ((*v3 & 0x2000000000000000) != 0)
  {
LABEL_74:
    result = *(a2 + 256);
    v5 |= 0x2000000000000000uLL;
    *v2 = v5;
    *(a1 + 256) = result;
  }

LABEL_75:
  if ((*(a2 + 300) & 0x1000) != 0)
  {
    v23 = *(a2 + 289);
    v9 |= 0x1000u;
    *(a1 + 300) = v9;
    *(a1 + 289) = v23;
  }

  v24 = *v3;
  if ((*v3 & 0x10000000000) != 0)
  {
    result = *(a2 + 172);
    v5 |= 0x10000000000uLL;
    *v2 = v5;
    *(a1 + 172) = result;
    v24 = *v3;
    if ((*v3 & 0x20000000000) == 0)
    {
LABEL_79:
      if ((v24 & 0x40000000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_148;
    }
  }

  else if ((v24 & 0x20000000000) == 0)
  {
    goto LABEL_79;
  }

  result = *(a2 + 176);
  v5 |= 0x20000000000uLL;
  *v2 = v5;
  *(a1 + 176) = result;
  v24 = *v3;
  if ((*v3 & 0x40000000000) == 0)
  {
LABEL_80:
    if ((v24 & 0x100000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = *(a2 + 180);
  v5 |= 0x40000000000uLL;
  *v2 = v5;
  *(a1 + 180) = result;
  v24 = *v3;
  if ((*v3 & 0x100000000000) == 0)
  {
LABEL_81:
    if ((v24 & 0x80000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_150;
  }

LABEL_149:
  result = *(a2 + 188);
  v5 |= 0x100000000000uLL;
  *v2 = v5;
  *(a1 + 188) = result;
  v24 = *v3;
  if ((*v3 & 0x80000000000) == 0)
  {
LABEL_82:
    if ((v24 & 0x200000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = *(a2 + 184);
  v5 |= 0x80000000000uLL;
  *v2 = v5;
  *(a1 + 184) = result;
  v24 = *v3;
  if ((*v3 & 0x200000000000) == 0)
  {
LABEL_83:
    if ((v24 & 0x400000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = *(a2 + 192);
  v5 |= 0x200000000000uLL;
  *v2 = v5;
  *(a1 + 192) = result;
  v24 = *v3;
  if ((*v3 & 0x400000000000) == 0)
  {
LABEL_84:
    if ((v24 & 0x800000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = *(a2 + 196);
  v5 |= 0x400000000000uLL;
  *v2 = v5;
  *(a1 + 196) = result;
  v24 = *v3;
  if ((*v3 & 0x800000000000) == 0)
  {
LABEL_85:
    if ((v24 & 0x1000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = *(a2 + 200);
  v5 |= 0x800000000000uLL;
  *v2 = v5;
  *(a1 + 200) = result;
  v24 = *v3;
  if ((*v3 & 0x1000000000000) == 0)
  {
LABEL_86:
    if ((v24 & 0x4000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = *(a2 + 204);
  v5 |= 0x1000000000000uLL;
  *v2 = v5;
  *(a1 + 204) = result;
  v24 = *v3;
  if ((*v3 & 0x4000000000000) == 0)
  {
LABEL_87:
    if ((v24 & 0x2000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = *(a2 + 212);
  v5 |= 0x4000000000000uLL;
  *v2 = v5;
  *(a1 + 212) = result;
  v24 = *v3;
  if ((*v3 & 0x2000000000000) == 0)
  {
LABEL_88:
    if ((v24 & 0x8000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = *(a2 + 208);
  v5 |= 0x2000000000000uLL;
  *v2 = v5;
  *(a1 + 208) = result;
  v24 = *v3;
  if ((*v3 & 0x8000000000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x4000000000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_157:
  result = *(a2 + 216);
  v5 |= 0x8000000000000uLL;
  *v2 = v5;
  *(a1 + 216) = result;
  if ((*v3 & 0x4000000000000000) != 0)
  {
LABEL_90:
    v25 = *(a2 + 260);
    v5 |= 0x4000000000000000uLL;
    *v2 = v5;
    *(a1 + 260) = v25;
  }

LABEL_91:
  v26 = *(a2 + 300);
  if ((v26 & 0x2000) != 0)
  {
    v30 = *(a2 + 290);
    v9 |= 0x2000u;
    *(a1 + 300) = v9;
    *(a1 + 290) = v30;
    v26 = *(a2 + 300);
    if ((v26 & 2) == 0)
    {
LABEL_93:
      if ((v26 & 4) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_161;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_93;
  }

  result = *(a2 + 272);
  v9 |= 2u;
  *(a1 + 300) = v9;
  *(a1 + 272) = result;
  v26 = *(a2 + 300);
  if ((v26 & 4) == 0)
  {
LABEL_94:
    if ((v26 & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_161:
  result = *(a2 + 276);
  v9 |= 4u;
  *(a1 + 300) = v9;
  *(a1 + 276) = result;
  if (*(a2 + 300))
  {
LABEL_95:
    result = *(a2 + 268);
    *(a1 + 300) = v9 | 1;
    *(a1 + 268) = result;
  }

LABEL_96:
  v27 = *v3;
  if ((*v3 & 0x40000) != 0)
  {
    result = *(a2 + 84);
    v5 |= 0x40000uLL;
    *v2 = v5;
    *(a1 + 84) = result;
    v27 = *v3;
    if ((*v3 & 0x80000) == 0)
    {
LABEL_98:
      if ((v27 & 0x100000) == 0)
      {
        return result;
      }

LABEL_165:
      result = *(a2 + 92);
      *v2 = v5 | 0x100000;
      *(a1 + 92) = result;
      return result;
    }
  }

  else if ((v27 & 0x80000) == 0)
  {
    goto LABEL_98;
  }

  result = *(a2 + 88);
  v5 |= 0x80000uLL;
  *v2 = v5;
  *(a1 + 88) = result;
  if ((*v3 & 0x100000) != 0)
  {
    goto LABEL_165;
  }

  return result;
}

uint64_t sub_245DC9A84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = (a1 + 292);
  v6 = *(a1 + 292);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "audioDvChaosThreshold", *(a1 + 16));
    v6 = *v5;
    if ((*v5 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "audioDvChaosThresholdCenter", *(a1 + 20));
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(this, "audioDvChaosThresholdMax", *(a1 + 24));
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(this, "audioDvChaosThresholdMin", *(a1 + 28));
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(this, "audioDvChaosThresholdStretch", *(a1 + 32));
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(this, "audioDvEnergyThreshold", *(a1 + 36));
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(this, "audioDvEnergyThresholdCenter", *(a1 + 40));
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(this, "audioDvEnergyThresholdMax", *(a1 + 44));
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(this, "audioDvEnergyThresholdMin", *(a1 + 48));
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(this, "audioDvEnergyThresholdStretch", *(a1 + 52));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(this, "audioDvMaxRmsThresholdCenter", *(a1 + 56));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(this, "audioDvMaxRmsThresholdMax", *(a1 + 60));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(this, "audioDvMaxRmsThresholdMin", *(a1 + 64));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_102:
  PB::TextFormatter::format(this, "audioDvMaxRmsThresholdStretch", *(a1 + 68));
  if ((*v5 & 0x8000) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(this, "audioDvRmsThreshold", *(a1 + 72));
  }

LABEL_17:
  if ((*(a1 + 300) & 8) != 0)
  {
    v7 = *(a1 + 280);
    PB::TextFormatter::format(this, "crashDetectorDecision");
  }

  v8 = *v5;
  if ((*v5 & 0x10000) != 0)
  {
    PB::TextFormatter::format(this, "deltaVXYBiggestImpact", *(a1 + 76));
    v8 = *v5;
    if ((*v5 & 0x20000) == 0)
    {
LABEL_21:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_106;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_21;
  }

  PB::TextFormatter::format(this, "deltaVXYOverEpoch", *(a1 + 80));
  v8 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_107;
  }

LABEL_106:
  PB::TextFormatter::format(this, "deltaVXYUnconditional", *(a1 + 84));
  v8 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_23:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_108;
  }

LABEL_107:
  PB::TextFormatter::format(this, "deltaVXYUnconditionalPlanarWithAudioThreshold", *(a1 + 88));
  v8 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_24:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_109;
  }

LABEL_108:
  PB::TextFormatter::format(this, "deltaVXYUnconditionalPlanarWithoutAudioThreshold", *(a1 + 92));
  v8 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_25:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_110;
  }

LABEL_109:
  v15 = *(a1 + 96);
  PB::TextFormatter::format(this, "detectorRegime");
  v8 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_26:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_111;
  }

LABEL_110:
  PB::TextFormatter::format(this, "detectorRegimeAccelnormThreshold1", *(a1 + 100));
  v8 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_27:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(this, "detectorRegimeAccelnormThreshold2", *(a1 + 104));
  v8 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(this, "detectorRegimeAccelnormThreshold3", *(a1 + 108));
  v8 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold1", *(a1 + 112));
  v8 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold1WithAudio", *(a1 + 116));
  v8 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold1WithoutAudio", *(a1 + 120));
  v8 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold1WithoutAudioStandaloneBaroNeeded", *(a1 + 124));
  v8 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_118;
  }

LABEL_117:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold1WithoutAudioStandaloneFull", *(a1 + 128));
  v8 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_119;
  }

LABEL_118:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold2", *(a1 + 132));
  v8 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_119:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold2WithAudio", *(a1 + 136));
  v8 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_121;
  }

LABEL_120:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold2WithoutAudio", *(a1 + 140));
  v8 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_37:
    if ((v8 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold2WithoutAudioStandaloneBaroNeeded", *(a1 + 144));
  v8 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold2WithoutAudioStandaloneFull", *(a1 + 148));
  v8 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold3", *(a1 + 152));
  v8 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold3WithAudio", *(a1 + 156));
  v8 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold3WithoutAudio", *(a1 + 160));
  v8 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_126:
  PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold3WithoutAudioStandaloneBaroNeeded", *(a1 + 164));
  if ((*v5 & 0x8000000000) != 0)
  {
LABEL_43:
    PB::TextFormatter::format(this, "detectorRegimeDeltaVThreshold3WithoutAudioStandaloneFull", *(a1 + 168));
  }

LABEL_44:
  v9 = *(a1 + 300);
  if ((v9 & 0x10) != 0)
  {
    v16 = *(a1 + 281);
    PB::TextFormatter::format(this, "hasAudioInEpoch");
    v9 = *(a1 + 300);
    if ((v9 & 0x20) == 0)
    {
LABEL_46:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_130;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_46;
  }

  v17 = *(a1 + 282);
  PB::TextFormatter::format(this, "isAudio");
  v9 = *(a1 + 300);
  if ((v9 & 0x40) == 0)
  {
LABEL_47:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_131;
  }

LABEL_130:
  v18 = *(a1 + 283);
  PB::TextFormatter::format(this, "isAudioDv");
  v9 = *(a1 + 300);
  if ((v9 & 0x80) == 0)
  {
LABEL_48:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_132;
  }

LABEL_131:
  v19 = *(a1 + 284);
  PB::TextFormatter::format(this, "isAudioSupported");
  v9 = *(a1 + 300);
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_133;
  }

LABEL_132:
  v20 = *(a1 + 285);
  PB::TextFormatter::format(this, "isBaro");
  v9 = *(a1 + 300);
  if ((v9 & 0x200) == 0)
  {
LABEL_50:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_134;
  }

LABEL_133:
  v21 = *(a1 + 286);
  PB::TextFormatter::format(this, "isCompanionConnected");
  v9 = *(a1 + 300);
  if ((v9 & 0x400) == 0)
  {
LABEL_51:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_135;
  }

LABEL_134:
  v22 = *(a1 + 287);
  PB::TextFormatter::format(this, "isFreeFall");
  v9 = *(a1 + 300);
  if ((v9 & 0x800) == 0)
  {
LABEL_52:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_135:
  v23 = *(a1 + 288);
  PB::TextFormatter::format(this, "isPulse");
  if ((*(a1 + 300) & 0x1000) != 0)
  {
LABEL_53:
    v10 = *(a1 + 289);
    PB::TextFormatter::format(this, "lowSenseCrashDetectorDecision");
  }

LABEL_54:
  v11 = *v5;
  if ((*v5 & 0x10000000000) != 0)
  {
    PB::TextFormatter::format(this, "lowSenseWithAudioDeltaVThreshold1", *(a1 + 172));
    v11 = *v5;
    if ((*v5 & 0x20000000000) == 0)
    {
LABEL_56:
      if ((v11 & 0x40000000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_139;
    }
  }

  else if ((v11 & 0x20000000000) == 0)
  {
    goto LABEL_56;
  }

  PB::TextFormatter::format(this, "lowSenseWithAudioDeltaVThreshold2", *(a1 + 176));
  v11 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_140;
  }

LABEL_139:
  PB::TextFormatter::format(this, "lowSenseWithAudioDeltaVThreshold3", *(a1 + 180));
  v11 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_58:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_141;
  }

LABEL_140:
  PB::TextFormatter::format(this, "lowSenseWithAudioMaxPulseThreshold", *(a1 + 184));
  v11 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_59:
    if ((v11 & 0x200000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_142;
  }

LABEL_141:
  PB::TextFormatter::format(this, "lowSenseWithAudioMaxaccelnormThreshold", *(a1 + 188));
  v11 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_60:
    if ((v11 & 0x400000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_143;
  }

LABEL_142:
  PB::TextFormatter::format(this, "lowSenseWithAudioPeakPressureThreshold", *(a1 + 192));
  v11 = *v5;
  if ((*v5 & 0x400000000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_144;
  }

LABEL_143:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioDeltaVThreshold1", *(a1 + 196));
  v11 = *v5;
  if ((*v5 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_145;
  }

LABEL_144:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioDeltaVThreshold2", *(a1 + 200));
  v11 = *v5;
  if ((*v5 & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioDeltaVThreshold3", *(a1 + 204));
  v11 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioMaxPulseThreshold", *(a1 + 208));
  v11 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_148;
  }

LABEL_147:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioMaxaccelnormThreshold", *(a1 + 212));
  v11 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_149;
  }

LABEL_148:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioPeakPressureThreshold", *(a1 + 216));
  v11 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((v11 & 0x20000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_150;
  }

LABEL_149:
  PB::TextFormatter::format(this, "maxAccelNorm", *(a1 + 220));
  v11 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_68:
    if ((v11 & 0x40000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_151;
  }

LABEL_150:
  PB::TextFormatter::format(this, "maxAccelNormThreshold", *(a1 + 224));
  v11 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x80000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_152;
  }

LABEL_151:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithAudio", *(a1 + 228));
  v11 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_70:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_153;
  }

LABEL_152:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudio", *(a1 + 232));
  v11 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_71:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_154;
  }

LABEL_153:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 236));
  v11 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_72:
    if ((v11 & 0x400000000000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_155;
  }

LABEL_154:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudioStandaloneFull", *(a1 + 240));
  v11 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_156;
  }

LABEL_155:
  PB::TextFormatter::format(this, "maxAudioChaos", *(a1 + 244));
  v11 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_157;
  }

LABEL_156:
  PB::TextFormatter::format(this, "maxAudioEnergy", *(a1 + 248));
  v11 = *v5;
  if ((*v5 & 0x1000000000000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_158;
  }

LABEL_157:
  PB::TextFormatter::format(this, "maxAudioRms", *(a1 + 252));
  v11 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x4000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_159:
    v24 = *(a1 + 260);
    PB::TextFormatter::format(this, "numShortAudio");
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_160;
  }

LABEL_158:
  PB::TextFormatter::format(this, "maxPulse", *(a1 + 256));
  v11 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_159;
  }

LABEL_77:
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_160:
  PB::TextFormatter::format(this, "peakPressure", *(a1 + 264));
LABEL_78:
  v12 = *(a1 + 300);
  if (v12)
  {
    PB::TextFormatter::format(this, "shortAudioMaxPulseThreshold", *(a1 + 268));
    v12 = *(a1 + 300);
    if ((v12 & 0x2000) == 0)
    {
LABEL_80:
      if ((v12 & 2) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_163;
    }
  }

  else if ((*(a1 + 300) & 0x2000) == 0)
  {
    goto LABEL_80;
  }

  v25 = *(a1 + 290);
  PB::TextFormatter::format(this, "shortAudioMet");
  v12 = *(a1 + 300);
  if ((v12 & 2) == 0)
  {
LABEL_81:
    if ((v12 & 4) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_164;
  }

LABEL_163:
  PB::TextFormatter::format(this, "shortAudioNumThreshold", *(a1 + 272));
  v12 = *(a1 + 300);
  if ((v12 & 4) == 0)
  {
LABEL_82:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_164:
  PB::TextFormatter::format(this, "shortAudioPeakPressureThreshold", *(a1 + 276));
  if ((*(a1 + 300) & 0x4000) != 0)
  {
LABEL_83:
    v13 = *(a1 + 291);
    PB::TextFormatter::format(this, "strongerAudio");
  }

LABEL_84:
  if (*v5)
  {
    v14 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DCA4AC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 292);
    while (1)
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_333;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        goto LABEL_333;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) <= 100000)
      {
        switch(v23)
        {
          case 1:
            *v7 |= 1uLL;
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
                  goto LABEL_328;
                }

                v27 += 7;
                ++v31;
                v15 = v28++ > 8;
              }

              while (!v15);
LABEL_289:
              v29 = 0;
              goto LABEL_328;
            }

            v169 = 0;
            v170 = 0;
            v29 = 0;
            v18 = v24 >= v25;
            v171 = v24 - v25;
            if (!v18)
            {
              v171 = 0;
            }

            v172 = (v26 + v25);
            v173 = v25 + 1;
            while (2)
            {
              if (v171)
              {
                v174 = *v172;
                *(this + 1) = v173;
                v29 |= (v174 & 0x7F) << v169;
                if (v174 < 0)
                {
                  v169 += 7;
                  --v171;
                  ++v172;
                  ++v173;
                  v15 = v170++ > 8;
                  if (v15)
                  {
                    goto LABEL_289;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_328:
            *(a1 + 8) = v29;
            goto LABEL_317;
          case 2:
            *v7 |= 0x10000000000000uLL;
            v96 = *(this + 1);
            if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 220) = *(*this + v96);
            goto LABEL_316;
          case 3:
            *(a1 + 300) |= 0x800u;
            v77 = *(this + 1);
            if (v77 >= *(this + 2))
            {
              v80 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v78 = v77 + 1;
              v79 = *(*this + v77);
              *(this + 1) = v78;
              v80 = v79 != 0;
            }

            *(a1 + 288) = v80;
            goto LABEL_317;
          case 4:
            *(a1 + 300) |= 0x400u;
            v83 = *(this + 1);
            if (v83 >= *(this + 2))
            {
              v86 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v84 = v83 + 1;
              v85 = *(*this + v83);
              *(this + 1) = v84;
              v86 = v85 != 0;
            }

            *(a1 + 287) = v86;
            goto LABEL_317;
          case 5:
            *(a1 + 300) |= 0x100u;
            v63 = *(this + 1);
            if (v63 >= *(this + 2))
            {
              v66 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v64 = v63 + 1;
              v65 = *(*this + v63);
              *(this + 1) = v64;
              v66 = v65 != 0;
            }

            *(a1 + 285) = v66;
            goto LABEL_317;
          case 6:
            *(a1 + 300) |= 0x20u;
            v105 = *(this + 1);
            if (v105 >= *(this + 2))
            {
              v108 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v106 = v105 + 1;
              v107 = *(*this + v105);
              *(this + 1) = v106;
              v108 = v107 != 0;
            }

            *(a1 + 282) = v108;
            goto LABEL_317;
          case 7:
            *(a1 + 300) |= 0x10u;
            v113 = *(this + 1);
            if (v113 >= *(this + 2))
            {
              v116 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v114 = v113 + 1;
              v115 = *(*this + v113);
              *(this + 1) = v114;
              v116 = v115 != 0;
            }

            *(a1 + 281) = v116;
            goto LABEL_317;
          case 8:
            *v7 |= 0x200000uLL;
            v88 = *(this + 1);
            v87 = *(this + 2);
            v89 = *this;
            if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
            {
              v90 = 0;
              v91 = 0;
              v92 = 0;
              v93 = (v89 + v88);
              v94 = v88 + 1;
              do
              {
                *(this + 1) = v94;
                v95 = *v93++;
                v92 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  goto LABEL_325;
                }

                v90 += 7;
                ++v94;
                v15 = v91++ > 8;
              }

              while (!v15);
LABEL_281:
              LODWORD(v92) = 0;
              goto LABEL_325;
            }

            v163 = 0;
            v164 = 0;
            v92 = 0;
            v18 = v87 >= v88;
            v165 = v87 - v88;
            if (!v18)
            {
              v165 = 0;
            }

            v166 = (v89 + v88);
            v167 = v88 + 1;
            while (2)
            {
              if (v165)
              {
                v168 = *v166;
                *(this + 1) = v167;
                v92 |= (v168 & 0x7F) << v163;
                if (v168 < 0)
                {
                  v163 += 7;
                  --v165;
                  ++v166;
                  ++v167;
                  v15 = v164++ > 8;
                  if (v15)
                  {
                    goto LABEL_281;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  LODWORD(v92) = 0;
                }
              }

              else
              {
                LODWORD(v92) = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_325:
            *(a1 + 96) = v92;
            goto LABEL_317;
          case 9:
            *(a1 + 300) |= 8u;
            v119 = *(this + 1);
            if (v119 >= *(this + 2))
            {
              v122 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v120 = v119 + 1;
              v121 = *(*this + v119);
              *(this + 1) = v120;
              v122 = v121 != 0;
            }

            *(a1 + 280) = v122;
            goto LABEL_317;
          case 10:
            *(a1 + 300) |= 0x80u;
            v71 = *(this + 1);
            if (v71 >= *(this + 2))
            {
              v74 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*this + v71);
              *(this + 1) = v72;
              v74 = v73 != 0;
            }

            *(a1 + 284) = v74;
            goto LABEL_317;
          case 11:
            *v7 |= 0x20000uLL;
            v118 = *(this + 1);
            if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 80) = *(*this + v118);
            goto LABEL_316;
          case 12:
            *v7 |= 0x10000uLL;
            v61 = *(this + 1);
            if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 76) = *(*this + v61);
            goto LABEL_316;
          case 13:
            *v7 |= 0x2000000uLL;
            v70 = *(this + 1);
            if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 112) = *(*this + v70);
            goto LABEL_316;
          case 14:
            *v7 |= 0x40000000uLL;
            v112 = *(this + 1);
            if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 132) = *(*this + v112);
            goto LABEL_316;
          case 15:
            *v7 |= 0x800000000uLL;
            v57 = *(this + 1);
            if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 152) = *(*this + v57);
            goto LABEL_316;
          case 16:
            *v7 |= 0x20000000000000uLL;
            v81 = *(this + 1);
            if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 224) = *(*this + v81);
            goto LABEL_316;
          case 17:
            *v7 |= 0x4000000uLL;
            v53 = *(this + 1);
            if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 116) = *(*this + v53);
            goto LABEL_316;
          case 18:
            *v7 |= 0x80000000uLL;
            v101 = *(this + 1);
            if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 136) = *(*this + v101);
            goto LABEL_316;
          case 19:
            *v7 |= 0x1000000000uLL;
            v117 = *(this + 1);
            if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 156) = *(*this + v117);
            goto LABEL_316;
          case 20:
            *v7 |= 0x40000000000000uLL;
            v131 = *(this + 1);
            if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 228) = *(*this + v131);
            goto LABEL_316;
          case 21:
            *v7 |= 0x8000000uLL;
            v103 = *(this + 1);
            if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 120) = *(*this + v103);
            goto LABEL_316;
          case 22:
            *v7 |= 0x100000000uLL;
            v111 = *(this + 1);
            if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 140) = *(*this + v111);
            goto LABEL_316;
          case 23:
            *v7 |= 0x2000000000uLL;
            v129 = *(this + 1);
            if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 160) = *(*this + v129);
            goto LABEL_316;
          case 24:
            *v7 |= 0x80000000000000uLL;
            v135 = *(this + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 232) = *(*this + v135);
            goto LABEL_316;
          case 25:
            *v7 |= 0x800000000000000uLL;
            v76 = *(this + 1);
            if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 248) = *(*this + v76);
            goto LABEL_316;
          case 26:
            *v7 |= 0x400000000000000uLL;
            v75 = *(this + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 244) = *(*this + v75);
            goto LABEL_316;
          case 27:
            *v7 |= 0x1000000000000000uLL;
            v139 = *(this + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 252) = *(*this + v139);
            goto LABEL_316;
          case 28:
            *v7 |= 0x40uLL;
            v50 = *(this + 1);
            if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 36) = *(*this + v50);
            goto LABEL_316;
          case 29:
            *v7 |= 2uLL;
            v136 = *(this + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 16) = *(*this + v136);
            goto LABEL_316;
          case 30:
            *v7 |= 0x8000uLL;
            v137 = *(this + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 72) = *(*this + v137);
            goto LABEL_316;
          case 31:
            *(a1 + 300) |= 0x4000u;
            v123 = *(this + 1);
            if (v123 >= *(this + 2))
            {
              v126 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v124 = v123 + 1;
              v125 = *(*this + v123);
              *(this + 1) = v124;
              v126 = v125 != 0;
            }

            *(a1 + 291) = v126;
            goto LABEL_317;
          case 32:
            *(a1 + 300) |= 0x40u;
            v97 = *(this + 1);
            if (v97 >= *(this + 2))
            {
              v100 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v98 = v97 + 1;
              v99 = *(*this + v97);
              *(this + 1) = v98;
              v100 = v99 != 0;
            }

            *(a1 + 283) = v100;
            goto LABEL_317;
          case 33:
            *v7 |= 0x80uLL;
            v127 = *(this + 1);
            if (v127 > 0xFFFFFFFFFFFFFFFBLL || v127 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 40) = *(*this + v127);
            goto LABEL_316;
          case 34:
            *v7 |= 0x400uLL;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 52) = *(*this + v58);
            goto LABEL_316;
          case 35:
            *v7 |= 0x200uLL;
            v51 = *(this + 1);
            if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 48) = *(*this + v51);
            goto LABEL_316;
          case 36:
            *v7 |= 0x100uLL;
            v44 = *(this + 1);
            if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 44) = *(*this + v44);
            goto LABEL_316;
          case 37:
            *v7 |= 4uLL;
            v45 = *(this + 1);
            if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 20) = *(*this + v45);
            goto LABEL_316;
          case 38:
            *v7 |= 0x20uLL;
            v39 = *(this + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 32) = *(*this + v39);
            goto LABEL_316;
          case 39:
            *v7 |= 0x10uLL;
            v138 = *(this + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 28) = *(*this + v138);
            goto LABEL_316;
          case 40:
            *v7 |= 8uLL;
            v130 = *(this + 1);
            if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 24) = *(*this + v130);
            goto LABEL_316;
          case 41:
            *v7 |= 0x800uLL;
            v67 = *(this + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 56) = *(*this + v67);
            goto LABEL_316;
          case 42:
            *v7 |= 0x4000uLL;
            v102 = *(this + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 68) = *(*this + v102);
            goto LABEL_316;
          case 43:
            *v7 |= 0x2000uLL;
            v133 = *(this + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 64) = *(*this + v133);
            goto LABEL_316;
          case 44:
            *v7 |= 0x1000uLL;
            v36 = *(this + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 60) = *(*this + v36);
            goto LABEL_316;
          case 45:
            *v7 |= 0x10000000uLL;
            v56 = *(this + 1);
            if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 124) = *(*this + v56);
            goto LABEL_316;
          case 46:
            *v7 |= 0x200000000uLL;
            v128 = *(this + 1);
            if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 144) = *(*this + v128);
            goto LABEL_316;
          case 47:
            *v7 |= 0x4000000000uLL;
            v150 = *(this + 1);
            if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 164) = *(*this + v150);
            goto LABEL_316;
          case 48:
            *v7 |= 0x100000000000000uLL;
            v41 = *(this + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 236) = *(*this + v41);
            goto LABEL_316;
          case 49:
            *v7 |= 0x20000000uLL;
            v59 = *(this + 1);
            if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 128) = *(*this + v59);
            goto LABEL_316;
          case 50:
            *v7 |= 0x400000000uLL;
            v62 = *(this + 1);
            if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 148) = *(*this + v62);
            goto LABEL_316;
          case 51:
            *v7 |= 0x8000000000uLL;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 168) = *(*this + v35);
            goto LABEL_316;
          case 52:
            *v7 |= 0x200000000000000uLL;
            v153 = *(this + 1);
            if (v153 > 0xFFFFFFFFFFFFFFFBLL || v153 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 240) = *(*this + v153);
            goto LABEL_316;
          case 53:
            *(a1 + 300) |= 0x200u;
            v146 = *(this + 1);
            if (v146 >= *(this + 2))
            {
              v149 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v147 = v146 + 1;
              v148 = *(*this + v146);
              *(this + 1) = v147;
              v149 = v148 != 0;
            }

            *(a1 + 286) = v149;
            goto LABEL_317;
          case 54:
            *v7 |= 0x8000000000000000;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 264) = *(*this + v40);
            goto LABEL_316;
          case 55:
            *v7 |= 0x2000000000000000uLL;
            v140 = *(this + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 256) = *(*this + v140);
            goto LABEL_316;
          case 56:
            *(a1 + 300) |= 0x1000u;
            v142 = *(this + 1);
            if (v142 >= *(this + 2))
            {
              v145 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v143 = v142 + 1;
              v144 = *(*this + v142);
              *(this + 1) = v143;
              v145 = v144 != 0;
            }

            *(a1 + 289) = v145;
            goto LABEL_317;
          case 57:
            *v7 |= 0x10000000000uLL;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 172) = *(*this + v42);
            goto LABEL_316;
          case 58:
            *v7 |= 0x20000000000uLL;
            v132 = *(this + 1);
            if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 176) = *(*this + v132);
            goto LABEL_316;
          case 59:
            *v7 |= 0x40000000000uLL;
            v60 = *(this + 1);
            if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 180) = *(*this + v60);
            goto LABEL_316;
          case 60:
            *v7 |= 0x100000000000uLL;
            v134 = *(this + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 188) = *(*this + v134);
            goto LABEL_316;
          case 61:
            *v7 |= 0x80000000000uLL;
            v68 = *(this + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 184) = *(*this + v68);
            goto LABEL_316;
          case 62:
            *v7 |= 0x200000000000uLL;
            v104 = *(this + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 192) = *(*this + v104);
            goto LABEL_316;
          case 63:
            *v7 |= 0x400000000000uLL;
            v110 = *(this + 1);
            if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 196) = *(*this + v110);
            goto LABEL_316;
          case 64:
            *v7 |= 0x800000000000uLL;
            v82 = *(this + 1);
            if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 200) = *(*this + v82);
            goto LABEL_316;
          case 65:
            *v7 |= 0x1000000000000uLL;
            v69 = *(this + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 204) = *(*this + v69);
            goto LABEL_316;
          case 66:
            *v7 |= 0x4000000000000uLL;
            v109 = *(this + 1);
            if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 212) = *(*this + v109);
            goto LABEL_316;
          case 67:
            *v7 |= 0x2000000000000uLL;
            v37 = *(this + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 208) = *(*this + v37);
            goto LABEL_316;
          case 68:
            *v7 |= 0x8000000000000uLL;
            v55 = *(this + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 216) = *(*this + v55);
            goto LABEL_316;
          case 69:
            *v7 |= 0x4000000000000000uLL;
            v155 = *(this + 1);
            v154 = *(this + 2);
            v156 = *this;
            if (v155 <= 0xFFFFFFFFFFFFFFF5 && v155 + 10 <= v154)
            {
              v157 = 0;
              v158 = 0;
              v159 = 0;
              v160 = (v156 + v155);
              v161 = v155 + 1;
              do
              {
                *(this + 1) = v161;
                v162 = *v160++;
                v159 |= (v162 & 0x7F) << v157;
                if ((v162 & 0x80) == 0)
                {
                  goto LABEL_331;
                }

                v157 += 7;
                ++v161;
                v15 = v158++ > 8;
              }

              while (!v15);
LABEL_313:
              LODWORD(v159) = 0;
              goto LABEL_331;
            }

            v175 = 0;
            v176 = 0;
            v159 = 0;
            v18 = v154 >= v155;
            v177 = v154 - v155;
            if (!v18)
            {
              v177 = 0;
            }

            v178 = (v156 + v155);
            v179 = v155 + 1;
            break;
          case 70:
            *(a1 + 300) |= 0x2000u;
            v46 = *(this + 1);
            if (v46 >= *(this + 2))
            {
              v49 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v47 = v46 + 1;
              v48 = *(*this + v46);
              *(this + 1) = v47;
              v49 = v48 != 0;
            }

            *(a1 + 290) = v49;
            goto LABEL_317;
          case 71:
            *(a1 + 300) |= 2u;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 272) = *(*this + v34);
            goto LABEL_316;
          case 72:
            *(a1 + 300) |= 4u;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 276) = *(*this + v38);
            goto LABEL_316;
          case 73:
            *(a1 + 300) |= 1u;
            v141 = *(this + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 268) = *(*this + v141);
            goto LABEL_316;
          case 74:
            *v7 |= 0x40000uLL;
            v151 = *(this + 1);
            if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 84) = *(*this + v151);
            goto LABEL_316;
          case 75:
            *v7 |= 0x80000uLL;
            v152 = *(this + 1);
            if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(this + 2))
            {
              goto LABEL_258;
            }

            *(a1 + 88) = *(*this + v152);
            goto LABEL_316;
          case 76:
            *v7 |= 0x100000uLL;
            v43 = *(this + 1);
            if (v43 <= 0xFFFFFFFFFFFFFFFBLL && v43 + 4 <= *(this + 2))
            {
              *(a1 + 92) = *(*this + v43);
              goto LABEL_316;
            }

LABEL_258:
            *(this + 24) = 1;
            goto LABEL_317;
          default:
            goto LABEL_46;
        }

        while (1)
        {
          if (!v177)
          {
            LODWORD(v159) = 0;
            *(this + 24) = 1;
            goto LABEL_331;
          }

          v180 = *v178;
          *(this + 1) = v179;
          v159 |= (v180 & 0x7F) << v175;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          --v177;
          ++v178;
          ++v179;
          v15 = v176++ > 8;
          if (v15)
          {
            goto LABEL_313;
          }
        }

        if (*(this + 24))
        {
          LODWORD(v159) = 0;
        }

LABEL_331:
        *(a1 + 260) = v159;
        goto LABEL_317;
      }

      if (v23 == 100001)
      {
        *v7 |= 0x400000uLL;
        v52 = *(this + 1);
        if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
        {
LABEL_91:
          *(this + 24) = 1;
          goto LABEL_317;
        }

        *(a1 + 100) = *(*this + v52);
        goto LABEL_316;
      }

      if (v23 == 100002)
      {
        break;
      }

      if (v23 == 100003)
      {
        *v7 |= 0x1000000uLL;
        v33 = *(this + 1);
        if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
        {
          goto LABEL_91;
        }

        *(a1 + 108) = *(*this + v33);
LABEL_316:
        *(this + 1) += 4;
        goto LABEL_317;
      }

LABEL_46:
      if (!PB::Reader::skip(this))
      {
        v182 = 0;
        return v182 & 1;
      }

LABEL_317:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_333;
      }
    }

    *v7 |= 0x800000uLL;
    v54 = *(this + 1);
    if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
    {
      goto LABEL_91;
    }

    *(a1 + 104) = *(*this + v54);
    goto LABEL_316;
  }

LABEL_333:
  v182 = v4 ^ 1;
  return v182 & 1;
}

uint64_t sub_245DCBC20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = (result + 292);
  v5 = *(result + 292);
  if (v5)
  {
    v6 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v5 = *v4;
  }

  if ((v5 & 0x10000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 220));
  }

  v7 = *(v3 + 300);
  if ((v7 & 0x800) != 0)
  {
    v24 = *(v3 + 288);
    result = PB::Writer::write(this);
    v7 = *(v3 + 300);
    if ((v7 & 0x400) == 0)
    {
LABEL_7:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_99;
    }
  }

  else if ((*(v3 + 300) & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v25 = *(v3 + 287);
  result = PB::Writer::write(this);
  v7 = *(v3 + 300);
  if ((v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_100;
  }

LABEL_99:
  v26 = *(v3 + 285);
  result = PB::Writer::write(this);
  v7 = *(v3 + 300);
  if ((v7 & 0x20) == 0)
  {
LABEL_9:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_100:
  v27 = *(v3 + 282);
  result = PB::Writer::write(this);
  if ((*(v3 + 300) & 0x10) != 0)
  {
LABEL_10:
    v8 = *(v3 + 281);
    result = PB::Writer::write(this);
  }

LABEL_11:
  if ((*(v4 + 2) & 0x20) != 0)
  {
    v9 = *(v3 + 96);
    result = PB::Writer::writeVarInt(this);
  }

  v10 = *(v3 + 300);
  if ((v10 & 8) != 0)
  {
    v11 = *(v3 + 280);
    result = PB::Writer::write(this);
    v10 = *(v3 + 300);
  }

  if ((v10 & 0x80) != 0)
  {
    v12 = *(v3 + 284);
    result = PB::Writer::write(this);
  }

  v13 = *v4;
  if ((*v4 & 0x20000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 80));
    v13 = *v4;
    if ((*v4 & 0x10000) == 0)
    {
LABEL_19:
      if ((v13 & 0x2000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_104;
    }
  }

  else if ((v13 & 0x10000) == 0)
  {
    goto LABEL_19;
  }

  result = PB::Writer::write(this, *(v3 + 76));
  v13 = *v4;
  if ((*v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = PB::Writer::write(this, *(v3 + 112));
  v13 = *v4;
  if ((*v4 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = PB::Writer::write(this, *(v3 + 132));
  v13 = *v4;
  if ((*v4 & 0x800000000) == 0)
  {
LABEL_22:
    if ((v13 & 0x20000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = PB::Writer::write(this, *(v3 + 152));
  v13 = *v4;
  if ((*v4 & 0x20000000000000) == 0)
  {
LABEL_23:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = PB::Writer::write(this, *(v3 + 224));
  v13 = *v4;
  if ((*v4 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = PB::Writer::write(this, *(v3 + 116));
  v13 = *v4;
  if ((*v4 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = PB::Writer::write(this, *(v3 + 136));
  v13 = *v4;
  if ((*v4 & 0x1000000000) == 0)
  {
LABEL_26:
    if ((v13 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = PB::Writer::write(this, *(v3 + 156));
  v13 = *v4;
  if ((*v4 & 0x40000000000000) == 0)
  {
LABEL_27:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = PB::Writer::write(this, *(v3 + 228));
  v13 = *v4;
  if ((*v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = PB::Writer::write(this, *(v3 + 120));
  v13 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v13 & 0x2000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = PB::Writer::write(this, *(v3 + 140));
  v13 = *v4;
  if ((*v4 & 0x2000000000) == 0)
  {
LABEL_30:
    if ((v13 & 0x80000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = PB::Writer::write(this, *(v3 + 160));
  v13 = *v4;
  if ((*v4 & 0x80000000000000) == 0)
  {
LABEL_31:
    if ((v13 & 0x800000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = PB::Writer::write(this, *(v3 + 232));
  v13 = *v4;
  if ((*v4 & 0x800000000000000) == 0)
  {
LABEL_32:
    if ((v13 & 0x400000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = PB::Writer::write(this, *(v3 + 248));
  v13 = *v4;
  if ((*v4 & 0x400000000000000) == 0)
  {
LABEL_33:
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = PB::Writer::write(this, *(v3 + 244));
  v13 = *v4;
  if ((*v4 & 0x1000000000000000) == 0)
  {
LABEL_34:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = PB::Writer::write(this, *(v3 + 252));
  v13 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_35:
    if ((v13 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = PB::Writer::write(this, *(v3 + 36));
  v13 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_36:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_120:
  result = PB::Writer::write(this, *(v3 + 16));
  if ((*v4 & 0x8000) != 0)
  {
LABEL_37:
    result = PB::Writer::write(this, *(v3 + 72));
  }

LABEL_38:
  v14 = *(v3 + 300);
  if ((v14 & 0x4000) != 0)
  {
    v15 = *(v3 + 291);
    result = PB::Writer::write(this);
    v14 = *(v3 + 300);
  }

  if ((v14 & 0x40) != 0)
  {
    v16 = *(v3 + 283);
    result = PB::Writer::write(this);
  }

  v17 = *v4;
  if ((*v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v17 = *v4;
    if ((*v4 & 0x400) == 0)
    {
LABEL_44:
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_124;
    }
  }

  else if ((v17 & 0x400) == 0)
  {
    goto LABEL_44;
  }

  result = PB::Writer::write(this, *(v3 + 52));
  v17 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_45:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = PB::Writer::write(this, *(v3 + 48));
  v17 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_46:
    if ((v17 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = PB::Writer::write(this, *(v3 + 44));
  v17 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_47:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = PB::Writer::write(this, *(v3 + 20));
  v17 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_48:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = PB::Writer::write(this, *(v3 + 32));
  v17 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_49:
    if ((v17 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = PB::Writer::write(this, *(v3 + 28));
  v17 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_50:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = PB::Writer::write(this, *(v3 + 24));
  v17 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = PB::Writer::write(this, *(v3 + 56));
  v17 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_52:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = PB::Writer::write(this, *(v3 + 68));
  v17 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = PB::Writer::write(this, *(v3 + 64));
  v17 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_54:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = PB::Writer::write(this, *(v3 + 60));
  v17 = *v4;
  if ((*v4 & 0x10000000) == 0)
  {
LABEL_55:
    if ((v17 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = PB::Writer::write(this, *(v3 + 124));
  v17 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_56:
    if ((v17 & 0x4000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = PB::Writer::write(this, *(v3 + 144));
  v17 = *v4;
  if ((*v4 & 0x4000000000) == 0)
  {
LABEL_57:
    if ((v17 & 0x100000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = PB::Writer::write(this, *(v3 + 164));
  v17 = *v4;
  if ((*v4 & 0x100000000000000) == 0)
  {
LABEL_58:
    if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = PB::Writer::write(this, *(v3 + 236));
  v17 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_59:
    if ((v17 & 0x400000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = PB::Writer::write(this, *(v3 + 128));
  v17 = *v4;
  if ((*v4 & 0x400000000) == 0)
  {
LABEL_60:
    if ((v17 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = PB::Writer::write(this, *(v3 + 148));
  v17 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v17 & 0x200000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_140:
  result = PB::Writer::write(this, *(v3 + 168));
  if ((*v4 & 0x200000000000000) != 0)
  {
LABEL_62:
    result = PB::Writer::write(this, *(v3 + 240));
  }

LABEL_63:
  if ((*(v3 + 300) & 0x200) != 0)
  {
    v18 = *(v3 + 286);
    result = PB::Writer::write(this);
  }

  if ((*v4 & 0x8000000000000000) == 0)
  {
    if ((*v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  result = PB::Writer::write(this, *(v3 + 264));
  if ((*v4 & 0x2000000000000000) != 0)
  {
LABEL_67:
    result = PB::Writer::write(this, *(v3 + 256));
  }

LABEL_68:
  if ((*(v3 + 300) & 0x1000) != 0)
  {
    v19 = *(v3 + 289);
    result = PB::Writer::write(this);
  }

  v20 = *v4;
  if ((*v4 & 0x10000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 172));
    v20 = *v4;
    if ((*v4 & 0x20000000000) == 0)
    {
LABEL_72:
      if ((v20 & 0x40000000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_144;
    }
  }

  else if ((v20 & 0x20000000000) == 0)
  {
    goto LABEL_72;
  }

  result = PB::Writer::write(this, *(v3 + 176));
  v20 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_73:
    if ((v20 & 0x100000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_145;
  }

LABEL_144:
  result = PB::Writer::write(this, *(v3 + 180));
  v20 = *v4;
  if ((*v4 & 0x100000000000) == 0)
  {
LABEL_74:
    if ((v20 & 0x80000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_146;
  }

LABEL_145:
  result = PB::Writer::write(this, *(v3 + 188));
  v20 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_75:
    if ((v20 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = PB::Writer::write(this, *(v3 + 184));
  v20 = *v4;
  if ((*v4 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v20 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_148;
  }

LABEL_147:
  result = PB::Writer::write(this, *(v3 + 192));
  v20 = *v4;
  if ((*v4 & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v20 & 0x800000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = PB::Writer::write(this, *(v3 + 196));
  v20 = *v4;
  if ((*v4 & 0x800000000000) == 0)
  {
LABEL_78:
    if ((v20 & 0x1000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_150;
  }

LABEL_149:
  result = PB::Writer::write(this, *(v3 + 200));
  v20 = *v4;
  if ((*v4 & 0x1000000000000) == 0)
  {
LABEL_79:
    if ((v20 & 0x4000000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = PB::Writer::write(this, *(v3 + 204));
  v20 = *v4;
  if ((*v4 & 0x4000000000000) == 0)
  {
LABEL_80:
    if ((v20 & 0x2000000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = PB::Writer::write(this, *(v3 + 212));
  v20 = *v4;
  if ((*v4 & 0x2000000000000) == 0)
  {
LABEL_81:
    if ((v20 & 0x8000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = PB::Writer::write(this, *(v3 + 208));
  v20 = *v4;
  if ((*v4 & 0x8000000000000) == 0)
  {
LABEL_82:
    if ((v20 & 0x4000000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_153:
  result = PB::Writer::write(this, *(v3 + 216));
  if ((*v4 & 0x4000000000000000) != 0)
  {
LABEL_83:
    v21 = *(v3 + 260);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_84:
  v22 = *(v3 + 300);
  if ((v22 & 0x2000) != 0)
  {
    v28 = *(v3 + 290);
    result = PB::Writer::write(this);
    v22 = *(v3 + 300);
    if ((v22 & 2) == 0)
    {
LABEL_86:
      if ((v22 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_157;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_86;
  }

  result = PB::Writer::write(this, *(v3 + 272));
  v22 = *(v3 + 300);
  if ((v22 & 4) == 0)
  {
LABEL_87:
    if ((v22 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_157:
  result = PB::Writer::write(this, *(v3 + 276));
  if (*(v3 + 300))
  {
LABEL_88:
    result = PB::Writer::write(this, *(v3 + 268));
  }

LABEL_89:
  v23 = *v4;
  if ((*v4 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 84));
    v23 = *v4;
    if ((*v4 & 0x80000) == 0)
    {
LABEL_91:
      if ((v23 & 0x100000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((v23 & 0x80000) == 0)
  {
    goto LABEL_91;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v23 = *v4;
  if ((*v4 & 0x100000) != 0)
  {
LABEL_92:
    result = PB::Writer::write(this, *(v3 + 92));
    v23 = *v4;
  }

LABEL_93:
  if ((v23 & 0x400000) == 0)
  {
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_95;
    }

LABEL_163:
    result = PB::Writer::write(this, *(v3 + 104));
    if ((*v4 & 0x1000000) == 0)
    {
      return result;
    }

    goto LABEL_164;
  }

  result = PB::Writer::write(this, *(v3 + 100));
  v23 = *v4;
  if ((*v4 & 0x800000) != 0)
  {
    goto LABEL_163;
  }

LABEL_95:
  if ((v23 & 0x1000000) == 0)
  {
    return result;
  }

LABEL_164:
  v29 = *(v3 + 108);

  return PB::Writer::write(this, v29);
}