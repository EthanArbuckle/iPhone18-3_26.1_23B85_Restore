uint64_t sub_245DA0AC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 36);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v3 + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(v3 + 44);
    result = PB::Writer::write(this);
    if ((*(v3 + 48) & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_15:
  v9 = *(v3 + 24);

  return PB::Writer::write(this, v9);
}

double sub_245DA0BAC(uint64_t a1)
{
  *a1 = &unk_2858CCE70;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245DA0BE0(PB::Base *this)
{
  *this = &unk_2858CCE70;
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

void sub_245DA0C54(PB::Base *a1)
{
  sub_245DA0BE0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DA0C8C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCE70;
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
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  return a1;
}

uint64_t sub_245DA0D30(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "freq", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "mag", v10);
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA0DF8(uint64_t a1, PB::Reader *this)
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
            v29 = *(a1 + 16);
            v28 = *(a1 + 24);
            if (v29 >= v28)
            {
              v31 = *(a1 + 8);
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
                sub_245DF85BC(a1 + 8, v36);
              }

              v37 = (v29 - v31) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = 0;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(a1 + 8);
              *(a1 + 8) = v39;
              *(a1 + 16) = v30;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v30;
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

        v59 = *(a1 + 16);
        v58 = *(a1 + 24);
        if (v59 >= v58)
        {
          v63 = *(a1 + 8);
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
            sub_245DF85BC(a1 + 8, v68);
          }

          v75 = (v59 - v63) >> 2;
          v76 = (4 * v65);
          v77 = (4 * v65 - 4 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(a1 + 8);
          *(a1 + 8) = v77;
          *(a1 + 16) = v60;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v60;
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
        v45 = *(a1 + 40);
        v44 = *(a1 + 48);
        if (v45 >= v44)
        {
          v47 = *(a1 + 32);
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
            sub_245DF85BC(a1 + 32, v52);
          }

          v53 = (v45 - v47) >> 2;
          v54 = (4 * v49);
          v55 = (4 * v49 - 4 * v53);
          *v54 = 0;
          v46 = v54 + 1;
          memcpy(v55, v47, v48);
          v56 = *(a1 + 32);
          *(a1 + 32) = v55;
          *(a1 + 40) = v46;
          *(a1 + 48) = 0;
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

        *(a1 + 40) = v46;
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

    v62 = *(a1 + 40);
    v61 = *(a1 + 48);
    if (v62 >= v61)
    {
      v69 = *(a1 + 32);
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
        sub_245DF85BC(a1 + 32, v74);
      }

      v79 = (v62 - v69) >> 2;
      v80 = (4 * v71);
      v81 = (4 * v71 - 4 * v79);
      *v80 = 0;
      v60 = v80 + 1;
      memcpy(v81, v69, v70);
      v82 = *(a1 + 32);
      *(a1 + 32) = v81;
      *(a1 + 40) = v60;
      *(a1 + 48) = 0;
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

    *(a1 + 40) = v60;
    goto LABEL_98;
  }

LABEL_107:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_245DA137C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 64))
  {
    result = PB::Writer::write(this, *(result + 56));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

void *sub_245DA1400(void *result)
{
  *result = &unk_2858CCEA8;
  result[1] = 0;
  return result;
}

void sub_245DA1420(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CCEA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DA14A0(PB::Base *a1)
{
  sub_245DA1420(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DA14D8(void *result, uint64_t a2)
{
  *result = &unk_2858CCEA8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DA1580(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA15FC(int a1, PB::Reader *this)
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

uint64_t sub_245DA1818(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245DA1834(uint64_t result)
{
  *result = &unk_2858CCEE0;
  *(result + 52) = 0;
  return result;
}

void sub_245DA185C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA1894(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCEE0;
  *(a1 + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    v3 = 4;
    *(a1 + 52) = 4;
    *(a1 + 24) = result;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 32);
    v3 |= 8u;
    *(a1 + 52) = v3;
    *(a1 + 32) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 52) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 52) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 8);
    *(a1 + 52) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

LABEL_13:
  v5 = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 52) = v3;
  *(a1 + 48) = v5;
  if (*(a2 + 52))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245DA1968(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "lastUpdateTime", *(a1 + 8));
    v5 = *(a1 + 52);
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

  else if ((*(a1 + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "mean", *(a1 + 16));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "speedLB", *(a1 + 24));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "speedUB", *(a1 + 32));
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "updateCount");
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "variance", *(a1 + 40));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA1A6C(uint64_t a1, PB::Reader *this)
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

      v22 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 52) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_45:
              *(this + 24) = 1;
              goto LABEL_68;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_62;
          case 5:
            *(a1 + 52) |= 0x20u;
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
                v2 = *(this + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_67;
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
                  goto LABEL_66;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_66:
              v2 = v36;
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

LABEL_67:
            *(a1 + 48) = v27;
            goto LABEL_68;
          case 6:
            *(a1 + 52) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_45;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_62;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 52) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_45;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_62;
          case 2:
            *(a1 + 52) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_45;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_62;
          case 3:
            *(a1 + 52) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_45;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_62:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_68;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_68:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_72:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245DA1E40(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 52) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 52);
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
  v6 = *(v3 + 8);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245DA1F20(uint64_t result)
{
  *result = &unk_2858CCF18;
  *(result + 100) = 0;
  return result;
}

void sub_245DA1F48(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DA1F80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCF18;
  *(a1 + 100) = 0;
  v2 = *(a2 + 100);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 100) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 100);
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 100) = v3;
    *(a1 + 24) = v5;
    v2 = *(a2 + 100);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 100) = v3;
    *(a1 + 16) = v6;
    v2 = *(a2 + 100);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x10000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 60);
  v3 |= 0x200u;
  *(a1 + 100) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x10000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 88);
  v3 |= 0x10000u;
  *(a1 + 100) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 48);
  v3 |= 0x40u;
  *(a1 + 100) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 80);
  v3 |= 0x4000u;
  *(a1 + 100) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 56);
  v3 |= 0x100u;
  *(a1 + 100) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 52);
  v3 |= 0x80u;
  *(a1 + 100) = v3;
  *(a1 + 52) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 76);
  v3 |= 0x2000u;
  *(a1 + 100) = v3;
  *(a1 + 76) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 44);
  v3 |= 0x20u;
  *(a1 + 100) = v3;
  *(a1 + 44) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x8000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 84);
  v3 |= 0x8000u;
  *(a1 + 100) = v3;
  *(a1 + 84) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 64);
  v3 |= 0x400u;
  *(a1 + 100) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x800000) == 0)
  {
LABEL_18:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = *(a2 + 98);
  v3 |= 0x800000u;
  *(a1 + 100) = v3;
  *(a1 + 98) = v8;
  v2 = *(a2 + 100);
  if ((v2 & 0x800) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 68);
  v3 |= 0x800u;
  *(a1 + 100) = v3;
  *(a1 + 68) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x400000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v9 = *(a2 + 97);
  v3 |= 0x400000u;
  *(a1 + 100) = v3;
  *(a1 + 97) = v9;
  v2 = *(a2 + 100);
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = *(a2 + 94);
  v3 |= 0x80000u;
  *(a1 + 100) = v3;
  *(a1 + 94) = v10;
  v2 = *(a2 + 100);
  if ((v2 & 0x40000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(a2 + 93);
  v3 |= 0x40000u;
  *(a1 + 100) = v3;
  *(a1 + 93) = v11;
  v2 = *(a2 + 100);
  if ((v2 & 0x100000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(a2 + 95);
  v3 |= 0x100000u;
  *(a1 + 100) = v3;
  *(a1 + 95) = v12;
  v2 = *(a2 + 100);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 100) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 100);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v13 = *(a2 + 96);
  v3 |= 0x200000u;
  *(a1 + 100) = v3;
  *(a1 + 96) = v13;
  v2 = *(a2 + 100);
  if ((v2 & 0x20000) == 0)
  {
LABEL_26:
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v14 = *(a2 + 92);
  v3 |= 0x20000u;
  *(a1 + 100) = v3;
  *(a1 + 92) = v14;
  v2 = *(a2 + 100);
  if ((v2 & 8) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_50:
    result = *(a2 + 72);
    *(a1 + 100) = v3 | 0x1000;
    *(a1 + 72) = result;
    return result;
  }

LABEL_49:
  v15 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 100) = v3;
  *(a1 + 32) = v15;
  if ((*(a2 + 100) & 0x1000) != 0)
  {
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_245DA224C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryProbabilityEstimate", *(a1 + 40));
    v5 = *(a1 + 100);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cadence", *(a1 + 44));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "doubleSupportEstimate", *(a1 + 48));
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "horizontalRotationRateMax", *(a1 + 52));
  v5 = *(a1 + 100);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "impulseMagnitude", *(a1 + 56));
  v5 = *(a1 + 100);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(a1 + 8);
  PB::TextFormatter::format(this, "impulseStartTime");
  v5 = *(a1 + 100);
  if ((v5 & 0x20000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = *(a1 + 92);
  PB::TextFormatter::format(this, "isCadenceConcordant");
  v5 = *(a1 + 100);
  if ((v5 & 0x40000) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = *(a1 + 93);
  PB::TextFormatter::format(this, "isFeasibleWalkingSpeed");
  v5 = *(a1 + 100);
  if ((v5 & 0x80000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a1 + 94);
  PB::TextFormatter::format(this, "isNotRunning");
  v5 = *(a1 + 100);
  if ((v5 & 0x100000) == 0)
  {
LABEL_11:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(a1 + 95);
  PB::TextFormatter::format(this, "isPendular");
  v5 = *(a1 + 100);
  if ((v5 & 0x200000) == 0)
  {
LABEL_12:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = *(a1 + 96);
  PB::TextFormatter::format(this, "isSufficientVerticalTwist");
  v5 = *(a1 + 100);
  if ((v5 & 0x400000) == 0)
  {
LABEL_13:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(a1 + 97);
  PB::TextFormatter::format(this, "isSwingStanceCycle");
  v5 = *(a1 + 100);
  if ((v5 & 0x800000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(a1 + 98);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(a1 + 16);
  PB::TextFormatter::format(this, "loftEndTime");
  v5 = *(a1 + 100);
  if ((v5 & 0x200) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "loftMagnitude", *(a1 + 60));
  v5 = *(a1 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = *(a1 + 24);
  PB::TextFormatter::format(this, "loftStartTime");
  v5 = *(a1 + 100);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "pendulumResidual", *(a1 + 64));
  v5 = *(a1 + 100);
  if ((v5 & 8) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = *(a1 + 32);
  PB::TextFormatter::format(this, "previousImpulseStartTime");
  v5 = *(a1 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "rawLoftSpeed", *(a1 + 68));
  v5 = *(a1 + 100);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "sqrtMaxAbsLoftAccel", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "stanceProbability", *(a1 + 76));
  v5 = *(a1 + 100);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "stepLengthEstimate", *(a1 + 80));
  v5 = *(a1 + 100);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  PB::TextFormatter::format(this, "verticalRotationRateMean", *(a1 + 84));
  if ((*(a1 + 100) & 0x10000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(this, "walkSpeedEstimate", *(a1 + 88));
  }

LABEL_26:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA2590(uint64_t a1, PB::Reader *this)
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
        goto LABEL_178;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 100) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v77 = v2 - v22;
            v78 = (v23 + v22);
            v79 = v22 + 1;
            while (1)
            {
              if (!v77)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_165;
              }

              v80 = v79;
              v81 = *v78;
              *(this + 1) = v80;
              v26 |= (v81 & 0x7F) << v75;
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
                v26 = 0;
                goto LABEL_164;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_164:
            v2 = v80;
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
                goto LABEL_165;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_165:
          *(a1 + 8) = v26;
          goto LABEL_174;
        case 2u:
          *(a1 + 100) |= 4u;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(this + 1);
            }

            v84 = v2 - v42;
            v85 = (v43 + v42);
            v86 = v42 + 1;
            while (1)
            {
              if (!v84)
              {
                v46 = 0;
                *(this + 24) = 1;
                goto LABEL_169;
              }

              v87 = v86;
              v88 = *v85;
              *(this + 1) = v87;
              v46 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                v46 = 0;
LABEL_168:
                v2 = v87;
                goto LABEL_169;
              }
            }

            if (*(this + 24))
            {
              v46 = 0;
            }

            goto LABEL_168;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(this + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_169;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          v46 = 0;
LABEL_169:
          *(a1 + 24) = v46;
          goto LABEL_174;
        case 3u:
          *(a1 + 100) |= 2u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v70 = v2 - v32;
            v71 = (v33 + v32);
            v72 = v32 + 1;
            while (1)
            {
              if (!v70)
              {
                v36 = 0;
                *(this + 24) = 1;
                goto LABEL_161;
              }

              v73 = v72;
              v74 = *v71;
              *(this + 1) = v73;
              v36 |= (v74 & 0x7F) << v68;
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
                v36 = 0;
LABEL_160:
                v2 = v73;
                goto LABEL_161;
              }
            }

            if (*(this + 24))
            {
              v36 = 0;
            }

            goto LABEL_160;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_161;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          v36 = 0;
LABEL_161:
          *(a1 + 16) = v36;
          goto LABEL_174;
        case 4u:
          *(a1 + 100) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_153;
        case 5u:
          *(a1 + 100) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_153;
        case 6u:
          *(a1 + 100) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_153;
        case 7u:
          *(a1 + 100) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_153;
        case 8u:
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_153;
        case 9u:
          *(a1 + 100) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_153;
        case 0xAu:
          *(a1 + 100) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_153;
        case 0xBu:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_153;
        case 0xCu:
          *(a1 + 100) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_153;
        case 0xDu:
          *(a1 + 100) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_153;
        case 0xEu:
          *(a1 + 100) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v57 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = *(*this + v2++);
            *(this + 1) = v2;
            v57 = v56 != 0;
          }

          *(a1 + 98) = v57;
          goto LABEL_174;
        case 0xFu:
          *(a1 + 100) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_153;
        case 0x10u:
          *(a1 + 100) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 97) = v41;
          goto LABEL_174;
        case 0x11u:
          *(a1 + 100) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 94) = v31;
          goto LABEL_174;
        case 0x12u:
          *(a1 + 100) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v51 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v50 = *(*this + v2++);
            *(this + 1) = v2;
            v51 = v50 != 0;
          }

          *(a1 + 93) = v51;
          goto LABEL_174;
        case 0x13u:
          *(a1 + 100) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v59 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v58 = *(*this + v2++);
            *(this + 1) = v2;
            v59 = v58 != 0;
          }

          *(a1 + 95) = v59;
          goto LABEL_174;
        case 0x14u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_103;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_153;
        case 0x15u:
          *(a1 + 100) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v53 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v52 = *(*this + v2++);
            *(this + 1) = v2;
            v53 = v52 != 0;
          }

          *(a1 + 96) = v53;
          goto LABEL_174;
        case 0x16u:
          *(a1 + 100) |= 0x20000u;
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

          *(a1 + 92) = v55;
          goto LABEL_174;
        case 0x17u:
          *(a1 + 100) |= 8u;
          v60 = *(this + 1);
          v2 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(this + 1);
            }

            v91 = v2 - v60;
            v92 = (v61 + v60);
            v93 = v60 + 1;
            while (1)
            {
              if (!v91)
              {
                v64 = 0;
                *(this + 24) = 1;
                goto LABEL_173;
              }

              v94 = v93;
              v95 = *v92;
              *(this + 1) = v94;
              v64 |= (v95 & 0x7F) << v89;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              v93 = v94 + 1;
              v14 = v90++ > 8;
              if (v14)
              {
                v64 = 0;
LABEL_172:
                v2 = v94;
                goto LABEL_173;
              }
            }

            if (*(this + 24))
            {
              v64 = 0;
            }

            goto LABEL_172;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(this + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_173;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          v64 = 0;
LABEL_173:
          *(a1 + 32) = v64;
          goto LABEL_174;
        case 0x18u:
          *(a1 + 100) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 72) = *(*this + v2);
LABEL_153:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
LABEL_103:
            *(this + 24) = 1;
          }

          goto LABEL_174;
        default:
          if (!PB::Reader::skip(this))
          {
            v96 = 0;
            return v96 & 1;
          }

          v2 = *(this + 1);
LABEL_174:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_178;
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

LABEL_178:
  v96 = v4 ^ 1;
  return v96 & 1;
}

uint64_t sub_245DA3060(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 100);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 100);
  if ((v4 & 0x10000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 100);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 100);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 100);
  if ((v4 & 0x800000) == 0)
  {
LABEL_15:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(v3 + 98);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 100);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(v3 + 97);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(v3 + 94);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x40000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(v3 + 93);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x100000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = *(v3 + 95);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v13 = *(v3 + 96);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x20000) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v15 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  v14 = *(v3 + 92);
  result = PB::Writer::write(this);
  v4 = *(v3 + 100);
  if ((v4 & 8) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_49:
  v16 = *(v3 + 72);

  return PB::Writer::write(this, v16);
}

uint64_t sub_245DA3338(uint64_t result)
{
  *result = &unk_2858CCF50;
  *(result + 116) = 0;
  return result;
}

void sub_245DA3360(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DA3398(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCF50;
  *(result + 116) = 0;
  v2 = *(a2 + 116);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 128;
    *(result + 116) = 128;
    *(result + 64) = v4;
    v2 = *(a2 + 116);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 114);
    v3 |= 0x100000u;
    *(result + 116) = v3;
    *(result + 114) = v5;
    v2 = *(a2 + 116);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 113);
    v3 |= 0x80000u;
    *(result + 116) = v3;
    *(result + 113) = v6;
    v2 = *(a2 + 116);
    if ((v2 & 0x200000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x200000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 115);
  v3 |= 0x200000u;
  *(result + 116) = v3;
  *(result + 115) = v7;
  v2 = *(a2 + 116);
  if ((v2 & 0x40000) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 112);
  v3 |= 0x40000u;
  *(result + 116) = v3;
  *(result + 112) = v8;
  v2 = *(a2 + 116);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 116) = v3;
  *(result + 24) = v9;
  v2 = *(a2 + 116);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 16);
  v3 |= 2u;
  *(result + 116) = v3;
  *(result + 16) = v10;
  v2 = *(a2 + 116);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 8);
  v3 |= 1u;
  *(result + 116) = v3;
  *(result + 8) = v11;
  v2 = *(a2 + 116);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 116) = v3;
  *(result + 48) = v12;
  v2 = *(a2 + 116);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 116) = v3;
  *(result + 56) = v13;
  v2 = *(a2 + 116);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 92);
  v3 |= 0x2000u;
  *(result + 116) = v3;
  *(result + 92) = v14;
  v2 = *(a2 + 116);
  if ((v2 & 0x10000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 104);
  v3 |= 0x10000u;
  *(result + 116) = v3;
  *(result + 104) = v15;
  v2 = *(a2 + 116);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 88);
  v3 |= 0x1000u;
  *(result + 116) = v3;
  *(result + 88) = v16;
  v2 = *(a2 + 116);
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 84);
  v3 |= 0x800u;
  *(result + 116) = v3;
  *(result + 84) = v17;
  v2 = *(a2 + 116);
  if ((v2 & 0x8000) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 100);
  v3 |= 0x8000u;
  *(result + 116) = v3;
  *(result + 100) = v18;
  v2 = *(a2 + 116);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 76);
  v3 |= 0x200u;
  *(result + 116) = v3;
  *(result + 76) = v19;
  v2 = *(a2 + 116);
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 80);
  v3 |= 0x400u;
  *(result + 116) = v3;
  *(result + 80) = v20;
  v2 = *(a2 + 116);
  if ((v2 & 0x4000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 96);
  v3 |= 0x4000u;
  *(result + 116) = v3;
  *(result + 96) = v21;
  v2 = *(a2 + 116);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 116) = v3;
  *(result + 72) = v22;
  v2 = *(a2 + 116);
  if ((v2 & 0x20000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 108);
  v3 |= 0x20000u;
  *(result + 116) = v3;
  *(result + 108) = v23;
  v2 = *(a2 + 116);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_46:
    v25 = *(a2 + 40);
    *(result + 116) = v3 | 0x10;
    *(result + 40) = v25;
    return result;
  }

LABEL_45:
  v24 = *(a2 + 32);
  v3 |= 8u;
  *(result + 116) = v3;
  *(result + 32) = v24;
  if ((*(a2 + 116) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_245DA362C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "curImpulseStartTime");
    v5 = *(a1 + 116);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "curLoftEndTime");
  v5 = *(a1 + 116);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "curLoftStartTime");
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 72));
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "currentHorzRotRateMax", *(a1 + 76));
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "currentImpulseMagnitude", *(a1 + 80));
  v5 = *(a1 + 116);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "currentLoftMagnitude", *(a1 + 84));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "currentMax", *(a1 + 88));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "currentMin", *(a1 + 92));
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "currentWalkSpeedEstimate", *(a1 + 96));
  v5 = *(a1 + 116);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = *(a1 + 112);
  PB::TextFormatter::format(this, "firstLoft");
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "impulseStartTimeWalkingSpeed");
  v5 = *(a1 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "impulseStopTimeWalkingSpeed");
  v5 = *(a1 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(a1 + 48);
  PB::TextFormatter::format(this, "lastZeroTime");
  v5 = *(a1 + 116);
  if ((v5 & 0x80000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a1 + 113);
  PB::TextFormatter::format(this, "loftEndDetected");
  v5 = *(a1 + 116);
  if ((v5 & 0x100000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a1 + 114);
  PB::TextFormatter::format(this, "loftStartDetected");
  v5 = *(a1 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a1 + 56);
  PB::TextFormatter::format(this, "prevLoftStartTime");
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "previousHorzRotRateMax", *(a1 + 100));
  v5 = *(a1 + 116);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "previousMax", *(a1 + 104));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  v5 = *(a1 + 116);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(this, "vertRotationRateMean", *(a1 + 108));
  if ((*(a1 + 116) & 0x200000) != 0)
  {
LABEL_23:
    v6 = *(a1 + 115);
    PB::TextFormatter::format(this, "waitingToConfirmLoft");
  }

LABEL_24:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA3930(uint64_t a1, PB::Reader *this)
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
        goto LABEL_221;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_181;
        case 2u:
          *(a1 + 116) |= 0x100000u;
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

          *(a1 + 114) = v45;
          goto LABEL_217;
        case 3u:
          *(a1 + 116) |= 0x80000u;
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

          *(a1 + 113) = v33;
          goto LABEL_217;
        case 4u:
          *(a1 + 116) |= 0x200000u;
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

          *(a1 + 115) = v35;
          goto LABEL_217;
        case 5u:
          *(a1 + 116) |= 0x40000u;
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

          *(a1 + 112) = v23;
          goto LABEL_217;
        case 6u:
          *(a1 + 116) |= 4u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v109 = v2 - v54;
            v110 = (v55 + v54);
            v111 = v54 + 1;
            while (1)
            {
              if (!v109)
              {
                v58 = 0;
                *(this + 24) = 1;
                goto LABEL_204;
              }

              v112 = v111;
              v113 = *v110;
              *(this + 1) = v112;
              v58 |= (v113 & 0x7F) << v107;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              --v109;
              ++v110;
              v111 = v112 + 1;
              v14 = v108++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_203:
                v2 = v112;
                goto LABEL_204;
              }
            }

            if (*(this + 24))
            {
              v58 = 0;
            }

            goto LABEL_203;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(this + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_204:
          *(a1 + 24) = v58;
          goto LABEL_217;
        case 7u:
          *(a1 + 116) |= 2u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v121 = 0;
            v122 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v123 = v2 - v70;
            v124 = (v71 + v70);
            v125 = v70 + 1;
            while (1)
            {
              if (!v123)
              {
                v74 = 0;
                *(this + 24) = 1;
                goto LABEL_212;
              }

              v126 = v125;
              v127 = *v124;
              *(this + 1) = v126;
              v74 |= (v127 & 0x7F) << v121;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              --v123;
              ++v124;
              v125 = v126 + 1;
              v14 = v122++ > 8;
              if (v14)
              {
                v74 = 0;
LABEL_211:
                v2 = v126;
                goto LABEL_212;
              }
            }

            if (*(this + 24))
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
            *(this + 1) = v76;
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
          *(a1 + 16) = v74;
          goto LABEL_217;
        case 8u:
          *(a1 + 116) |= 1u;
          v36 = *(this + 1);
          v2 = *(this + 2);
          v37 = *this;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(this + 1);
            }

            v95 = v2 - v36;
            v96 = (v37 + v36);
            v97 = v36 + 1;
            while (1)
            {
              if (!v95)
              {
                v40 = 0;
                *(this + 24) = 1;
                goto LABEL_196;
              }

              v98 = v97;
              v99 = *v96;
              *(this + 1) = v98;
              v40 |= (v99 & 0x7F) << v93;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              --v95;
              ++v96;
              v97 = v98 + 1;
              v14 = v94++ > 8;
              if (v14)
              {
                v40 = 0;
LABEL_195:
                v2 = v98;
                goto LABEL_196;
              }
            }

            if (*(this + 24))
            {
              v40 = 0;
            }

            goto LABEL_195;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = (v37 + v36);
          v42 = v36 + 1;
          do
          {
            v2 = v42;
            *(this + 1) = v42;
            v43 = *v41++;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_196;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          v40 = 0;
LABEL_196:
          *(a1 + 8) = v40;
          goto LABEL_217;
        case 9u:
          *(a1 + 116) |= 0x20u;
          v78 = *(this + 1);
          v2 = *(this + 2);
          v79 = *this;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v128 = 0;
            v129 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(this + 1);
            }

            v130 = v2 - v78;
            v131 = (v79 + v78);
            v132 = v78 + 1;
            while (1)
            {
              if (!v130)
              {
                v82 = 0;
                *(this + 24) = 1;
                goto LABEL_216;
              }

              v133 = v132;
              v134 = *v131;
              *(this + 1) = v133;
              v82 |= (v134 & 0x7F) << v128;
              if ((v134 & 0x80) == 0)
              {
                break;
              }

              v128 += 7;
              --v130;
              ++v131;
              v132 = v133 + 1;
              v14 = v129++ > 8;
              if (v14)
              {
                v82 = 0;
LABEL_215:
                v2 = v133;
                goto LABEL_216;
              }
            }

            if (*(this + 24))
            {
              v82 = 0;
            }

            goto LABEL_215;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(this + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_216;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          v82 = 0;
LABEL_216:
          *(a1 + 48) = v82;
          goto LABEL_217;
        case 0xAu:
          *(a1 + 116) |= 0x40u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v88 = v2 - v24;
            v89 = (v25 + v24);
            v90 = v24 + 1;
            while (1)
            {
              if (!v88)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_192;
              }

              v91 = v90;
              v92 = *v89;
              *(this + 1) = v91;
              v28 |= (v92 & 0x7F) << v86;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              --v88;
              ++v89;
              v90 = v91 + 1;
              v14 = v87++ > 8;
              if (v14)
              {
                v28 = 0;
LABEL_191:
                v2 = v91;
                goto LABEL_192;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

            goto LABEL_191;
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
              goto LABEL_192;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          v28 = 0;
LABEL_192:
          *(a1 + 56) = v28;
          goto LABEL_217;
        case 0xBu:
          *(a1 + 116) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_180;
        case 0xCu:
          *(a1 + 116) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_180;
        case 0xDu:
          *(a1 + 116) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_180;
        case 0xEu:
          *(a1 + 116) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_180;
        case 0xFu:
          *(a1 + 116) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_180;
        case 0x10u:
          *(a1 + 116) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_180;
        case 0x11u:
          *(a1 + 116) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_180;
        case 0x12u:
          *(a1 + 116) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_180;
        case 0x13u:
          *(a1 + 116) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_180;
        case 0x14u:
          *(a1 + 116) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 108) = *(*this + v2);
LABEL_180:
            v2 = *(this + 1) + 4;
LABEL_181:
            *(this + 1) = v2;
          }

          else
          {
LABEL_114:
            *(this + 24) = 1;
          }

          goto LABEL_217;
        case 0x15u:
          *(a1 + 116) |= 8u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v102 = v2 - v46;
            v103 = (v47 + v46);
            v104 = v46 + 1;
            while (1)
            {
              if (!v102)
              {
                v50 = 0;
                *(this + 24) = 1;
                goto LABEL_200;
              }

              v105 = v104;
              v106 = *v103;
              *(this + 1) = v105;
              v50 |= (v106 & 0x7F) << v100;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              --v102;
              ++v103;
              v104 = v105 + 1;
              v14 = v101++ > 8;
              if (v14)
              {
                v50 = 0;
LABEL_199:
                v2 = v105;
                goto LABEL_200;
              }
            }

            if (*(this + 24))
            {
              v50 = 0;
            }

            goto LABEL_199;
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
              goto LABEL_200;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          v50 = 0;
LABEL_200:
          *(a1 + 32) = v50;
          goto LABEL_217;
        case 0x16u:
          *(a1 + 116) |= 0x10u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v114 = 0;
            v115 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v116 = v2 - v62;
            v117 = (v63 + v62);
            v118 = v62 + 1;
            while (1)
            {
              if (!v116)
              {
                v66 = 0;
                *(this + 24) = 1;
                goto LABEL_208;
              }

              v119 = v118;
              v120 = *v117;
              *(this + 1) = v119;
              v66 |= (v120 & 0x7F) << v114;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              --v116;
              ++v117;
              v118 = v119 + 1;
              v14 = v115++ > 8;
              if (v14)
              {
                v66 = 0;
LABEL_207:
                v2 = v119;
                goto LABEL_208;
              }
            }

            if (*(this + 24))
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
            *(this + 1) = v68;
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
          *(a1 + 40) = v66;
          goto LABEL_217;
        default:
          if (!PB::Reader::skip(this))
          {
            v135 = 0;
            return v135 & 1;
          }

          v2 = *(this + 1);
LABEL_217:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_221;
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

LABEL_221:
  v135 = v4 ^ 1;
  return v135 & 1;
}

uint64_t sub_245DA45D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 116);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 114);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 113);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(v3 + 115);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(v3 + 112);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 116);
  if ((v4 & 0x10000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v14 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 116) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 116);
  if ((v4 & 8) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_45:
  v15 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DA4870(uint64_t result)
{
  *result = &unk_2858CCF88;
  *(result + 76) = 0;
  return result;
}

void sub_245DA4898(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA48D0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCF88;
  *(a1 + 76) = 0;
  v2 = *(a2 + 76);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    v3 = 4;
    *(a1 + 76) = 4;
    *(a1 + 24) = result;
    v2 = *(a2 + 76);
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
    result = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 76) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 76);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 |= 8u;
    *(a1 + 76) = v3;
    *(a1 + 32) = result;
    v2 = *(a2 + 76);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 76) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 76);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 76) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 76);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 76) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 76);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 76) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 76);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(a2 + 73);
  v3 |= 0x200u;
  *(a1 + 76) = v3;
  *(a1 + 73) = v5;
  v2 = *(a2 + 76);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 16);
    *(a1 + 76) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_21:
  v6 = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 76) = v3;
  *(a1 + 72) = v6;
  if ((*(a2 + 76) & 2) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245DA4A14(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 76);
  if (v5)
  {
    PB::TextFormatter::format(this, "emptyField2", *(a1 + 8));
    v5 = *(a1 + 76);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a1 + 76) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 72);
  PB::TextFormatter::format(this, "emptyField3");
  v5 = *(a1 + 76);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "groundContactTime", *(a1 + 16));
  v5 = *(a1 + 76);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 73);
  PB::TextFormatter::format(this, "hasValidGroundContactTime");
  v5 = *(a1 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "leftGroundContactTime", *(a1 + 24));
  v5 = *(a1 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "leftGroundContactTimePercentage", *(a1 + 32));
  v5 = *(a1 + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "rightGroundContactTime", *(a1 + 40));
  v5 = *(a1 + 76);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "rightGroundContactTimePercentage", *(a1 + 48));
  v5 = *(a1 + 76);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "windowEndTime", *(a1 + 56));
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "windowStartTime", *(a1 + 64));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA4B98(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 76) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_60:
              *(this + 24) = 1;
              goto LABEL_71;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_70;
          }

          if (v22 == 7)
          {
            *(a1 + 76) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_70;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 76) |= 0x200u;
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

              *(a1 + 73) = v24;
              goto LABEL_71;
            case 9:
              *(a1 + 76) |= 0x100u;
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

              *(a1 + 72) = v26;
              goto LABEL_71;
            case 0xA:
              *(a1 + 76) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_60;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_70;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 76) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_70;
        }

        if (v22 == 2)
        {
          *(a1 + 76) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 76) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_70;
          case 4:
            *(a1 + 76) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_70;
          case 5:
            *(a1 + 76) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_70:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_71;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v27 = 0;
        return v27 & 1;
      }

      v2 = *(this + 1);
LABEL_71:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_245DA4FC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 76);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 76);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 76);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 76);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 76);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 76);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 76);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v6 = *(v3 + 72);
    result = PB::Writer::write(this);
    if ((*(v3 + 76) & 2) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v5 = *(v3 + 73);
  result = PB::Writer::write(this);
  v4 = *(v3 + 76);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v3 + 16);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245DA5118(uint64_t result)
{
  *result = &unk_2858CCFC0;
  *(result + 88) = 0;
  return result;
}

void sub_245DA5140(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA5178(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCFC0;
  *(a1 + 88) = 0;
  v2 = *(a2 + 88);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 84);
    v3 = 2048;
    *(a1 + 88) = 2048;
    *(a1 + 84) = v4;
    v2 = *(a2 + 88);
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
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 88) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 88);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 88) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 88);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 88) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 88);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 88) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 88);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 88) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 88);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 88) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 88);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 88) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 88);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(a2 + 76);
  v3 |= 0x200u;
  *(a1 + 88) = v3;
  *(a1 + 76) = v6;
  v2 = *(a2 + 88);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a2 + 85);
  v3 |= 0x1000u;
  *(a1 + 88) = v3;
  *(a1 + 85) = v7;
  v2 = *(a2 + 88);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 86);
  v3 |= 0x2000u;
  *(a1 + 88) = v3;
  *(a1 + 86) = v8;
  v2 = *(a2 + 88);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 80);
  v3 |= 0x400u;
  *(a1 + 88) = v3;
  *(a1 + 80) = v9;
  v2 = *(a2 + 88);
  if ((v2 & 0x100) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 24);
    *(a1 + 88) = v3 | 4;
    *(a1 + 24) = result;
    return result;
  }

LABEL_29:
  v10 = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 88) = v3;
  *(a1 + 72) = v10;
  if ((*(a2 + 88) & 4) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_245DA532C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if ((v5 & 0x100) != 0)
  {
    v7 = *(a1 + 72);
    PB::TextFormatter::format(this, "crownOrientation");
    v5 = *(a1 + 88);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "groundContactTime", *(a1 + 8));
  v5 = *(a1 + 88);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "initialContactTime", *(a1 + 16));
  v5 = *(a1 + 88);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "isSuccessful");
  v5 = *(a1 + 88);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a1 + 85);
  PB::TextFormatter::format(this, "isValidSide");
  v5 = *(a1 + 88);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 86);
  PB::TextFormatter::format(this, "isValidToeOff");
  v5 = *(a1 + 88);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "meanRotationZ", *(a1 + 24));
  v5 = *(a1 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "relativeInitialContactTime", *(a1 + 32));
  v5 = *(a1 + 88);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "relativeToeOffTime", *(a1 + 40));
  v5 = *(a1 + 88);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a1 + 76);
  PB::TextFormatter::format(this, "stepSide");
  v5 = *(a1 + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "toeOffTime", *(a1 + 48));
  v5 = *(a1 + 88);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "windowEndTime", *(a1 + 56));
  v5 = *(a1 + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "windowStartTime", *(a1 + 64));
  if ((*(a1 + 88) & 0x400) != 0)
  {
LABEL_15:
    v6 = *(a1 + 80);
    PB::TextFormatter::format(this, "wristOrientation");
  }

LABEL_16:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA5530(uint64_t a1, PB::Reader *this)
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
        goto LABEL_127;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 88) |= 0x800u;
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

          *(a1 + 84) = v23;
          goto LABEL_123;
        case 2u:
          *(a1 + 88) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_107;
        case 3u:
          *(a1 + 88) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_107;
        case 4u:
          *(a1 + 88) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_107;
        case 5u:
          *(a1 + 88) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_107;
        case 6u:
          *(a1 + 88) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_107;
        case 7u:
          *(a1 + 88) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_107;
        case 8u:
          *(a1 + 88) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_107;
        case 9u:
          *(a1 + 88) |= 0x200u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v44;
            v69 = (v45 + v44);
            v70 = v44 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_122;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v48 |= (v72 & 0x7F) << v66;
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
                LODWORD(v48) = 0;
LABEL_121:
                v2 = v71;
                goto LABEL_122;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_121;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_122;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_122:
          *(a1 + 76) = v48;
          goto LABEL_123;
        case 0xAu:
          *(a1 + 88) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 85) = v41;
          goto LABEL_123;
        case 0xBu:
          *(a1 + 88) |= 0x2000u;
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

          *(a1 + 86) = v43;
          goto LABEL_123;
        case 0xCu:
          *(a1 + 88) |= 0x400u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v54 = v2 - v24;
            v55 = (v25 + v24);
            v56 = v24 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_114;
              }

              v57 = v56;
              v58 = *v55;
              *(this + 1) = v57;
              v28 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              --v54;
              ++v55;
              v56 = v57 + 1;
              v14 = v53++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_113:
                v2 = v57;
                goto LABEL_114;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_113;
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
              goto LABEL_114;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_114:
          *(a1 + 80) = v28;
          goto LABEL_123;
        case 0xDu:
          *(a1 + 88) |= 0x100u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v59 = 0;
            v60 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v61 = v2 - v32;
            v62 = (v33 + v32);
            v63 = v32 + 1;
            while (1)
            {
              if (!v61)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_118;
              }

              v64 = v63;
              v65 = *v62;
              *(this + 1) = v64;
              v36 |= (v65 & 0x7F) << v59;
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
                LODWORD(v36) = 0;
LABEL_117:
                v2 = v64;
                goto LABEL_118;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_117;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_118:
          *(a1 + 72) = v36;
          goto LABEL_123;
        case 0xEu:
          *(a1 + 88) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_64:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_107:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_123;
        default:
          if (!PB::Reader::skip(this))
          {
            v73 = 0;
            return v73 & 1;
          }

          v2 = *(this + 1);
LABEL_123:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_127;
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

LABEL_127:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_245DA5CAC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(result + 84);
    result = PB::Writer::write(this);
    v4 = *(v3 + 88);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v6 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(v3 + 85);
  result = PB::Writer::write(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(v3 + 86);
  result = PB::Writer::write(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v10 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 88) & 4) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  v9 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_29:
  v11 = *(v3 + 24);

  return PB::Writer::write(this, v11);
}

uint64_t sub_245DA5E6C(uint64_t result)
{
  *result = &unk_2858CCFF8;
  *(result + 48) = 0;
  return result;
}

void sub_245DA5E94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA5ECC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCFF8;
  *(a1 + 48) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 44);
    v3 = 32;
    *(a1 + 48) = 32;
    *(a1 + 44) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 48))
  {
LABEL_5:
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 48) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 48) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 48);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 48) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 32);
    *(a1 + 48) = v3 | 8;
    *(a1 + 32) = result;
    return result;
  }

LABEL_13:
  v6 = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 48) = v3;
  *(a1 + 40) = v6;
  if ((*(a2 + 48) & 8) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245DA5FA0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "groundContactTime", *(a1 + 8));
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "initialContactTime", *(a1 + 16));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = *(a1 + 44);
  PB::TextFormatter::format(this, "isSuccessful");
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = *(a1 + 40);
  PB::TextFormatter::format(this, "stepSide");
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "toeOffTime", *(a1 + 24));
  if ((*(a1 + 48) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "windowStartTime", *(a1 + 32));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA60A4(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_44:
              *(this + 24) = 1;
              goto LABEL_69;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_63;
          case 5:
            *(a1 + 48) |= 0x10u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v33 = 0;
              v34 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v35 = v2 - v25;
              v36 = (v26 + v25);
              v37 = v25 + 1;
              while (1)
              {
                if (!v35)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_68;
                }

                v38 = v37;
                v39 = *v36;
                *(this + 1) = v38;
                v29 |= (v39 & 0x7F) << v33;
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
                  LODWORD(v29) = 0;
                  goto LABEL_67;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_67:
              v2 = v38;
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

LABEL_68:
            *(a1 + 40) = v29;
            goto LABEL_69;
          case 6:
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_63;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 48) |= 0x20u;
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

            *(a1 + 44) = v24;
            goto LABEL_69;
          case 2:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_63;
          case 3:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_63:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_69;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_69:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245DA6484(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(result + 44);
    result = PB::Writer::write(this);
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 48) & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = *(v3 + 32);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245DA6564(uint64_t result)
{
  *result = &unk_2858CD030;
  *(result + 52) = 0;
  return result;
}

void sub_245DA658C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DA65C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CD030;
  *(a1 + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 28);
    v3 = 32;
    *(a1 + 52) = 32;
    *(a1 + 28) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    result = *(a2 + 32);
    v3 |= 0x40u;
    *(a1 + 52) = v3;
    *(a1 + 32) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 52) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 52);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
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

  result = *(a2 + 12);
  v3 |= 2u;
  *(a1 + 52) = v3;
  *(a1 + 12) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 40);
  v3 |= 0x100u;
  *(a1 + 52) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 44);
  v3 |= 0x200u;
  *(a1 + 52) = v3;
  *(a1 + 44) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 48);
  v3 |= 0x400u;
  *(a1 + 52) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 36);
  v3 |= 0x80u;
  *(a1 + 52) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 20);
  v3 |= 8u;
  *(a1 + 52) = v3;
  *(a1 + 20) = result;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 24);
    *(a1 + 52) = v3 | 0x10;
    *(a1 + 24) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 16);
  v3 |= 4u;
  *(a1 + 52) = v3;
  *(a1 + 16) = result;
  if ((*(a2 + 52) & 0x10) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245DA6724(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 8));
    v5 = *(a1 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
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

  PB::TextFormatter::format(this, "decimalYear", *(a1 + 12));
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "declination", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "horizontal", *(a1 + 20));
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "inclination", *(a1 + 24));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "latitude", *(a1 + 28));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "longitude", *(a1 + 32));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "magnitude", *(a1 + 36));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "x", *(a1 + 40));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "y", *(a1 + 44));
  if ((*(a1 + 52) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "z", *(a1 + 48));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA68C8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_77;
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
            *(a1 + 52) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_68:
              *(this + 24) = 1;
              goto LABEL_73;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 2)
          {
            *(a1 + 52) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_72;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 52) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 8) = *(*this + v2);
              goto LABEL_72;
            case 4:
              *(a1 + 52) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 12) = *(*this + v2);
              goto LABEL_72;
            case 5:
              *(a1 + 52) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_72;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 52) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_72;
          case 0xA:
            *(a1 + 52) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_72;
          case 0xB:
            *(a1 + 52) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_72;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 52) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_72;
          case 7:
            *(a1 + 52) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_72;
          case 8:
            *(a1 + 52) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_72:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_73:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245DA6D20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 28));
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 12));
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 52);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_23:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245DA6E8C(uint64_t result)
{
  *result = &unk_2858CD068;
  *(result + 12) = 0;
  return result;
}

void sub_245DA6EB4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DA6EEC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CD068;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245DA6F28(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "logSource");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA6F88(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245DA71FC(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245DA721C(uint64_t result)
{
  *result = &unk_2858CD0A0;
  *(result + 40) = 0;
  return result;
}

void sub_245DA7244(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA727C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CD0A0;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 = 2;
    *(a1 + 40) = 2;
    *(a1 + 16) = result;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 28);
    v3 |= 8u;
    *(a1 + 40) = v3;
    *(a1 + 28) = LODWORD(result);
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    LODWORD(result) = *(a2 + 32);
    v3 |= 0x10u;
    *(a1 + 40) = v3;
    *(a1 + 32) = LODWORD(result);
    v2 = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 36);
  v3 |= 0x20u;
  *(a1 + 40) = v3;
  *(a1 + 36) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 8);
    *(a1 + 40) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

LABEL_13:
  LODWORD(result) = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 40) = v3;
  *(a1 + 24) = LODWORD(result);
  if (*(a2 + 40))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245DA7350(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "dt", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "quaternionW", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 36));
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA7454(uint64_t a1, PB::Reader *this)
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
            goto LABEL_57;
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
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_49:
              *(this + 24) = 1;
              goto LABEL_53;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_51;
          case 5:
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_51:
            v2 = *(this + 1) + 4;
            goto LABEL_52;
          case 6:
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_38:
            v2 = *(this + 1) + 8;
LABEL_52:
            *(this + 1) = v2;
            goto LABEL_53;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_38;
          case 2:
            *(a1 + 40) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_51;
          case 3:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_51;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_53:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245DA7764(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 40) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245DA7844(uint64_t result)
{
  *result = &unk_2858CD0D8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245DA7870(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DA78A8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CD0D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 = 2;
    *(a1 + 32) = 2;
    *(a1 + 16) = result;
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
    v5 = *(a2 + 28);
    v3 |= 8u;
    *(a1 + 32) = v3;
    *(a1 + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 8);
    *(a1 + 32) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

  v6 = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 32) = v3;
  *(a1 + 24) = v6;
  if (*(a2 + 32))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245DA7948(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "measSource");
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

  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "state");
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
  PB::TextFormatter::format(this, "stateProbability", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA7A0C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_81;
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
                goto LABEL_76;
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
                goto LABEL_75;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_75:
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

LABEL_76:
          *(a1 + 24) = v35;
          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_77;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_66;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_66:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
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
                goto LABEL_72;
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
                goto LABEL_71;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
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

LABEL_72:
          *(a1 + 28) = v27;
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_77:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_81:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245DA7E2C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(v3 + 24);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 32) & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v3 + 8);

  return PB::Writer::write(this, v7);
}

double sub_245DA7ED4(uint64_t a1)
{
  *a1 = &unk_2858CD110;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

void sub_245DA7F1C(void **a1)
{
  *a1 = &unk_2858CD110;
  v2 = a1 + 3;
  v3 = a1 + 15;
  sub_245DF837C(&v3);
  v3 = a1 + 12;
  sub_245DF837C(&v3);
  v3 = a1 + 9;
  sub_245DF837C(&v3);
  v3 = a1 + 6;
  sub_245DF837C(&v3);
  v3 = v2;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
}

void sub_245DA7FBC(void **a1)
{
  sub_245DA7F1C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DA7FF4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CD110;
  *(result + 24) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = 0u;
  *(result + 152) = 0;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 136) = 0;
  if ((*(a2 + 152) & 4) != 0)
  {
    v2 = *(a2 + 144);
    *(result + 152) = 4;
    *(result + 144) = v2;
  }

  v3 = *(a2 + 96);
  if (v3 != *(a2 + 104))
  {
    v4 = *v3;
    sub_245DA8188();
  }

  v5 = *(a2 + 72);
  if (v5 != *(a2 + 80))
  {
    v6 = *v5;
    sub_245DA8188();
  }

  v7 = *(a2 + 120);
  if (v7 != *(a2 + 128))
  {
    v8 = *v7;
    sub_245DA8188();
  }

  v9 = *(a2 + 48);
  if (v9 != *(a2 + 56))
  {
    v10 = *v9;
    sub_245DA8188();
  }

  v11 = *(a2 + 24);
  if (v11 != *(a2 + 32))
  {
    v12 = *v11;
    sub_245DA8188();
  }

  v13 = *(a2 + 152);
  if ((v13 & 2) != 0)
  {
    v14 = *(a2 + 16);
    *(result + 152) |= 2u;
    *(result + 16) = v14;
    v13 = *(a2 + 152);
  }

  if (v13)
  {
    v15 = *(a2 + 8);
    *(result + 152) |= 1u;
    *(result + 8) = v15;
  }

  return result;
}

uint64_t sub_245DA82E0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 152);
  if (v5)
  {
    PB::TextFormatter::format(this, "lifespan", *(a1 + 8));
    v5 = *(a1 + 152);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "machTime", *(a1 + 16));
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "satInfoBeidou");
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, this, "satInfoGalileo");
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, this, "satInfoGlonass");
  }

  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, this, "satInfoGps");
  }

  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  while (v18 != v19)
  {
    v20 = *v18++;
    (*(*v20 + 32))(v20, this, "satInfoQzss");
  }

  if ((*(a1 + 152) & 4) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 144));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA8504(uint64_t a1, PB::Reader *this)
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
            goto LABEL_55;
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
            *(a1 + 152) |= 2u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
LABEL_46:
              *(this + 24) = 1;
              goto LABEL_51;
            }

            *(a1 + 16) = *(*this + v25);
            goto LABEL_50;
          }

          if (v22 == 8)
          {
            *(a1 + 152) |= 1u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 8) = *(*this + v23);
            goto LABEL_50;
          }
        }

        else
        {
          if (v22 == 5)
          {
            sub_245DA8828();
          }

          if (v22 == 6)
          {
            sub_245DA8828();
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          sub_245DA8828();
        }

        if (v22 == 4)
        {
          sub_245DA8828();
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 152) |= 4u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_46;
          }

          *(a1 + 144) = *(*this + v24);
LABEL_50:
          *(this + 1) += 8;
          goto LABEL_51;
        }

        if (v22 == 2)
        {
          sub_245DA8828();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v27 = 0;
        return v27 & 1;
      }

LABEL_51:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_245DA8974(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 152) & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 144));
  }

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 120);
  v11 = *(v3 + 128);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = *(v3 + 48);
  v14 = *(v3 + 56);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeSubmessage(this, v15);
  }

  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeSubmessage(this, v18);
  }

  v19 = *(v3 + 152);
  if ((v19 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 16));
    v19 = *(v3 + 152);
  }

  if (v19)
  {
    v20 = *(v3 + 8);

    return PB::Writer::write(this, v20);
  }

  return result;
}