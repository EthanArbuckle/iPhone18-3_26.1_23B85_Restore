uint64_t sub_245E0DDB4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 104);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 92);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 104);
  }

  if ((v4 & 4) != 0)
  {
    v6 = *(v3 + 88);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 104);
  if (v16)
  {
    v17 = *(v3 + 80);
    result = PB::Writer::writeVarInt(this);
    v16 = *(v3 + 104);
    if ((v16 & 0x10) == 0)
    {
LABEL_16:
      if ((v16 & 2) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v19 = *(v3 + 84);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 104) & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v3 + 104) & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 104);
  if ((v16 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if ((v16 & 0x20) == 0)
  {
    return result;
  }

LABEL_22:
  v20 = *(v3 + 100);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E0DEF8(uint64_t result)
{
  *result = &unk_2858CF870;
  *(result + 44) = 0;
  return result;
}

void sub_245E0DF20(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0DF58(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF870;
  *(result + 44) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 44) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 20);
    v3 |= 4u;
    *(result + 44) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if (v2 < 0)
  {
    v6 = *(a2 + 40);
    v3 |= 0x80u;
    *(result + 44) = v3;
    *(result + 40) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 44) = v3;
  *(result + 28) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 24);
  v3 |= 8u;
  *(result + 44) = v3;
  *(result + 24) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 44) = v3;
  *(result + 36) = v9;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_18:
    v11 = *(a2 + 32);
    *(result + 44) = v3 | 0x20;
    *(result + 32) = v11;
    return result;
  }

LABEL_17:
  v10 = *(a2 + 16);
  v3 |= 2u;
  *(result + 44) = v3;
  *(result + 16) = v10;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_245E0E064(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "conchaTemp");
    v5 = *(a1 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "prescalar");
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 28);
  PB::TextFormatter::format(this, "pwrState");
  v5 = *(a1 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "tragusTemp");
  v5 = *(a1 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "valid");
  if ((*(a1 + 44) & 0x40) != 0)
  {
LABEL_9:
    v6 = *(a1 + 36);
    PB::TextFormatter::format(this, "wdtPeriod");
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0E1A8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_167;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(a1 + 44) |= 2u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v65;
              v83 = (v66 + v65);
              v84 = v65 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v69) = 0;
                  *(this + 24) = 1;
                  goto LABEL_146;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v69 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v69) = 0;
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_145:
              v2 = v85;
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
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_146:
            *(a1 + 16) = v69;
            goto LABEL_163;
          }

          if (v22 == 8)
          {
            *(a1 + 44) |= 0x20u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v47;
              v111 = (v48 + v47);
              v112 = v47 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_162;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v51 |= (v114 & 0x7F) << v108;
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
                  LODWORD(v51) = 0;
                  goto LABEL_161;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_161:
              v2 = v113;
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

LABEL_162:
            *(a1 + 32) = v51;
            goto LABEL_163;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 44) |= 8u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v73 = 0;
              v74 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v75 = v2 - v55;
              v76 = (v56 + v55);
              v77 = v55 + 1;
              while (1)
              {
                if (!v75)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_142;
                }

                v78 = v77;
                v79 = *v76;
                *(this + 1) = v78;
                v59 |= (v79 & 0x7F) << v73;
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
                  LODWORD(v59) = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_141:
              v2 = v78;
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

LABEL_142:
            *(a1 + 24) = v59;
            goto LABEL_163;
          }

          if (v22 == 6)
          {
            *(a1 + 44) |= 0x40u;
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
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_154;
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
                  LODWORD(v35) = 0;
                  goto LABEL_153;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_153:
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
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_154:
            *(a1 + 36) = v35;
            goto LABEL_163;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 44) |= 0x80u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v64 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = *(*this + v2++);
            *(this + 1) = v2;
            v64 = v63 != 0;
          }

          *(a1 + 40) = v64;
          goto LABEL_163;
        }

        if (v22 == 4)
        {
          *(a1 + 44) |= 0x10u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v103 = v2 - v39;
            v104 = (v40 + v39);
            v105 = v39 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v43) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v43 |= (v107 & 0x7F) << v101;
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
                LODWORD(v43) = 0;
                goto LABEL_157;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_157:
            v2 = v106;
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

LABEL_158:
          *(a1 + 28) = v43;
          goto LABEL_163;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
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

          goto LABEL_163;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 4u;
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
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_150;
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
                LODWORD(v27) = 0;
                goto LABEL_149;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_149:
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
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_150:
          *(a1 + 20) = v27;
          goto LABEL_163;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_163:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_167:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_245E0EA14(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = *(v3 + 40);
  result = PB::Writer::write(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v11 = *(v3 + 32);

  return PB::Writer::writeVarInt(this);
}

double sub_245E0EB2C(uint64_t a1)
{
  *a1 = &unk_2858CF8A8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_245E0EB5C(uint64_t a1)
{
  *a1 = &unk_2858CF8A8;
  v4 = *(a1 + 40);
  v2 = (a1 + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  sub_245DF8990((a1 + 32), 0);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    sub_245DF8934(a1 + 24, v5);
  }

  sub_245DF8990((a1 + 16), 0);
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(a1);
}

void sub_245E0EC1C(uint64_t a1)
{
  sub_245E0EB5C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0EC54(uint64_t result, void *a2)
{
  *result = &unk_2858CF8A8;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  if (a2[1])
  {
    operator new();
  }

  if (a2[2])
  {
    operator new();
  }

  if (a2[4])
  {
    operator new();
  }

  if (a2[3])
  {
    operator new();
  }

  if (a2[5])
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E0EE88(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  if (a1[5])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0EF64(int a1, PB::Reader *this)
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
            goto LABEL_38;
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

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245E0F2F8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (v3[2])
  {
    result = PB::Writer::write();
  }

  if (v3[4])
  {
    result = PB::Writer::write();
  }

  if (v3[3])
  {
    result = PB::Writer::write();
  }

  if (v3[5])
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_245E0F398(uint64_t result)
{
  *result = &unk_2858CF8E0;
  *(result + 36) = 0;
  return result;
}

void sub_245E0F3C0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0F3F8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF8E0;
  *(result + 36) = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 36) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 36) & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 32);
    v3 |= 0x20u;
    *(result + 36) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 36) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
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

  v7 = *(a2 + 24);
  v3 |= 8u;
  *(result + 36) = v3;
  *(result + 24) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 36) = v3;
  *(result + 28) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 20);
    *(result + 36) = v3 | 4;
    *(result + 20) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 33);
  v3 |= 0x40u;
  *(result + 36) = v3;
  *(result + 33) = v9;
  if ((*(a2 + 36) & 4) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245E0F4E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if ((v5 & 0x20) != 0)
  {
    v7 = *(a1 + 32);
    PB::TextFormatter::format(this, "asleep");
    v5 = *(a1 + 36);
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

  else if ((*(a1 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "averageConfidence");
  v5 = *(a1 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a1 + 20);
  PB::TextFormatter::format(this, "consecutiveEpochs");
  v5 = *(a1 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(a1 + 33);
  PB::TextFormatter::format(this, "initialized");
  v5 = *(a1 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "rawConfidence", *(a1 + 24));
  v5 = *(a1 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v11 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 36) & 0x10) != 0)
  {
LABEL_8:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0F60C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_129;
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
            *(a1 + 36) |= 1u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v61 = v2 - v47;
              v62 = (v48 + v47);
              v63 = v47 + 1;
              while (1)
              {
                if (!v61)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v51 |= (v65 & 0x7F) << v59;
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
                  v51 = 0;
                  goto LABEL_111;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_111:
              v2 = v64;
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

LABEL_112:
            *(a1 + 8) = v51;
            goto LABEL_125;
          case 2:
            *(a1 + 36) |= 0x20u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v58 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v57 = *(*this + v2++);
              *(this + 1) = v2;
              v58 = v57 != 0;
            }

            *(a1 + 32) = v58;
            goto LABEL_125;
          case 3:
            *(a1 + 36) |= 2u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v31;
              v83 = (v32 + v31);
              v84 = v31 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_124;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v35 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v35) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_123:
              v2 = v85;
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

LABEL_124:
            *(a1 + 16) = v35;
            goto LABEL_125;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 36) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v56 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v55 = *(*this + v2++);
            *(this + 1) = v2;
            v56 = v55 != 0;
          }

          *(a1 + 33) = v56;
          goto LABEL_125;
        }

        if (v22 == 7)
        {
          *(a1 + 36) |= 4u;
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
                goto LABEL_120;
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
                goto LABEL_119;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_119:
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

LABEL_120:
          *(a1 + 20) = v43;
          goto LABEL_125;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 36) |= 8u;
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

          goto LABEL_125;
        }

        if (v22 == 5)
        {
          *(a1 + 36) |= 0x10u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v23;
            v69 = (v24 + v23);
            v70 = v23 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v27 |= (v72 & 0x7F) << v66;
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
                LODWORD(v27) = 0;
                goto LABEL_115;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_115:
            v2 = v71;
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

LABEL_116:
          *(a1 + 28) = v27;
          goto LABEL_125;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v87 = 0;
        return v87 & 1;
      }

      v2 = *(this + 1);
LABEL_125:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_129:
  v87 = v4 ^ 1;
  return v87 & 1;
}

uint64_t sub_245E0FCA4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 36);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v3 + 33);
    result = PB::Writer::write(this);
    if ((*(v3 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_15:
  v10 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E0FDA0(uint64_t result)
{
  *result = &unk_2858CF918;
  *(result + 32) = 0;
  return result;
}

void sub_245E0FDC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0FE00(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF918;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 32) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(result + 32) = v3;
    *(result + 20) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 24);
      *(result + 32) = v3 | 8;
      *(result + 24) = v8;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 32) = v3;
  *(result + 28) = v7;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245E0FEB8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "activity");
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
  PB::TextFormatter::format(this, "confidenceLevel");
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "consecutiveEpochs");
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0FF9C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_140;
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

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
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

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 32) |= 1u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v80 = v3 - v56;
            v81 = (v57 + v56);
            v82 = v56 + 1;
            while (1)
            {
              if (!v80)
              {
                v60 = 0;
                *(this + 24) = 1;
                goto LABEL_127;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v60 |= (v84 & 0x7F) << v78;
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
                v60 = 0;
                goto LABEL_126;
              }
            }

            if (*(this + 24))
            {
              v60 = 0;
            }

LABEL_126:
            v3 = v83;
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
              v3 = v62;
              *(this + 1) = v62;
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
                v60 = 0;
                break;
              }
            }
          }

LABEL_127:
          *(a1 + 8) = v60;
          goto LABEL_136;
        }

        if (v23 == 2)
        {
          *(a1 + 32) |= 2u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v94 = v3 - v32;
            v95 = (v33 + v32);
            v96 = v32 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_135;
              }

              v97 = v96;
              v98 = *v95;
              *(this + 1) = v97;
              v36 |= (v98 & 0x7F) << v92;
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
                LODWORD(v36) = 0;
                goto LABEL_134;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_134:
            v3 = v97;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            while (1)
            {
              v3 = v38;
              *(this + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                break;
              }
            }
          }

LABEL_135:
          *(a1 + 16) = v36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 32) |= 4u;
            v40 = *(this + 1);
            v2 = *(this + 2);
            v41 = *this;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v44 = 0;
              if (v2 <= v40)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v66 = v3 - v40;
              v67 = (v41 + v40);
              v68 = v40 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v44) = 0;
                  *(this + 24) = 1;
                  goto LABEL_119;
                }

                v69 = v68;
                v70 = *v67;
                *(this + 1) = v69;
                v44 |= (v70 & 0x7F) << v64;
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
                  LODWORD(v44) = 0;
                  goto LABEL_118;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }

LABEL_118:
              v3 = v69;
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
                v3 = v46;
                *(this + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  break;
                }
              }
            }

LABEL_119:
            *(a1 + 20) = v44;
            goto LABEL_136;
          case 4:
            *(a1 + 32) |= 0x10u;
            v48 = *(this + 1);
            v2 = *(this + 2);
            v49 = *this;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v73 = v3 - v48;
              v74 = (v49 + v48);
              v75 = v48 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v52) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v52 |= (v77 & 0x7F) << v71;
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
                  LODWORD(v52) = 0;
                  goto LABEL_122;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_122:
              v3 = v76;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(this + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_123:
            *(a1 + 28) = v52;
            goto LABEL_136;
          case 5:
            *(a1 + 32) |= 8u;
            v24 = *(this + 1);
            v2 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v28 = 0;
              if (v2 <= v24)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v87 = v3 - v24;
              v88 = (v25 + v24);
              v89 = v24 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_131;
                }

                v90 = v89;
                v91 = *v88;
                *(this + 1) = v90;
                v28 |= (v91 & 0x7F) << v85;
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
                  LODWORD(v28) = 0;
                  goto LABEL_130;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }

LABEL_130:
              v3 = v90;
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
                v3 = v30;
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
                  LODWORD(v28) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(a1 + 24) = v28;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v99 = 0;
        return v99 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_136:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_140:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_245E10648(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
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

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E1070C(uint64_t result)
{
  *result = &unk_2858CF950;
  *(result + 8) = 0;
  *(result + 40) = 0;
  *(result + 60) = 0;
  return result;
}

void sub_245E10734(PB::Base *this)
{
  *this = &unk_2858CF950;
  v2 = *(this + 5);
  *(this + 5) = 0;
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

void sub_245E107E8(PB::Base *a1)
{
  sub_245E10734(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E10820(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF950;
  *(result + 8) = 0;
  *(result + 40) = 0;
  *(result + 60) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 4;
    *(result + 60) = 4;
    *(result + 32) = v4;
    v2 = *(a2 + 60);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 60) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 52);
    v3 |= 0x10u;
    *(result + 60) = v3;
    *(result + 52) = v5;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v7 = *(a2 + 48);
    v3 |= 8u;
    *(result + 60) = v3;
    *(result + 48) = v7;
    v2 = *(a2 + 60);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  v3 |= 2u;
  *(result + 60) = v3;
  *(result + 24) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v9 = *(a2 + 16);
  v3 |= 1u;
  *(result + 60) = v3;
  *(result + 16) = v9;
  if ((*(a2 + 60) & 0x20) != 0)
  {
LABEL_10:
    v6 = *(a2 + 56);
    *(result + 60) = v3 | 0x20;
    *(result + 56) = v6;
  }

LABEL_11:
  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E109D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 60) & 0x20) != 0)
  {
    v5 = *(a1 + 56);
    PB::TextFormatter::format(this, "detectedSteps");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "firstStepFeatures");
  }

  v7 = *(a1 + 60);
  if ((v7 & 8) != 0)
  {
    v9 = *(a1 + 48);
    PB::TextFormatter::format(this, "fsmEndState");
    v7 = *(a1 + 60);
    if ((v7 & 0x10) == 0)
    {
LABEL_7:
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 60) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 52);
  PB::TextFormatter::format(this, "fsmStartState");
  v7 = *(a1 + 60);
  if ((v7 & 1) == 0)
  {
LABEL_8:
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "impulseEndTime", *(a1 + 16));
  v7 = *(a1 + 60);
  if ((v7 & 2) == 0)
  {
LABEL_9:
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  PB::TextFormatter::format(this, "impulseStartTime", *(a1 + 24));
  if ((*(a1 + 60) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "imuTimestamp", *(a1 + 32));
  }

LABEL_11:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "stepLikelihoodFeatures");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E10B48(uint64_t a1, PB::Reader *this)
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
            goto LABEL_94;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            operator new();
          }

          if (v22 == 8)
          {
            operator new();
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 60) |= 1u;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
            {
LABEL_51:
              *(this + 24) = 1;
              goto LABEL_90;
            }

            *(a1 + 16) = *(*this + v38);
            goto LABEL_81;
          }

          if (v22 == 6)
          {
            *(a1 + 60) |= 0x20u;
            v32 = *(this + 1);
            if (v32 >= *(this + 2))
            {
              v35 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v33 = v32 + 1;
              v34 = *(*this + v32);
              *(this + 1) = v33;
              v35 = v34 != 0;
            }

            *(a1 + 56) = v35;
            goto LABEL_90;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 60) |= 8u;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
          {
            v48 = 0;
            v49 = 0;
            v44 = 0;
            v17 = v39 >= v40;
            v50 = v39 - v40;
            if (!v17)
            {
              v50 = 0;
            }

            v51 = (v41 + v40);
            v52 = v40 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_86;
              }

              v53 = *v51;
              *(this + 1) = v52;
              v44 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              ++v52;
              v14 = v49++ > 8;
              if (v14)
              {
LABEL_69:
                LODWORD(v44) = 0;
                goto LABEL_86;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
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
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_86:
          *(a1 + 48) = v44;
          goto LABEL_90;
        }

        if (v22 == 4)
        {
          *(a1 + 60) |= 2u;
          v36 = *(this + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 24) = *(*this + v36);
          goto LABEL_81;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 60) |= 4u;
          v37 = *(this + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 32) = *(*this + v37);
LABEL_81:
          *(this + 1) += 8;
          goto LABEL_90;
        }

        if (v22 == 2)
        {
          *(a1 + 60) |= 0x10u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v54 = 0;
            v55 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v56 = v23 - v24;
            if (!v17)
            {
              v56 = 0;
            }

            v57 = (v25 + v24);
            v58 = v24 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_89;
              }

              v59 = *v57;
              *(this + 1) = v58;
              v28 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
LABEL_77:
                LODWORD(v28) = 0;
                goto LABEL_89;
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
                goto LABEL_77;
              }
            }
          }

LABEL_89:
          *(a1 + 52) = v28;
          goto LABEL_90;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v61 = 0;
        return v61 & 1;
      }

LABEL_90:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_94:
  v61 = v4 ^ 1;
  return v61 & 1;
}

uint64_t sub_245E110FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 60) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 16));
  if ((*(v3 + 60) & 0x20) != 0)
  {
LABEL_7:
    v5 = *(v3 + 56);
    result = PB::Writer::write(this);
  }

LABEL_8:
  v6 = *(v3 + 40);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    return PB::Writer::writeSubmessage(this, v7);
  }

  return result;
}

uint64_t sub_245E11208(uint64_t result)
{
  *result = &unk_2858CF988;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_245E11230(PB::Base *this)
{
  *this = &unk_2858CF988;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E11294(PB::Base *a1)
{
  sub_245E11230(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E112CC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF988;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 52) = 0;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    v6 = *(a2 + 44);
    v5 = 4;
    *(a1 + 52) = 4;
    *(a1 + 44) = v6;
    v4 = *(a2 + 52);
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (*(a2 + 52))
  {
LABEL_5:
    v7 = *(a2 + 32);
    v5 |= 1u;
    *(a1 + 52) = v5;
    *(a1 + 32) = v7;
    v4 = *(a2 + 52);
  }

LABEL_6:
  if ((v4 & 8) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = *(a2 + 48);
  v5 |= 8u;
  *(a1 + 52) = v5;
  *(a1 + 48) = v10;
  if ((*(a2 + 52) & 2) != 0)
  {
LABEL_8:
    v8 = *(a2 + 40);
    *(a1 + 52) = v5 | 2;
    *(a1 + 40) = v8;
  }

LABEL_9:
  if (a1 != a2)
  {
    sub_245DF843C(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_245E113B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "hostState");
    v5 = *(a1 + 52);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 44);
    PB::TextFormatter::format(this, "location");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "s7q8");
  }

  v11 = *(a1 + 52);
  if ((v11 & 8) != 0)
  {
    v12 = *(a1 + 48);
    PB::TextFormatter::format(this, "sensorState");
    v11 = *(a1 + 52);
  }

  if (v11)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E114A0(uint64_t a1, PB::Reader *this)
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
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_167;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v39 = v15++ > 8;
          if (v39)
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
          v39 = v9++ > 8;
          if (v39)
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

      v21 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          *(a1 + 52) |= 4u;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
          {
            v89 = 0;
            v90 = 0;
            v73 = 0;
            v16 = v68 >= v69;
            v91 = v68 - v69;
            if (!v16)
            {
              v91 = 0;
            }

            v92 = (v70 + v69);
            v93 = v69 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v73) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v94 = *v92;
              *(this + 1) = v93;
              v73 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              ++v93;
              v39 = v90++ > 8;
              if (v39)
              {
LABEL_116:
                LODWORD(v73) = 0;
                goto LABEL_141;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v73) = 0;
            }
          }

          else
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            while (1)
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v75;
              v39 = v72++ > 8;
              if (v39)
              {
                goto LABEL_116;
              }
            }
          }

LABEL_141:
          *(a1 + 44) = v73;
          goto LABEL_163;
        }

        if (v21 == 2)
        {
          *(a1 + 52) |= 1u;
          v49 = *(this + 1);
          if (v49 <= 0xFFFFFFFFFFFFFFF7 && v49 + 8 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v49);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_163;
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            *(a1 + 52) |= 8u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v77 = 0;
              v78 = 0;
              v55 = 0;
              v16 = v50 >= v51;
              v79 = v50 - v51;
              if (!v16)
              {
                v79 = 0;
              }

              v80 = (v52 + v51);
              v81 = v51 + 1;
              while (1)
              {
                if (!v79)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_135;
                }

                v82 = *v80;
                *(this + 1) = v81;
                v55 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                --v79;
                ++v80;
                ++v81;
                v39 = v78++ > 8;
                if (v39)
                {
LABEL_100:
                  LODWORD(v55) = 0;
                  goto LABEL_135;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v55) = 0;
              }
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
                *(this + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v39 = v54++ > 8;
                if (v39)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_135:
            *(a1 + 48) = v55;
            goto LABEL_163;
          case 4:
            *(a1 + 52) |= 2u;
            v60 = *(this + 1);
            v59 = *(this + 2);
            v61 = *this;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v83 = 0;
              v84 = 0;
              v64 = 0;
              v16 = v59 >= v60;
              v85 = v59 - v60;
              if (!v16)
              {
                v85 = 0;
              }

              v86 = (v61 + v60);
              v87 = v60 + 1;
              while (1)
              {
                if (!v85)
                {
                  LODWORD(v64) = 0;
                  *(this + 24) = 1;
                  goto LABEL_138;
                }

                v88 = *v86;
                *(this + 1) = v87;
                v64 |= (v88 & 0x7F) << v83;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                --v85;
                ++v86;
                ++v87;
                v39 = v84++ > 8;
                if (v39)
                {
LABEL_108:
                  LODWORD(v64) = 0;
                  goto LABEL_138;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(this + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v39 = v63++ > 8;
                if (v39)
                {
                  goto LABEL_108;
                }
              }
            }

LABEL_138:
            *(a1 + 40) = v64;
            goto LABEL_163;
          case 5:
            if ((v10 & 7) == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_169;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v22 = *(a1 + 16);
                while (1)
                {
                  v23 = *(a1 + 24);
                  if (v22 >= v23)
                  {
                    v24 = *(a1 + 8);
                    v25 = v22 - v24;
                    v26 = (v22 - v24) >> 2;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 62)
                    {
                      goto LABEL_170;
                    }

                    v28 = v23 - v24;
                    if (v28 >> 1 > v27)
                    {
                      v27 = v28 >> 1;
                    }

                    if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v29 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v29 = v27;
                    }

                    if (v29)
                    {
                      sub_245DF85BC(a1 + 8, v29);
                    }

                    v30 = (v22 - v24) >> 2;
                    v31 = (4 * v26);
                    v32 = (4 * v26 - 4 * v30);
                    *v31 = 0;
                    v22 = (v31 + 1);
                    memcpy(v32, v24, v25);
                    v33 = *(a1 + 8);
                    *(a1 + 8) = v32;
                    *(a1 + 16) = v22;
                    *(a1 + 24) = 0;
                    if (v33)
                    {
                      operator delete(v33);
                    }
                  }

                  else
                  {
                    *v22 = 0;
                    v22 += 4;
                  }

                  *(a1 + 16) = v22;
                  v35 = *(this + 1);
                  v34 = *(this + 2);
                  v36 = *this;
                  v37 = 0;
                  v38 = 0;
                  v39 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
                  if (v39)
                  {
                    break;
                  }

                  v45 = 0;
                  v46 = (v36 + v35);
                  v47 = v35 + 1;
                  while (1)
                  {
                    v43 = v47;
                    *(this + 1) = v47;
                    v48 = *v46++;
                    v45 |= (v48 & 0x7F) << v37;
                    if ((v48 & 0x80) == 0)
                    {
                      break;
                    }

                    v37 += 7;
                    ++v47;
                    v39 = v38++ > 8;
                    if (v39)
                    {
                      goto LABEL_59;
                    }
                  }

LABEL_62:
                  *(v22 - 1) = v45;
                  if (v43 >= v34 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_129;
                  }
                }

                v45 = 0;
                v40 = v34 - v35;
                if (v34 < v35)
                {
                  v40 = 0;
                }

                v41 = (v36 + v35);
                v42 = v35 + 1;
                while (v40)
                {
                  v43 = v42;
                  v44 = *v41;
                  *(this + 1) = v43;
                  v45 |= (v44 & 0x7F) << v37;
                  if ((v44 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v45) = 0;
                    }

                    goto LABEL_62;
                  }

                  v37 += 7;
                  --v40;
                  ++v41;
                  v42 = v43 + 1;
                  v39 = v38++ > 8;
                  if (v39)
                  {
LABEL_59:
                    LODWORD(v45) = 0;
                    goto LABEL_62;
                  }
                }

                *(this + 24) = 1;
                *(v22 - 1) = 0;
              }

LABEL_129:
              PB::Reader::recallMark();
            }

            else
            {
              v96 = *(a1 + 16);
              v95 = *(a1 + 24);
              if (v96 >= v95)
              {
                v98 = *(a1 + 8);
                v99 = v96 - v98;
                v100 = (v96 - v98) >> 2;
                v101 = v100 + 1;
                if ((v100 + 1) >> 62)
                {
LABEL_170:
                  sub_245DF85A4();
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
                  sub_245DF85BC(a1 + 8, v103);
                }

                v104 = (v96 - v98) >> 2;
                v105 = (4 * v100);
                v106 = (4 * v100 - 4 * v104);
                *v105 = 0;
                v97 = v105 + 1;
                memcpy(v106, v98, v99);
                v107 = *(a1 + 8);
                *(a1 + 8) = v106;
                *(a1 + 16) = v97;
                *(a1 + 24) = 0;
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

              *(a1 + 16) = v97;
              v109 = *(this + 1);
              v108 = *(this + 2);
              v110 = *this;
              if (v109 > 0xFFFFFFFFFFFFFFF5 || v109 + 10 > v108)
              {
                v117 = 0;
                v118 = 0;
                v113 = 0;
                v16 = v108 >= v109;
                v119 = v108 - v109;
                if (!v16)
                {
                  v119 = 0;
                }

                v120 = (v110 + v109);
                v121 = v109 + 1;
                while (1)
                {
                  if (!v119)
                  {
                    LODWORD(v113) = 0;
                    *(this + 24) = 1;
                    goto LABEL_162;
                  }

                  v122 = *v120;
                  *(this + 1) = v121;
                  v113 |= (v122 & 0x7F) << v117;
                  if ((v122 & 0x80) == 0)
                  {
                    break;
                  }

                  v117 += 7;
                  --v119;
                  ++v120;
                  ++v121;
                  v39 = v118++ > 8;
                  if (v39)
                  {
LABEL_158:
                    LODWORD(v113) = 0;
                    goto LABEL_162;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v113) = 0;
                }
              }

              else
              {
                v111 = 0;
                v112 = 0;
                v113 = 0;
                v114 = (v110 + v109);
                v115 = v109 + 1;
                while (1)
                {
                  *(this + 1) = v115;
                  v116 = *v114++;
                  v113 |= (v116 & 0x7F) << v111;
                  if ((v116 & 0x80) == 0)
                  {
                    break;
                  }

                  v111 += 7;
                  ++v115;
                  v39 = v112++ > 8;
                  if (v39)
                  {
                    goto LABEL_158;
                  }
                }
              }

LABEL_162:
              *(v97 - 1) = v113;
            }

            goto LABEL_163;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_169:
        v123 = 0;
        return v123 & 1;
      }

LABEL_163:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_167:
  v123 = v4 ^ 1;
  return v123 & 1;
}

uint64_t sub_245E11CC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 4) != 0)
  {
    v9 = *(result + 44);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v10 = *(v3 + 48);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 52) & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 52) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 2) != 0)
  {
LABEL_5:
    v5 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

double sub_245E11D84(uint64_t a1)
{
  *a1 = &unk_2858CF9C0;
  *(a1 + 192) = 0;
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
  return result;
}

void sub_245E11DD0(PB::Base *this)
{
  *this = &unk_2858CF9C0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

void sub_245E11E84(PB::Base *a1)
{
  sub_245E11DD0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E11EBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *a1 = &unk_2858CF9C0;
  *(a1 + 104) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a2 + 192))
  {
    v5 = *(a2 + 152);
    *(a1 + 192) = 1;
    *(a1 + 152) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  v6 = *(a2 + 192);
  if ((v6 & 0x80) != 0)
  {
    v9 = *(a2 + 184);
    *(a1 + 192) |= 0x80u;
    *(a1 + 184) = v9;
    v6 = *(a2 + 192);
    if ((v6 & 0x40) == 0)
    {
LABEL_7:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 180);
  *(a1 + 192) |= 0x40u;
  *(a1 + 180) = v10;
  v6 = *(a2 + 192);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 188);
  *(a1 + 192) |= 0x100u;
  *(a1 + 188) = v11;
  v6 = *(a2 + 192);
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = *(a2 + 164);
  *(a1 + 192) |= 4u;
  *(a1 + 164) = v12;
  v6 = *(a2 + 192);
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a2 + 168);
  *(a1 + 192) |= 8u;
  *(a1 + 168) = v13;
  v6 = *(a2 + 192);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a2 + 176);
  *(a1 + 192) |= 0x20u;
  *(a1 + 176) = v14;
  v6 = *(a2 + 192);
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  v15 = *(a2 + 172);
  *(a1 + 192) |= 0x10u;
  *(a1 + 172) = v15;
  if ((*(a2 + 192) & 2) != 0)
  {
LABEL_13:
    v7 = *(a2 + 160);
    *(a1 + 192) |= 2u;
    *(a1 + 160) = v7;
  }

LABEL_14:
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
    sub_245DF843C((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  }

  return a1;
}

uint64_t sub_245E120E0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accelDecimated", v7);
  }

  if ((*(a1 + 192) & 2) != 0)
  {
    PB::TextFormatter::format(this, "accelFrontVariance", *(a1 + 160));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelMean", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "accelNormAutocorr", v13);
  }

  v14 = *(a1 + 192);
  if ((v14 & 4) != 0)
  {
    PB::TextFormatter::format(this, "accelNormMean", *(a1 + 164));
    v14 = *(a1 + 192);
  }

  if ((v14 & 8) != 0)
  {
    PB::TextFormatter::format(this, "accelNormVariance", *(a1 + 168));
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "accelVariance", v17);
  }

  v18 = *(a1 + 192);
  if ((v18 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "currentAngleDelta", *(a1 + 172));
    v18 = *(a1 + 192);
    if ((v18 & 0x20) == 0)
    {
LABEL_17:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v18 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v28 = *(a1 + 176);
  PB::TextFormatter::format(this, "currentMotionState");
  if ((*(a1 + 192) & 0x40) != 0)
  {
LABEL_18:
    v19 = *(a1 + 180);
    PB::TextFormatter::format(this, "lagAtMaxAutocorr");
  }

LABEL_19:
  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "lastBaseline", v22);
  }

  v23 = *(a1 + 192);
  if ((v23 & 0x80) != 0)
  {
    PB::TextFormatter::format(this, "maxAutocorr", *(a1 + 184));
    v23 = *(a1 + 192);
  }

  if (v23)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  }

  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  while (v24 != v25)
  {
    v26 = *v24++;
    PB::TextFormatter::format(this, "walkingBaseline", v26);
  }

  if ((*(a1 + 192) & 0x100) != 0)
  {
    v27 = *(a1 + 188);
    PB::TextFormatter::format(this, "widthAtMaxAutocorr");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E12344(uint64_t a1, PB::Reader *this)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_310;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 192) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 152) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_305;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v101 = *(this + 1);
            v102 = *(this + 2);
            while (v101 < v102 && (*(this + 24) & 1) == 0)
            {
              v104 = *(a1 + 16);
              v103 = *(a1 + 24);
              if (v104 >= v103)
              {
                v106 = *(a1 + 8);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_245DF85BC(a1 + 8, v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(a1 + 8);
                *(a1 + 8) = v114;
                *(a1 + 16) = v105;
                *(a1 + 24) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(a1 + 16) = v105;
              v116 = *(this + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v105 - 1) = *(*this + v116);
              v102 = *(this + 2);
              v101 = *(this + 1) + 4;
              *(this + 1) = v101;
            }

            goto LABEL_185;
          }

          v169 = *(a1 + 16);
          v168 = *(a1 + 24);
          if (v169 >= v168)
          {
            v208 = *(a1 + 8);
            v209 = v169 - v208;
            v210 = (v169 - v208) >> 2;
            v211 = v210 + 1;
            if ((v210 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v212 = v168 - v208;
            if (v212 >> 1 > v211)
            {
              v211 = v212 >> 1;
            }

            if (v212 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v213 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v213 = v211;
            }

            if (v213)
            {
              sub_245DF85BC(a1 + 8, v213);
            }

            v236 = (v169 - v208) >> 2;
            v237 = (4 * v210);
            v238 = (4 * v210 - 4 * v236);
            *v237 = 0;
            v155 = v237 + 1;
            memcpy(v238, v208, v209);
            v239 = *(a1 + 8);
            *(a1 + 8) = v238;
            *(a1 + 16) = v155;
            *(a1 + 24) = 0;
            if (v239)
            {
              operator delete(v239);
            }
          }

          else
          {
            *v169 = 0;
            v155 = v169 + 4;
          }

          *(a1 + 16) = v155;
          goto LABEL_300;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v60 = *(this + 1);
            v61 = *(this + 2);
            while (v60 < v61 && (*(this + 24) & 1) == 0)
            {
              v63 = *(a1 + 40);
              v62 = *(a1 + 48);
              if (v63 >= v62)
              {
                v65 = *(a1 + 32);
                v66 = v63 - v65;
                v67 = (v63 - v65) >> 2;
                v68 = v67 + 1;
                if ((v67 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v69 = v62 - v65;
                if (v69 >> 1 > v68)
                {
                  v68 = v69 >> 1;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v70 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  sub_245DF85BC(a1 + 32, v70);
                }

                v71 = (v63 - v65) >> 2;
                v72 = (4 * v67);
                v73 = (4 * v67 - 4 * v71);
                *v72 = 0;
                v64 = v72 + 1;
                memcpy(v73, v65, v66);
                v74 = *(a1 + 32);
                *(a1 + 32) = v73;
                *(a1 + 40) = v64;
                *(a1 + 48) = 0;
                if (v74)
                {
                  operator delete(v74);
                }
              }

              else
              {
                *v63 = 0;
                v64 = v63 + 4;
              }

              *(a1 + 40) = v64;
              v75 = *(this + 1);
              if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v64 - 1) = *(*this + v75);
              v61 = *(this + 2);
              v60 = *(this + 1) + 4;
              *(this + 1) = v60;
            }

            goto LABEL_185;
          }

          v159 = *(a1 + 40);
          v158 = *(a1 + 48);
          if (v159 >= v158)
          {
            v196 = *(a1 + 32);
            v197 = v159 - v196;
            v198 = (v159 - v196) >> 2;
            v199 = v198 + 1;
            if ((v198 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v200 = v158 - v196;
            if (v200 >> 1 > v199)
            {
              v199 = v200 >> 1;
            }

            if (v200 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v201 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v201 = v199;
            }

            if (v201)
            {
              sub_245DF85BC(a1 + 32, v201);
            }

            v228 = (v159 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v155 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(a1 + 32);
            *(a1 + 32) = v230;
            *(a1 + 40) = v155;
            *(a1 + 48) = 0;
            if (v231)
            {
              operator delete(v231);
            }
          }

          else
          {
            *v159 = 0;
            v155 = v159 + 4;
          }

          *(a1 + 40) = v155;
          goto LABEL_300;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v76 = *(this + 1);
            v77 = *(this + 2);
            while (v76 < v77 && (*(this + 24) & 1) == 0)
            {
              v79 = *(a1 + 88);
              v78 = *(a1 + 96);
              if (v79 >= v78)
              {
                v81 = *(a1 + 80);
                v82 = v79 - v81;
                v83 = (v79 - v81) >> 2;
                v84 = v83 + 1;
                if ((v83 + 1) >> 62)
                {
                  goto LABEL_313;
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
                  sub_245DF85BC(a1 + 80, v86);
                }

                v87 = (v79 - v81) >> 2;
                v88 = (4 * v83);
                v89 = (4 * v83 - 4 * v87);
                *v88 = 0;
                v80 = v88 + 1;
                memcpy(v89, v81, v82);
                v90 = *(a1 + 80);
                *(a1 + 80) = v89;
                *(a1 + 88) = v80;
                *(a1 + 96) = 0;
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

              *(a1 + 88) = v80;
              v91 = *(this + 1);
              if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v80 - 1) = *(*this + v91);
              v77 = *(this + 2);
              v76 = *(this + 1) + 4;
              *(this + 1) = v76;
            }

            goto LABEL_185;
          }

          v167 = *(a1 + 88);
          v166 = *(a1 + 96);
          if (v167 >= v166)
          {
            v202 = *(a1 + 80);
            v203 = v167 - v202;
            v204 = (v167 - v202) >> 2;
            v205 = v204 + 1;
            if ((v204 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v206 = v166 - v202;
            if (v206 >> 1 > v205)
            {
              v205 = v206 >> 1;
            }

            if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v207 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v207 = v205;
            }

            if (v207)
            {
              sub_245DF85BC(a1 + 80, v207);
            }

            v232 = (v167 - v202) >> 2;
            v233 = (4 * v204);
            v234 = (4 * v204 - 4 * v232);
            *v233 = 0;
            v155 = v233 + 1;
            memcpy(v234, v202, v203);
            v235 = *(a1 + 80);
            *(a1 + 80) = v234;
            *(a1 + 88) = v155;
            *(a1 + 96) = 0;
            if (v235)
            {
              operator delete(v235);
            }
          }

          else
          {
            *v167 = 0;
            v155 = v167 + 4;
          }

          *(a1 + 88) = v155;
          goto LABEL_300;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 64);
              v44 = *(a1 + 72);
              if (v45 >= v44)
              {
                v47 = *(a1 + 56);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_313;
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
                  sub_245DF85BC(a1 + 56, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 56);
                *(a1 + 56) = v55;
                *(a1 + 64) = v46;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_185;
          }

          v157 = *(a1 + 64);
          v156 = *(a1 + 72);
          if (v157 >= v156)
          {
            v190 = *(a1 + 56);
            v191 = v157 - v190;
            v192 = (v157 - v190) >> 2;
            v193 = v192 + 1;
            if ((v192 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v194 = v156 - v190;
            if (v194 >> 1 > v193)
            {
              v193 = v194 >> 1;
            }

            if (v194 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v195 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = v193;
            }

            if (v195)
            {
              sub_245DF85BC(a1 + 56, v195);
            }

            v224 = (v157 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v155 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(a1 + 56);
            *(a1 + 56) = v226;
            *(a1 + 64) = v155;
            *(a1 + 72) = 0;
            if (v227)
            {
              operator delete(v227);
            }
          }

          else
          {
            *v157 = 0;
            v155 = v157 + 4;
          }

          *(a1 + 64) = v155;
          goto LABEL_300;
        case 6u:
          *(a1 + 192) |= 0x80u;
          v117 = *(this + 1);
          if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 184) = *(*this + v117);
          goto LABEL_304;
        case 7u:
          *(a1 + 192) |= 0x40u;
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
                goto LABEL_278;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v139) = 0;
            goto LABEL_278;
          }

          v170 = 0;
          v171 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v172 = v134 - v135;
          if (!v17)
          {
            v172 = 0;
          }

          v173 = (v136 + v135);
          v174 = v135 + 1;
          while (2)
          {
            if (v172)
            {
              v175 = *v173;
              *(this + 1) = v174;
              v139 |= (v175 & 0x7F) << v170;
              if (v175 < 0)
              {
                v170 += 7;
                --v172;
                ++v173;
                ++v174;
                v14 = v171++ > 8;
                if (v14)
                {
                  goto LABEL_211;
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

LABEL_278:
          *(a1 + 180) = v139;
          goto LABEL_306;
        case 8u:
          *(a1 + 192) |= 0x100u;
          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = *this;
          if (v93 <= 0xFFFFFFFFFFFFFFF5 && v93 + 10 <= v92)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            do
            {
              *(this + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_199:
            LODWORD(v97) = 0;
            goto LABEL_275;
          }

          v160 = 0;
          v161 = 0;
          v97 = 0;
          v17 = v92 >= v93;
          v162 = v92 - v93;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v94 + v93);
          v164 = v93 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(this + 1) = v164;
              v97 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_199;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v97) = 0;
              }
            }

            else
            {
              LODWORD(v97) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 188) = v97;
          goto LABEL_306;
        case 9u:
          *(a1 + 192) |= 4u;
          v152 = *(this + 1);
          if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 164) = *(*this + v152);
          goto LABEL_304;
        case 0xAu:
          *(a1 + 192) |= 8u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 168) = *(*this + v59);
          goto LABEL_304;
        case 0xBu:
          *(a1 + 192) |= 0x20u;
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
                goto LABEL_281;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v148) = 0;
            goto LABEL_281;
          }

          v176 = 0;
          v177 = 0;
          v148 = 0;
          v17 = v143 >= v144;
          v178 = v143 - v144;
          if (!v17)
          {
            v178 = 0;
          }

          v179 = (v145 + v144);
          v180 = v144 + 1;
          while (2)
          {
            if (v178)
            {
              v181 = *v179;
              *(this + 1) = v180;
              v148 |= (v181 & 0x7F) << v176;
              if (v181 < 0)
              {
                v176 += 7;
                --v178;
                ++v179;
                ++v180;
                v14 = v177++ > 8;
                if (v14)
                {
                  goto LABEL_219;
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

LABEL_281:
          *(a1 + 176) = v148;
          goto LABEL_306;
        case 0xCu:
          *(a1 + 192) |= 0x10u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 172) = *(*this + v41);
          goto LABEL_304;
        case 0xDu:
          *(a1 + 192) |= 2u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 160) = *(*this + v58);
          goto LABEL_304;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_312:
              v245 = 0;
              return v245 & 1;
            }

            v118 = *(this + 1);
            v119 = *(this + 2);
            while (v118 < v119 && (*(this + 24) & 1) == 0)
            {
              v121 = *(a1 + 112);
              v120 = *(a1 + 120);
              if (v121 >= v120)
              {
                v123 = *(a1 + 104);
                v124 = v121 - v123;
                v125 = (v121 - v123) >> 2;
                v126 = v125 + 1;
                if ((v125 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v127 = v120 - v123;
                if (v127 >> 1 > v126)
                {
                  v126 = v127 >> 1;
                }

                if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v128 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v128 = v126;
                }

                if (v128)
                {
                  sub_245DF85BC(a1 + 104, v128);
                }

                v129 = (v121 - v123) >> 2;
                v130 = (4 * v125);
                v131 = (4 * v125 - 4 * v129);
                *v130 = 0;
                v122 = v130 + 1;
                memcpy(v131, v123, v124);
                v132 = *(a1 + 104);
                *(a1 + 104) = v131;
                *(a1 + 112) = v122;
                *(a1 + 120) = 0;
                if (v132)
                {
                  operator delete(v132);
                }
              }

              else
              {
                *v121 = 0;
                v122 = v121 + 4;
              }

              *(a1 + 112) = v122;
              v133 = *(this + 1);
              if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v122 - 1) = *(*this + v133);
              v119 = *(this + 2);
              v118 = *(this + 1) + 4;
              *(this + 1) = v118;
            }

LABEL_185:
            PB::Reader::recallMark();
          }

          else
          {
            v183 = *(a1 + 112);
            v182 = *(a1 + 120);
            if (v183 >= v182)
            {
              v214 = *(a1 + 104);
              v215 = v183 - v214;
              v216 = (v183 - v214) >> 2;
              v217 = v216 + 1;
              if ((v216 + 1) >> 62)
              {
LABEL_313:
                sub_245DF85A4();
              }

              v218 = v182 - v214;
              if (v218 >> 1 > v217)
              {
                v217 = v218 >> 1;
              }

              if (v218 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v219 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v219 = v217;
              }

              if (v219)
              {
                sub_245DF85BC(a1 + 104, v219);
              }

              v240 = (v183 - v214) >> 2;
              v241 = (4 * v216);
              v242 = (4 * v216 - 4 * v240);
              *v241 = 0;
              v155 = v241 + 1;
              memcpy(v242, v214, v215);
              v243 = *(a1 + 104);
              *(a1 + 104) = v242;
              *(a1 + 112) = v155;
              *(a1 + 120) = 0;
              if (v243)
              {
                operator delete(v243);
              }
            }

            else
            {
              *v183 = 0;
              v155 = v183 + 4;
            }

            *(a1 + 112) = v155;
LABEL_300:
            v244 = *(this + 1);
            if (v244 <= 0xFFFFFFFFFFFFFFFBLL && v244 + 4 <= *(this + 2))
            {
              *(v155 - 1) = *(*this + v244);
LABEL_304:
              v24 = *(this + 1) + 4;
LABEL_305:
              *(this + 1) = v24;
            }

            else
            {
LABEL_302:
              *(this + 24) = 1;
            }
          }

LABEL_306:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_310;
          }

          break;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v25 = *(this + 1);
            v26 = *(this + 2);
            while (v25 < v26 && (*(this + 24) & 1) == 0)
            {
              v28 = *(a1 + 136);
              v27 = *(a1 + 144);
              if (v28 >= v27)
              {
                v30 = *(a1 + 128);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_313;
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
                  sub_245DF85BC(a1 + 128, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(a1 + 128);
                *(a1 + 128) = v38;
                *(a1 + 136) = v29;
                *(a1 + 144) = 0;
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

              *(a1 + 136) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
              {
LABEL_184:
                *(this + 24) = 1;
                goto LABEL_185;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_185;
          }

          v154 = *(a1 + 136);
          v153 = *(a1 + 144);
          if (v154 >= v153)
          {
            v184 = *(a1 + 128);
            v185 = v154 - v184;
            v186 = (v154 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v188 = v153 - v184;
            if (v188 >> 1 > v187)
            {
              v187 = v188 >> 1;
            }

            if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v189 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v187;
            }

            if (v189)
            {
              sub_245DF85BC(a1 + 128, v189);
            }

            v220 = (v154 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v155 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(a1 + 128);
            *(a1 + 128) = v222;
            *(a1 + 136) = v155;
            *(a1 + 144) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v154 = 0;
            v155 = v154 + 4;
          }

          *(a1 + 136) = v155;
          goto LABEL_300;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_312;
          }

          goto LABEL_306;
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

LABEL_310:
  v245 = v4 ^ 1;
  return v245 & 1;
}

uint64_t sub_245E133A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 192))
  {
    result = PB::Writer::write(this, *(result + 152));
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

  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 192);
  if ((v16 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 184));
    v16 = *(v3 + 192);
    if ((v16 & 0x40) == 0)
    {
LABEL_17:
      if ((v16 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v16 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v23 = *(v3 + 180);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 0x100) == 0)
  {
LABEL_18:
    if ((v16 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = *(v3 + 188);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 4) == 0)
  {
LABEL_19:
    if ((v16 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 164));
  v16 = *(v3 + 192);
  if ((v16 & 8) == 0)
  {
LABEL_20:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 168));
  v16 = *(v3 + 192);
  if ((v16 & 0x20) == 0)
  {
LABEL_21:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_37:
    result = PB::Writer::write(this, *(v3 + 172));
    if ((*(v3 + 192) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_36:
  v25 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  if ((v16 & 2) != 0)
  {
LABEL_23:
    result = PB::Writer::write(this, *(v3 + 160));
  }

LABEL_24:
  v17 = *(v3 + 104);
  v18 = *(v3 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = PB::Writer::write(this, v19);
  }

  v21 = *(v3 + 128);
  v20 = *(v3 + 136);
  while (v21 != v20)
  {
    v22 = *v21++;
    result = PB::Writer::write(this, v22);
  }

  return result;
}

uint64_t sub_245E13584(uint64_t result)
{
  *result = &unk_2858CF9F8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_245E135B0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E135E8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF9F8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 24) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 20);
    v3 |= 4u;
    *(result + 24) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    *(result + 24) = v3 | 2;
    *(result + 16) = v6;
  }

  return result;
}

uint64_t sub_245E1366C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "eventTag");
    v5 = *(a1 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 20);
  PB::TextFormatter::format(this, "location");
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E13710(uint64_t a1, PB::Reader *this)
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
            goto LABEL_75;
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
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 2u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(this + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
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

LABEL_70:
        *(a1 + 16) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 4u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
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

LABEL_66:
        *(a1 + 20) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
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
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245E13AE8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E13B74(uint64_t result)
{
  *result = &unk_2858CFA30;
  *(result + 40) = 0;
  return result;
}

void sub_245E13B9C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E13BD4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CFA30;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 40) = 8;
    *(a1 + 32) = result;
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
    result = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 40) = v3;
    *(a1 + 24) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 8);
    *(a1 + 40) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 40) = v3;
  *(a1 + 16) = result;
  if (*(a2 + 40))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245E13C70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "machAbsTimestamp", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pressure", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "relativeAltitude", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E13D34(uint64_t a1, PB::Reader *this)
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
            goto LABEL_47;
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
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_43:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245E13FBC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 40) & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245E14064(uint64_t result)
{
  *result = &unk_2858CFA68;
  *(result + 64) = 0;
  return result;
}

void sub_245E1408C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E140C4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CFA68;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 16;
    *(result + 64) = 16;
    *(result + 32) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 0x400) != 0)
  {
LABEL_5:
    v5 = *(a2 + 56);
    v3 |= 0x400u;
    *(result + 64) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 28);
    v3 |= 8u;
    *(result + 64) = v3;
    *(result + 28) = v6;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 4u;
  *(result + 64) = v3;
  *(result + 24) = v7;
  v2 = *(a2 + 64);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 64) = v3;
  *(result + 44) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 16);
  v3 |= 2u;
  *(result + 64) = v3;
  *(result + 16) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 1) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 8);
  v3 |= 1u;
  *(result + 64) = v3;
  *(result + 8) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 64) = v3;
  *(result + 48) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 52);
  v3 |= 0x200u;
  *(result + 64) = v3;
  *(result + 52) = v12;
  v2 = *(a2 + 64);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 64) = v3;
  *(result + 40) = v13;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_26:
    v15 = *(a2 + 60);
    *(result + 64) = v3 | 0x800;
    *(result + 60) = v15;
    return result;
  }

LABEL_25:
  v14 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 64) = v3;
  *(result + 36) = v14;
  if ((*(a2 + 64) & 0x800) != 0)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_245E14240(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "accelBiasZ", *(a1 + 24));
    v5 = *(a1 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
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

  PB::TextFormatter::format(this, "accelZ", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a1 + 60);
  PB::TextFormatter::format(this, "compensate");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "height", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "inertialCompOffset", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "inertialCompPressure", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "kfPressure", *(a1 + 44));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "rawPressure", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "rawPressureTemperature", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "rawPressureTimestamp");
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 64) & 0x400) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 56));
  }

LABEL_14:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E14404(uint64_t a1, PB::Reader *this)
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
            goto LABEL_116;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 64) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_79:
                *(this + 24) = 1;
                goto LABEL_112;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_101;
            case 0xB:
              *(a1 + 64) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 36) = *(*this + v2);
              goto LABEL_101;
            case 0xC:
              *(a1 + 64) |= 0x800u;
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

              *(a1 + 60) = v32;
              goto LABEL_112;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 64) |= 1u;
              v33 = *(this + 1);
              v2 = *(this + 2);
              v34 = *this;
              if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
              {
                v48 = 0;
                v49 = 0;
                v37 = 0;
                if (v2 <= v33)
                {
                  v2 = *(this + 1);
                }

                v50 = v2 - v33;
                v51 = (v34 + v33);
                v52 = v33 + 1;
                while (1)
                {
                  if (!v50)
                  {
                    v37 = 0;
                    *(this + 24) = 1;
                    goto LABEL_111;
                  }

                  v53 = v52;
                  v54 = *v51;
                  *(this + 1) = v53;
                  v37 |= (v54 & 0x7F) << v48;
                  if ((v54 & 0x80) == 0)
                  {
                    break;
                  }

                  v48 += 7;
                  --v50;
                  ++v51;
                  v52 = v53 + 1;
                  v14 = v49++ > 8;
                  if (v14)
                  {
                    v37 = 0;
                    goto LABEL_110;
                  }
                }

                if (*(this + 24))
                {
                  v37 = 0;
                }

LABEL_110:
                v2 = v53;
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
                    v37 = 0;
                    break;
                  }
                }
              }

LABEL_111:
              *(a1 + 8) = v37;
              goto LABEL_112;
            case 8:
              *(a1 + 64) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_101;
            case 9:
              *(a1 + 64) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_101;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 64) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_101;
          case 5:
            *(a1 + 64) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_101;
          case 6:
            *(a1 + 64) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v43 = v2 - v23;
              v44 = (v24 + v23);
              v45 = v23 + 1;
              while (1)
              {
                if (!v43)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_107;
                }

                v46 = v45;
                v47 = *v44;
                *(this + 1) = v46;
                v27 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                v45 = v46 + 1;
                v14 = v42++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_106:
              v2 = v46;
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

LABEL_107:
            *(a1 + 16) = v27;
            goto LABEL_112;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_101;
          case 2:
            *(a1 + 64) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_101;
          case 3:
            *(a1 + 64) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_112;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(this + 1);
LABEL_112:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_116:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_245E14A40(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 64);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 64) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 64) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v3 + 60);

  return PB::Writer::write(this);
}

uint64_t sub_245E14BC8(uint64_t result)
{
  *result = &unk_2858CFAA0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_245E14BEC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CFAA0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E14C6C(PB::Base *a1)
{
  sub_245E14BEC(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E14CA4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CFAA0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 16);
    *(result + 24) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_245E14D70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "lastConvergenceTimestamp", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E14E08(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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
        *(a1 + 24) |= 1u;
        v22 = *(this + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v22);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v24 = 0;
          return v24 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

double sub_245E150C8(uint64_t a1)
{
  *a1 = &unk_2858D0868;
  *(a1 + 160) = 0;
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
  return result;
}

uint64_t sub_245E15114(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_245E1517C(uint64_t result)
{
  *result = &unk_2858CFAD8;
  *(result + 44) = 0;
  return result;
}

void sub_245E151A4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E151DC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CFAD8;
  *(a1 + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 44) = 8;
    *(a1 + 32) = result;
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
    result = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 44) = v3;
    *(a1 + 24) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 44) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 8);
      *(a1 + 44) = v3 | 1;
      *(a1 + 8) = result;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 44) = v3;
  *(a1 + 40) = v5;
  if (*(a2 + 44))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245E15294(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "dThetaNorm", *(a1 + 8));
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "lastCorrespondenceTimestamp", *(a1 + 16));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "lastUpdateTimestamp", *(a1 + 24));
  v5 = *(a1 + 44);
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
  v6 = *(a1 + 40);
  PB::TextFormatter::format(this, "state");
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E15378(uint64_t a1, PB::Reader *this)
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
            goto LABEL_52;
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
          *(a1 + 44) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_48;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_47;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_47;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_41;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_47;
          case 4:
            *(a1 + 44) |= 0x10u;
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

            *(a1 + 40) = v24;
            goto LABEL_48;
          case 5:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_41;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_47:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_48;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_48:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245E1564C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = *(v3 + 40);
    result = PB::Writer::write(this);
    if ((*(v3 + 44) & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v6 = *(v3 + 8);

  return PB::Writer::write(this, v6);
}

void *sub_245E15710(void *result)
{
  *result = &unk_2858CFB10;
  result[1] = 0;
  return result;
}

void sub_245E15730(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CFB10;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E157B0(PB::Base *a1)
{
  sub_245E15730(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E157E8(void *result, uint64_t a2)
{
  *result = &unk_2858CFB10;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E15890(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E1590C(int a1, PB::Reader *this)
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

uint64_t sub_245E15B5C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245E15B78(void *result)
{
  *result = &unk_2858CFB48;
  result[1] = 0;
  return result;
}

void sub_245E15B98(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CFB48;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E15C18(PB::Base *a1)
{
  sub_245E15B98(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E15C50(void *result, uint64_t a2)
{
  *result = &unk_2858CFB48;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E15CFC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E15D78(int a1, PB::Reader *this)
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

double sub_245E15FC8(uint64_t a1)
{
  *a1 = &unk_2858CFB80;
  *(a1 + 88) = 0;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t sub_245E16004(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void sub_245E16020(PB::Base *this)
{
  *this = &unk_2858CFB80;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

void sub_245E160C4(PB::Base *a1)
{
  sub_245E16020(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E160FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CFB80;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a2 + 88))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v4 = *(a2 + 132);
  if ((v4 & 0x100) != 0)
  {
    v9 = *(a2 + 112);
    *(a1 + 132) |= 0x100u;
    *(a1 + 112) = v9;
    v4 = *(a2 + 132);
    if ((v4 & 0x80) == 0)
    {
LABEL_7:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 108);
  *(a1 + 132) |= 0x80u;
  *(a1 + 108) = v10;
  v4 = *(a2 + 132);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 104);
  *(a1 + 132) |= 0x40u;
  *(a1 + 104) = v11;
  v4 = *(a2 + 132);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 120);
  *(a1 + 132) |= 0x400u;
  *(a1 + 120) = v12;
  v4 = *(a2 + 132);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 64);
  *(a1 + 132) |= 2u;
  *(a1 + 64) = v13;
  v4 = *(a2 + 132);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 124);
  *(a1 + 132) |= 0x800u;
  *(a1 + 124) = v14;
  v4 = *(a2 + 132);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 56);
  *(a1 + 132) |= 1u;
  *(a1 + 56) = v15;
  v4 = *(a2 + 132);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_32:
  v16 = *(a2 + 100);
  *(a1 + 132) |= 0x20u;
  *(a1 + 100) = v16;
  if ((*(a2 + 132) & 0x200) != 0)
  {
LABEL_14:
    v5 = *(a2 + 116);
    *(a1 + 132) |= 0x200u;
    *(a1 + 116) = v5;
  }

LABEL_15:
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v6 = *(a2 + 132);
  if ((v6 & 0x10) != 0)
  {
    v17 = *(a2 + 96);
    *(a1 + 132) |= 0x10u;
    *(a1 + 96) = v17;
    v6 = *(a2 + 132);
    if ((v6 & 0x2000) == 0)
    {
LABEL_19:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a2 + 132) & 0x2000) == 0)
  {
    goto LABEL_19;
  }

  v18 = *(a2 + 129);
  *(a1 + 132) |= 0x2000u;
  *(a1 + 129) = v18;
  v6 = *(a2 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_20:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 80);
  *(a1 + 132) |= 8u;
  *(a1 + 80) = v19;
  v6 = *(a2 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v21 = *(a2 + 128);
    *(a1 + 132) |= 0x1000u;
    *(a1 + 128) = v21;
    if ((*(a2 + 132) & 0x4000) == 0)
    {
      return a1;
    }

    goto LABEL_23;
  }

LABEL_37:
  v20 = *(a2 + 72);
  *(a1 + 132) |= 4u;
  *(a1 + 72) = v20;
  v6 = *(a2 + 132);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v6 & 0x4000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 130);
    *(a1 + 132) |= 0x4000u;
    *(a1 + 130) = v7;
  }

  return a1;
}

uint64_t sub_245E163E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 132);
  if ((v5 & 0x10) != 0)
  {
    v16 = *(a1 + 96);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 132);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "arrivalTimestamp", *(a1 + 100));
  if (*(a1 + 132))
  {
LABEL_4:
    v6 = *(a1 + 56);
    PB::TextFormatter::format(this, "btcTimestamp");
  }

LABEL_5:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "filteredAcceleration", v9);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "gyroBias", v12);
  }

  v13 = *(a1 + 132);
  if ((v13 & 0x1000) != 0)
  {
    v17 = *(a1 + 128);
    PB::TextFormatter::format(this, "isIEDEnabled");
    v13 = *(a1 + 132);
    if ((v13 & 0x2000) == 0)
    {
LABEL_11:
      if ((v13 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((*(a1 + 132) & 0x2000) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(a1 + 129);
  PB::TextFormatter::format(this, "isInEar");
  v13 = *(a1 + 132);
  if ((v13 & 0x4000) == 0)
  {
LABEL_12:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a1 + 130);
  PB::TextFormatter::format(this, "isVirtual");
  v13 = *(a1 + 132);
  if ((v13 & 0x40) == 0)
  {
LABEL_13:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(a1 + 104);
  PB::TextFormatter::format(this, "location");
  v13 = *(a1 + 132);
  if ((v13 & 0x80) == 0)
  {
LABEL_14:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(a1 + 108);
  PB::TextFormatter::format(this, "quiescentMode");
  v13 = *(a1 + 132);
  if ((v13 & 0x100) == 0)
  {
LABEL_15:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "quiescentNoise", *(a1 + 112));
  v13 = *(a1 + 132);
  if ((v13 & 0x200) == 0)
  {
LABEL_16:
    if ((v13 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "sampleLatency", *(a1 + 116));
  v13 = *(a1 + 132);
  if ((v13 & 2) == 0)
  {
LABEL_17:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "sensorTimeUponReceival", *(a1 + 64));
  v13 = *(a1 + 132);
  if ((v13 & 0x400) == 0)
  {
LABEL_18:
    if ((v13 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = *(a1 + 120);
  PB::TextFormatter::format(this, "sequenceNumber");
  v13 = *(a1 + 132);
  if ((v13 & 4) == 0)
  {
LABEL_19:
    if ((v13 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  PB::TextFormatter::format(this, "sourceTimestampToCFAbsoluteTime", *(a1 + 72));
  if ((*(a1 + 132) & 8) != 0)
  {
LABEL_20:
    PB::TextFormatter::format(this, "sourceTimestampToMachContinuous", *(a1 + 80));
  }

LABEL_21:
  v14 = *(a1 + 88);
  if (v14)
  {
    (*(*v14 + 32))(v14, this, "super");
  }

  if ((*(a1 + 132) & 0x800) != 0)
  {
    v15 = *(a1 + 124);
    PB::TextFormatter::format(this, "timeSyncStatus");
  }

  return MEMORY[0x2821A4560](this);
}