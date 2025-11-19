uint64_t sub_245E389CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 160))
  {
    result = PB::Writer::write(this, *(result + 152));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = v3[7];
  v8 = v3[8];
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = v3[1];
  v14 = v3[2];
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = v3[10];
  v17 = v3[11];
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v20 = v3[16];
  v19 = v3[17];
  while (v20 != v19)
  {
    v21 = *v20++;
    result = PB::Writer::write(this, v21);
  }

  return result;
}

double sub_245E38AD0(uint64_t a1)
{
  *a1 = &unk_2858D08A0;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245E38B04(PB::Base *this)
{
  *this = &unk_2858D08A0;
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

void sub_245E38B78(PB::Base *a1)
{
  sub_245E38B04(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E38BB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D08A0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 56);
    *(a1 + 64) = 1;
    *(a1 + 56) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_245E38C64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "biasvariance", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "statevariance", v10);
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E38D2C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_107;
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
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v26 = *(this + 1);
          v27 = *(this + 2);
          while (v26 < v27 && (*(this + 24) & 1) == 0)
          {
            v29 = *(a1 + 40);
            v28 = *(a1 + 48);
            if (v29 >= v28)
            {
              v31 = *(a1 + 32);
              v32 = v29 - v31;
              v33 = (v29 - v31) >> 2;
              v34 = v33 + 1;
              if ((v33 + 1) >> 62)
              {
                goto LABEL_110;
              }

              v35 = v28 - v31;
              if (v35 >> 1 > v34)
              {
                v34 = v35 >> 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v36 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_245DF85BC(a1 + 32, v36);
              }

              v37 = (v29 - v31) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = 0;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(a1 + 32);
              *(a1 + 32) = v39;
              *(a1 + 40) = v30;
              *(a1 + 48) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v29 = 0;
              v30 = v29 + 4;
            }

            *(a1 + 40) = v30;
            v41 = *(this + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(v30 - 1) = *(*this + v41);
            v27 = *(this + 2);
            v26 = *(this + 1) + 4;
            *(this + 1) = v26;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v59 = *(a1 + 40);
        v58 = *(a1 + 48);
        if (v59 >= v58)
        {
          v63 = *(a1 + 32);
          v64 = v59 - v63;
          v65 = (v59 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v67 = v58 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v68 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_245DF85BC(a1 + 32, v68);
          }

          v75 = (v59 - v63) >> 2;
          v76 = (4 * v65);
          v77 = (4 * v65 - 4 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(a1 + 32);
          *(a1 + 32) = v77;
          *(a1 + 40) = v60;
          *(a1 + 48) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 4;
        }

        *(a1 + 40) = v60;
LABEL_98:
        v83 = *(this + 1);
        if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
        {
LABEL_100:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v60 - 1) = *(*this + v83);
        v25 = *(this + 1) + 4;
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(a1 + 64) |= 1u;
        v24 = *(this + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
        {
          goto LABEL_100;
        }

        *(a1 + 56) = *(*this + v24);
        v25 = *(this + 1) + 8;
LABEL_102:
        *(this + 1) = v25;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_109:
        v84 = 0;
        return v84 & 1;
      }

LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
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
            goto LABEL_110;
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
LABEL_74:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v46 - 1) = *(*this + v57);
        v43 = *(this + 2);
        v42 = *(this + 1) + 4;
        *(this + 1) = v42;
      }

      goto LABEL_75;
    }

    v62 = *(a1 + 16);
    v61 = *(a1 + 24);
    if (v62 >= v61)
    {
      v69 = *(a1 + 8);
      v70 = v62 - v69;
      v71 = (v62 - v69) >> 2;
      v72 = v71 + 1;
      if ((v71 + 1) >> 62)
      {
LABEL_110:
        sub_245DF85A4();
      }

      v73 = v61 - v69;
      if (v73 >> 1 > v72)
      {
        v72 = v73 >> 1;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v74 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        sub_245DF85BC(a1 + 8, v74);
      }

      v79 = (v62 - v69) >> 2;
      v80 = (4 * v71);
      v81 = (4 * v71 - 4 * v79);
      *v80 = 0;
      v60 = v80 + 1;
      memcpy(v81, v69, v70);
      v82 = *(a1 + 8);
      *(a1 + 8) = v81;
      *(a1 + 16) = v60;
      *(a1 + 24) = 0;
      if (v82)
      {
        operator delete(v82);
      }
    }

    else
    {
      *v62 = 0;
      v60 = v62 + 4;
    }

    *(a1 + 16) = v60;
    goto LABEL_98;
  }

LABEL_107:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_245E392B0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 64))
  {
    result = PB::Writer::write(this, *(result + 56));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = v3[1];
  v7 = v3[2];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_245E39334(uint64_t result)
{
  *result = &unk_2858D08D8;
  *(result + 28) = 0;
  return result;
}

void sub_245E3935C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E39394(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D08D8;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(a1 + 28) = 2;
    *(a1 + 16) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    v4 = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 28) = v3;
    *(a1 + 8) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 24);
    *(a1 + 28) = v3 | 4;
    *(a1 + 24) = v4;
  }

  return *&v4;
}

uint64_t sub_245E39414(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 24));
    v5 = *(a1 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "theta", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E394B8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_43;
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
        goto LABEL_43;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_34;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_31:
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_34;
        }

        *(a1 + 16) = *(*this + v2);
        goto LABEL_31;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_39:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_43;
      }
    }

    *(a1 + 28) |= 4u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_34:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 24) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245E39700(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245E3978C(uint64_t result)
{
  *result = &unk_2858D0910;
  *(result + 20) = 0;
  return result;
}

void sub_245E397B4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E397EC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0910;
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

uint64_t sub_245E39850(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "displacingState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E398CC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245E39B98(uint64_t result, PB::Writer *this)
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

uint64_t sub_245E39C04(uint64_t result)
{
  *result = &unk_2858D0948;
  *(result + 24) = 0;
  return result;
}

void sub_245E39C2C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E39C64(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0948;
  *(result + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 24) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 24) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    *(result + 24) = v3 | 4;
    *(result + 20) = v6;
  }

  return result;
}

uint64_t sub_245E39CE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 20);
    PB::TextFormatter::format(this, "isPitchStable");
    v5 = *(a1 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pitch", *(a1 + 16));
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E39D88(uint64_t a1, PB::Reader *this)
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
            goto LABEL_43;
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
        goto LABEL_43;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 4u;
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

        *(a1 + 20) = v24;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 8) = *(*this + v2);
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_39:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_43;
      }
    }

    *(a1 + 24) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 16) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245E39FDC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 20);

  return PB::Writer::write(this);
}

uint64_t sub_245E3A068(uint64_t result)
{
  *result = &unk_2858D0980;
  *(result + 12) = 0;
  return result;
}

void sub_245E3A090(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3A0C8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0980;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245E3A104(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "displayOn");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3A164(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245E3A318(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

double sub_245E3A338(uint64_t a1)
{
  *a1 = &unk_2858D09B8;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
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

void sub_245E3A384(PB::Base *this)
{
  *this = &unk_2858D09B8;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

void sub_245E3A478(PB::Base *a1)
{
  sub_245E3A384(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3A4B0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D09B8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if ((*(a2 + 168) & 2) != 0)
  {
    v6 = *(a2 + 128);
    *(a1 + 168) = 2;
    *(a1 + 128) = v6;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  v7 = *(a2 + 168);
  if ((v7 & 0x20) != 0)
  {
    v12 = *(a2 + 148);
    *(a1 + 168) |= 0x20u;
    *(a1 + 148) = v12;
    v7 = *(a2 + 168);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 120);
  *(a1 + 168) |= 1u;
  *(a1 + 120) = v13;
  if ((*(a2 + 168) & 0x100) != 0)
  {
LABEL_8:
    v8 = *(a2 + 160);
    *(a1 + 168) |= 0x100u;
    *(a1 + 160) = v8;
  }

LABEL_9:
  if (*(a2 + 104))
  {
    operator new();
  }

  if (*(a2 + 112))
  {
    operator new();
  }

  v9 = *(a2 + 168);
  if ((v9 & 0x10) != 0)
  {
    v14 = *(a2 + 144);
    *(a1 + 168) |= 0x10u;
    *(a1 + 144) = v14;
    v9 = *(a2 + 168);
    if ((v9 & 0x200) == 0)
    {
LABEL_15:
      if ((v9 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a2 + 168) & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v15 = *(a2 + 164);
  *(a1 + 168) |= 0x200u;
  *(a1 + 164) = v15;
  v9 = *(a2 + 168);
  if ((v9 & 4) == 0)
  {
LABEL_16:
    if ((v9 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a2 + 136);
  *(a1 + 168) |= 4u;
  *(a1 + 136) = v16;
  v9 = *(a2 + 168);
  if ((v9 & 8) == 0)
  {
LABEL_17:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = *(a2 + 140);
  *(a1 + 168) |= 8u;
  *(a1 + 140) = v17;
  v9 = *(a2 + 168);
  if ((v9 & 0x40) == 0)
  {
LABEL_18:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  v18 = *(a2 + 152);
  *(a1 + 168) |= 0x40u;
  *(a1 + 152) = v18;
  if ((*(a2 + 168) & 0x80) != 0)
  {
LABEL_19:
    v10 = *(a2 + 156);
    *(a1 + 168) |= 0x80u;
    *(a1 + 156) = v10;
  }

LABEL_20:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  return a1;
}

uint64_t sub_245E3A788(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 168);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "AzABufferMean", *(a1 + 136));
    v5 = *(a1 + 168);
  }

  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "AzBBufferMean", *(a1 + 140));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "cachedAttitude", v8);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "candidateA");
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "candidateB");
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "currAttitude", v13);
  }

  v14 = *(a1 + 168);
  if ((v14 & 0x10) != 0)
  {
    v22 = *(a1 + 144);
    PB::TextFormatter::format(this, "disambiguationFlag");
    v14 = *(a1 + 168);
    if ((v14 & 1) == 0)
    {
LABEL_15:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(this, "lastDoTUpdateTime", *(a1 + 120));
  if ((*(a1 + 168) & 0x20) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(this, "lastEstimatedDoTAngleRad", *(a1 + 148));
  }

LABEL_17:
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "lpfInertialRotationRate", v17);
  }

  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "lpfInertialUserAccel", v20);
  }

  v21 = *(a1 + 168);
  if ((v21 & 0x200) != 0)
  {
    v23 = *(a1 + 164);
    PB::TextFormatter::format(this, "newDisambiguation");
    v21 = *(a1 + 168);
    if ((v21 & 0x40) == 0)
    {
LABEL_23:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v24 = *(a1 + 152);
  PB::TextFormatter::format(this, "numAbortedPeaks");
  v21 = *(a1 + 168);
  if ((v21 & 0x80) == 0)
  {
LABEL_24:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  v25 = *(a1 + 156);
  PB::TextFormatter::format(this, "numLargeYawDetections");
  v21 = *(a1 + 168);
  if ((v21 & 0x100) == 0)
  {
LABEL_25:
    if ((v21 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_36:
  v26 = *(a1 + 160);
  PB::TextFormatter::format(this, "stateFSM");
  if ((*(a1 + 168) & 2) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  }

LABEL_27:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3AA34(uint64_t a1, PB::Reader *this)
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
        goto LABEL_267;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 168) |= 2u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 128) = *(*this + v23);
          goto LABEL_52;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_269:
              v207 = 0;
              return v207 & 1;
            }

            v89 = *(this + 1);
            v90 = *(this + 2);
            while (v89 < v90 && (*(this + 24) & 1) == 0)
            {
              v92 = *(a1 + 88);
              v91 = *(a1 + 96);
              if (v92 >= v91)
              {
                v94 = *(a1 + 80);
                v95 = v92 - v94;
                v96 = (v92 - v94) >> 2;
                v97 = v96 + 1;
                if ((v96 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v98 = v91 - v94;
                if (v98 >> 1 > v97)
                {
                  v97 = v98 >> 1;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v99 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  sub_245DF85BC(a1 + 80, v99);
                }

                v100 = (v92 - v94) >> 2;
                v101 = (4 * v96);
                v102 = (4 * v96 - 4 * v100);
                *v101 = 0;
                v93 = v101 + 1;
                memcpy(v102, v94, v95);
                v103 = *(a1 + 80);
                *(a1 + 80) = v102;
                *(a1 + 88) = v93;
                *(a1 + 96) = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *v92 = 0;
                v93 = v92 + 4;
              }

              *(a1 + 88) = v93;
              v104 = *(this + 1);
              if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
              {
                goto LABEL_153;
              }

              *(v93 - 1) = *(*this + v104);
              v90 = *(this + 2);
              v89 = *(this + 1) + 4;
              *(this + 1) = v89;
            }

LABEL_154:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(a1 + 88);
            v146 = *(a1 + 96);
            if (v147 >= v146)
            {
              v184 = *(a1 + 80);
              v185 = v147 - v184;
              v186 = (v147 - v184) >> 2;
              v187 = v186 + 1;
              if ((v186 + 1) >> 62)
              {
LABEL_270:
                sub_245DF85A4();
              }

              v188 = v146 - v184;
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
                sub_245DF85BC(a1 + 80, v189);
              }

              v202 = (v147 - v184) >> 2;
              v203 = (4 * v186);
              v204 = (4 * v186 - 4 * v202);
              *v203 = 0;
              v135 = v203 + 1;
              memcpy(v204, v184, v185);
              v205 = *(a1 + 80);
              *(a1 + 80) = v204;
              *(a1 + 88) = v135;
              *(a1 + 96) = 0;
              if (v205)
              {
                operator delete(v205);
              }
            }

            else
            {
              *v147 = 0;
              v135 = v147 + 4;
            }

            *(a1 + 88) = v135;
LABEL_257:
            v206 = *(this + 1);
            if (v206 <= 0xFFFFFFFFFFFFFFFBLL && v206 + 4 <= *(this + 2))
            {
              *(v135 - 1) = *(*this + v206);
LABEL_261:
              v42 = *(this + 1) + 4;
LABEL_262:
              *(this + 1) = v42;
            }

            else
            {
LABEL_259:
              *(this + 24) = 1;
            }
          }

LABEL_263:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_267;
          }

          break;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v56 = *(this + 1);
            v57 = *(this + 2);
            while (v56 < v57 && (*(this + 24) & 1) == 0)
            {
              v59 = *(a1 + 64);
              v58 = *(a1 + 72);
              if (v59 >= v58)
              {
                v61 = *(a1 + 56);
                v62 = v59 - v61;
                v63 = (v59 - v61) >> 2;
                v64 = v63 + 1;
                if ((v63 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v65 = v58 - v61;
                if (v65 >> 1 > v64)
                {
                  v64 = v65 >> 1;
                }

                if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v66 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v66 = v64;
                }

                if (v66)
                {
                  sub_245DF85BC(a1 + 56, v66);
                }

                v67 = (v59 - v61) >> 2;
                v68 = (4 * v63);
                v69 = (4 * v63 - 4 * v67);
                *v68 = 0;
                v60 = v68 + 1;
                memcpy(v69, v61, v62);
                v70 = *(a1 + 56);
                *(a1 + 56) = v69;
                *(a1 + 64) = v60;
                *(a1 + 72) = 0;
                if (v70)
                {
                  operator delete(v70);
                }
              }

              else
              {
                *v59 = 0;
                v60 = v59 + 4;
              }

              *(a1 + 64) = v60;
              v71 = *(this + 1);
              if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
              {
                goto LABEL_153;
              }

              *(v60 - 1) = *(*this + v71);
              v57 = *(this + 2);
              v56 = *(this + 1) + 4;
              *(this + 1) = v56;
            }

            goto LABEL_154;
          }

          v143 = *(a1 + 64);
          v142 = *(a1 + 72);
          if (v143 >= v142)
          {
            v172 = *(a1 + 56);
            v173 = v143 - v172;
            v174 = (v143 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v176 = v142 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_245DF85BC(a1 + 56, v177);
            }

            v194 = (v143 - v172) >> 2;
            v195 = (4 * v174);
            v196 = (4 * v174 - 4 * v194);
            *v195 = 0;
            v135 = v195 + 1;
            memcpy(v196, v172, v173);
            v197 = *(a1 + 56);
            *(a1 + 56) = v196;
            *(a1 + 64) = v135;
            *(a1 + 72) = 0;
            if (v197)
            {
              operator delete(v197);
            }
          }

          else
          {
            *v143 = 0;
            v135 = v143 + 4;
          }

          *(a1 + 64) = v135;
          goto LABEL_257;
        case 4u:
          *(a1 + 168) |= 0x20u;
          v88 = *(this + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 148) = *(*this + v88);
          goto LABEL_261;
        case 5u:
          *(a1 + 168) |= 1u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 120) = *(*this + v41);
LABEL_52:
          v42 = *(this + 1) + 8;
          goto LABEL_262;
        case 6u:
          *(a1 + 168) |= 0x100u;
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
                goto LABEL_238;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v110) = 0;
            goto LABEL_238;
          }

          v148 = 0;
          v149 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v150 = v105 - v106;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v107 + v106);
          v152 = v106 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(this + 1) = v152;
              v110 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_180;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v110) = 0;
              }
            }

            else
            {
              LODWORD(v110) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(a1 + 160) = v110;
          goto LABEL_263;
        case 7u:
          operator new();
        case 8u:
          operator new();
        case 9u:
          *(a1 + 168) |= 0x10u;
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
                goto LABEL_244;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v129) = 0;
            goto LABEL_244;
          }

          v160 = 0;
          v161 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v162 = v124 - v125;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v126 + v125);
          v164 = v125 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(this + 1) = v164;
              v129 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v129) = 0;
              }
            }

            else
            {
              LODWORD(v129) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_244:
          *(a1 + 144) = v129;
          goto LABEL_263;
        case 0xAu:
          *(a1 + 168) |= 0x200u;
          v52 = *(this + 1);
          if (v52 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v53 = v52 + 1;
            v54 = *(*this + v52);
            *(this + 1) = v53;
            v55 = v54 != 0;
          }

          *(a1 + 164) = v55;
          goto LABEL_263;
        case 0xBu:
          *(a1 + 168) |= 4u;
          v123 = *(this + 1);
          if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 136) = *(*this + v123);
          goto LABEL_261;
        case 0xCu:
          *(a1 + 168) |= 8u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 140) = *(*this + v40);
          goto LABEL_261;
        case 0xDu:
          *(a1 + 168) |= 0x40u;
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
                goto LABEL_235;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_164:
            LODWORD(v48) = 0;
            goto LABEL_235;
          }

          v136 = 0;
          v137 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v138 = v43 - v44;
          if (!v17)
          {
            v138 = 0;
          }

          v139 = (v45 + v44);
          v140 = v44 + 1;
          while (2)
          {
            if (v138)
            {
              v141 = *v139;
              *(this + 1) = v140;
              v48 |= (v141 & 0x7F) << v136;
              if (v141 < 0)
              {
                v136 += 7;
                --v138;
                ++v139;
                ++v140;
                v14 = v137++ > 8;
                if (v14)
                {
                  goto LABEL_164;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v48) = 0;
              }
            }

            else
            {
              LODWORD(v48) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(a1 + 152) = v48;
          goto LABEL_263;
        case 0xEu:
          *(a1 + 168) |= 0x80u;
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
                goto LABEL_241;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v119) = 0;
            goto LABEL_241;
          }

          v154 = 0;
          v155 = 0;
          v119 = 0;
          v17 = v114 >= v115;
          v156 = v114 - v115;
          if (!v17)
          {
            v156 = 0;
          }

          v157 = (v116 + v115);
          v158 = v115 + 1;
          while (2)
          {
            if (v156)
            {
              v159 = *v157;
              *(this + 1) = v158;
              v119 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                --v156;
                ++v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v119) = 0;
              }
            }

            else
            {
              LODWORD(v119) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_241:
          *(a1 + 156) = v119;
          goto LABEL_263;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
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
                  goto LABEL_270;
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
                goto LABEL_153;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

            goto LABEL_154;
          }

          v134 = *(a1 + 16);
          v133 = *(a1 + 24);
          if (v134 >= v133)
          {
            v166 = *(a1 + 8);
            v167 = v134 - v166;
            v168 = (v134 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v170 = v133 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_245DF85BC(a1 + 8, v171);
            }

            v190 = (v134 - v166) >> 2;
            v191 = (4 * v168);
            v192 = (4 * v168 - 4 * v190);
            *v191 = 0;
            v135 = v191 + 1;
            memcpy(v192, v166, v167);
            v193 = *(a1 + 8);
            *(a1 + 8) = v192;
            *(a1 + 16) = v135;
            *(a1 + 24) = 0;
            if (v193)
            {
              operator delete(v193);
            }
          }

          else
          {
            *v134 = 0;
            v135 = v134 + 4;
          }

          *(a1 + 16) = v135;
          goto LABEL_257;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v72 = *(this + 1);
            v73 = *(this + 2);
            while (v72 < v73 && (*(this + 24) & 1) == 0)
            {
              v75 = *(a1 + 40);
              v74 = *(a1 + 48);
              if (v75 >= v74)
              {
                v77 = *(a1 + 32);
                v78 = v75 - v77;
                v79 = (v75 - v77) >> 2;
                v80 = v79 + 1;
                if ((v79 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v81 = v74 - v77;
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
                  sub_245DF85BC(a1 + 32, v82);
                }

                v83 = (v75 - v77) >> 2;
                v84 = (4 * v79);
                v85 = (4 * v79 - 4 * v83);
                *v84 = 0;
                v76 = v84 + 1;
                memcpy(v85, v77, v78);
                v86 = *(a1 + 32);
                *(a1 + 32) = v85;
                *(a1 + 40) = v76;
                *(a1 + 48) = 0;
                if (v86)
                {
                  operator delete(v86);
                }
              }

              else
              {
                *v75 = 0;
                v76 = v75 + 4;
              }

              *(a1 + 40) = v76;
              v87 = *(this + 1);
              if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(this + 2))
              {
LABEL_153:
                *(this + 24) = 1;
                goto LABEL_154;
              }

              *(v76 - 1) = *(*this + v87);
              v73 = *(this + 2);
              v72 = *(this + 1) + 4;
              *(this + 1) = v72;
            }

            goto LABEL_154;
          }

          v145 = *(a1 + 40);
          v144 = *(a1 + 48);
          if (v145 >= v144)
          {
            v178 = *(a1 + 32);
            v179 = v145 - v178;
            v180 = (v145 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v182 = v144 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_245DF85BC(a1 + 32, v183);
            }

            v198 = (v145 - v178) >> 2;
            v199 = (4 * v180);
            v200 = (4 * v180 - 4 * v198);
            *v199 = 0;
            v135 = v199 + 1;
            memcpy(v200, v178, v179);
            v201 = *(a1 + 32);
            *(a1 + 32) = v200;
            *(a1 + 40) = v135;
            *(a1 + 48) = 0;
            if (v201)
            {
              operator delete(v201);
            }
          }

          else
          {
            *v145 = 0;
            v135 = v145 + 4;
          }

          *(a1 + 40) = v135;
          goto LABEL_257;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_269;
          }

          goto LABEL_263;
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

LABEL_267:
  v207 = v4 ^ 1;
  return v207 & 1;
}

uint64_t sub_245E3B930(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 168) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 128));
  }

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 168);
  if ((v10 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 148));
    v10 = *(v3 + 168);
    if ((v10 & 1) == 0)
    {
LABEL_11:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  if ((*(v3 + 168) & 0x100) != 0)
  {
LABEL_12:
    v11 = *(v3 + 160);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_13:
  v12 = *(v3 + 104);
  if (v12)
  {
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = *(v3 + 112);
  if (v13)
  {
    result = PB::Writer::writeSubmessage(this, v13);
  }

  v14 = *(v3 + 168);
  if ((v14 & 0x10) != 0)
  {
    v22 = *(v3 + 144);
    result = PB::Writer::writeVarInt(this);
    v14 = *(v3 + 168);
    if ((v14 & 0x200) == 0)
    {
LABEL_19:
      if ((v14 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 168) & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v23 = *(v3 + 164);
  result = PB::Writer::write(this);
  v14 = *(v3 + 168);
  if ((v14 & 4) == 0)
  {
LABEL_20:
    if ((v14 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 136));
  v14 = *(v3 + 168);
  if ((v14 & 8) == 0)
  {
LABEL_21:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v24 = *(v3 + 152);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 168) & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 140));
  v14 = *(v3 + 168);
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v14 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(v3 + 156);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_24:
  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v20 = *(v3 + 32);
  v19 = *(v3 + 40);
  while (v20 != v19)
  {
    v21 = *v20++;
    result = PB::Writer::write(this, v21);
  }

  return result;
}

double sub_245E3BB18(uint64_t a1)
{
  *a1 = &unk_2858D09F0;
  *(a1 + 204) = 0;
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
  return result;
}

void sub_245E3BB6C(PB::Base *this)
{
  *this = &unk_2858D09F0;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

void sub_245E3BC60(PB::Base *a1)
{
  sub_245E3BB6C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3BC98(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D09F0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *(a1 + 152) = 0u;
  v7 = (a1 + 152);
  *(a1 + 204) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  if (*(a2 + 204))
  {
    v8 = *(a2 + 184);
    *(a1 + 204) = 1;
    *(a1 + 184) = v8;
  }

  if (a1 != a2)
  {
    sub_245DF843C(v7, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v9 = *(a2 + 204);
  if ((v9 & 2) != 0)
  {
    v13 = *(a2 + 192);
    *(a1 + 204) |= 2u;
    *(a1 + 192) = v13;
    v9 = *(a2 + 204);
    if ((v9 & 8) == 0)
    {
LABEL_7:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 204) & 8) == 0)
  {
    goto LABEL_7;
  }

  v14 = *(a2 + 200);
  *(a1 + 204) |= 8u;
  *(a1 + 200) = v14;
  v9 = *(a2 + 204);
  if ((v9 & 0x10) == 0)
  {
LABEL_8:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  v15 = *(a2 + 201);
  *(a1 + 204) |= 0x10u;
  *(a1 + 201) = v15;
  if ((*(a2 + 204) & 0x20) != 0)
  {
LABEL_9:
    v10 = *(a2 + 202);
    *(a1 + 204) |= 0x20u;
    *(a1 + 202) = v10;
  }

LABEL_10:
  if (*(a2 + 176))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_245DF843C(v6, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  }

  if ((*(a2 + 204) & 4) != 0)
  {
    v11 = *(a2 + 196);
    *(a1 + 204) |= 4u;
    *(a1 + 196) = v11;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
    sub_245DF843C(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  return a1;
}

uint64_t sub_245E3BEE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 176);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "TNBFrame");
  }

  if ((*(a1 + 204) & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotQuality", *(a1 + 192));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "dotVector", v8);
  }

  if ((*(a1 + 204) & 8) != 0)
  {
    v9 = *(a1 + 200);
    PB::TextFormatter::format(this, "fusingGaze");
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "gazeVector", v12);
  }

  v13 = *(a1 + 204);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(a1 + 201);
    PB::TextFormatter::format(this, "hasStep");
    v13 = *(a1 + 204);
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = *(a1 + 202);
    PB::TextFormatter::format(this, "hasValidTNBFrame");
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "lpfInertialRotationRate", v18);
  }

  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(this, "lpfInertialUserAccel", v21);
  }

  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(this, "rawDoTVector", v24);
  }

  v25 = *(a1 + 128);
  v26 = *(a1 + 136);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(this, "rawInertialRotationRate", v27);
  }

  v28 = *(a1 + 152);
  v29 = *(a1 + 160);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(this, "rawInertialUserAccel", v30);
  }

  v31 = *(a1 + 204);
  if ((v31 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 196));
    v31 = *(a1 + 204);
  }

  if (v31)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 184));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3C14C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_290;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 204) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 184) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_285;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v94 = *(this + 1);
            v95 = *(this + 2);
            while (v94 < v95 && (*(this + 24) & 1) == 0)
            {
              v97 = *(a1 + 160);
              v96 = *(a1 + 168);
              if (v97 >= v96)
              {
                v99 = *(a1 + 152);
                v100 = v97 - v99;
                v101 = (v97 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v103 = v96 - v99;
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
                  sub_245DF85BC(a1 + 152, v104);
                }

                v105 = (v97 - v99) >> 2;
                v106 = (4 * v101);
                v107 = (4 * v101 - 4 * v105);
                *v106 = 0;
                v98 = v106 + 1;
                memcpy(v107, v99, v100);
                v108 = *(a1 + 152);
                *(a1 + 152) = v107;
                *(a1 + 160) = v98;
                *(a1 + 168) = 0;
                if (v108)
                {
                  operator delete(v108);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(a1 + 160) = v98;
              v109 = *(this + 1);
              if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v98 - 1) = *(*this + v109);
              v95 = *(this + 2);
              v94 = *(this + 1) + 4;
              *(this + 1) = v94;
            }

            goto LABEL_178;
          }

          v161 = *(a1 + 160);
          v160 = *(a1 + 168);
          if (v161 >= v160)
          {
            v190 = *(a1 + 152);
            v191 = v161 - v190;
            v192 = (v161 - v190) >> 2;
            v193 = v192 + 1;
            if ((v192 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v194 = v160 - v190;
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
              sub_245DF85BC(a1 + 152, v195);
            }

            v224 = (v161 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v153 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(a1 + 152);
            *(a1 + 152) = v226;
            *(a1 + 160) = v153;
            *(a1 + 168) = 0;
            if (v227)
            {
              operator delete(v227);
            }
          }

          else
          {
            *v161 = 0;
            v153 = v161 + 4;
          }

          *(a1 + 160) = v153;
          goto LABEL_280;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v58 = *(this + 1);
            v59 = *(this + 2);
            while (v58 < v59 && (*(this + 24) & 1) == 0)
            {
              v61 = *(a1 + 88);
              v60 = *(a1 + 96);
              if (v61 >= v60)
              {
                v63 = *(a1 + 80);
                v64 = v61 - v63;
                v65 = (v61 - v63) >> 2;
                v66 = v65 + 1;
                if ((v65 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v67 = v60 - v63;
                if (v67 >> 1 > v66)
                {
                  v66 = v67 >> 1;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v68 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  sub_245DF85BC(a1 + 80, v68);
                }

                v69 = (v61 - v63) >> 2;
                v70 = (4 * v65);
                v71 = (4 * v65 - 4 * v69);
                *v70 = 0;
                v62 = v70 + 1;
                memcpy(v71, v63, v64);
                v72 = *(a1 + 80);
                *(a1 + 80) = v71;
                *(a1 + 88) = v62;
                *(a1 + 96) = 0;
                if (v72)
                {
                  operator delete(v72);
                }
              }

              else
              {
                *v61 = 0;
                v62 = v61 + 4;
              }

              *(a1 + 88) = v62;
              v73 = *(this + 1);
              if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v62 - 1) = *(*this + v73);
              v59 = *(this + 2);
              v58 = *(this + 1) + 4;
              *(this + 1) = v58;
            }

            goto LABEL_178;
          }

          v157 = *(a1 + 88);
          v156 = *(a1 + 96);
          if (v157 >= v156)
          {
            v178 = *(a1 + 80);
            v179 = v157 - v178;
            v180 = (v157 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v182 = v156 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_245DF85BC(a1 + 80, v183);
            }

            v216 = (v157 - v178) >> 2;
            v217 = (4 * v180);
            v218 = (4 * v180 - 4 * v216);
            *v217 = 0;
            v153 = v217 + 1;
            memcpy(v218, v178, v179);
            v219 = *(a1 + 80);
            *(a1 + 80) = v218;
            *(a1 + 88) = v153;
            *(a1 + 96) = 0;
            if (v219)
            {
              operator delete(v219);
            }
          }

          else
          {
            *v157 = 0;
            v153 = v157 + 4;
          }

          *(a1 + 88) = v153;
          goto LABEL_280;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v74 = *(this + 1);
            v75 = *(this + 2);
            while (v74 < v75 && (*(this + 24) & 1) == 0)
            {
              v77 = *(a1 + 16);
              v76 = *(a1 + 24);
              if (v77 >= v76)
              {
                v79 = *(a1 + 8);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 2;
                v82 = v81 + 1;
                if ((v81 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v83 = v76 - v79;
                if (v83 >> 1 > v82)
                {
                  v82 = v83 >> 1;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v84 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_245DF85BC(a1 + 8, v84);
                }

                v85 = (v77 - v79) >> 2;
                v86 = (4 * v81);
                v87 = (4 * v81 - 4 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(a1 + 8);
                *(a1 + 8) = v87;
                *(a1 + 16) = v78;
                *(a1 + 24) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 4;
              }

              *(a1 + 16) = v78;
              v89 = *(this + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v78 - 1) = *(*this + v89);
              v75 = *(this + 2);
              v74 = *(this + 1) + 4;
              *(this + 1) = v74;
            }

            goto LABEL_178;
          }

          v159 = *(a1 + 16);
          v158 = *(a1 + 24);
          if (v159 >= v158)
          {
            v184 = *(a1 + 8);
            v185 = v159 - v184;
            v186 = (v159 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v188 = v158 - v184;
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
              sub_245DF85BC(a1 + 8, v189);
            }

            v220 = (v159 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v153 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(a1 + 8);
            *(a1 + 8) = v222;
            *(a1 + 16) = v153;
            *(a1 + 24) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v159 = 0;
            v153 = v159 + 4;
          }

          *(a1 + 16) = v153;
          goto LABEL_280;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v26 = *(this + 1);
            v27 = *(this + 2);
            while (v26 < v27 && (*(this + 24) & 1) == 0)
            {
              v29 = *(a1 + 40);
              v28 = *(a1 + 48);
              if (v29 >= v28)
              {
                v31 = *(a1 + 32);
                v32 = v29 - v31;
                v33 = (v29 - v31) >> 2;
                v34 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v35 = v28 - v31;
                if (v35 >> 1 > v34)
                {
                  v34 = v35 >> 1;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v36 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  sub_245DF85BC(a1 + 32, v36);
                }

                v37 = (v29 - v31) >> 2;
                v38 = (4 * v33);
                v39 = (4 * v33 - 4 * v37);
                *v38 = 0;
                v30 = v38 + 1;
                memcpy(v39, v31, v32);
                v40 = *(a1 + 32);
                *(a1 + 32) = v39;
                *(a1 + 40) = v30;
                *(a1 + 48) = 0;
                if (v40)
                {
                  operator delete(v40);
                }
              }

              else
              {
                *v29 = 0;
                v30 = v29 + 4;
              }

              *(a1 + 40) = v30;
              v41 = *(this + 1);
              if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v30 - 1) = *(*this + v41);
              v27 = *(this + 2);
              v26 = *(this + 1) + 4;
              *(this + 1) = v26;
            }

            goto LABEL_178;
          }

          v152 = *(a1 + 40);
          v151 = *(a1 + 48);
          if (v152 >= v151)
          {
            v166 = *(a1 + 32);
            v167 = v152 - v166;
            v168 = (v152 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v170 = v151 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_245DF85BC(a1 + 32, v171);
            }

            v208 = (v152 - v166) >> 2;
            v209 = (4 * v168);
            v210 = (4 * v168 - 4 * v208);
            *v209 = 0;
            v153 = v209 + 1;
            memcpy(v210, v166, v167);
            v211 = *(a1 + 32);
            *(a1 + 32) = v210;
            *(a1 + 40) = v153;
            *(a1 + 48) = 0;
            if (v211)
            {
              operator delete(v211);
            }
          }

          else
          {
            *v152 = 0;
            v153 = v152 + 4;
          }

          *(a1 + 40) = v153;
          goto LABEL_280;
        case 6u:
          *(a1 + 204) |= 2u;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 192) = *(*this + v110);
          goto LABEL_284;
        case 7u:
          *(a1 + 204) |= 8u;
          v127 = *(this + 1);
          if (v127 >= *(this + 2))
          {
            v130 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v128 = v127 + 1;
            v129 = *(*this + v127);
            *(this + 1) = v128;
            v130 = v129 != 0;
          }

          *(a1 + 200) = v130;
          goto LABEL_286;
        case 8u:
          *(a1 + 204) |= 0x10u;
          v90 = *(this + 1);
          if (v90 >= *(this + 2))
          {
            v93 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v91 = v90 + 1;
            v92 = *(*this + v90);
            *(this + 1) = v91;
            v93 = v92 != 0;
          }

          *(a1 + 201) = v93;
          goto LABEL_286;
        case 9u:
          *(a1 + 204) |= 0x20u;
          v147 = *(this + 1);
          if (v147 >= *(this + 2))
          {
            v150 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v148 = v147 + 1;
            v149 = *(*this + v147);
            *(this + 1) = v148;
            v150 = v149 != 0;
          }

          *(a1 + 202) = v150;
          goto LABEL_286;
        case 0xAu:
          operator new();
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_292:
              v237 = 0;
              return v237 & 1;
            }

            v131 = *(this + 1);
            v132 = *(this + 2);
            while (v131 < v132 && (*(this + 24) & 1) == 0)
            {
              v134 = *(a1 + 112);
              v133 = *(a1 + 120);
              if (v134 >= v133)
              {
                v136 = *(a1 + 104);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 2;
                v139 = v138 + 1;
                if ((v138 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v140 = v133 - v136;
                if (v140 >> 1 > v139)
                {
                  v139 = v140 >> 1;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v141 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_245DF85BC(a1 + 104, v141);
                }

                v142 = (v134 - v136) >> 2;
                v143 = (4 * v138);
                v144 = (4 * v138 - 4 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(a1 + 104);
                *(a1 + 104) = v144;
                *(a1 + 112) = v135;
                *(a1 + 120) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 4;
              }

              *(a1 + 112) = v135;
              v146 = *(this + 1);
              if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v135 - 1) = *(*this + v146);
              v132 = *(this + 2);
              v131 = *(this + 1) + 4;
              *(this + 1) = v131;
            }

LABEL_178:
            PB::Reader::recallMark();
          }

          else
          {
            v165 = *(a1 + 112);
            v164 = *(a1 + 120);
            if (v165 >= v164)
            {
              v202 = *(a1 + 104);
              v203 = v165 - v202;
              v204 = (v165 - v202) >> 2;
              v205 = v204 + 1;
              if ((v204 + 1) >> 62)
              {
LABEL_293:
                sub_245DF85A4();
              }

              v206 = v164 - v202;
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
                sub_245DF85BC(a1 + 104, v207);
              }

              v232 = (v165 - v202) >> 2;
              v233 = (4 * v204);
              v234 = (4 * v204 - 4 * v232);
              *v233 = 0;
              v153 = v233 + 1;
              memcpy(v234, v202, v203);
              v235 = *(a1 + 104);
              *(a1 + 104) = v234;
              *(a1 + 112) = v153;
              *(a1 + 120) = 0;
              if (v235)
              {
                operator delete(v235);
              }
            }

            else
            {
              *v165 = 0;
              v153 = v165 + 4;
            }

            *(a1 + 112) = v153;
LABEL_280:
            v236 = *(this + 1);
            if (v236 <= 0xFFFFFFFFFFFFFFFBLL && v236 + 4 <= *(this + 2))
            {
              *(v153 - 1) = *(*this + v236);
LABEL_284:
              v24 = *(this + 1) + 4;
LABEL_285:
              *(this + 1) = v24;
            }

            else
            {
LABEL_282:
              *(this + 24) = 1;
            }
          }

LABEL_286:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_290;
          }

          break;
        case 0xCu:
          *(a1 + 204) |= 4u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 196) = *(*this + v25);
          goto LABEL_284;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 136);
              v44 = *(a1 + 144);
              if (v45 >= v44)
              {
                v47 = *(a1 + 128);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_293;
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
                  sub_245DF85BC(a1 + 128, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 128);
                *(a1 + 128) = v55;
                *(a1 + 136) = v46;
                *(a1 + 144) = 0;
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

              *(a1 + 136) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_178;
          }

          v155 = *(a1 + 136);
          v154 = *(a1 + 144);
          if (v155 >= v154)
          {
            v172 = *(a1 + 128);
            v173 = v155 - v172;
            v174 = (v155 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v176 = v154 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_245DF85BC(a1 + 128, v177);
            }

            v212 = (v155 - v172) >> 2;
            v213 = (4 * v174);
            v214 = (4 * v174 - 4 * v212);
            *v213 = 0;
            v153 = v213 + 1;
            memcpy(v214, v172, v173);
            v215 = *(a1 + 128);
            *(a1 + 128) = v214;
            *(a1 + 136) = v153;
            *(a1 + 144) = 0;
            if (v215)
            {
              operator delete(v215);
            }
          }

          else
          {
            *v155 = 0;
            v153 = v155 + 4;
          }

          *(a1 + 136) = v153;
          goto LABEL_280;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v111 = *(this + 1);
            v112 = *(this + 2);
            while (v111 < v112 && (*(this + 24) & 1) == 0)
            {
              v114 = *(a1 + 64);
              v113 = *(a1 + 72);
              if (v114 >= v113)
              {
                v116 = *(a1 + 56);
                v117 = v114 - v116;
                v118 = (v114 - v116) >> 2;
                v119 = v118 + 1;
                if ((v118 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v120 = v113 - v116;
                if (v120 >> 1 > v119)
                {
                  v119 = v120 >> 1;
                }

                if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v121 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v121 = v119;
                }

                if (v121)
                {
                  sub_245DF85BC(a1 + 56, v121);
                }

                v122 = (v114 - v116) >> 2;
                v123 = (4 * v118);
                v124 = (4 * v118 - 4 * v122);
                *v123 = 0;
                v115 = v123 + 1;
                memcpy(v124, v116, v117);
                v125 = *(a1 + 56);
                *(a1 + 56) = v124;
                *(a1 + 64) = v115;
                *(a1 + 72) = 0;
                if (v125)
                {
                  operator delete(v125);
                }
              }

              else
              {
                *v114 = 0;
                v115 = v114 + 4;
              }

              *(a1 + 64) = v115;
              v126 = *(this + 1);
              if (v126 > 0xFFFFFFFFFFFFFFFBLL || v126 + 4 > *(this + 2))
              {
LABEL_177:
                *(this + 24) = 1;
                goto LABEL_178;
              }

              *(v115 - 1) = *(*this + v126);
              v112 = *(this + 2);
              v111 = *(this + 1) + 4;
              *(this + 1) = v111;
            }

            goto LABEL_178;
          }

          v163 = *(a1 + 64);
          v162 = *(a1 + 72);
          if (v163 >= v162)
          {
            v196 = *(a1 + 56);
            v197 = v163 - v196;
            v198 = (v163 - v196) >> 2;
            v199 = v198 + 1;
            if ((v198 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v200 = v162 - v196;
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
              sub_245DF85BC(a1 + 56, v201);
            }

            v228 = (v163 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v153 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(a1 + 56);
            *(a1 + 56) = v230;
            *(a1 + 64) = v153;
            *(a1 + 72) = 0;
            if (v231)
            {
              operator delete(v231);
            }
          }

          else
          {
            *v163 = 0;
            v153 = v163 + 4;
          }

          *(a1 + 64) = v153;
          goto LABEL_280;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_292;
          }

          goto LABEL_286;
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

LABEL_290:
  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t sub_245E3D178(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 204))
  {
    result = PB::Writer::write(this, *(result + 184));
  }

  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
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

  v16 = *(v3 + 204);
  if ((v16 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 192));
    v16 = *(v3 + 204);
    if ((v16 & 8) == 0)
    {
LABEL_17:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 204) & 8) == 0)
  {
    goto LABEL_17;
  }

  v28 = *(v3 + 200);
  result = PB::Writer::write(this);
  v16 = *(v3 + 204);
  if ((v16 & 0x10) == 0)
  {
LABEL_18:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_36:
  v29 = *(v3 + 201);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x20) != 0)
  {
LABEL_19:
    v17 = *(v3 + 202);
    result = PB::Writer::write(this);
  }

LABEL_20:
  v18 = *(v3 + 176);
  if (v18)
  {
    result = PB::Writer::writeSubmessage(this, v18);
  }

  v19 = *(v3 + 104);
  v20 = *(v3 + 112);
  while (v19 != v20)
  {
    v21 = *v19++;
    result = PB::Writer::write(this, v21);
  }

  if ((*(v3 + 204) & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 196));
  }

  v22 = *(v3 + 128);
  v23 = *(v3 + 136);
  while (v22 != v23)
  {
    v24 = *v22++;
    result = PB::Writer::write(this, v24);
  }

  v26 = *(v3 + 56);
  v25 = *(v3 + 64);
  while (v26 != v25)
  {
    v27 = *v26++;
    result = PB::Writer::write(this, v27);
  }

  return result;
}

uint64_t sub_245E3D338(uint64_t result)
{
  *result = &unk_2858D0A28;
  *(result + 120) = 0;
  return result;
}

void sub_245E3D360(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E3D398(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D0A28;
  *(a1 + 120) = 0;
  v2 = *(a2 + 120);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 120) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 120);
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x1000000) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 108);
    v3 |= 0x1000000u;
    *(a1 + 120) = v3;
    *(a1 + 108) = v4;
    v2 = *(a2 + 120);
  }

LABEL_6:
  if ((v2 & 0x200000) != 0)
  {
    LODWORD(v4) = *(a2 + 96);
    v3 |= 0x200000u;
    *(a1 + 120) = v3;
    *(a1 + 96) = v4;
    v2 = *(a2 + 120);
    if ((v2 & 0x400000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 100);
  v3 |= 0x400000u;
  *(a1 + 120) = v3;
  *(a1 + 100) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x800000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 104);
  v3 |= 0x800000u;
  *(a1 + 120) = v3;
  *(a1 + 104) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 92);
  v3 |= 0x100000u;
  *(a1 + 120) = v3;
  *(a1 + 92) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 112);
  v3 |= 0x2000000u;
  *(a1 + 120) = v3;
  *(a1 + 112) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 120) = v3;
  *(a1 + 24) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 120) = v3;
  *(a1 + 32) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 120) = v3;
  *(a1 + 28) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 80);
  v3 |= 0x20000u;
  *(a1 + 120) = v3;
  *(a1 + 80) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x10000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(a2 + 76);
  v3 |= 0x10000u;
  *(a1 + 120) = v3;
  *(a1 + 76) = v5;
  v2 = *(a2 + 120);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 68);
  v3 |= 0x4000u;
  *(a1 + 120) = v3;
  *(a1 + 68) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 72);
  v3 |= 0x8000u;
  *(a1 + 120) = v3;
  *(a1 + 72) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 64);
  v3 |= 0x2000u;
  *(a1 + 120) = v3;
  *(a1 + 64) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 56);
  v3 |= 0x800u;
  *(a1 + 120) = v3;
  *(a1 + 56) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6 = *(a2 + 60);
  v3 |= 0x1000u;
  *(a1 + 120) = v3;
  *(a1 + 60) = v6;
  v2 = *(a2 + 120);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 48);
  v3 |= 0x200u;
  *(a1 + 120) = v3;
  *(a1 + 48) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 52);
  v3 |= 0x400u;
  *(a1 + 120) = v3;
  *(a1 + 52) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x100) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 120) = v3;
  *(a1 + 44) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 120) = v3;
  *(a1 + 36) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x80) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 120) = v3;
  *(a1 + 40) = v7;
  v2 = *(a2 + 120);
  if ((v2 & 2) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 120) = v3;
  *(a1 + 16) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  LODWORD(v4) = *(a2 + 116);
  v3 |= 0x4000000u;
  *(a1 + 120) = v3;
  *(a1 + 116) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  LODWORD(v4) = *(a2 + 88);
  v3 |= 0x80000u;
  *(a1 + 120) = v3;
  *(a1 + 88) = v4;
  v2 = *(a2 + 120);
  if ((v2 & 4) == 0)
  {
LABEL_30:
    if ((v2 & 0x40000) == 0)
    {
      return *&v4;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 120) = v3;
  *(a1 + 20) = v8;
  if ((*(a2 + 120) & 0x40000) == 0)
  {
    return *&v4;
  }

LABEL_56:
  LODWORD(v4) = *(a2 + 84);
  *(a1 + 120) = v3 | 0x40000;
  *(a1 + 84) = v4;
  return *&v4;
}

uint64_t sub_245E3D6B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "biasFraction", *(a1 + 16));
    v5 = *(a1 + 120);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 20);
  PB::TextFormatter::format(this, "cookie");
  v5 = *(a1 + 120);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "currentRange", *(a1 + 24));
  v5 = *(a1 + 120);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "distanceReleaseThreshold", *(a1 + 28));
  v5 = *(a1 + 120);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "distanceTriggerThreshold", *(a1 + 32));
  v5 = *(a1 + 120);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "habcBiasCorrectedDenominator", *(a1 + 36));
  v5 = *(a1 + 120);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = *(a1 + 40);
  PB::TextFormatter::format(this, "habcBiasCorrectedNumFramesCaptured");
  v5 = *(a1 + 120);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "habcBiasCorrectedNumerator", *(a1 + 44));
  v5 = *(a1 + 120);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "habcBiasCorrectedRateBaseline", *(a1 + 48));
  v5 = *(a1 + 120);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "habcBiasCorrectedRateBaselineSigma", *(a1 + 52));
  v5 = *(a1 + 120);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "habcDenominator", *(a1 + 56));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "habcNumFramesCaptured");
  v5 = *(a1 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "habcNumerator", *(a1 + 64));
  v5 = *(a1 + 120);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "habcRateBaseline", *(a1 + 68));
  v5 = *(a1 + 120);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "habcRateBaselineSigma", *(a1 + 72));
  v5 = *(a1 + 120);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 76);
  PB::TextFormatter::format(this, "numBaselineCaptureFrames");
  v5 = *(a1 + 120);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "numEffSpads", *(a1 + 80));
  v5 = *(a1 + 120);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "rateScalingFactor", *(a1 + 84));
  v5 = *(a1 + 120);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "reflectanceEstimate", *(a1 + 88));
  v5 = *(a1 + 120);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "signalDeltaNCounts", *(a1 + 92));
  v5 = *(a1 + 120);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "signalRateBaselineKcpss", *(a1 + 96));
  v5 = *(a1 + 120);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "signalRateBaselineSigmaKcpss", *(a1 + 100));
  v5 = *(a1 + 120);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "signalRateNoiseMarginKcpss", *(a1 + 104));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "signalRateSigmaKcpss", *(a1 + 108));
  v5 = *(a1 + 120);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "signalRateTriggerThresholdNCounts", *(a1 + 112));
  v5 = *(a1 + 120);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  PB::TextFormatter::format(this, "smudgeTimeoutCountdownMs", *(a1 + 116));
  if (*(a1 + 120))
  {
LABEL_28:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_29:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3DA5C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_181;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_156;
        case 2u:
          *(a1 + 120) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_155;
        case 3u:
          *(a1 + 120) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_155;
        case 4u:
          *(a1 + 120) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_155;
        case 5u:
          *(a1 + 120) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_155;
        case 6u:
          *(a1 + 120) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_155;
        case 7u:
          *(a1 + 120) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_155;
        case 8u:
          *(a1 + 120) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_155;
        case 9u:
          *(a1 + 120) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_155;
        case 0xAu:
          *(a1 + 120) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_155;
        case 0xBu:
          *(a1 + 120) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_155;
        case 0xCu:
          *(a1 + 120) |= 0x10000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v63 = v2 - v30;
            v64 = (v31 + v30);
            v65 = v30 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_171;
              }

              v66 = v65;
              v67 = *v64;
              *(this + 1) = v66;
              v34 |= (v67 & 0x7F) << v61;
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
                LODWORD(v34) = 0;
LABEL_170:
                v2 = v66;
                goto LABEL_171;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_170;
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
              goto LABEL_171;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_171:
          *(a1 + 76) = v34;
          goto LABEL_157;
        case 0xDu:
          *(a1 + 120) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_155;
        case 0xEu:
          *(a1 + 120) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_155;
        case 0xFu:
          *(a1 + 120) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_155;
        case 0x10u:
          *(a1 + 120) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_155;
        case 0x11u:
          *(a1 + 120) |= 0x1000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v56 = v2 - v22;
            v57 = (v23 + v22);
            v58 = v22 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_167;
              }

              v59 = v58;
              v60 = *v57;
              *(this + 1) = v59;
              v26 |= (v60 & 0x7F) << v54;
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
                LODWORD(v26) = 0;
LABEL_166:
                v2 = v59;
                goto LABEL_167;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_166;
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
              goto LABEL_167;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_167:
          *(a1 + 60) = v26;
          goto LABEL_157;
        case 0x12u:
          *(a1 + 120) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_155;
        case 0x13u:
          *(a1 + 120) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_155;
        case 0x14u:
          *(a1 + 120) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_155;
        case 0x15u:
          *(a1 + 120) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_155;
        case 0x16u:
          *(a1 + 120) |= 0x80u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v77 = v2 - v46;
            v78 = (v47 + v46);
            v79 = v46 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_179;
              }

              v80 = v79;
              v81 = *v78;
              *(this + 1) = v80;
              v50 |= (v81 & 0x7F) << v75;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              v79 = v80 + 1;
              v14 = v76++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_178:
                v2 = v80;
                goto LABEL_179;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_178;
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
              goto LABEL_179;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_179:
          *(a1 + 40) = v50;
          goto LABEL_157;
        case 0x17u:
          *(a1 + 120) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_155;
        case 0x18u:
          *(a1 + 120) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_155;
        case 0x19u:
          *(a1 + 120) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_155;
        case 0x1Au:
          *(a1 + 120) |= 4u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v70 = v2 - v38;
            v71 = (v39 + v38);
            v72 = v38 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_175;
              }

              v73 = v72;
              v74 = *v71;
              *(this + 1) = v73;
              v42 |= (v74 & 0x7F) << v68;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              v72 = v73 + 1;
              v14 = v69++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_174:
                v2 = v73;
                goto LABEL_175;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_174;
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
              goto LABEL_175;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_175:
          *(a1 + 20) = v42;
          goto LABEL_157;
        case 0x1Bu:
          *(a1 + 120) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_155:
            v2 = *(this + 1) + 4;
LABEL_156:
            *(this + 1) = v2;
          }

          else
          {
LABEL_119:
            *(this + 24) = 1;
          }

          goto LABEL_157;
        default:
          if (!PB::Reader::skip(this))
          {
            v82 = 0;
            return v82 & 1;
          }

          v2 = *(this + 1);
LABEL_157:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_181;
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

LABEL_181:
  v82 = v4 ^ 1;
  return v82 & 1;
}

uint64_t sub_245E3E59C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 120);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 120);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x400000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 120);
  if ((v4 & 0x800000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 120);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 120);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 120);
  if ((v4 & 0x10000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 120);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 120);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_23:
    if ((v4 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v7 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 2) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 120);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 120);
  if ((v4 & 0x80000) == 0)
  {
LABEL_26:
    if ((v4 & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    v8 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 120) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 4) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_55:
  v9 = *(v3 + 84);

  return PB::Writer::write(this, v9);
}

uint64_t sub_245E3E8C8(uint64_t result)
{
  *result = &unk_2858D0A60;
  *(result + 24) = 0;
  return result;
}

void sub_245E3E8F0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3E928(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0A60;
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

uint64_t sub_245E3E9A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "proximityRawValue");
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
  PB::TextFormatter::format(this, "proximityState");
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3EA4C(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245E3EE24(uint64_t result, PB::Writer *this)
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

void *sub_245E3EEB0(void *result)
{
  *result = &unk_2858D0A98;
  *(result + 164) = 0;
  return result;
}

void sub_245E3EED8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3EF10(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0A98;
  *(result + 164) = 0;
  v2 = *(a2 + 164);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(result + 164) = 16;
    *(result + 40) = v4;
    v2 = *(a2 + 164);
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
    v5 = *(a2 + 104);
    v3 |= 0x80000uLL;
    *(result + 164) = v3;
    *(result + 104) = v5;
    v2 = *(a2 + 164);
  }

LABEL_6:
  if ((v2 & 0x20000000) != 0)
  {
    v6 = *(a2 + 144);
    v3 |= 0x20000000uLL;
    *(result + 164) = v3;
    *(result + 144) = v6;
    v2 = *(a2 + 164);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 48);
  v3 |= 0x20uLL;
  *(result + 164) = v3;
  *(result + 48) = v7;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v8 = *(a2 + 148);
  v3 |= 0x40000000uLL;
  *(result + 164) = v3;
  *(result + 148) = v8;
  v2 = *(a2 + 164);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v9 = *(a2 + 52);
  v3 |= 0x40uLL;
  *(result + 164) = v3;
  *(result + 52) = v9;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = *(a2 + 156);
  v3 |= 0x100000000uLL;
  *(result + 164) = v3;
  *(result + 156) = v10;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(a2 + 80);
  v3 |= 0x2000uLL;
  *(result + 164) = v3;
  *(result + 80) = v11;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(a2 + 76);
  v3 |= 0x1000uLL;
  *(result + 164) = v3;
  *(result + 76) = v12;
  v2 = *(a2 + 164);
  if ((v2 & 0x80) == 0)
  {
LABEL_14:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v13 = *(a2 + 56);
  v3 |= 0x80uLL;
  *(result + 164) = v3;
  *(result + 56) = v13;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v14 = *(a2 + 160);
  v3 |= 0x200000000uLL;
  *(result + 164) = v3;
  *(result + 160) = v14;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v15 = *(a2 + 140);
  v3 |= 0x10000000uLL;
  *(result + 164) = v3;
  *(result + 140) = v15;
  v2 = *(a2 + 164);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v16 = *(a2 + 68);
  v3 |= 0x400uLL;
  *(result + 164) = v3;
  *(result + 68) = v16;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000) == 0)
  {
LABEL_18:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v17 = *(a2 + 84);
  v3 |= 0x4000uLL;
  *(result + 164) = v3;
  *(result + 84) = v17;
  v2 = *(a2 + 164);
  if ((v2 & 0x800000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v18 = *(a2 + 120);
  v3 |= 0x800000uLL;
  *(result + 164) = v3;
  *(result + 120) = v18;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v19 = *(a2 + 128);
  v3 |= 0x2000000uLL;
  *(result + 164) = v3;
  *(result + 128) = v19;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v20 = *(a2 + 136);
  v3 |= 0x8000000uLL;
  *(result + 164) = v3;
  *(result + 136) = v20;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v21 = *(a2 + 132);
  v3 |= 0x4000000uLL;
  *(result + 164) = v3;
  *(result + 132) = v21;
  v2 = *(a2 + 164);
  if ((v2 & 0x400000) == 0)
  {
LABEL_23:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = *(a2 + 116);
  v3 |= 0x400000uLL;
  *(result + 164) = v3;
  *(result + 116) = v22;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v23 = *(a2 + 124);
  v3 |= 0x1000000uLL;
  *(result + 164) = v3;
  *(result + 124) = v23;
  v2 = *(a2 + 164);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v24 = *(a2 + 152);
  v3 |= 0x80000000uLL;
  *(result + 164) = v3;
  *(result + 152) = v24;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 88);
  v3 |= 0x8000uLL;
  *(result + 164) = v3;
  *(result + 88) = v25;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v26 = *(a2 + 108);
  v3 |= 0x100000uLL;
  *(result + 164) = v3;
  *(result + 108) = v26;
  v2 = *(a2 + 164);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v27 = *(a2 + 60);
  v3 |= 0x100uLL;
  *(result + 164) = v3;
  *(result + 60) = v27;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000) == 0)
  {
LABEL_29:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v28 = *(a2 + 112);
  v3 |= 0x200000uLL;
  *(result + 164) = v3;
  *(result + 112) = v28;
  v2 = *(a2 + 164);
  if ((v2 & 0x200) == 0)
  {
LABEL_30:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v29 = *(a2 + 64);
  v3 |= 0x200uLL;
  *(result + 164) = v3;
  *(result + 64) = v29;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v30 = *(a2 + 96);
  v3 |= 0x20000uLL;
  *(result + 164) = v3;
  *(result + 96) = v30;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  v31 = *(a2 + 100);
  v3 |= 0x40000uLL;
  *(result + 164) = v3;
  *(result + 100) = v31;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  v32 = *(a2 + 92);
  v3 |= 0x10000uLL;
  *(result + 164) = v3;
  *(result + 92) = v32;
  v2 = *(a2 + 164);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v33 = *(a2 + 32);
  v3 |= 8uLL;
  *(result + 164) = v3;
  *(result + 32) = v33;
  v2 = *(a2 + 164);
  if ((v2 & 4) == 0)
  {
LABEL_35:
    if ((v2 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v34 = *(a2 + 24);
  v3 |= 4uLL;
  *(result + 164) = v3;
  *(result + 24) = v34;
  v2 = *(a2 + 164);
  if ((v2 & 1) == 0)
  {
LABEL_36:
    if ((v2 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v35 = *(a2 + 8);
  v3 |= 1uLL;
  *(result + 164) = v3;
  *(result + 8) = v35;
  v2 = *(a2 + 164);
  if ((v2 & 2) == 0)
  {
LABEL_37:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_70:
    v37 = *(a2 + 72);
    *(result + 164) = v3 | 0x800;
    *(result + 72) = v37;
    return result;
  }

LABEL_69:
  v36 = *(a2 + 16);
  v3 |= 2uLL;
  *(result + 164) = v3;
  *(result + 16) = v36;
  if ((*(a2 + 164) & 0x800) != 0)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t sub_245E3F2F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "ambientRatePerSPAD", *(a1 + 48));
    v5 = *(a1 + 164);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "ambientRateTotal", *(a1 + 52));
  v5 = *(a1 + 164);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "blockSelectByte");
  v5 = *(a1 + 164);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "correctedSignalRatePerSPAD", *(a1 + 60));
  v5 = *(a1 + 164);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "estimatedAmbientBias", *(a1 + 64));
  v5 = *(a1 + 164);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v8 = *(a1 + 68);
  PB::TextFormatter::format(this, "integrationTime");
  v5 = *(a1 + 164);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v9 = *(a1 + 72);
  PB::TextFormatter::format(this, "numAOPClients");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(a1 + 76);
  PB::TextFormatter::format(this, "numAperturedSPADs");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = *(a1 + 80);
  PB::TextFormatter::format(this, "numFullSPADs");
  v5 = *(a1 + 164);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(a1 + 84);
  PB::TextFormatter::format(this, "oscFrequencySetting");
  v5 = *(a1 + 164);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v13 = *(a1 + 88);
  PB::TextFormatter::format(this, "oscTrim");
  v5 = *(a1 + 164);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = *(a1 + 8);
  PB::TextFormatter::format(this, "pearlScanWindowOnTs");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v15 = *(a1 + 92);
  PB::TextFormatter::format(this, "pearlScanWindowOpen");
  v5 = *(a1 + 164);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v16 = *(a1 + 16);
  PB::TextFormatter::format(this, "pearlScanWindownOffTs");
  v5 = *(a1 + 164);
  if ((v5 & 4) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  v17 = *(a1 + 24);
  PB::TextFormatter::format(this, "pearlSessionOffTs");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v18 = *(a1 + 32);
  PB::TextFormatter::format(this, "pearlSessionOnTs");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = *(a1 + 96);
  PB::TextFormatter::format(this, "pearlSessionRunning");
  v5 = *(a1 + 164);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = *(a1 + 100);
  PB::TextFormatter::format(this, "pearlSessionType");
  v5 = *(a1 + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "rawRange", *(a1 + 104));
  v5 = *(a1 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v21 = *(a1 + 108);
  PB::TextFormatter::format(this, "refPhaseOffset");
  v5 = *(a1 + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "refSignalRateTotal", *(a1 + 112));
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a1 + 116);
  PB::TextFormatter::format(this, "regValAmbientWindowEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a1 + 120);
  PB::TextFormatter::format(this, "regValRange");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  v24 = *(a1 + 124);
  PB::TextFormatter::format(this, "regValRefAmbientWindowEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v25 = *(a1 + 128);
  PB::TextFormatter::format(this, "regValRefRange");
  v5 = *(a1 + 164);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v26 = *(a1 + 132);
  PB::TextFormatter::format(this, "regValRefSignalTotalEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = *(a1 + 136);
  PB::TextFormatter::format(this, "regValSignalTotalEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a1 + 140);
  PB::TextFormatter::format(this, "signalEventLimit");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "signalRatePerSPAD", *(a1 + 144));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "signalRateTotal", *(a1 + 148));
  v5 = *(a1 + 164);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  v29 = *(a1 + 152);
  PB::TextFormatter::format(this, "signalToAmbientWindowRatio");
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 164);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_71:
  PB::TextFormatter::format(this, "totalRateTotal", *(a1 + 156));
  if ((*(a1 + 164) & 0x200000000) != 0)
  {
LABEL_35:
    v6 = *(a1 + 160);
    PB::TextFormatter::format(this, "vhvSetting");
  }

LABEL_36:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E3F778(uint64_t a1, PB::Reader *this)
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
            goto LABEL_518;
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
          *(a1 + 164) |= 0x10uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 40) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_417;
        case 2u:
          *(a1 + 164) |= 0x80000uLL;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 104) = *(*this + v110);
          goto LABEL_416;
        case 3u:
          *(a1 + 164) |= 0x20000000uLL;
          v90 = *(this + 1);
          if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 144) = *(*this + v90);
          goto LABEL_416;
        case 4u:
          *(a1 + 164) |= 0x20uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 48) = *(*this + v100);
          goto LABEL_416;
        case 5u:
          *(a1 + 164) |= 0x40000000uLL;
          v69 = *(this + 1);
          if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 148) = *(*this + v69);
          goto LABEL_416;
        case 6u:
          *(a1 + 164) |= 0x40uLL;
          v138 = *(this + 1);
          if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 52) = *(*this + v138);
          goto LABEL_416;
        case 7u:
          *(a1 + 164) |= 0x100000000uLL;
          v157 = *(this + 1);
          if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 156) = *(*this + v157);
          goto LABEL_416;
        case 8u:
          *(a1 + 164) |= 0x2000uLL;
          v102 = *(this + 1);
          v101 = *(this + 2);
          v103 = *this;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(this + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_468;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_294:
            LODWORD(v106) = 0;
            goto LABEL_468;
          }

          v297 = 0;
          v298 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v299 = v101 - v102;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v103 + v102);
          v301 = v102 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v106 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_294;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_468:
          *(a1 + 80) = v106;
          goto LABEL_514;
        case 9u:
          *(a1 + 164) |= 0x1000uLL;
          v177 = *(this + 1);
          v176 = *(this + 2);
          v178 = *this;
          if (v177 <= 0xFFFFFFFFFFFFFFF5 && v177 + 10 <= v176)
          {
            v179 = 0;
            v180 = 0;
            v181 = 0;
            v182 = (v178 + v177);
            v183 = v177 + 1;
            do
            {
              *(this + 1) = v183;
              v184 = *v182++;
              v181 |= (v184 & 0x7F) << v179;
              if ((v184 & 0x80) == 0)
              {
                goto LABEL_492;
              }

              v179 += 7;
              ++v183;
              v14 = v180++ > 8;
            }

            while (!v14);
LABEL_358:
            LODWORD(v181) = 0;
            goto LABEL_492;
          }

          v345 = 0;
          v346 = 0;
          v181 = 0;
          v17 = v176 >= v177;
          v347 = v176 - v177;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v178 + v177);
          v349 = v177 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v181 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_358;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v181) = 0;
              }
            }

            else
            {
              LODWORD(v181) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_492:
          *(a1 + 76) = v181;
          goto LABEL_514;
        case 0xAu:
          *(a1 + 164) |= 0x80uLL;
          v80 = *(this + 1);
          v79 = *(this + 2);
          v81 = *this;
          if (v80 <= 0xFFFFFFFFFFFFFFF5 && v80 + 10 <= v79)
          {
            v82 = 0;
            v83 = 0;
            v84 = 0;
            v85 = (v81 + v80);
            v86 = v80 + 1;
            do
            {
              *(this + 1) = v86;
              v87 = *v85++;
              v84 |= (v87 & 0x7F) << v82;
              if ((v87 & 0x80) == 0)
              {
                goto LABEL_462;
              }

              v82 += 7;
              ++v86;
              v14 = v83++ > 8;
            }

            while (!v14);
LABEL_278:
            LODWORD(v84) = 0;
            goto LABEL_462;
          }

          v285 = 0;
          v286 = 0;
          v84 = 0;
          v17 = v79 >= v80;
          v287 = v79 - v80;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v81 + v80);
          v289 = v80 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v84 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v84) = 0;
              }
            }

            else
            {
              LODWORD(v84) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_462:
          *(a1 + 56) = v84;
          goto LABEL_514;
        case 0xBu:
          *(a1 + 164) |= 0x200000000uLL;
          v168 = *(this + 1);
          v167 = *(this + 2);
          v169 = *this;
          if (v168 <= 0xFFFFFFFFFFFFFFF5 && v168 + 10 <= v167)
          {
            v170 = 0;
            v171 = 0;
            v172 = 0;
            v173 = (v169 + v168);
            v174 = v168 + 1;
            do
            {
              *(this + 1) = v174;
              v175 = *v173++;
              v172 |= (v175 & 0x7F) << v170;
              if ((v175 & 0x80) == 0)
              {
                goto LABEL_489;
              }

              v170 += 7;
              ++v174;
              v14 = v171++ > 8;
            }

            while (!v14);
LABEL_350:
            LODWORD(v172) = 0;
            goto LABEL_489;
          }

          v339 = 0;
          v340 = 0;
          v172 = 0;
          v17 = v167 >= v168;
          v341 = v167 - v168;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v169 + v168);
          v343 = v168 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v172 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_350;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v172) = 0;
              }
            }

            else
            {
              LODWORD(v172) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_489:
          *(a1 + 160) = v172;
          goto LABEL_514;
        case 0xCu:
          *(a1 + 164) |= 0x10000000uLL;
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
                goto LABEL_456;
              }

              v63 += 7;
              ++v67;
              v14 = v64++ > 8;
            }

            while (!v14);
LABEL_262:
            LODWORD(v65) = 0;
            goto LABEL_456;
          }

          v273 = 0;
          v274 = 0;
          v65 = 0;
          v17 = v60 >= v61;
          v275 = v60 - v61;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v62 + v61);
          v277 = v61 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v65 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_262;
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

LABEL_456:
          *(a1 + 140) = v65;
          goto LABEL_514;
        case 0xDu:
          *(a1 + 164) |= 0x400uLL;
          v71 = *(this + 1);
          v70 = *(this + 2);
          v72 = *this;
          if (v71 <= 0xFFFFFFFFFFFFFFF5 && v71 + 10 <= v70)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = (v72 + v71);
            v77 = v71 + 1;
            do
            {
              *(this + 1) = v77;
              v78 = *v76++;
              v75 |= (v78 & 0x7F) << v73;
              if ((v78 & 0x80) == 0)
              {
                goto LABEL_459;
              }

              v73 += 7;
              ++v77;
              v14 = v74++ > 8;
            }

            while (!v14);
LABEL_270:
            LODWORD(v75) = 0;
            goto LABEL_459;
          }

          v279 = 0;
          v280 = 0;
          v75 = 0;
          v17 = v70 >= v71;
          v281 = v70 - v71;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v72 + v71);
          v283 = v71 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v75 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v75) = 0;
              }
            }

            else
            {
              LODWORD(v75) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_459:
          *(a1 + 68) = v75;
          goto LABEL_514;
        case 0xEu:
          *(a1 + 164) |= 0x4000uLL;
          v149 = *(this + 1);
          v148 = *(this + 2);
          v150 = *this;
          if (v149 <= 0xFFFFFFFFFFFFFFF5 && v149 + 10 <= v148)
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v154 = (v150 + v149);
            v155 = v149 + 1;
            do
            {
              *(this + 1) = v155;
              v156 = *v154++;
              v153 |= (v156 & 0x7F) << v151;
              if ((v156 & 0x80) == 0)
              {
                goto LABEL_483;
              }

              v151 += 7;
              ++v155;
              v14 = v152++ > 8;
            }

            while (!v14);
LABEL_334:
            LODWORD(v153) = 0;
            goto LABEL_483;
          }

          v327 = 0;
          v328 = 0;
          v153 = 0;
          v17 = v148 >= v149;
          v329 = v148 - v149;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v150 + v149);
          v331 = v149 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(this + 1) = v331;
              v153 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_334;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v153) = 0;
              }
            }

            else
            {
              LODWORD(v153) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_483:
          *(a1 + 84) = v153;
          goto LABEL_514;
        case 0xFu:
          *(a1 + 164) |= 0x800000uLL;
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
                goto LABEL_450;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
            }

            while (!v14);
LABEL_246:
            LODWORD(v47) = 0;
            goto LABEL_450;
          }

          v261 = 0;
          v262 = 0;
          v47 = 0;
          v17 = v42 >= v43;
          v263 = v42 - v43;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v44 + v43);
          v265 = v43 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v47 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_246;
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

LABEL_450:
          *(a1 + 120) = v47;
          goto LABEL_514;
        case 0x10u:
          *(a1 + 164) |= 0x2000000uLL;
          v92 = *(this + 1);
          v91 = *(this + 2);
          v93 = *this;
          if (v92 <= 0xFFFFFFFFFFFFFFF5 && v92 + 10 <= v91)
          {
            v94 = 0;
            v95 = 0;
            v96 = 0;
            v97 = (v93 + v92);
            v98 = v92 + 1;
            do
            {
              *(this + 1) = v98;
              v99 = *v97++;
              v96 |= (v99 & 0x7F) << v94;
              if ((v99 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v94 += 7;
              ++v98;
              v14 = v95++ > 8;
            }

            while (!v14);
LABEL_286:
            LODWORD(v96) = 0;
            goto LABEL_465;
          }

          v291 = 0;
          v292 = 0;
          v96 = 0;
          v17 = v91 >= v92;
          v293 = v91 - v92;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v93 + v92);
          v295 = v92 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v96 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_286;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v96) = 0;
              }
            }

            else
            {
              LODWORD(v96) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_465:
          *(a1 + 128) = v96;
          goto LABEL_514;
        case 0x11u:
          *(a1 + 164) |= 0x8000000uLL;
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
                goto LABEL_447;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v38) = 0;
            goto LABEL_447;
          }

          v255 = 0;
          v256 = 0;
          v38 = 0;
          v17 = v33 >= v34;
          v257 = v33 - v34;
          if (!v17)
          {
            v257 = 0;
          }

          v258 = (v35 + v34);
          v259 = v34 + 1;
          while (2)
          {
            if (v257)
            {
              v260 = *v258;
              *(this + 1) = v259;
              v38 |= (v260 & 0x7F) << v255;
              if (v260 < 0)
              {
                v255 += 7;
                --v257;
                ++v258;
                ++v259;
                v14 = v256++ > 8;
                if (v14)
                {
                  goto LABEL_238;
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

LABEL_447:
          *(a1 + 136) = v38;
          goto LABEL_514;
        case 0x12u:
          *(a1 + 164) |= 0x4000000uLL;
          v121 = *(this + 1);
          v120 = *(this + 2);
          v122 = *this;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(this + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_474;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_310:
            LODWORD(v125) = 0;
            goto LABEL_474;
          }

          v309 = 0;
          v310 = 0;
          v125 = 0;
          v17 = v120 >= v121;
          v311 = v120 - v121;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v122 + v121);
          v313 = v121 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(this + 1) = v313;
              v125 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v125) = 0;
              }
            }

            else
            {
              LODWORD(v125) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_474:
          *(a1 + 132) = v125;
          goto LABEL_514;
        case 0x13u:
          *(a1 + 164) |= 0x400000uLL;
          v159 = *(this + 1);
          v158 = *(this + 2);
          v160 = *this;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(this + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_486;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_342:
            LODWORD(v163) = 0;
            goto LABEL_486;
          }

          v333 = 0;
          v334 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v335 = v158 - v159;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v160 + v159);
          v337 = v159 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v163 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_342;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v163) = 0;
              }
            }

            else
            {
              LODWORD(v163) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_486:
          *(a1 + 116) = v163;
          goto LABEL_514;
        case 0x14u:
          *(a1 + 164) |= 0x1000000uLL;
          v213 = *(this + 1);
          v212 = *(this + 2);
          v214 = *this;
          if (v213 <= 0xFFFFFFFFFFFFFFF5 && v213 + 10 <= v212)
          {
            v215 = 0;
            v216 = 0;
            v217 = 0;
            v218 = (v214 + v213);
            v219 = v213 + 1;
            do
            {
              *(this + 1) = v219;
              v220 = *v218++;
              v217 |= (v220 & 0x7F) << v215;
              if ((v220 & 0x80) == 0)
              {
                goto LABEL_504;
              }

              v215 += 7;
              ++v219;
              v14 = v216++ > 8;
            }

            while (!v14);
LABEL_390:
            LODWORD(v217) = 0;
            goto LABEL_504;
          }

          v369 = 0;
          v370 = 0;
          v217 = 0;
          v17 = v212 >= v213;
          v371 = v212 - v213;
          if (!v17)
          {
            v371 = 0;
          }

          v372 = (v214 + v213);
          v373 = v213 + 1;
          while (2)
          {
            if (v371)
            {
              v374 = *v372;
              *(this + 1) = v373;
              v217 |= (v374 & 0x7F) << v369;
              if (v374 < 0)
              {
                v369 += 7;
                --v371;
                ++v372;
                ++v373;
                v14 = v370++ > 8;
                if (v14)
                {
                  goto LABEL_390;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v217) = 0;
              }
            }

            else
            {
              LODWORD(v217) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_504:
          *(a1 + 124) = v217;
          goto LABEL_514;
        case 0x15u:
          *(a1 + 164) |= 0x80000000uLL;
          v130 = *(this + 1);
          v129 = *(this + 2);
          v131 = *this;
          if (v130 <= 0xFFFFFFFFFFFFFFF5 && v130 + 10 <= v129)
          {
            v132 = 0;
            v133 = 0;
            v134 = 0;
            v135 = (v131 + v130);
            v136 = v130 + 1;
            do
            {
              *(this + 1) = v136;
              v137 = *v135++;
              v134 |= (v137 & 0x7F) << v132;
              if ((v137 & 0x80) == 0)
              {
                goto LABEL_477;
              }

              v132 += 7;
              ++v136;
              v14 = v133++ > 8;
            }

            while (!v14);
LABEL_318:
            LODWORD(v134) = 0;
            goto LABEL_477;
          }

          v315 = 0;
          v316 = 0;
          v134 = 0;
          v17 = v129 >= v130;
          v317 = v129 - v130;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v131 + v130);
          v319 = v130 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v134 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v134) = 0;
              }
            }

            else
            {
              LODWORD(v134) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_477:
          *(a1 + 152) = v134;
          goto LABEL_514;
        case 0x16u:
          *(a1 + 164) |= 0x8000uLL;
          v140 = *(this + 1);
          v139 = *(this + 2);
          v141 = *this;
          if (v140 <= 0xFFFFFFFFFFFFFFF5 && v140 + 10 <= v139)
          {
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = (v141 + v140);
            v146 = v140 + 1;
            do
            {
              *(this + 1) = v146;
              v147 = *v145++;
              v144 |= (v147 & 0x7F) << v142;
              if ((v147 & 0x80) == 0)
              {
                goto LABEL_480;
              }

              v142 += 7;
              ++v146;
              v14 = v143++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v144) = 0;
            goto LABEL_480;
          }

          v321 = 0;
          v322 = 0;
          v144 = 0;
          v17 = v139 >= v140;
          v323 = v139 - v140;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v141 + v140);
          v325 = v140 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(this + 1) = v325;
              v144 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v144) = 0;
              }
            }

            else
            {
              LODWORD(v144) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_480:
          *(a1 + 88) = v144;
          goto LABEL_514;
        case 0x17u:
          *(a1 + 164) |= 0x100000uLL;
          v204 = *(this + 1);
          v203 = *(this + 2);
          v205 = *this;
          if (v204 <= 0xFFFFFFFFFFFFFFF5 && v204 + 10 <= v203)
          {
            v206 = 0;
            v207 = 0;
            v208 = 0;
            v209 = (v205 + v204);
            v210 = v204 + 1;
            do
            {
              *(this + 1) = v210;
              v211 = *v209++;
              v208 |= (v211 & 0x7F) << v206;
              if ((v211 & 0x80) == 0)
              {
                goto LABEL_501;
              }

              v206 += 7;
              ++v210;
              v14 = v207++ > 8;
            }

            while (!v14);
LABEL_382:
            LODWORD(v208) = 0;
            goto LABEL_501;
          }

          v363 = 0;
          v364 = 0;
          v208 = 0;
          v17 = v203 >= v204;
          v365 = v203 - v204;
          if (!v17)
          {
            v365 = 0;
          }

          v366 = (v205 + v204);
          v367 = v204 + 1;
          while (2)
          {
            if (v365)
            {
              v368 = *v366;
              *(this + 1) = v367;
              v208 |= (v368 & 0x7F) << v363;
              if (v368 < 0)
              {
                v363 += 7;
                --v365;
                ++v366;
                ++v367;
                v14 = v364++ > 8;
                if (v14)
                {
                  goto LABEL_382;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v208) = 0;
              }
            }

            else
            {
              LODWORD(v208) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_501:
          *(a1 + 108) = v208;
          goto LABEL_514;
        case 0x18u:
          *(a1 + 164) |= 0x100uLL;
          v221 = *(this + 1);
          if (v221 > 0xFFFFFFFFFFFFFFFBLL || v221 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 60) = *(*this + v221);
          goto LABEL_416;
        case 0x19u:
          *(a1 + 164) |= 0x200000uLL;
          v89 = *(this + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 112) = *(*this + v89);
          goto LABEL_416;
        case 0x1Au:
          *(a1 + 164) |= 0x200uLL;
          v88 = *(this + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
          {
LABEL_199:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 64) = *(*this + v88);
LABEL_416:
            v23 = *(this + 1) + 4;
LABEL_417:
            *(this + 1) = v23;
          }

          goto LABEL_514;
        case 0x1Bu:
          *(a1 + 164) |= 0x20000uLL;
          v241 = *(this + 1);
          v240 = *(this + 2);
          v242 = *this;
          if (v241 <= 0xFFFFFFFFFFFFFFF5 && v241 + 10 <= v240)
          {
            v243 = 0;
            v244 = 0;
            v245 = 0;
            v246 = (v242 + v241);
            v247 = v241 + 1;
            do
            {
              *(this + 1) = v247;
              v248 = *v246++;
              v245 |= (v248 & 0x7F) << v243;
              if ((v248 & 0x80) == 0)
              {
                goto LABEL_513;
              }

              v243 += 7;
              ++v247;
              v14 = v244++ > 8;
            }

            while (!v14);
LABEL_414:
            LODWORD(v245) = 0;
            goto LABEL_513;
          }

          v387 = 0;
          v388 = 0;
          v245 = 0;
          v17 = v240 >= v241;
          v389 = v240 - v241;
          if (!v17)
          {
            v389 = 0;
          }

          v390 = (v242 + v241);
          v391 = v241 + 1;
          while (2)
          {
            if (v389)
            {
              v392 = *v390;
              *(this + 1) = v391;
              v245 |= (v392 & 0x7F) << v387;
              if (v392 < 0)
              {
                v387 += 7;
                --v389;
                ++v390;
                ++v391;
                v14 = v388++ > 8;
                if (v14)
                {
                  goto LABEL_414;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v245) = 0;
              }
            }

            else
            {
              LODWORD(v245) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_513:
          *(a1 + 96) = v245;
          goto LABEL_514;
        case 0x1Cu:
          *(a1 + 164) |= 0x40000uLL;
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
                goto LABEL_444;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_230:
            LODWORD(v29) = 0;
            goto LABEL_444;
          }

          v249 = 0;
          v250 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v251 = v24 - v25;
          if (!v17)
          {
            v251 = 0;
          }

          v252 = (v26 + v25);
          v253 = v25 + 1;
          while (2)
          {
            if (v251)
            {
              v254 = *v252;
              *(this + 1) = v253;
              v29 |= (v254 & 0x7F) << v249;
              if (v254 < 0)
              {
                v249 += 7;
                --v251;
                ++v252;
                ++v253;
                v14 = v250++ > 8;
                if (v14)
                {
                  goto LABEL_230;
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

LABEL_444:
          *(a1 + 100) = v29;
          goto LABEL_514;
        case 0x1Du:
          *(a1 + 164) |= 0x10000uLL;
          v223 = *(this + 1);
          v222 = *(this + 2);
          v224 = *this;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(this + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_507;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_398:
            LODWORD(v227) = 0;
            goto LABEL_507;
          }

          v375 = 0;
          v376 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v377 = v222 - v223;
          if (!v17)
          {
            v377 = 0;
          }

          v378 = (v224 + v223);
          v379 = v223 + 1;
          while (2)
          {
            if (v377)
            {
              v380 = *v378;
              *(this + 1) = v379;
              v227 |= (v380 & 0x7F) << v375;
              if (v380 < 0)
              {
                v375 += 7;
                --v377;
                ++v378;
                ++v379;
                v14 = v376++ > 8;
                if (v14)
                {
                  goto LABEL_398;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_507:
          *(a1 + 92) = v227;
          goto LABEL_514;
        case 0x1Eu:
          *(a1 + 164) |= 8uLL;
          v232 = *(this + 1);
          v231 = *(this + 2);
          v233 = *this;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(this + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_510;
              }

              v234 += 7;
              ++v238;
              v14 = v235++ > 8;
            }

            while (!v14);
LABEL_406:
            v236 = 0;
            goto LABEL_510;
          }

          v381 = 0;
          v382 = 0;
          v236 = 0;
          v17 = v231 >= v232;
          v383 = v231 - v232;
          if (!v17)
          {
            v383 = 0;
          }

          v384 = (v233 + v232);
          v385 = v232 + 1;
          while (2)
          {
            if (v383)
            {
              v386 = *v384;
              *(this + 1) = v385;
              v236 |= (v386 & 0x7F) << v381;
              if (v386 < 0)
              {
                v381 += 7;
                --v383;
                ++v384;
                ++v385;
                v14 = v382++ > 8;
                if (v14)
                {
                  goto LABEL_406;
                }

                continue;
              }

              if (*(this + 24))
              {
                v236 = 0;
              }
            }

            else
            {
              v236 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_510:
          *(a1 + 32) = v236;
          goto LABEL_514;
        case 0x1Fu:
          *(a1 + 164) |= 4uLL;
          v186 = *(this + 1);
          v185 = *(this + 2);
          v187 = *this;
          if (v186 <= 0xFFFFFFFFFFFFFFF5 && v186 + 10 <= v185)
          {
            v188 = 0;
            v189 = 0;
            v190 = 0;
            v191 = (v187 + v186);
            v192 = v186 + 1;
            do
            {
              *(this + 1) = v192;
              v193 = *v191++;
              v190 |= (v193 & 0x7F) << v188;
              if ((v193 & 0x80) == 0)
              {
                goto LABEL_495;
              }

              v188 += 7;
              ++v192;
              v14 = v189++ > 8;
            }

            while (!v14);
LABEL_366:
            v190 = 0;
            goto LABEL_495;
          }

          v351 = 0;
          v352 = 0;
          v190 = 0;
          v17 = v185 >= v186;
          v353 = v185 - v186;
          if (!v17)
          {
            v353 = 0;
          }

          v354 = (v187 + v186);
          v355 = v186 + 1;
          while (2)
          {
            if (v353)
            {
              v356 = *v354;
              *(this + 1) = v355;
              v190 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                --v353;
                ++v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_366;
                }

                continue;
              }

              if (*(this + 24))
              {
                v190 = 0;
              }
            }

            else
            {
              v190 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_495:
          *(a1 + 24) = v190;
          goto LABEL_514;
        case 0x20u:
          *(a1 + 164) |= 1uLL;
          v112 = *(this + 1);
          v111 = *(this + 2);
          v113 = *this;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(this + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_471;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_302:
            v116 = 0;
            goto LABEL_471;
          }

          v303 = 0;
          v304 = 0;
          v116 = 0;
          v17 = v111 >= v112;
          v305 = v111 - v112;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v113 + v112);
          v307 = v112 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v116 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(this + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_471:
          *(a1 + 8) = v116;
          goto LABEL_514;
        case 0x21u:
          *(a1 + 164) |= 2uLL;
          v195 = *(this + 1);
          v194 = *(this + 2);
          v196 = *this;
          if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
          {
            v197 = 0;
            v198 = 0;
            v199 = 0;
            v200 = (v196 + v195);
            v201 = v195 + 1;
            do
            {
              *(this + 1) = v201;
              v202 = *v200++;
              v199 |= (v202 & 0x7F) << v197;
              if ((v202 & 0x80) == 0)
              {
                goto LABEL_498;
              }

              v197 += 7;
              ++v201;
              v14 = v198++ > 8;
            }

            while (!v14);
LABEL_374:
            v199 = 0;
            goto LABEL_498;
          }

          v357 = 0;
          v358 = 0;
          v199 = 0;
          v17 = v194 >= v195;
          v359 = v194 - v195;
          if (!v17)
          {
            v359 = 0;
          }

          v360 = (v196 + v195);
          v361 = v195 + 1;
          while (2)
          {
            if (v359)
            {
              v362 = *v360;
              *(this + 1) = v361;
              v199 |= (v362 & 0x7F) << v357;
              if (v362 < 0)
              {
                v357 += 7;
                --v359;
                ++v360;
                ++v361;
                v14 = v358++ > 8;
                if (v14)
                {
                  goto LABEL_374;
                }

                continue;
              }

              if (*(this + 24))
              {
                v199 = 0;
              }
            }

            else
            {
              v199 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_498:
          *(a1 + 16) = v199;
          goto LABEL_514;
        case 0x22u:
          *(a1 + 164) |= 0x800uLL;
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
                goto LABEL_453;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
            }

            while (!v14);
LABEL_254:
            LODWORD(v56) = 0;
            goto LABEL_453;
          }

          v267 = 0;
          v268 = 0;
          v56 = 0;
          v17 = v51 >= v52;
          v269 = v51 - v52;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v53 + v52);
          v271 = v52 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_514;
          }

          v394 = 0;
          return v394 & 1;
      }

      while (1)
      {
        if (!v269)
        {
          LODWORD(v56) = 0;
          *(this + 24) = 1;
          goto LABEL_453;
        }

        v272 = *v270;
        *(this + 1) = v271;
        v56 |= (v272 & 0x7F) << v267;
        if ((v272 & 0x80) == 0)
        {
          break;
        }

        v267 += 7;
        --v269;
        ++v270;
        ++v271;
        v14 = v268++ > 8;
        if (v14)
        {
          goto LABEL_254;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v56) = 0;
      }

LABEL_453:
      *(a1 + 72) = v56;
LABEL_514:
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

LABEL_518:
  v394 = v4 ^ 1;
  return v394 & 1;
}