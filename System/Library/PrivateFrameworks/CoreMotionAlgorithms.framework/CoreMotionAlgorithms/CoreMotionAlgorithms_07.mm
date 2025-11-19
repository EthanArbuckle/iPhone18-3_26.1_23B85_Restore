double sub_245DBB83C(uint64_t a1)
{
  *a1 = &unk_2858CD998;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void sub_245DBB878(PB::Base *this)
{
  *this = &unk_2858CD998;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

void sub_245DBB94C(PB::Base *a1)
{
  sub_245DBB878(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBB984(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CD998;
  *(a1 + 8) = 0u;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  if (*(a2 + 108))
  {
    v5 = *(a2 + 72);
    *(a1 + 108) = 1;
    *(a1 + 72) = v5;
    v4 = 9;
    if ((*(a2 + 108) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 8;
  if ((*(a2 + 108) & 8) != 0)
  {
LABEL_5:
    v6 = *(a2 + 88);
    *(a1 + 108) = v4;
    *(a1 + 88) = v6;
  }

LABEL_6:
  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v7 = *(a2 + 108);
  if ((v7 & 0x40) != 0)
  {
    v13 = *(a2 + 100);
    *(a1 + 108) |= 0x40u;
    *(a1 + 100) = v13;
    v7 = *(a2 + 108);
    if ((v7 & 0x20) == 0)
    {
LABEL_14:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 108) & 0x20) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a2 + 96);
  *(a1 + 108) |= 0x20u;
  *(a1 + 96) = v14;
  v7 = *(a2 + 108);
  if ((v7 & 0x80) == 0)
  {
LABEL_15:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v15 = *(a2 + 104);
  *(a1 + 108) |= 0x80u;
  *(a1 + 104) = v15;
  if ((*(a2 + 108) & 0x10) != 0)
  {
LABEL_16:
    v8 = *(a2 + 92);
    *(a1 + 108) |= 0x10u;
    *(a1 + 92) = v8;
  }

LABEL_17:
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v9 = *(a2 + 108);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 + 80);
    *(a1 + 108) |= 2u;
    *(a1 + 80) = v10;
    v9 = *(a2 + 108);
  }

  if ((v9 & 4) != 0)
  {
    v11 = *(a2 + 84);
    *(a1 + 108) |= 4u;
    *(a1 + 84) = v11;
  }

  return a1;
}

uint64_t sub_245DBBBDC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "acceleration", v7);
  }

  if ((*(a1 + 108) & 2) != 0)
  {
    PB::TextFormatter::format(this, "correlation", *(a1 + 80));
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "current");
  }

  if ((*(a1 + 108) & 4) != 0)
  {
    PB::TextFormatter::format(this, "deltatip", *(a1 + 84));
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "instability");
  }

  v10 = *(a1 + 108);
  if ((v10 & 8) != 0)
  {
    v14 = *(a1 + 88);
    PB::TextFormatter::format(this, "location");
    v10 = *(a1 + 108);
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 108) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(a1 + 92);
  PB::TextFormatter::format(this, "state");
  v10 = *(a1 + 108);
  if ((v10 & 0x20) == 0)
  {
LABEL_14:
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "tilt", *(a1 + 96));
  v10 = *(a1 + 108);
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_26:
    PB::TextFormatter::format(this, "tip", *(a1 + 100));
    if ((*(a1 + 108) & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_25:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 72));
  v10 = *(a1 + 108);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  v16 = *(a1 + 104);
  PB::TextFormatter::format(this, "upright");
LABEL_17:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "variance", v13);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBBDF0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 6)
      {
        if (v23 > 9)
        {
          switch(v23)
          {
            case 0xA:
              if (v22 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_178;
                }

                v38 = *(this + 1);
                v39 = *(this + 2);
                while (v38 < v39 && (*(this + 24) & 1) == 0)
                {
                  v41 = *(a1 + 40);
                  v40 = *(a1 + 48);
                  if (v41 >= v40)
                  {
                    v43 = *(a1 + 32);
                    v44 = v41 - v43;
                    v45 = (v41 - v43) >> 2;
                    v46 = v45 + 1;
                    if ((v45 + 1) >> 62)
                    {
                      goto LABEL_179;
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
                      sub_245DF85BC(a1 + 32, v48);
                    }

                    v49 = (v41 - v43) >> 2;
                    v50 = (4 * v45);
                    v51 = (4 * v45 - 4 * v49);
                    *v50 = 0;
                    v42 = v50 + 1;
                    memcpy(v51, v43, v44);
                    v52 = *(a1 + 32);
                    *(a1 + 32) = v51;
                    *(a1 + 40) = v42;
                    *(a1 + 48) = 0;
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

                  *(a1 + 40) = v42;
                  v53 = *(this + 1);
                  if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
                  {
LABEL_135:
                    *(this + 24) = 1;
                    break;
                  }

                  *(v42 - 1) = *(*this + v53);
                  v39 = *(this + 2);
                  v38 = *(this + 1) + 4;
                  *(this + 1) = v38;
                }

LABEL_58:
                PB::Reader::recallMark();
                goto LABEL_172;
              }

              v97 = *(a1 + 40);
              v96 = *(a1 + 48);
              if (v97 >= v96)
              {
                v101 = *(a1 + 32);
                v102 = v97 - v101;
                v103 = (v97 - v101) >> 2;
                v104 = v103 + 1;
                if ((v103 + 1) >> 62)
                {
                  goto LABEL_179;
                }

                v105 = v96 - v101;
                if (v105 >> 1 > v104)
                {
                  v104 = v105 >> 1;
                }

                if (v105 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v106 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v106 = v104;
                }

                if (v106)
                {
                  sub_245DF85BC(a1 + 32, v106);
                }

                v113 = (v97 - v101) >> 2;
                v114 = (4 * v103);
                v115 = (4 * v103 - 4 * v113);
                *v114 = 0;
                v98 = v114 + 1;
                memcpy(v115, v101, v102);
                v116 = *(a1 + 32);
                *(a1 + 32) = v115;
                *(a1 + 40) = v98;
                *(a1 + 48) = 0;
                if (v116)
                {
                  operator delete(v116);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(a1 + 40) = v98;
LABEL_166:
              v121 = *(this + 1);
              if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(v98 - 1) = *(*this + v121);
LABEL_170:
              v36 = *(this + 1) + 4;
LABEL_171:
              *(this + 1) = v36;
              goto LABEL_172;
            case 0xB:
              *(a1 + 108) |= 2u;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
              {
LABEL_168:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(a1 + 80) = *(*this + v83);
              goto LABEL_170;
            case 0xC:
              *(a1 + 108) |= 4u;
              v34 = *(this + 1);
              if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(a1 + 84) = *(*this + v34);
              goto LABEL_170;
          }
        }

        else
        {
          switch(v23)
          {
            case 7:
              *(a1 + 108) |= 0x20u;
              v37 = *(this + 1);
              if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(a1 + 96) = *(*this + v37);
              goto LABEL_170;
            case 8:
              *(a1 + 108) |= 0x80u;
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

              *(a1 + 104) = v66;
              goto LABEL_172;
            case 9:
              *(a1 + 108) |= 0x10u;
              v25 = *(this + 1);
              v24 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
              {
                v84 = 0;
                v85 = 0;
                v29 = 0;
                v17 = v24 >= v25;
                v86 = v24 - v25;
                if (!v17)
                {
                  v86 = 0;
                }

                v87 = (v26 + v25);
                v88 = v25 + 1;
                while (1)
                {
                  if (!v86)
                  {
                    LODWORD(v29) = 0;
                    *(this + 24) = 1;
                    goto LABEL_156;
                  }

                  v89 = *v87;
                  *(this + 1) = v88;
                  v29 |= (v89 & 0x7F) << v84;
                  if ((v89 & 0x80) == 0)
                  {
                    break;
                  }

                  v84 += 7;
                  --v86;
                  ++v87;
                  ++v88;
                  v14 = v85++ > 8;
                  if (v14)
                  {
LABEL_120:
                    LODWORD(v29) = 0;
                    goto LABEL_156;
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
                    goto LABEL_120;
                  }
                }
              }

LABEL_156:
              *(a1 + 92) = v29;
              goto LABEL_172;
          }
        }
      }

      else if (v23 > 3)
      {
        switch(v23)
        {
          case 4:
            operator new();
          case 5:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_178;
              }

              v67 = *(this + 1);
              v68 = *(this + 2);
              while (v67 < v68 && (*(this + 24) & 1) == 0)
              {
                v70 = *(a1 + 16);
                v69 = *(a1 + 24);
                if (v70 >= v69)
                {
                  v72 = *(a1 + 8);
                  v73 = v70 - v72;
                  v74 = (v70 - v72) >> 2;
                  v75 = v74 + 1;
                  if ((v74 + 1) >> 62)
                  {
                    goto LABEL_179;
                  }

                  v76 = v69 - v72;
                  if (v76 >> 1 > v75)
                  {
                    v75 = v76 >> 1;
                  }

                  if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v77 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v77 = v75;
                  }

                  if (v77)
                  {
                    sub_245DF85BC(a1 + 8, v77);
                  }

                  v78 = (v70 - v72) >> 2;
                  v79 = (4 * v74);
                  v80 = (4 * v74 - 4 * v78);
                  *v79 = 0;
                  v71 = v79 + 1;
                  memcpy(v80, v72, v73);
                  v81 = *(a1 + 8);
                  *(a1 + 8) = v80;
                  *(a1 + 16) = v71;
                  *(a1 + 24) = 0;
                  if (v81)
                  {
                    operator delete(v81);
                  }
                }

                else
                {
                  *v70 = 0;
                  v71 = v70 + 4;
                }

                *(a1 + 16) = v71;
                v82 = *(this + 1);
                if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
                {
                  goto LABEL_135;
                }

                *(v71 - 1) = *(*this + v82);
                v68 = *(this + 2);
                v67 = *(this + 1) + 4;
                *(this + 1) = v67;
              }

              goto LABEL_58;
            }

            v100 = *(a1 + 16);
            v99 = *(a1 + 24);
            if (v100 >= v99)
            {
              v107 = *(a1 + 8);
              v108 = v100 - v107;
              v109 = (v100 - v107) >> 2;
              v110 = v109 + 1;
              if ((v109 + 1) >> 62)
              {
LABEL_179:
                sub_245DF85A4();
              }

              v111 = v99 - v107;
              if (v111 >> 1 > v110)
              {
                v110 = v111 >> 1;
              }

              if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v112 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v112 = v110;
              }

              if (v112)
              {
                sub_245DF85BC(a1 + 8, v112);
              }

              v117 = (v100 - v107) >> 2;
              v118 = (4 * v109);
              v119 = (4 * v109 - 4 * v117);
              *v118 = 0;
              v98 = v118 + 1;
              memcpy(v119, v107, v108);
              v120 = *(a1 + 8);
              *(a1 + 8) = v119;
              *(a1 + 16) = v98;
              *(a1 + 24) = 0;
              if (v120)
              {
                operator delete(v120);
              }
            }

            else
            {
              *v100 = 0;
              v98 = v100 + 4;
            }

            *(a1 + 16) = v98;
            goto LABEL_166;
          case 6:
            *(a1 + 108) |= 0x40u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_168;
            }

            *(a1 + 100) = *(*this + v33);
            goto LABEL_170;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(a1 + 108) |= 1u;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(this + 2))
            {
              goto LABEL_168;
            }

            *(a1 + 72) = *(*this + v35);
            v36 = *(this + 1) + 8;
            goto LABEL_171;
          case 2:
            *(a1 + 108) |= 8u;
            v55 = *(this + 1);
            v54 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v54)
            {
              v90 = 0;
              v91 = 0;
              v59 = 0;
              v17 = v54 >= v55;
              v92 = v54 - v55;
              if (!v17)
              {
                v92 = 0;
              }

              v93 = (v56 + v55);
              v94 = v55 + 1;
              while (1)
              {
                if (!v92)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v95 = *v93;
                *(this + 1) = v94;
                v59 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                --v92;
                ++v93;
                ++v94;
                v14 = v91++ > 8;
                if (v14)
                {
LABEL_128:
                  LODWORD(v59) = 0;
                  goto LABEL_159;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }
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
                  goto LABEL_128;
                }
              }
            }

LABEL_159:
            *(a1 + 88) = v59;
            goto LABEL_172;
          case 3:
            operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_178:
        v122 = 0;
        return v122 & 1;
      }

LABEL_172:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v122 = v4 ^ 1;
  return v122 & 1;
}

uint64_t sub_245DBC7C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 108);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 72));
    v4 = *(v3 + 108);
  }

  if ((v4 & 8) != 0)
  {
    v5 = *(v3 + 88);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 56);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 108);
  if ((v11 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v11 = *(v3 + 108);
    if ((v11 & 0x20) == 0)
    {
LABEL_14:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      v17 = *(v3 + 104);
      result = PB::Writer::write(this);
      if ((*(v3 + 108) & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v3 + 108) & 0x20) == 0)
  {
    goto LABEL_14;
  }

  result = PB::Writer::write(this, *(v3 + 96));
  v11 = *(v3 + 108);
  if (v11 < 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v11 & 0x10) != 0)
  {
LABEL_16:
    v12 = *(v3 + 92);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_17:
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 108);
  if ((v16 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 80));
    v16 = *(v3 + 108);
  }

  if ((v16 & 4) != 0)
  {
    v18 = *(v3 + 84);

    return PB::Writer::write(this, v18);
  }

  return result;
}

uint64_t sub_245DBC948(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2858CD9D0;
  return result;
}

void sub_245DBC970(PB::Base *this)
{
  *this = &unk_2858CD9D0;
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

void sub_245DBCA24(PB::Base *a1)
{
  sub_245DBC970(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBCA5C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CD9D0;
  *(result + 8) = 0;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  if (*(a2 + 32))
  {
    v3 = *(a2 + 24);
    *(result + 32) = 1;
    *(result + 24) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 28);
    *(result + 32) = v2;
    *(result + 28) = v4;
  }

LABEL_6:
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DBCBB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "maximum");
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "minimum");
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    v8 = *(a1 + 28);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBCCA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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
          operator new();
        }

        if (v22 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v47 = 0;
            v48 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v49 = v32 - v33;
            if (!v17)
            {
              v49 = 0;
            }

            v50 = (v34 + v33);
            v51 = v33 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_68;
              }

              v52 = *v50;
              *(this + 1) = v51;
              v37 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              --v49;
              ++v50;
              ++v51;
              v14 = v48++ > 8;
              if (v14)
              {
LABEL_60:
                LODWORD(v37) = 0;
                goto LABEL_68;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
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
                goto LABEL_60;
              }
            }
          }

LABEL_68:
          *(a1 + 24) = v37;
          goto LABEL_69;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v41 = 0;
            v42 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v43 = v23 - v24;
            if (!v17)
            {
              v43 = 0;
            }

            v44 = (v25 + v24);
            v45 = v24 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_65;
              }

              v46 = *v44;
              *(this + 1) = v45;
              v28 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
LABEL_52:
                LODWORD(v28) = 0;
                goto LABEL_65;
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
                goto LABEL_52;
              }
            }
          }

LABEL_65:
          *(a1 + 28) = v28;
          goto LABEL_69;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_69:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_245DBD114(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 8);
  if (v8)
  {

    return PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}

double sub_245DBD1A8(void *a1)
{
  *a1 = &unk_2858CDA08;
  result = 0.0;
  a1[2] = 0;
  *(a1 + 28) = 0;
  return result;
}

void sub_245DBD1D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBD210(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDA08;
  *(result + 16) = 0;
  *(result + 28) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 24);
    v3 |= 8u;
    *(result + 32) = v3;
    *(result + 24) = v5;
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
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 28);
      *(result + 32) = v3 | 0x10;
      *(result + 28) = v8;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(result + 32) = v3;
  *(result + 16) = v7;
  if ((*(a2 + 32) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DBD2D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "eventTag");
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
  PB::TextFormatter::format(this, "from");
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
  PB::TextFormatter::format(this, "location");
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "to");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBD3B4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
          *(a1 + 32) |= 1u;
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

          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v31;
            v79 = (v32 + v31);
            v80 = v31 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v35 |= (v82 & 0x7F) << v76;
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
                LODWORD(v35) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_112:
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

LABEL_113:
          *(a1 + 24) = v35;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 4u;
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
                  goto LABEL_101;
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
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_100:
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

LABEL_101:
            *(a1 + 20) = v43;
            goto LABEL_114;
          case 4:
            *(a1 + 32) |= 2u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v47;
              v65 = (v48 + v47);
              v66 = v47 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_105;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v51 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v51) = 0;
                  goto LABEL_104;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_104:
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

LABEL_105:
            *(a1 + 16) = v51;
            goto LABEL_114;
          case 5:
            *(a1 + 32) |= 0x10u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v69 = 0;
              v70 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v71 = v2 - v23;
              v72 = (v24 + v23);
              v73 = v23 + 1;
              while (1)
              {
                if (!v71)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_109;
                }

                v74 = v73;
                v75 = *v72;
                *(this + 1) = v74;
                v27 |= (v75 & 0x7F) << v69;
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
                  LODWORD(v27) = 0;
                  goto LABEL_108;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_108:
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

LABEL_109:
            *(a1 + 28) = v27;
            goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_114:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_245DBD9AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 28);

  return PB::Writer::writeVarInt(this);
}

double sub_245DBDA70(uint64_t a1)
{
  *a1 = &unk_2858CDA40;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void sub_245DBDAB8(uint64_t a1)
{
  *a1 = &unk_2858CDA40;
  v6 = (a1 + 96);
  sub_245DF837C(&v6);
  v6 = (a1 + 72);
  sub_245DF837C(&v6);
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(a1);
}

void sub_245DBDBA8(uint64_t a1)
{
  sub_245DBDAB8(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBDBE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_2858CDA40;
  *(a1 + 72) = 0u;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (*(a2 + 132))
  {
    v6 = *(a2 + 120);
    *(a1 + 132) = 1;
    *(a1 + 120) = v6;
    v5 = 3;
    if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 2;
  if ((*(a2 + 132) & 2) != 0)
  {
LABEL_5:
    v7 = *(a2 + 124);
    *(a1 + 132) = v5;
    *(a1 + 124) = v7;
  }

LABEL_6:
  v8 = *(a2 + 72);
  if (v8 != *(a2 + 80))
  {
    v9 = *v8;
    sub_245DB85BC();
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  v10 = *(a2 + 132);
  if ((v10 & 8) != 0)
  {
    v11 = *(a2 + 129);
    *(a1 + 132) |= 8u;
    *(a1 + 129) = v11;
    v10 = *(a2 + 132);
  }

  if ((v10 & 4) != 0)
  {
    v12 = *(a2 + 128);
    *(a1 + 132) |= 4u;
    *(a1 + 128) = v12;
  }

  v13 = *(a2 + 96);
  if (v13 != *(a2 + 104))
  {
    v14 = *v13;
    sub_245DBDE0C();
  }

  return a1;
}

uint64_t sub_245DBDF64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "baseline");
  }

  if (*(a1 + 132))
  {
    v6 = *(a1 + 120);
    PB::TextFormatter::format(this, "location");
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "minimum");
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, this, "optical");
  }

  v11 = *(a1 + 132);
  if ((v11 & 4) != 0)
  {
    v22 = *(a1 + 128);
    PB::TextFormatter::format(this, "ringBufferUpdated");
    v11 = *(a1 + 132);
    if ((v11 & 8) == 0)
    {
LABEL_11:
      if ((v11 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 132) & 8) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(a1 + 129);
  PB::TextFormatter::format(this, "runningMinAccepted");
  if ((*(a1 + 132) & 2) != 0)
  {
LABEL_12:
    v12 = *(a1 + 124);
    PB::TextFormatter::format(this, "state");
  }

LABEL_13:
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, this, "temp");
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "tilt", v18);
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(this, "tip", v21);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBE194(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            operator new();
          }

          if (v23 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v23)
          {
            case 8:
              *(a1 + 132) |= 8u;
              v58 = *(this + 1);
              if (v58 >= *(this + 2))
              {
                v61 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v59 = v58 + 1;
                v60 = *(*this + v58);
                *(this + 1) = v59;
                v61 = v60 != 0;
              }

              *(a1 + 129) = v61;
              goto LABEL_74;
            case 9:
              *(a1 + 132) |= 4u;
              v78 = *(this + 1);
              if (v78 >= *(this + 2))
              {
                v81 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v79 = v78 + 1;
                v80 = *(*this + v78);
                *(this + 1) = v79;
                v81 = v80 != 0;
              }

              *(a1 + 128) = v81;
              goto LABEL_74;
            case 0xA:
              sub_245DBEAA4();
          }
        }
      }

      else if (v23 <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 132) |= 1u;
          v50 = *(this + 1);
          v49 = *(this + 2);
          v51 = *this;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
          {
            v88 = 0;
            v89 = 0;
            v54 = 0;
            v17 = v49 >= v50;
            v90 = v49 - v50;
            if (!v17)
            {
              v90 = 0;
            }

            v91 = (v51 + v50);
            v92 = v50 + 1;
            while (1)
            {
              if (!v90)
              {
                LODWORD(v54) = 0;
                *(this + 24) = 1;
                goto LABEL_151;
              }

              v93 = *v91;
              *(this + 1) = v92;
              v54 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              --v90;
              ++v91;
              ++v92;
              v14 = v89++ > 8;
              if (v14)
              {
LABEL_118:
                LODWORD(v54) = 0;
                goto LABEL_151;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v54) = 0;
            }
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = (v51 + v50);
            v56 = v50 + 1;
            while (1)
            {
              *(this + 1) = v56;
              v57 = *v55++;
              v54 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
                goto LABEL_118;
              }
            }
          }

LABEL_151:
          *(a1 + 120) = v54;
          goto LABEL_74;
        }

        if (v23 == 2)
        {
          *(a1 + 132) |= 2u;
          v41 = *(this + 1);
          v40 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
          {
            v82 = 0;
            v83 = 0;
            v45 = 0;
            v17 = v40 >= v41;
            v84 = v40 - v41;
            if (!v17)
            {
              v84 = 0;
            }

            v85 = (v42 + v41);
            v86 = v41 + 1;
            while (1)
            {
              if (!v84)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_148;
              }

              v87 = *v85;
              *(this + 1) = v86;
              v45 |= (v87 & 0x7F) << v82;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              ++v86;
              v14 = v83++ > 8;
              if (v14)
              {
LABEL_110:
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
                goto LABEL_110;
              }
            }
          }

LABEL_148:
          *(a1 + 124) = v45;
          goto LABEL_74;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            sub_245DB8A98();
          case 4:
            if (v22 != 2)
            {
              v98 = *(a1 + 40);
              v97 = *(a1 + 48);
              if (v98 >= v97)
              {
                v105 = *(a1 + 32);
                v106 = v98 - v105;
                v107 = (v98 - v105) >> 2;
                v108 = v107 + 1;
                if ((v107 + 1) >> 62)
                {
LABEL_166:
                  sub_245DF85A4();
                }

                v109 = v97 - v105;
                if (v109 >> 1 > v108)
                {
                  v108 = v109 >> 1;
                }

                if (v109 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v110 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v110 = v108;
                }

                if (v110)
                {
                  sub_245DF85BC(a1 + 32, v110);
                }

                v115 = (v98 - v105) >> 2;
                v116 = (4 * v107);
                v117 = (4 * v107 - 4 * v115);
                *v116 = 0;
                v96 = v116 + 1;
                memcpy(v117, v105, v106);
                v118 = *(a1 + 32);
                *(a1 + 32) = v117;
                *(a1 + 40) = v96;
                *(a1 + 48) = 0;
                if (v118)
                {
                  operator delete(v118);
                }
              }

              else
              {
                *v98 = 0;
                v96 = v98 + 4;
              }

              *(a1 + 40) = v96;
              goto LABEL_158;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_165;
            }

            v62 = *(this + 1);
            v63 = *(this + 2);
            while (v62 < v63 && (*(this + 24) & 1) == 0)
            {
              v65 = *(a1 + 40);
              v64 = *(a1 + 48);
              if (v65 >= v64)
              {
                v67 = *(a1 + 32);
                v68 = v65 - v67;
                v69 = (v65 - v67) >> 2;
                v70 = v69 + 1;
                if ((v69 + 1) >> 62)
                {
                  goto LABEL_166;
                }

                v71 = v64 - v67;
                if (v71 >> 1 > v70)
                {
                  v70 = v71 >> 1;
                }

                if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v72 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = v70;
                }

                if (v72)
                {
                  sub_245DF85BC(a1 + 32, v72);
                }

                v73 = (v65 - v67) >> 2;
                v74 = (4 * v69);
                v75 = (4 * v69 - 4 * v73);
                *v74 = 0;
                v66 = v74 + 1;
                memcpy(v75, v67, v68);
                v76 = *(a1 + 32);
                *(a1 + 32) = v75;
                *(a1 + 40) = v66;
                *(a1 + 48) = 0;
                if (v76)
                {
                  operator delete(v76);
                }
              }

              else
              {
                *v65 = 0;
                v66 = v65 + 4;
              }

              *(a1 + 40) = v66;
              v77 = *(this + 1);
              if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
              {
LABEL_127:
                *(this + 24) = 1;
                goto LABEL_73;
              }

              *(v66 - 1) = *(*this + v77);
              v63 = *(this + 2);
              v62 = *(this + 1) + 4;
              *(this + 1) = v62;
            }

            goto LABEL_73;
          case 5:
            if (v22 != 2)
            {
              v95 = *(a1 + 16);
              v94 = *(a1 + 24);
              if (v95 >= v94)
              {
                v99 = *(a1 + 8);
                v100 = v95 - v99;
                v101 = (v95 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
                  goto LABEL_166;
                }

                v103 = v94 - v99;
                if (v103 >> 1 > v102)
                {
                  v102 = v103 >> 1;
                }

                if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v104 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v104 = v102;
                }

                if (v104)
                {
                  sub_245DF85BC(a1 + 8, v104);
                }

                v111 = (v95 - v99) >> 2;
                v112 = (4 * v101);
                v113 = (4 * v101 - 4 * v111);
                *v112 = 0;
                v96 = v112 + 1;
                memcpy(v113, v99, v100);
                v114 = *(a1 + 8);
                *(a1 + 8) = v113;
                *(a1 + 16) = v96;
                *(a1 + 24) = 0;
                if (v114)
                {
                  operator delete(v114);
                }
              }

              else
              {
                *v95 = 0;
                v96 = v95 + 4;
              }

              *(a1 + 16) = v96;
LABEL_158:
              v119 = *(this + 1);
              if (v119 <= 0xFFFFFFFFFFFFFFFBLL && v119 + 4 <= *(this + 2))
              {
                *(v96 - 1) = *(*this + v119);
                *(this + 1) += 4;
              }

              else
              {
                *(this + 24) = 1;
              }

              goto LABEL_74;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_165;
            }

            v24 = *(this + 1);
            v25 = *(this + 2);
            while (v24 < v25 && (*(this + 24) & 1) == 0)
            {
              v27 = *(a1 + 16);
              v26 = *(a1 + 24);
              if (v27 >= v26)
              {
                v29 = *(a1 + 8);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_166;
                }

                v33 = v26 - v29;
                if (v33 >> 1 > v32)
                {
                  v32 = v33 >> 1;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v34 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_245DF85BC(a1 + 8, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(a1 + 8);
                *(a1 + 8) = v37;
                *(a1 + 16) = v28;
                *(a1 + 24) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 4;
              }

              *(a1 + 16) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
              {
                goto LABEL_127;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

LABEL_73:
            PB::Reader::recallMark();
            goto LABEL_74;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_165:
        v120 = 0;
        return v120 & 1;
      }

LABEL_74:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v120 = v4 ^ 1;
  return v120 & 1;
}

uint64_t sub_245DBEBF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 132);
  if (v4)
  {
    v5 = *(result + 120);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 132);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 124);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 64);
  if (v16)
  {
    result = PB::Writer::writeSubmessage(this, v16);
  }

  v17 = *(v3 + 56);
  if (v17)
  {
    result = PB::Writer::writeSubmessage(this, v17);
  }

  v18 = *(v3 + 132);
  if ((v18 & 8) != 0)
  {
    v19 = *(v3 + 129);
    result = PB::Writer::write(this);
    v18 = *(v3 + 132);
  }

  if ((v18 & 4) != 0)
  {
    v20 = *(v3 + 128);
    result = PB::Writer::write(this);
  }

  v22 = *(v3 + 96);
  v21 = *(v3 + 104);
  while (v22 != v21)
  {
    v23 = *v22++;
    result = PB::Writer::writeSubmessage(this, v23);
  }

  return result;
}

uint64_t sub_245DBED24(uint64_t result)
{
  *result = &unk_2858CDA78;
  *(result + 68) = 0;
  return result;
}

void sub_245DBED4C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBED84(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDA78;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 68) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 68);
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
    *(result + 68) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(result + 68) = v3;
    *(result + 20) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 8u;
  *(result + 68) = v3;
  *(result + 24) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 28) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 68) = v3;
  *(result + 36) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 44) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 48);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 48) = v12;
  v2 = *(a2 + 68);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 52);
  v3 |= 0x400u;
  *(result + 68) = v3;
  *(result + 52) = v13;
  v2 = *(a2 + 68);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 40);
  v3 |= 0x80u;
  *(result + 68) = v3;
  *(result + 40) = v14;
  v2 = *(a2 + 68);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 56);
  v3 |= 0x800u;
  *(result + 68) = v3;
  *(result + 56) = v15;
  v2 = *(a2 + 68);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 60);
  v3 |= 0x1000u;
  *(result + 68) = v3;
  *(result + 60) = v16;
  v2 = *(a2 + 68);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 64);
  v3 |= 0x2000u;
  *(result + 68) = v3;
  *(result + 64) = v17;
  v2 = *(a2 + 68);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 65);
  v3 |= 0x4000u;
  *(result + 68) = v3;
  *(result + 65) = v18;
  v2 = *(a2 + 68);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

LABEL_36:
    v20 = *(a2 + 67);
    *(result + 68) = v3 | 0x10000;
    *(result + 67) = v20;
    return result;
  }

LABEL_35:
  v19 = *(a2 + 66);
  v3 |= 0x8000u;
  *(result + 68) = v3;
  *(result + 66) = v19;
  if ((*(a2 + 68) & 0x10000) != 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_245DBEF8C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "deltaPositionX", *(a1 + 16));
    v5 = *(a1 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "deltaPositionY", *(a1 + 20));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "deltaPositionZ", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "deltaVelocityX", *(a1 + 28));
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "deltaVelocityY", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "deltaVelocityZ", *(a1 + 36));
  v5 = *(a1 + 68);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "isBIO");
  v5 = *(a1 + 68);
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
  v7 = *(a1 + 65);
  PB::TextFormatter::format(this, "isDOTBiasChangePossible");
  v5 = *(a1 + 68);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(a1 + 66);
  PB::TextFormatter::format(this, "isMounted");
  v5 = *(a1 + 68);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 67);
  PB::TextFormatter::format(this, "isZUPT");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "referenceFrame");
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "staticFlag");
  if (*(a1 + 68))
  {
LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_19:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBF1F0(uint64_t a1, PB::Reader *this)
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
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_106;
        case 2u:
          *(a1 + 68) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_105;
        case 3u:
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_105;
        case 4u:
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_105;
        case 5u:
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_105;
        case 6u:
          *(a1 + 68) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_105;
        case 7u:
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_105;
        case 8u:
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_105;
        case 9u:
          *(a1 + 68) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_105;
        case 0xAu:
          *(a1 + 68) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_105;
        case 0xBu:
          *(a1 + 68) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_79:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_105:
            v2 = *(this + 1) + 4;
LABEL_106:
            *(this + 1) = v2;
          }

          goto LABEL_117;
        case 0xCu:
          *(a1 + 68) |= 0x800u;
          v26 = *(this + 1);
          v2 = *(this + 2);
          v27 = *this;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(this + 1);
            }

            v48 = v2 - v26;
            v49 = (v27 + v26);
            v50 = v26 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v30) = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v51 = v50;
              v52 = *v49;
              *(this + 1) = v51;
              v30 |= (v52 & 0x7F) << v46;
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
                LODWORD(v30) = 0;
LABEL_111:
                v2 = v51;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_111;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          do
          {
            v2 = v32;
            *(this + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_112:
          *(a1 + 56) = v30;
          goto LABEL_117;
        case 0xDu:
          *(a1 + 68) |= 0x1000u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v55 = v2 - v34;
            v56 = (v35 + v34);
            v57 = v34 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v58 = v57;
              v59 = *v56;
              *(this + 1) = v58;
              v38 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_115:
                v2 = v58;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_115;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_116:
          *(a1 + 60) = v38;
          goto LABEL_117;
        case 0xEu:
          *(a1 + 68) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v45 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v44 = *(*this + v2++);
            *(this + 1) = v2;
            v45 = v44 != 0;
          }

          *(a1 + 64) = v45;
          goto LABEL_117;
        case 0xFu:
          *(a1 + 68) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = *(*this + v2++);
            *(this + 1) = v2;
            v25 = v24 != 0;
          }

          *(a1 + 65) = v25;
          goto LABEL_117;
        case 0x10u:
          *(a1 + 68) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 66) = v43;
          goto LABEL_117;
        case 0x11u:
          *(a1 + 68) |= 0x10000u;
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

          *(a1 + 67) = v23;
          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v60 = 0;
            return v60 & 1;
          }

          v2 = *(this + 1);
LABEL_117:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_121;
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

LABEL_121:
  v60 = v4 ^ 1;
  return v60 & 1;
}

uint64_t sub_245DBF968(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v7 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v9 = *(v3 + 66);
    result = PB::Writer::write(this);
    if ((*(v3 + 68) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  v8 = *(v3 + 65);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v3 + 67);

  return PB::Writer::write(this);
}

double sub_245DBFB7C(uint64_t a1)
{
  *a1 = &unk_2858CDAB0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245DBFBB8(PB::Base *this)
{
  *this = &unk_2858CDAB0;
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

void sub_245DBFC3C(PB::Base *a1)
{
  sub_245DBFBB8(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DBFC74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *a1 = &unk_2858CDAB0;
  *(a1 + 88) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF86C8(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  if (*(a2 + 88))
  {
    v6 = *(a2 + 80);
    *(a1 + 88) |= 1u;
    *(a1 + 80) = v6;
  }

  return a1;
}

uint64_t sub_245DBFD4C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "historicalMeanSeaLevelPressure", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "historicalTimestamp", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "historicalUncertainty", v13);
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format(this, "refreshTime", *(a1 + 80));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DBFE40(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
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
        goto LABEL_142;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_144:
            v111 = 0;
            return v111 & 1;
          }

          v57 = *(this + 1);
          v58 = *(this + 2);
          while (v57 < v58 && (*(this + 24) & 1) == 0)
          {
            v60 = *(a1 + 64);
            v59 = *(a1 + 72);
            if (v60 >= v59)
            {
              v62 = *(a1 + 56);
              v63 = v60 - v62;
              v64 = (v60 - v62) >> 3;
              v65 = v64 + 1;
              if ((v64 + 1) >> 61)
              {
                goto LABEL_145;
              }

              v66 = v59 - v62;
              if (v66 >> 2 > v65)
              {
                v65 = v66 >> 2;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFF8)
              {
                v67 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v65;
              }

              if (v67)
              {
                sub_245DF8830(a1 + 56, v67);
              }

              v68 = (v60 - v62) >> 3;
              v69 = (8 * v64);
              v70 = (8 * v64 - 8 * v68);
              *v69 = 0;
              v61 = v69 + 1;
              memcpy(v70, v62, v63);
              v71 = *(a1 + 56);
              *(a1 + 56) = v70;
              *(a1 + 64) = v61;
              *(a1 + 72) = 0;
              if (v71)
              {
                operator delete(v71);
              }
            }

            else
            {
              *v60 = 0;
              v61 = v60 + 8;
            }

            *(a1 + 64) = v61;
            v72 = *(this + 1);
            if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
            {
LABEL_98:
              *(this + 24) = 1;
              goto LABEL_99;
            }

            *(v61 - 1) = *(*this + v72);
            v58 = *(this + 2);
            v57 = *(this + 1) + 8;
            *(this + 1) = v57;
          }

          goto LABEL_99;
        }

        v79 = *(a1 + 64);
        v78 = *(a1 + 72);
        if (v79 >= v78)
        {
          v92 = *(a1 + 56);
          v93 = v79 - v92;
          v94 = (v79 - v92) >> 3;
          v95 = v94 + 1;
          if ((v94 + 1) >> 61)
          {
LABEL_145:
            sub_245DF85A4();
          }

          v96 = v78 - v92;
          if (v96 >> 2 > v95)
          {
            v95 = v96 >> 2;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v97 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          if (v97)
          {
            sub_245DF8830(a1 + 56, v97);
          }

          v106 = (v79 - v92) >> 3;
          v107 = (8 * v94);
          v108 = (8 * v94 - 8 * v106);
          *v107 = 0;
          v75 = v107 + 1;
          memcpy(v108, v92, v93);
          v109 = *(a1 + 56);
          *(a1 + 56) = v108;
          *(a1 + 64) = v75;
          *(a1 + 72) = 0;
          if (v109)
          {
            operator delete(v109);
          }
        }

        else
        {
          *v79 = 0;
          v75 = v79 + 8;
        }

        *(a1 + 64) = v75;
LABEL_133:
        v110 = *(this + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(this + 2))
        {
          goto LABEL_135;
        }

        *(v75 - 1) = *(*this + v110);
        goto LABEL_137;
      }

      if (v23 != 4)
      {
LABEL_50:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      *(a1 + 88) |= 1u;
      v40 = *(this + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
      {
LABEL_135:
        *(this + 24) = 1;
        goto LABEL_138;
      }

      *(a1 + 80) = *(*this + v40);
LABEL_137:
      *(this + 1) += 8;
LABEL_138:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_142;
      }
    }

    if (v23 == 1)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
        }

        v41 = *(this + 1);
        v42 = *(this + 2);
        while (v41 < v42 && (*(this + 24) & 1) == 0)
        {
          v44 = *(a1 + 40);
          v43 = *(a1 + 48);
          if (v44 >= v43)
          {
            v46 = *(a1 + 32);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v50 = v43 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_245DF8830(a1 + 32, v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(a1 + 32);
            *(a1 + 32) = v54;
            *(a1 + 40) = v45;
            *(a1 + 48) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = 0;
            v45 = v44 + 8;
          }

          *(a1 + 40) = v45;
          v56 = *(this + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
          {
            goto LABEL_98;
          }

          *(v45 - 1) = *(*this + v56);
          v42 = *(this + 2);
          v41 = *(this + 1) + 8;
          *(this + 1) = v41;
        }

        goto LABEL_99;
      }

      v77 = *(a1 + 40);
      v76 = *(a1 + 48);
      if (v77 >= v76)
      {
        v86 = *(a1 + 32);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v90 = v76 - v86;
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
          sub_245DF8830(a1 + 32, v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(a1 + 32);
        *(a1 + 32) = v104;
        *(a1 + 40) = v75;
        *(a1 + 48) = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        *v77 = 0;
        v75 = v77 + 8;
      }

      *(a1 + 40) = v75;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
        }

        v24 = *(this + 1);
        v25 = *(this + 2);
        while (v24 < v25 && (*(this + 24) & 1) == 0)
        {
          v27 = *(a1 + 16);
          v26 = *(a1 + 24);
          if (v27 >= v26)
          {
            v29 = *(a1 + 8);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              goto LABEL_145;
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
              sub_245DF8830(a1 + 8, v34);
            }

            v35 = (v27 - v29) >> 3;
            v36 = (8 * v31);
            v37 = (8 * v31 - 8 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(a1 + 8);
            *(a1 + 8) = v37;
            *(a1 + 16) = v28;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v28;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
          {
            goto LABEL_98;
          }

          *(v28 - 1) = *(*this + v39);
          v25 = *(this + 2);
          v24 = *(this + 1) + 8;
          *(this + 1) = v24;
        }

LABEL_99:
        PB::Reader::recallMark();
        goto LABEL_138;
      }

      v74 = *(a1 + 16);
      v73 = *(a1 + 24);
      if (v74 >= v73)
      {
        v80 = *(a1 + 8);
        v81 = v74 - v80;
        v82 = (v74 - v80) >> 3;
        v83 = v82 + 1;
        if ((v82 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v84 = v73 - v80;
        if (v84 >> 2 > v83)
        {
          v83 = v84 >> 2;
        }

        if (v84 >= 0x7FFFFFFFFFFFFFF8)
        {
          v85 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v83;
        }

        if (v85)
        {
          sub_245DF8830(a1 + 8, v85);
        }

        v98 = (v74 - v80) >> 3;
        v99 = (8 * v82);
        v100 = (8 * v82 - 8 * v98);
        *v99 = 0;
        v75 = v99 + 1;
        memcpy(v100, v80, v81);
        v101 = *(a1 + 8);
        *(a1 + 8) = v100;
        *(a1 + 16) = v75;
        *(a1 + 24) = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      else
      {
        *v74 = 0;
        v75 = v74 + 8;
      }

      *(a1 + 16) = v75;
    }

    goto LABEL_133;
  }

LABEL_142:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t sub_245DC0574(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(result + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
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

  if (*(v3 + 88))
  {
    v13 = *(v3 + 80);

    return PB::Writer::write(this, v13);
  }

  return result;
}

void *sub_245DC0634(void *result)
{
  *result = &unk_2858CDAE8;
  result[1] = 0;
  return result;
}

void sub_245DC0654(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CDAE8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DC06D4(PB::Base *a1)
{
  sub_245DC0654(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DC070C(void *result, uint64_t a2)
{
  *result = &unk_2858CDAE8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DC07B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC0830(int a1, PB::Reader *this)
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

uint64_t sub_245DC0A4C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245DC0A68(void *result)
{
  *result = &unk_2858CDB20;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_245DC0A8C(uint64_t a1)
{
  *a1 = &unk_2858CDB20;
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    sub_245DF8934(a1 + 16, v5);
  }

  sub_245DF8990((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_245DC0B10(uint64_t a1)
{
  sub_245DC0A8C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DC0B48(void *result, void *a2)
{
  *result = &unk_2858CDB20;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (a2[2])
  {
    operator new();
  }

  if (a2[3])
  {
    operator new();
  }

  if (a2[1])
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DC0CD4(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (a1[1])
  {
    PB::TextFormatter::format();
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC0D60(int a1, PB::Reader *this)
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
            goto LABEL_33;
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
      if ((v9 >> 3) == 4)
      {
        operator new();
      }

      if (v21 == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (!PB::Reader::skip(this))
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

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245DC0FD8(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v1 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v1 + 8))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_245DC1050(uint64_t result)
{
  *result = &unk_2858CDB58;
  *(result + 20) = 0;
  return result;
}

void sub_245DC1078(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DC10B0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDB58;
  *(result + 20) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 4;
    *(result + 20) = 4;
    *(result + 16) = v4;
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
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 20) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 12);
    *(result + 20) = v3 | 2;
    *(result + 12) = v6;
  }

  return result;
}

uint64_t sub_245DC1130(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "level");
    v5 = *(a1 + 20);
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

  else if ((*(a1 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 12);
  PB::TextFormatter::format(this, "threshold");
  if ((*(a1 + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC11D4(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 2u;
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
        *(a1 + 12) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 20) |= 1u;
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
        *(a1 + 8) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 20) |= 4u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
          v2 = *(this + 1) + 4;
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

uint64_t sub_245DC15AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v3 + 12);

  return PB::Writer::writeVarInt(this);
}

void *sub_245DC1638(void *result)
{
  *result = &unk_2858CDB90;
  result[1] = 0;
  return result;
}

void sub_245DC1658(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CDB90;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DC16D8(PB::Base *a1)
{
  sub_245DC1658(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DC1710(void *result, uint64_t a2)
{
  *result = &unk_2858CDB90;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DC17B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC1834(int a1, PB::Reader *this)
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

uint64_t sub_245DC1A50(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245DC1A6C(void *result)
{
  *result = &unk_2858CDBC8;
  result[1] = 0;
  return result;
}

void sub_245DC1A8C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CDBC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DC1B0C(PB::Base *a1)
{
  sub_245DC1A8C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DC1B44(void *result, uint64_t a2)
{
  *result = &unk_2858CDBC8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DC1BEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC1C68(int a1, PB::Reader *this)
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

uint64_t sub_245DC1E84(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245DC1EA0(uint64_t result)
{
  *result = &unk_2858CDC00;
  *(result + 52) = 0;
  return result;
}

void sub_245DC1EC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DC1F00(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDC00;
  *(a1 + 52) = 0;
  v2 = *(a2 + 52);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 52) = 1;
    *(a1 + 8) = result;
    v2 = *(a2 + 52);
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
    LODWORD(result) = *(a2 + 36);
    v3 |= 0x20u;
    *(a1 + 52) = v3;
    *(a1 + 36) = LODWORD(result);
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    LODWORD(result) = *(a2 + 40);
    v3 |= 0x40u;
    *(a1 + 52) = v3;
    *(a1 + 40) = LODWORD(result);
    v2 = *(a2 + 52);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 44);
  v3 |= 0x80u;
  *(a1 + 52) = v3;
  *(a1 + 44) = LODWORD(result);
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result) = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 52) = v3;
  *(a1 + 24) = LODWORD(result);
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 52) = v3;
  *(a1 + 28) = LODWORD(result);
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(result) = *(a2 + 32);
  v3 |= 0x10u;
  *(a1 + 52) = v3;
  *(a1 + 32) = LODWORD(result);
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = *(a2 + 48);
  v3 |= 0x100u;
  *(a1 + 52) = v3;
  *(a1 + 48) = v5;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(a2 + 49);
  v3 |= 0x200u;
  *(a1 + 52) = v3;
  *(a1 + 49) = v6;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 16);
    *(a1 + 52) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_23:
  v7 = *(a2 + 50);
  v3 |= 0x400u;
  *(a1 + 52) = v3;
  *(a1 + 50) = v7;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245DC2060(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 52);
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

  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "validX");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(a1 + 49);
  PB::TextFormatter::format(this, "validY");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 50);
  PB::TextFormatter::format(this, "validZ");
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 24));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 28));
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 32));
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "velocityX", *(a1 + 36));
  v5 = *(a1 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "velocityY", *(a1 + 40));
  if ((*(a1 + 52) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "velocityZ", *(a1 + 44));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC2204(uint64_t a1, PB::Reader *this)
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
            goto LABEL_82;
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
            *(a1 + 52) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_78;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_50:
            v2 = *(this + 1) + 8;
            goto LABEL_77;
          }

          if (v22 == 2)
          {
            *(a1 + 52) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_76:
            v2 = *(this + 1) + 4;
LABEL_77:
            *(this + 1) = v2;
            goto LABEL_78;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 52) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_76;
            case 4:
              *(a1 + 52) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 44) = *(*this + v2);
              goto LABEL_76;
            case 5:
              *(a1 + 52) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_76;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 52) |= 0x200u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v28 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v27 = *(*this + v2++);
              *(this + 1) = v2;
              v28 = v27 != 0;
            }

            *(a1 + 49) = v28;
            goto LABEL_78;
          case 0xA:
            *(a1 + 52) |= 0x400u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v26 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v25 = *(*this + v2++);
              *(this + 1) = v2;
              v26 = v25 != 0;
            }

            *(a1 + 50) = v26;
            goto LABEL_78;
          case 0xB:
            *(a1 + 52) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_50;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 52) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_76;
          case 7:
            *(a1 + 52) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_76;
          case 8:
            *(a1 + 52) |= 0x100u;
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

            *(a1 + 48) = v24;
            goto LABEL_78;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v29 = 0;
        return v29 & 1;
      }

      v2 = *(this + 1);
LABEL_78:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_82:
  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t sub_245DC2688(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
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

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(v3 + 48);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v7 = *(v3 + 50);
    result = PB::Writer::write(this);
    if ((*(v3 + 52) & 2) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v6 = *(v3 + 49);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
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

double sub_245DC27F4(uint64_t a1)
{
  *a1 = &unk_2858CDC38;
  *(a1 + 140) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_245DC2834(PB::Base *this)
{
  *this = &unk_2858CDC38;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

void sub_245DC28C8(PB::Base *a1)
{
  sub_245DC2834(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DC2900(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDC38;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 140) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a2 + 140))
  {
    v5 = *(a2 + 104);
    *(a1 + 140) = 1;
    *(a1 + 104) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  if ((*(a2 + 140) & 4) != 0)
  {
    v6 = *(a2 + 120);
    *(a1 + 140) |= 4u;
    *(a1 + 120) = v6;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  }

  if ((*(a2 + 140) & 2) != 0)
  {
    v7 = *(a2 + 112);
    *(a1 + 140) |= 2u;
    *(a1 + 112) = v7;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  v8 = *(a2 + 140);
  if ((v8 & 0x20) != 0)
  {
    v11 = *(a2 + 132);
    *(a1 + 140) |= 0x20u;
    *(a1 + 132) = v11;
    v8 = *(a2 + 140);
    if ((v8 & 8) == 0)
    {
LABEL_15:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      v13 = *(a2 + 128);
      *(a1 + 140) |= 0x10u;
      *(a1 + 128) = v13;
      if ((*(a2 + 140) & 0x40) == 0)
      {
        return a1;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 140) & 8) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(a2 + 124);
  *(a1 + 140) |= 8u;
  *(a1 + 124) = v12;
  v8 = *(a2 + 140);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = *(a2 + 136);
    *(a1 + 140) |= 0x40u;
    *(a1 + 136) = v9;
  }

  return a1;
}

uint64_t sub_245DC2AAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 140) & 4) != 0)
  {
    v5 = *(a1 + 120);
    PB::TextFormatter::format(this, "armTimeActivityHints");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "armTimeImuConfidences", v8);
  }

  v9 = *(a1 + 140);
  if ((v9 & 8) != 0)
  {
    PB::TextFormatter::format(this, "sessionBtHintPercentage", *(a1 + 124));
    v9 = *(a1 + 140);
    if ((v9 & 0x10) == 0)
    {
LABEL_7:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 140) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "sessionGpsHintPercentage", *(a1 + 128));
  if ((*(a1 + 140) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "sessionImuHintPercentage", *(a1 + 132));
  }

LABEL_9:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "sessionSwivelAngleDegHistogram");
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "sessionTiltAngleDegHistogram");
  }

  v16 = *(a1 + 140);
  if ((v16 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "sessionWifiHintPercentage", *(a1 + 136));
    v16 = *(a1 + 140);
    if ((v16 & 1) == 0)
    {
LABEL_15:
      if ((v16 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 140) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 104);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 140) & 2) != 0)
  {
LABEL_16:
    v17 = *(a1 + 112);
    PB::TextFormatter::format(this, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  }

LABEL_17:
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "windowAfterArmImuConfidences", v20);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC2C8C(uint64_t a1, PB::Reader *this)
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
          v92 = v15++ > 8;
          if (v92)
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
        v92 = v9++ > 8;
        if (v92)
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 140) |= 1u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v139 = 0;
              v140 = 0;
              v55 = 0;
              v16 = v50 >= v51;
              v141 = v50 - v51;
              if (!v16)
              {
                v141 = 0;
              }

              v142 = (v52 + v51);
              v143 = v51 + 1;
              while (1)
              {
                if (!v141)
                {
                  v55 = 0;
                  *(this + 24) = 1;
                  goto LABEL_261;
                }

                v144 = *v142;
                *(this + 1) = v143;
                v55 |= (v144 & 0x7F) << v139;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                --v141;
                ++v142;
                ++v143;
                v92 = v140++ > 8;
                if (v92)
                {
LABEL_196:
                  v55 = 0;
                  goto LABEL_261;
                }
              }

              if (*(this + 24))
              {
                v55 = 0;
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
                v92 = v54++ > 8;
                if (v92)
                {
                  goto LABEL_196;
                }
              }
            }

LABEL_261:
            *(a1 + 104) = v55;
            goto LABEL_317;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              v34 = *(this + 1);
              v35 = *(this + 2);
              while (v34 < v35 && (*(this + 24) & 1) == 0)
              {
                v37 = *(a1 + 16);
                v36 = *(a1 + 24);
                if (v37 >= v36)
                {
                  v39 = *(a1 + 8);
                  v40 = v37 - v39;
                  v41 = (v37 - v39) >> 2;
                  v42 = v41 + 1;
                  if ((v41 + 1) >> 62)
                  {
                    goto LABEL_324;
                  }

                  v43 = v36 - v39;
                  if (v43 >> 1 > v42)
                  {
                    v42 = v43 >> 1;
                  }

                  if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v44 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v44)
                  {
                    sub_245DF85BC(a1 + 8, v44);
                  }

                  v45 = (v37 - v39) >> 2;
                  v46 = (4 * v41);
                  v47 = (4 * v41 - 4 * v45);
                  *v46 = 0;
                  v38 = v46 + 1;
                  memcpy(v47, v39, v40);
                  v48 = *(a1 + 8);
                  *(a1 + 8) = v47;
                  *(a1 + 16) = v38;
                  *(a1 + 24) = 0;
                  if (v48)
                  {
                    operator delete(v48);
                  }
                }

                else
                {
                  *v37 = 0;
                  v38 = v37 + 4;
                }

                *(a1 + 16) = v38;
                v49 = *(this + 1);
                if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
                {
LABEL_222:
                  *(this + 24) = 1;
                  break;
                }

                *(v38 - 1) = *(*this + v49);
                v35 = *(this + 2);
                v34 = *(this + 1) + 4;
                *(this + 1) = v34;
              }

LABEL_223:
              PB::Reader::recallMark();
              goto LABEL_317;
            }

            v146 = *(a1 + 16);
            v145 = *(a1 + 24);
            if (v146 >= v145)
            {
              v167 = *(a1 + 8);
              v168 = v146 - v167;
              v169 = (v146 - v167) >> 2;
              v170 = v169 + 1;
              if ((v169 + 1) >> 62)
              {
                goto LABEL_324;
              }

              v171 = v145 - v167;
              if (v171 >> 1 > v170)
              {
                v170 = v171 >> 1;
              }

              if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v172 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v170;
              }

              if (v172)
              {
                sub_245DF85BC(a1 + 8, v172);
              }

              v191 = (v146 - v167) >> 2;
              v192 = (4 * v169);
              v193 = (4 * v169 - 4 * v191);
              *v192 = 0;
              v147 = v192 + 1;
              memcpy(v193, v167, v168);
              v194 = *(a1 + 8);
              *(a1 + 8) = v193;
              *(a1 + 16) = v147;
              *(a1 + 24) = 0;
              if (v194)
              {
                operator delete(v194);
              }
            }

            else
            {
              *v146 = 0;
              v147 = v146 + 4;
            }

            *(a1 + 16) = v147;
LABEL_274:
            v199 = *(this + 1);
            if (v199 > 0xFFFFFFFFFFFFFFFBLL || v199 + 4 > *(this + 2))
            {
LABEL_276:
              *(this + 24) = 1;
              goto LABEL_317;
            }

            *(v147 - 1) = *(*this + v199);
LABEL_278:
            *(this + 1) += 4;
            goto LABEL_317;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 140) |= 4u;
              v104 = *(this + 1);
              v103 = *(this + 2);
              v105 = *this;
              if (v104 > 0xFFFFFFFFFFFFFFF5 || v104 + 10 > v103)
              {
                v159 = 0;
                v160 = 0;
                v108 = 0;
                v16 = v103 >= v104;
                v161 = v103 - v104;
                if (!v16)
                {
                  v161 = 0;
                }

                v162 = (v105 + v104);
                v163 = v104 + 1;
                while (1)
                {
                  if (!v161)
                  {
                    LODWORD(v108) = 0;
                    *(this + 24) = 1;
                    goto LABEL_267;
                  }

                  v164 = *v162;
                  *(this + 1) = v163;
                  v108 |= (v164 & 0x7F) << v159;
                  if ((v164 & 0x80) == 0)
                  {
                    break;
                  }

                  v159 += 7;
                  --v161;
                  ++v162;
                  ++v163;
                  v92 = v160++ > 8;
                  if (v92)
                  {
LABEL_218:
                    LODWORD(v108) = 0;
                    goto LABEL_267;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v108) = 0;
                }
              }

              else
              {
                v106 = 0;
                v107 = 0;
                v108 = 0;
                v109 = (v105 + v104);
                v110 = v104 + 1;
                while (1)
                {
                  *(this + 1) = v110;
                  v111 = *v109++;
                  v108 |= (v111 & 0x7F) << v106;
                  if ((v111 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  ++v110;
                  v92 = v107++ > 8;
                  if (v92)
                  {
                    goto LABEL_218;
                  }
                }
              }

LABEL_267:
              *(a1 + 120) = v108;
              goto LABEL_317;
            case 4:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_323;
                }

                v59 = *(this + 1);
                v60 = *(this + 2);
                while (v59 < v60 && (*(this + 24) & 1) == 0)
                {
                  v62 = *(a1 + 88);
                  v61 = *(a1 + 96);
                  if (v62 >= v61)
                  {
                    v64 = *(a1 + 80);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_324;
                    }

                    v68 = v61 - v64;
                    if (v68 >> 1 > v67)
                    {
                      v67 = v68 >> 1;
                    }

                    if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v69 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v69 = v67;
                    }

                    if (v69)
                    {
                      sub_245DF85BC(a1 + 80, v69);
                    }

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(a1 + 80);
                    *(a1 + 80) = v72;
                    *(a1 + 88) = v63;
                    *(a1 + 96) = 0;
                    if (v73)
                    {
                      operator delete(v73);
                    }
                  }

                  else
                  {
                    *v62 = 0;
                    v63 = v62 + 4;
                  }

                  *(a1 + 88) = v63;
                  v74 = *(this + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
                  {
                    goto LABEL_222;
                  }

                  *(v63 - 1) = *(*this + v74);
                  v60 = *(this + 2);
                  v59 = *(this + 1) + 4;
                  *(this + 1) = v59;
                }

                goto LABEL_223;
              }

              v149 = *(a1 + 88);
              v148 = *(a1 + 96);
              if (v149 >= v148)
              {
                v173 = *(a1 + 80);
                v174 = v149 - v173;
                v175 = (v149 - v173) >> 2;
                v176 = v175 + 1;
                if ((v175 + 1) >> 62)
                {
LABEL_324:
                  sub_245DF85A4();
                }

                v177 = v148 - v173;
                if (v177 >> 1 > v176)
                {
                  v176 = v177 >> 1;
                }

                if (v177 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v178 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v178 = v176;
                }

                if (v178)
                {
                  sub_245DF85BC(a1 + 80, v178);
                }

                v195 = (v149 - v173) >> 2;
                v196 = (4 * v175);
                v197 = (4 * v175 - 4 * v195);
                *v196 = 0;
                v147 = v196 + 1;
                memcpy(v197, v173, v174);
                v198 = *(a1 + 80);
                *(a1 + 80) = v197;
                *(a1 + 88) = v147;
                *(a1 + 96) = 0;
                if (v198)
                {
                  operator delete(v198);
                }
              }

              else
              {
                *v149 = 0;
                v147 = v149 + 4;
              }

              *(a1 + 88) = v147;
              goto LABEL_274;
            case 5:
              *(a1 + 140) |= 2u;
              v25 = *(this + 1);
              v24 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
              {
                v153 = 0;
                v154 = 0;
                v29 = 0;
                v16 = v24 >= v25;
                v155 = v24 - v25;
                if (!v16)
                {
                  v155 = 0;
                }

                v156 = (v26 + v25);
                v157 = v25 + 1;
                while (1)
                {
                  if (!v155)
                  {
                    v29 = 0;
                    *(this + 24) = 1;
                    goto LABEL_264;
                  }

                  v158 = *v156;
                  *(this + 1) = v157;
                  v29 |= (v158 & 0x7F) << v153;
                  if ((v158 & 0x80) == 0)
                  {
                    break;
                  }

                  v153 += 7;
                  --v155;
                  ++v156;
                  ++v157;
                  v92 = v154++ > 8;
                  if (v92)
                  {
LABEL_210:
                    v29 = 0;
                    goto LABEL_264;
                  }
                }

                if (*(this + 24))
                {
                  v29 = 0;
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
                  v92 = v28++ > 8;
                  if (v92)
                  {
                    goto LABEL_210;
                  }
                }
              }

LABEL_264:
              *(a1 + 112) = v29;
              goto LABEL_317;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 140) |= 8u;
            v138 = *(this + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 124) = *(*this + v138);
            goto LABEL_278;
          case 0xA:
            *(a1 + 140) |= 0x10u;
            v102 = *(this + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 128) = *(*this + v102);
            goto LABEL_278;
          case 0xB:
            *(a1 + 140) |= 0x40u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 136) = *(*this + v33);
            goto LABEL_278;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v75 = *(a1 + 40);
                while (1)
                {
                  v112 = *(a1 + 48);
                  if (v75 >= v112)
                  {
                    v113 = *(a1 + 32);
                    v114 = v75 - v113;
                    v115 = (v75 - v113) >> 2;
                    v116 = v115 + 1;
                    if ((v115 + 1) >> 62)
                    {
                      goto LABEL_325;
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
                      sub_245DF85BC(a1 + 32, v118);
                    }

                    v119 = (v75 - v113) >> 2;
                    v120 = (4 * v115);
                    v121 = (4 * v115 - 4 * v119);
                    *v120 = 0;
                    v75 = (v120 + 1);
                    memcpy(v121, v113, v114);
                    v122 = *(a1 + 32);
                    *(a1 + 32) = v121;
                    *(a1 + 40) = v75;
                    *(a1 + 48) = 0;
                    if (v122)
                    {
                      operator delete(v122);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(a1 + 40) = v75;
                  v124 = *(this + 1);
                  v123 = *(this + 2);
                  v125 = *this;
                  v126 = 0;
                  v127 = 0;
                  if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                  {
                    break;
                  }

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
                    v92 = v127++ > 8;
                    if (v92)
                    {
                      goto LABEL_178;
                    }
                  }

LABEL_181:
                  *(v75 - 1) = v134;
                  if (v132 >= v123 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_223;
                  }
                }

                v134 = 0;
                v129 = v123 - v124;
                if (v123 < v124)
                {
                  v129 = 0;
                }

                v130 = (v125 + v124);
                v131 = v124 + 1;
                while (v129)
                {
                  v132 = v131;
                  v133 = *v130;
                  *(this + 1) = v132;
                  v134 |= (v133 & 0x7F) << v126;
                  if ((v133 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v134) = 0;
                    }

                    goto LABEL_181;
                  }

                  v126 += 7;
                  --v129;
                  ++v130;
                  v131 = v132 + 1;
                  v92 = v127++ > 8;
                  if (v92)
                  {
LABEL_178:
                    LODWORD(v134) = 0;
                    goto LABEL_181;
                  }
                }

LABEL_221:
                *(this + 24) = 1;
                *(v75 - 1) = 0;
              }

              goto LABEL_223;
            }

            v166 = *(a1 + 40);
            v165 = *(a1 + 48);
            if (v166 >= v165)
            {
              v185 = *(a1 + 32);
              v186 = v166 - v185;
              v187 = (v166 - v185) >> 2;
              v188 = v187 + 1;
              if ((v187 + 1) >> 62)
              {
LABEL_325:
                sub_245DF85A4();
              }

              v189 = v165 - v185;
              if (v189 >> 1 > v188)
              {
                v188 = v189 >> 1;
              }

              if (v189 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v190 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v188;
              }

              if (v190)
              {
                sub_245DF85BC(a1 + 32, v190);
              }

              v219 = (v166 - v185) >> 2;
              v220 = (4 * v187);
              v221 = (4 * v187 - 4 * v219);
              *v220 = 0;
              v152 = v220 + 1;
              memcpy(v221, v185, v186);
              v222 = *(a1 + 32);
              *(a1 + 32) = v221;
              *(a1 + 40) = v152;
              *(a1 + 48) = 0;
              if (v222)
              {
                operator delete(v222);
              }
            }

            else
            {
              *v166 = 0;
              v152 = v166 + 4;
            }

            *(a1 + 40) = v152;
            v224 = *(this + 1);
            v223 = *(this + 2);
            v225 = *this;
            if (v224 <= 0xFFFFFFFFFFFFFFF5 && v224 + 10 <= v223)
            {
              v226 = 0;
              v227 = 0;
              v209 = 0;
              v228 = (v225 + v224);
              v229 = v224 + 1;
              while (1)
              {
                *(this + 1) = v229;
                v230 = *v228++;
                v209 |= (v230 & 0x7F) << v226;
                if ((v230 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v226 += 7;
                ++v229;
                v92 = v227++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v231 = 0;
            v232 = 0;
            v209 = 0;
            v16 = v223 >= v224;
            v233 = v223 - v224;
            if (!v16)
            {
              v233 = 0;
            }

            v234 = (v225 + v224);
            v235 = v224 + 1;
            while (v233)
            {
              v236 = *v234;
              *(this + 1) = v235;
              v209 |= (v236 & 0x7F) << v231;
              if ((v236 & 0x80) == 0)
              {
LABEL_314:
                if (*(this + 24))
                {
                  LODWORD(v209) = 0;
                }

                goto LABEL_316;
              }

              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v92 = v232++ > 8;
              if (v92)
              {
LABEL_312:
                LODWORD(v209) = 0;
                goto LABEL_316;
              }
            }

            goto LABEL_313;
          case 7:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v75 = *(a1 + 64);
                do
                {
                  v76 = *(a1 + 72);
                  if (v75 >= v76)
                  {
                    v77 = *(a1 + 56);
                    v78 = v75 - v77;
                    v79 = (v75 - v77) >> 2;
                    v80 = v79 + 1;
                    if ((v79 + 1) >> 62)
                    {
                      goto LABEL_325;
                    }

                    v81 = v76 - v77;
                    if (v81 >> 1 > v80)
                    {
                      v80 = v81 >> 1;
                    }

                    if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v82 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v82 = v80;
                    }

                    if (v82)
                    {
                      sub_245DF85BC(a1 + 56, v82);
                    }

                    v83 = (v75 - v77) >> 2;
                    v84 = (4 * v79);
                    v85 = (4 * v79 - 4 * v83);
                    *v84 = 0;
                    v75 = (v84 + 1);
                    memcpy(v85, v77, v78);
                    v86 = *(a1 + 56);
                    *(a1 + 56) = v85;
                    *(a1 + 64) = v75;
                    *(a1 + 72) = 0;
                    if (v86)
                    {
                      operator delete(v86);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(a1 + 64) = v75;
                  v88 = *(this + 1);
                  v87 = *(this + 2);
                  v89 = *this;
                  v90 = 0;
                  v91 = 0;
                  v92 = v88 > 0xFFFFFFFFFFFFFFF5 || v88 + 10 > v87;
                  if (v92)
                  {
                    v98 = 0;
                    v93 = v87 - v88;
                    if (v87 < v88)
                    {
                      v93 = 0;
                    }

                    v94 = (v89 + v88);
                    v95 = v88 + 1;
                    while (1)
                    {
                      if (!v93)
                      {
                        goto LABEL_221;
                      }

                      v96 = v95;
                      v97 = *v94;
                      *(this + 1) = v96;
                      v98 |= (v97 & 0x7F) << v90;
                      if ((v97 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      --v93;
                      ++v94;
                      v95 = v96 + 1;
                      v92 = v91++ > 8;
                      if (v92)
                      {
LABEL_129:
                        LODWORD(v98) = 0;
                        goto LABEL_132;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v98) = 0;
                    }
                  }

                  else
                  {
                    v98 = 0;
                    v99 = (v89 + v88);
                    v100 = v88 + 1;
                    while (1)
                    {
                      v96 = v100;
                      *(this + 1) = v100;
                      v101 = *v99++;
                      v98 |= (v101 & 0x7F) << v90;
                      if ((v101 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      ++v100;
                      v92 = v91++ > 8;
                      if (v92)
                      {
                        goto LABEL_129;
                      }
                    }
                  }

LABEL_132:
                  *(v75 - 1) = v98;
                }

                while (v96 < v87 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_223;
            }

            v151 = *(a1 + 64);
            v150 = *(a1 + 72);
            if (v151 >= v150)
            {
              v179 = *(a1 + 56);
              v180 = v151 - v179;
              v181 = (v151 - v179) >> 2;
              v182 = v181 + 1;
              if ((v181 + 1) >> 62)
              {
                goto LABEL_325;
              }

              v183 = v150 - v179;
              if (v183 >> 1 > v182)
              {
                v182 = v183 >> 1;
              }

              if (v183 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v184 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v184 = v182;
              }

              if (v184)
              {
                sub_245DF85BC(a1 + 56, v184);
              }

              v200 = (v151 - v179) >> 2;
              v201 = (4 * v181);
              v202 = (4 * v181 - 4 * v200);
              *v201 = 0;
              v152 = v201 + 1;
              memcpy(v202, v179, v180);
              v203 = *(a1 + 56);
              *(a1 + 56) = v202;
              *(a1 + 64) = v152;
              *(a1 + 72) = 0;
              if (v203)
              {
                operator delete(v203);
              }
            }

            else
            {
              *v151 = 0;
              v152 = v151 + 4;
            }

            *(a1 + 64) = v152;
            v205 = *(this + 1);
            v204 = *(this + 2);
            v206 = *this;
            if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
            {
              v207 = 0;
              v208 = 0;
              v209 = 0;
              v210 = (v206 + v205);
              v211 = v205 + 1;
              while (1)
              {
                *(this + 1) = v211;
                v212 = *v210++;
                v209 |= (v212 & 0x7F) << v207;
                if ((v212 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v207 += 7;
                ++v211;
                v92 = v208++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            v209 = 0;
            v16 = v204 >= v205;
            v215 = v204 - v205;
            if (!v16)
            {
              v215 = 0;
            }

            v216 = (v206 + v205);
            v217 = v205 + 1;
            while (v215)
            {
              v218 = *v216;
              *(this + 1) = v217;
              v209 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                goto LABEL_314;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v92 = v214++ > 8;
              if (v92)
              {
                goto LABEL_312;
              }
            }

LABEL_313:
            LODWORD(v209) = 0;
            *(this + 24) = 1;
LABEL_316:
            *(v152 - 1) = v209;
            goto LABEL_317;
          case 8:
            *(a1 + 140) |= 0x20u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 132) = *(*this + v23);
            goto LABEL_278;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_323:
        v237 = 0;
        return v237 & 1;
      }

LABEL_317:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t sub_245DC3C34(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 140))
  {
    v4 = *(result + 104);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if ((*(v3 + 140) & 4) != 0)
  {
    v8 = *(v3 + 120);
    result = PB::Writer::writeVarInt(this);
  }

  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  if ((*(v3 + 140) & 2) != 0)
  {
    v12 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeVarInt(this);
  }

  v16 = *(v3 + 56);
  v17 = *(v3 + 64);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 140);
  if ((v19 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 132));
    v19 = *(v3 + 140);
    if ((v19 & 8) == 0)
    {
LABEL_21:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      result = PB::Writer::write(this, *(v3 + 128));
      if ((*(v3 + 140) & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 140) & 8) == 0)
  {
    goto LABEL_21;
  }

  result = PB::Writer::write(this, *(v3 + 124));
  v19 = *(v3 + 140);
  if ((v19 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v19 & 0x40) == 0)
  {
    return result;
  }

LABEL_27:
  v20 = *(v3 + 136);

  return PB::Writer::write(this, v20);
}

double sub_245DC3DB0(uint64_t a1)
{
  *a1 = &unk_2858CDC70;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245DC3DE4(PB::Base *this)
{
  *this = &unk_2858CDC70;
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

void sub_245DC3E58(PB::Base *a1)
{
  sub_245DC3DE4(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DC3E90(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDC70;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a2 + 104))
  {
    v5 = *(a2 + 56);
    *(a1 + 104) = 1;
    *(a1 + 56) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v6 = *(a2 + 104);
  if ((v6 & 0x100) != 0)
  {
    v12 = *(a2 + 100);
    *(a1 + 104) |= 0x100u;
    *(a1 + 100) = v12;
    v6 = *(a2 + 104);
    if ((v6 & 0x40) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 92);
  *(a1 + 104) |= 0x40u;
  *(a1 + 92) = v13;
  v6 = *(a2 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = *(a2 + 96);
  *(a1 + 104) |= 0x80u;
  *(a1 + 96) = v14;
  v6 = *(a2 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a2 + 88);
  *(a1 + 104) |= 0x20u;
  *(a1 + 88) = v15;
  v6 = *(a2 + 104);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = *(a2 + 64);
  *(a1 + 104) |= 2u;
  *(a1 + 64) = v16;
  if ((*(a2 + 104) & 4) != 0)
  {
LABEL_11:
    v7 = *(a2 + 72);
    *(a1 + 104) |= 4u;
    *(a1 + 72) = v7;
  }

LABEL_12:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v8 = *(a2 + 104);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(a2 + 84);
    *(a1 + 104) |= 0x10u;
    *(a1 + 84) = v9;
    v8 = *(a2 + 104);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(a2 + 80);
    *(a1 + 104) |= 8u;
    *(a1 + 80) = v10;
  }

  return a1;
}

uint64_t sub_245DC4044(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 104);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "sessionGreenFieldPercentage", *(a1 + 80));
    v5 = *(a1 + 104);
  }

  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "sessionHighRotationPercentage", *(a1 + 84));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "sessionMeanPoseAngleXHistogram");
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    v13 = *(a1 + 56);
    PB::TextFormatter::format(this, "timestamp");
    v9 = *(a1 + 104);
    if ((v9 & 0x20) == 0)
    {
LABEL_9:
      if ((v9 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(a1 + 88);
  PB::TextFormatter::format(this, "triggerTimeInternalDrivingState");
  v9 = *(a1 + 104);
  if ((v9 & 2) == 0)
  {
LABEL_10:
    if ((v9 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "triggerTimeLastHighElevationGainTimestamp");
  v9 = *(a1 + 104);
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = *(a1 + 72);
  PB::TextFormatter::format(this, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  v9 = *(a1 + 104);
  if ((v9 & 0x40) == 0)
  {
LABEL_12:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "windowAfterArmGreenFieldPercentage", *(a1 + 92));
  v9 = *(a1 + 104);
  if ((v9 & 0x80) == 0)
  {
LABEL_13:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  PB::TextFormatter::format(this, "windowAfterArmHighImuDrivingConfidencePercentage", *(a1 + 96));
  if ((*(a1 + 104) & 0x100) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "windowAfterArmHighRotationPercentage", *(a1 + 100));
  }

LABEL_15:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "windowAfterArmMeanPoseAngleXHistogram");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DC4208(uint64_t a1, PB::Reader *this)
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
          v51 = v15++ > 8;
          if (v51)
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
        v51 = v9++ > 8;
        if (v51)
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 104) |= 1u;
            v62 = *(this + 1);
            v61 = *(this + 2);
            v63 = *this;
            if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
            {
              v117 = 0;
              v118 = 0;
              v66 = 0;
              v16 = v61 >= v62;
              v119 = v61 - v62;
              if (!v16)
              {
                v119 = 0;
              }

              v120 = (v63 + v62);
              v121 = v62 + 1;
              while (1)
              {
                if (!v119)
                {
                  v66 = 0;
                  *(this + 24) = 1;
                  goto LABEL_221;
                }

                v122 = *v120;
                *(this + 1) = v121;
                v66 |= (v122 & 0x7F) << v117;
                if ((v122 & 0x80) == 0)
                {
                  break;
                }

                v117 += 7;
                --v119;
                ++v120;
                ++v121;
                v51 = v118++ > 8;
                if (v51)
                {
LABEL_166:
                  v66 = 0;
                  goto LABEL_221;
                }
              }

              if (*(this + 24))
              {
                v66 = 0;
              }
            }

            else
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = (v63 + v62);
              v68 = v62 + 1;
              while (1)
              {
                *(this + 1) = v68;
                v69 = *v67++;
                v66 |= (v69 & 0x7F) << v64;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                ++v68;
                v51 = v65++ > 8;
                if (v51)
                {
                  goto LABEL_166;
                }
              }
            }

LABEL_221:
            *(a1 + 56) = v66;
            goto LABEL_269;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v34 = *(a1 + 40);
                while (1)
                {
                  v35 = *(a1 + 48);
                  if (v34 >= v35)
                  {
                    v36 = *(a1 + 32);
                    v37 = v34 - v36;
                    v38 = (v34 - v36) >> 2;
                    v39 = v38 + 1;
                    if ((v38 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v40 = v35 - v36;
                    if (v40 >> 1 > v39)
                    {
                      v39 = v40 >> 1;
                    }

                    if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v41 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41)
                    {
                      sub_245DF85BC(a1 + 32, v41);
                    }

                    v42 = (v34 - v36) >> 2;
                    v43 = (4 * v38);
                    v44 = (4 * v38 - 4 * v42);
                    *v43 = 0;
                    v34 = (v43 + 1);
                    memcpy(v44, v36, v37);
                    v45 = *(a1 + 32);
                    *(a1 + 32) = v44;
                    *(a1 + 40) = v34;
                    *(a1 + 48) = 0;
                    if (v45)
                    {
                      operator delete(v45);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(a1 + 40) = v34;
                  v47 = *(this + 1);
                  v46 = *(this + 2);
                  v48 = *this;
                  v49 = 0;
                  v50 = 0;
                  v51 = v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v46;
                  if (v51)
                  {
                    break;
                  }

                  v57 = 0;
                  v58 = (v48 + v47);
                  v59 = v47 + 1;
                  while (1)
                  {
                    v55 = v59;
                    *(this + 1) = v59;
                    v60 = *v58++;
                    v57 |= (v60 & 0x7F) << v49;
                    if ((v60 & 0x80) == 0)
                    {
                      break;
                    }

                    v49 += 7;
                    ++v59;
                    v51 = v50++ > 8;
                    if (v51)
                    {
                      goto LABEL_82;
                    }
                  }

LABEL_85:
                  *(v34 - 1) = v57;
                  if (v55 >= v46 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_196;
                  }
                }

                v57 = 0;
                v52 = v46 - v47;
                if (v46 < v47)
                {
                  v52 = 0;
                }

                v53 = (v48 + v47);
                v54 = v47 + 1;
                while (v52)
                {
                  v55 = v54;
                  v56 = *v53;
                  *(this + 1) = v55;
                  v57 |= (v56 & 0x7F) << v49;
                  if ((v56 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v57) = 0;
                    }

                    goto LABEL_85;
                  }

                  v49 += 7;
                  --v52;
                  ++v53;
                  v54 = v55 + 1;
                  v51 = v50++ > 8;
                  if (v51)
                  {
LABEL_82:
                    LODWORD(v57) = 0;
                    goto LABEL_85;
                  }
                }

LABEL_195:
                *(this + 24) = 1;
                *(v34 - 1) = 0;
              }

LABEL_196:
              PB::Reader::recallMark();
              goto LABEL_269;
            }

            v124 = *(a1 + 40);
            v123 = *(a1 + 48);
            if (v124 >= v123)
            {
              v146 = *(a1 + 32);
              v147 = v124 - v146;
              v148 = (v124 - v146) >> 2;
              v149 = v148 + 1;
              if ((v148 + 1) >> 62)
              {
                goto LABEL_276;
              }

              v150 = v123 - v146;
              if (v150 >> 1 > v149)
              {
                v149 = v150 >> 1;
              }

              if (v150 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v151 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = v149;
              }

              if (v151)
              {
                sub_245DF85BC(a1 + 32, v151);
              }

              v158 = (v124 - v146) >> 2;
              v159 = (4 * v148);
              v160 = (4 * v148 - 4 * v158);
              *v159 = 0;
              v125 = v159 + 1;
              memcpy(v160, v146, v147);
              v161 = *(a1 + 32);
              *(a1 + 32) = v160;
              *(a1 + 40) = v125;
              *(a1 + 48) = 0;
              if (v161)
              {
                operator delete(v161);
              }
            }

            else
            {
              *v124 = 0;
              v125 = v124 + 4;
            }

            *(a1 + 40) = v125;
            v163 = *(this + 1);
            v162 = *(this + 2);
            v164 = *this;
            if (v163 <= 0xFFFFFFFFFFFFFFF5 && v163 + 10 <= v162)
            {
              v165 = 0;
              v166 = 0;
              v167 = 0;
              v168 = (v164 + v163);
              v169 = v163 + 1;
              while (1)
              {
                *(this + 1) = v169;
                v170 = *v168++;
                v167 |= (v170 & 0x7F) << v165;
                if ((v170 & 0x80) == 0)
                {
                  goto LABEL_268;
                }

                v165 += 7;
                ++v169;
                v51 = v166++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }
            }

            v171 = 0;
            v172 = 0;
            v167 = 0;
            v16 = v162 >= v163;
            v173 = v162 - v163;
            if (!v16)
            {
              v173 = 0;
            }

            v174 = (v164 + v163);
            v175 = v163 + 1;
            while (v173)
            {
              v176 = *v174;
              *(this + 1) = v175;
              v167 |= (v176 & 0x7F) << v171;
              if ((v176 & 0x80) == 0)
              {
LABEL_266:
                if (*(this + 24))
                {
                  LODWORD(v167) = 0;
                }

                goto LABEL_268;
              }

              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v51 = v172++ > 8;
              if (v51)
              {
LABEL_264:
                LODWORD(v167) = 0;
                goto LABEL_268;
              }
            }

LABEL_265:
            LODWORD(v167) = 0;
            *(this + 24) = 1;
            goto LABEL_268;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 104) |= 0x100u;
              v81 = *(this + 1);
              if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
              {
LABEL_110:
                *(this + 24) = 1;
                goto LABEL_269;
              }

              *(a1 + 100) = *(*this + v81);
              goto LABEL_206;
            case 4:
              *(a1 + 104) |= 0x40u;
              v70 = *(this + 1);
              if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(this + 2))
              {
                goto LABEL_110;
              }

              *(a1 + 92) = *(*this + v70);
              goto LABEL_206;
            case 5:
              *(a1 + 104) |= 0x80u;
              v32 = *(this + 1);
              if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
              {
                goto LABEL_110;
              }

              *(a1 + 96) = *(*this + v32);
              goto LABEL_206;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v34 = *(a1 + 16);
                do
                {
                  v91 = *(a1 + 24);
                  if (v34 >= v91)
                  {
                    v92 = *(a1 + 8);
                    v93 = v34 - v92;
                    v94 = (v34 - v92) >> 2;
                    v95 = v94 + 1;
                    if ((v94 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v96 = v91 - v92;
                    if (v96 >> 1 > v95)
                    {
                      v95 = v96 >> 1;
                    }

                    if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v97 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v97 = v95;
                    }

                    if (v97)
                    {
                      sub_245DF85BC(a1 + 8, v97);
                    }

                    v98 = (v34 - v92) >> 2;
                    v99 = (4 * v94);
                    v100 = (4 * v94 - 4 * v98);
                    *v99 = 0;
                    v34 = (v99 + 1);
                    memcpy(v100, v92, v93);
                    v101 = *(a1 + 8);
                    *(a1 + 8) = v100;
                    *(a1 + 16) = v34;
                    *(a1 + 24) = 0;
                    if (v101)
                    {
                      operator delete(v101);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(a1 + 16) = v34;
                  v103 = *(this + 1);
                  v102 = *(this + 2);
                  v104 = *this;
                  v105 = 0;
                  v106 = 0;
                  if (v103 > 0xFFFFFFFFFFFFFFF5 || v103 + 10 > v102)
                  {
                    v113 = 0;
                    v108 = v102 - v103;
                    if (v102 < v103)
                    {
                      v108 = 0;
                    }

                    v109 = (v104 + v103);
                    v110 = v103 + 1;
                    while (1)
                    {
                      if (!v108)
                      {
                        goto LABEL_195;
                      }

                      v111 = v110;
                      v112 = *v109;
                      *(this + 1) = v111;
                      v113 |= (v112 & 0x7F) << v105;
                      if ((v112 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      --v108;
                      ++v109;
                      v110 = v111 + 1;
                      v51 = v106++ > 8;
                      if (v51)
                      {
LABEL_151:
                        LODWORD(v113) = 0;
                        goto LABEL_154;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v113) = 0;
                    }
                  }

                  else
                  {
                    v113 = 0;
                    v114 = (v104 + v103);
                    v115 = v103 + 1;
                    while (1)
                    {
                      v111 = v115;
                      *(this + 1) = v115;
                      v116 = *v114++;
                      v113 |= (v116 & 0x7F) << v105;
                      if ((v116 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      ++v115;
                      v51 = v106++ > 8;
                      if (v51)
                      {
                        goto LABEL_151;
                      }
                    }
                  }

LABEL_154:
                  *(v34 - 1) = v113;
                }

                while (v111 < v102 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_196;
            }

            v145 = *(a1 + 16);
            v144 = *(a1 + 24);
            if (v145 >= v144)
            {
              v152 = *(a1 + 8);
              v153 = v145 - v152;
              v154 = (v145 - v152) >> 2;
              v155 = v154 + 1;
              if ((v154 + 1) >> 62)
              {
LABEL_276:
                sub_245DF85A4();
              }

              v156 = v144 - v152;
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
                sub_245DF85BC(a1 + 8, v157);
              }

              v177 = (v145 - v152) >> 2;
              v178 = (4 * v154);
              v179 = (4 * v154 - 4 * v177);
              *v178 = 0;
              v125 = v178 + 1;
              memcpy(v179, v152, v153);
              v180 = *(a1 + 8);
              *(a1 + 8) = v179;
              *(a1 + 16) = v125;
              *(a1 + 24) = 0;
              if (v180)
              {
                operator delete(v180);
              }
            }

            else
            {
              *v145 = 0;
              v125 = v145 + 4;
            }

            *(a1 + 16) = v125;
            v182 = *(this + 1);
            v181 = *(this + 2);
            v183 = *this;
            if (v182 > 0xFFFFFFFFFFFFFFF5 || v182 + 10 > v181)
            {
              v189 = 0;
              v190 = 0;
              v167 = 0;
              v16 = v181 >= v182;
              v191 = v181 - v182;
              if (!v16)
              {
                v191 = 0;
              }

              v192 = (v183 + v182);
              v193 = v182 + 1;
              while (v191)
              {
                v194 = *v192;
                *(this + 1) = v193;
                v167 |= (v194 & 0x7F) << v189;
                if ((v194 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v189 += 7;
                --v191;
                ++v192;
                ++v193;
                v51 = v190++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }

              goto LABEL_265;
            }

            v184 = 0;
            v185 = 0;
            v167 = 0;
            v186 = (v183 + v182);
            v187 = v182 + 1;
            while (1)
            {
              *(this + 1) = v187;
              v188 = *v186++;
              v167 |= (v188 & 0x7F) << v184;
              if ((v188 & 0x80) == 0)
              {
                break;
              }

              v184 += 7;
              ++v187;
              v51 = v185++ > 8;
              if (v51)
              {
                goto LABEL_264;
              }
            }

LABEL_268:
            *(v125 - 1) = v167;
            goto LABEL_269;
          case 0xA:
            *(a1 + 104) |= 0x10u;
            v80 = *(this + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
            {
              goto LABEL_110;
            }

            *(a1 + 84) = *(*this + v80);
            goto LABEL_206;
          case 0xB:
            *(a1 + 104) |= 8u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_110;
            }

            *(a1 + 80) = *(*this + v33);
LABEL_206:
            *(this + 1) += 4;
            goto LABEL_269;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 104) |= 0x20u;
            v83 = *(this + 1);
            v82 = *(this + 2);
            v84 = *this;
            if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
            {
              v138 = 0;
              v139 = 0;
              v87 = 0;
              v16 = v82 >= v83;
              v140 = v82 - v83;
              if (!v16)
              {
                v140 = 0;
              }

              v141 = (v84 + v83);
              v142 = v83 + 1;
              while (1)
              {
                if (!v140)
                {
                  LODWORD(v87) = 0;
                  *(this + 24) = 1;
                  goto LABEL_230;
                }

                v143 = *v141;
                *(this + 1) = v142;
                v87 |= (v143 & 0x7F) << v138;
                if ((v143 & 0x80) == 0)
                {
                  break;
                }

                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v51 = v139++ > 8;
                if (v51)
                {
LABEL_192:
                  LODWORD(v87) = 0;
                  goto LABEL_230;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v87) = 0;
              }
            }

            else
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              v88 = (v84 + v83);
              v89 = v83 + 1;
              while (1)
              {
                *(this + 1) = v89;
                v90 = *v88++;
                v87 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                ++v89;
                v51 = v86++ > 8;
                if (v51)
                {
                  goto LABEL_192;
                }
              }
            }

LABEL_230:
            *(a1 + 88) = v87;
            goto LABEL_269;
          case 7:
            *(a1 + 104) |= 2u;
            v72 = *(this + 1);
            v71 = *(this + 2);
            v73 = *this;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v71)
            {
              v126 = 0;
              v127 = 0;
              v76 = 0;
              v16 = v71 >= v72;
              v128 = v71 - v72;
              if (!v16)
              {
                v128 = 0;
              }

              v129 = (v73 + v72);
              v130 = v72 + 1;
              while (1)
              {
                if (!v128)
                {
                  v76 = 0;
                  *(this + 24) = 1;
                  goto LABEL_224;
                }

                v131 = *v129;
                *(this + 1) = v130;
                v76 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v51 = v127++ > 8;
                if (v51)
                {
LABEL_176:
                  v76 = 0;
                  goto LABEL_224;
                }
              }

              if (*(this + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                *(this + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v51 = v75++ > 8;
                if (v51)
                {
                  goto LABEL_176;
                }
              }
            }

LABEL_224:
            *(a1 + 64) = v76;
            goto LABEL_269;
          case 8:
            *(a1 + 104) |= 4u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v132 = 0;
              v133 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v134 = v23 - v24;
              if (!v16)
              {
                v134 = 0;
              }

              v135 = (v25 + v24);
              v136 = v24 + 1;
              while (1)
              {
                if (!v134)
                {
                  v28 = 0;
                  *(this + 24) = 1;
                  goto LABEL_227;
                }

                v137 = *v135;
                *(this + 1) = v136;
                v28 |= (v137 & 0x7F) << v132;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v51 = v133++ > 8;
                if (v51)
                {
LABEL_184:
                  v28 = 0;
                  goto LABEL_227;
                }
              }

              if (*(this + 24))
              {
                v28 = 0;
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
                v51 = v27++ > 8;
                if (v51)
                {
                  goto LABEL_184;
                }
              }
            }

LABEL_227:
            *(a1 + 72) = v28;
            goto LABEL_269;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_275:
        v195 = 0;
        return v195 & 1;
      }

LABEL_269:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v195 = v4 ^ 1;
  return v195 & 1;
}