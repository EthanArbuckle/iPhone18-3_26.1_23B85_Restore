uint64_t sub_245DFC924(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245DFC944(uint64_t result)
{
  *result = &unk_2858CF218;
  *(result + 32) = 0;
  return result;
}

void sub_245DFC96C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFC9A4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF218;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 20);
    v3 |= 4u;
    *(result + 32) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(result + 32) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 16);
      *(result + 32) = v3 | 2;
      *(result + 16) = v8;
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
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DFCA5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "x", *(a1 + 20));
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "y", *(a1 + 24));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "z", *(a1 + 28));
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFCB40(uint64_t a1, PB::Reader *this)
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
            goto LABEL_69;
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
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_47:
            *(this + 24) = 1;
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_47;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 4;
LABEL_59:
          *(this + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_44;
          case 4:
            *(a1 + 32) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_44;
          case 5:
            *(a1 + 32) |= 2u;
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
                  goto LABEL_64;
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
                  goto LABEL_63;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
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

LABEL_64:
            *(a1 + 16) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_65:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245DFCEDC(uint64_t result, PB::Writer *this)
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

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_245DFCFA0(void *result)
{
  *result = &unk_2858CF250;
  result[1] = 0;
  return result;
}

void sub_245DFCFC0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF250;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFD040(PB::Base *a1)
{
  sub_245DFCFC0(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFD078(void *result, uint64_t a2)
{
  *result = &unk_2858CF250;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFD120(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFD19C(int a1, PB::Reader *this)
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

uint64_t sub_245DFD3D4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245DFD3F0(uint64_t result)
{
  *result = &unk_2858CF288;
  *(result + 32) = 0;
  return result;
}

void sub_245DFD418(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFD450(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF288;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 20);
    v3 |= 4u;
    *(result + 32) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(result + 32) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 16);
      *(result + 32) = v3 | 2;
      *(result + 16) = v8;
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
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DFD508(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "batch");
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "x", *(a1 + 20));
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "y", *(a1 + 24));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "z", *(a1 + 28));
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFD5EC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_69;
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
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_47:
            *(this + 24) = 1;
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_47;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 4;
LABEL_59:
          *(this + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_44;
          case 4:
            *(a1 + 32) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_44;
          case 5:
            *(a1 + 32) |= 2u;
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
                  goto LABEL_64;
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
                  goto LABEL_63;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
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

LABEL_64:
            *(a1 + 16) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_65:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245DFD988(uint64_t result, PB::Writer *this)
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

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

double sub_245DFDA4C(uint64_t a1)
{
  *a1 = &unk_2858CF2C0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245DFDA80(PB::Base *this)
{
  *this = &unk_2858CF2C0;
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

void sub_245DFDAF4(PB::Base *a1)
{
  sub_245DFDA80(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFDB2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF2C0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 80) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if ((*(a2 + 80) & 2) != 0)
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = 2;
    *(a1 + 64) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 8) == 0)
  {
    if ((*(a2 + 80) & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(a2 + 72);
    *(a1 + 80) |= 4u;
    *(a1 + 72) = v10;
    if ((*(a2 + 80) & 1) == 0)
    {
      return a1;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 76);
  *(a1 + 80) |= 8u;
  *(a1 + 76) = v9;
  v6 = *(a2 + 80);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v7 = *(a2 + 56);
    *(a1 + 80) |= 1u;
    *(a1 + 56) = v7;
  }

  return a1;
}

uint64_t sub_245DFDC40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "covUT", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "est", v10);
  }

  v11 = *(a1 + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(a1 + 76);
    PB::TextFormatter::format(this, "isCandidate");
    v11 = *(a1 + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a1 + 72);
  PB::TextFormatter::format(this, "numSamplesInAverage");
  v11 = *(a1 + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(this, "temperature", *(a1 + 56));
  if ((*(a1 + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFDD6C(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        if (v23 == 4)
        {
          *(a1 + 80) |= 8u;
          v42 = *(this + 1);
          if (v42 >= *(this + 2))
          {
            v45 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v43 = v42 + 1;
            v44 = *(*this + v42);
            *(this + 1) = v43;
            v45 = v44 != 0;
          }

          *(a1 + 76) = v45;
          goto LABEL_133;
        }

        if (v23 == 5)
        {
          *(a1 + 80) |= 4u;
          v63 = *(this + 1);
          v62 = *(this + 2);
          v64 = *this;
          if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
          {
            v71 = 0;
            v72 = 0;
            v67 = 0;
            v17 = v62 >= v63;
            v73 = v62 - v63;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = (v64 + v63);
            v75 = v63 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v67) = 0;
                *(this + 24) = 1;
                goto LABEL_121;
              }

              v76 = *v74;
              *(this + 1) = v75;
              v67 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v67) = 0;
                goto LABEL_121;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v67) = 0;
            }
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
                goto LABEL_95;
              }
            }
          }

LABEL_121:
          *(a1 + 72) = v67;
          goto LABEL_133;
        }

        if (v23 != 6)
        {
LABEL_57:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }

        *(a1 + 80) |= 1u;
        v40 = *(this + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 56) = *(*this + v40);
      }

      else if (v23 == 1)
      {
        *(a1 + 80) |= 2u;
        v41 = *(this + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 64) = *(*this + v41);
      }

      else
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_139:
              v103 = 0;
              return v103 & 1;
            }

            v46 = *(this + 1);
            v47 = *(this + 2);
            while (v46 < v47 && (*(this + 24) & 1) == 0)
            {
              v49 = *(a1 + 40);
              v48 = *(a1 + 48);
              if (v49 >= v48)
              {
                v51 = *(a1 + 32);
                v52 = v49 - v51;
                v53 = (v49 - v51) >> 3;
                v54 = v53 + 1;
                if ((v53 + 1) >> 61)
                {
                  goto LABEL_140;
                }

                v55 = v48 - v51;
                if (v55 >> 2 > v54)
                {
                  v54 = v55 >> 2;
                }

                if (v55 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v56 = v54;
                }

                if (v56)
                {
                  sub_245DF8830(a1 + 32, v56);
                }

                v57 = (v49 - v51) >> 3;
                v58 = (8 * v53);
                v59 = (8 * v53 - 8 * v57);
                *v58 = 0;
                v50 = v58 + 1;
                memcpy(v59, v51, v52);
                v60 = *(a1 + 32);
                *(a1 + 32) = v59;
                *(a1 + 40) = v50;
                *(a1 + 48) = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v49 = 0;
                v50 = v49 + 8;
              }

              *(a1 + 40) = v50;
              v61 = *(this + 1);
              if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
              {
LABEL_100:
                *(this + 24) = 1;
                goto LABEL_101;
              }

              *(v50 - 1) = *(*this + v61);
              v47 = *(this + 2);
              v46 = *(this + 1) + 8;
              *(this + 1) = v46;
            }

            goto LABEL_101;
          }

          v81 = *(a1 + 40);
          v80 = *(a1 + 48);
          if (v81 >= v80)
          {
            v88 = *(a1 + 32);
            v89 = v81 - v88;
            v90 = (v81 - v88) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
LABEL_140:
              sub_245DF85A4();
            }

            v92 = v80 - v88;
            if (v92 >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_245DF8830(a1 + 32, v93);
            }

            v98 = (v81 - v88) >> 3;
            v99 = (8 * v90);
            v100 = (8 * v90 - 8 * v98);
            *v99 = 0;
            v79 = v99 + 1;
            memcpy(v100, v88, v89);
            v101 = *(a1 + 32);
            *(a1 + 32) = v100;
            *(a1 + 40) = v79;
            *(a1 + 48) = 0;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v81 = 0;
            v79 = v81 + 8;
          }

          *(a1 + 40) = v79;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_57;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
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
                  goto LABEL_140;
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
                goto LABEL_100;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 8;
              *(this + 1) = v24;
            }

LABEL_101:
            PB::Reader::recallMark();
            goto LABEL_133;
          }

          v78 = *(a1 + 16);
          v77 = *(a1 + 24);
          if (v78 >= v77)
          {
            v82 = *(a1 + 8);
            v83 = v78 - v82;
            v84 = (v78 - v82) >> 3;
            v85 = v84 + 1;
            if ((v84 + 1) >> 61)
            {
              goto LABEL_140;
            }

            v86 = v77 - v82;
            if (v86 >> 2 > v85)
            {
              v85 = v86 >> 2;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v87 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              sub_245DF8830(a1 + 8, v87);
            }

            v94 = (v78 - v82) >> 3;
            v95 = (8 * v84);
            v96 = (8 * v84 - 8 * v94);
            *v95 = 0;
            v79 = v95 + 1;
            memcpy(v96, v82, v83);
            v97 = *(a1 + 8);
            *(a1 + 8) = v96;
            *(a1 + 16) = v79;
            *(a1 + 24) = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *v78 = 0;
            v79 = v78 + 8;
          }

          *(a1 + 16) = v79;
        }

        v102 = *(this + 1);
        if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(this + 2))
        {
LABEL_130:
          *(this + 24) = 1;
          goto LABEL_133;
        }

        *(v79 - 1) = *(*this + v102);
      }

      *(this + 1) += 8;
LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t sub_245DFE474(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 80) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
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

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  v11 = *(v3 + 76);
  result = PB::Writer::write(this);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_15:
  v13 = *(v3 + 56);

  return PB::Writer::write(this, v13);
}

void *sub_245DFE564(void *result)
{
  *result = &unk_2858CF2F8;
  result[1] = 0;
  return result;
}

void sub_245DFE584(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF2F8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFE604(PB::Base *a1)
{
  sub_245DFE584(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFE63C(void *result, uint64_t a2)
{
  *result = &unk_2858CF2F8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFE6E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFE760(int a1, PB::Reader *this)
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

uint64_t sub_245DFE998(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245DFE9B4(uint64_t result)
{
  *result = &unk_2858CF330;
  *(result + 28) = 0;
  return result;
}

void sub_245DFE9DC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DFEA14(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF330;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 28) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 28) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 28) = v3;
    *(a1 + 20) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 24);
  *(a1 + 28) = v3 | 8;
  *(a1 + 24) = v4;
  return *&v4;
}

uint64_t sub_245DFEAB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 16));
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "y", *(a1 + 20));
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 24));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFEB74(uint64_t a1, PB::Reader *this)
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
            goto LABEL_48;
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
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245DFEE04(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

void *sub_245DFEEAC(void *result)
{
  *result = &unk_2858CF368;
  result[1] = 0;
  return result;
}

void sub_245DFEECC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF368;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFEF4C(PB::Base *a1)
{
  sub_245DFEECC(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFEF84(void *result, uint64_t a2)
{
  *result = &unk_2858CF368;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFF02C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFF0A8(int a1, PB::Reader *this)
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

uint64_t sub_245DFF2E0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

double sub_245DFF2FC(uint64_t a1)
{
  *a1 = &unk_2858CF3A0;
  *(a1 + 116) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245DFF338(PB::Base *this)
{
  *this = &unk_2858CF3A0;
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

void sub_245DFF3BC(PB::Base *a1)
{
  sub_245DFF338(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFF3F4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF3A0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 116) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v5 = *(a2 + 116);
  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 88);
    *(a1 + 116) |= 2u;
    *(a1 + 88) = v8;
    v5 = *(a2 + 116);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a2 + 116) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 80);
  *(a1 + 116) |= 1u;
  *(a1 + 80) = v9;
  v5 = *(a2 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = *(a2 + 112);
    *(a1 + 116) |= 0x10u;
    *(a1 + 112) = v11;
    if ((*(a2 + 116) & 4) == 0)
    {
      return a1;
    }

    goto LABEL_8;
  }

LABEL_12:
  v10 = *(a2 + 104);
  *(a1 + 116) |= 8u;
  *(a1 + 104) = v10;
  v5 = *(a2 + 116);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v5 & 4) != 0)
  {
LABEL_8:
    v6 = *(a2 + 96);
    *(a1 + 116) |= 4u;
    *(a1 + 96) = v6;
  }

  return a1;
}

uint64_t sub_245DFF54C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "B", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "N", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "T", v13);
  }

  v14 = *(a1 + 116);
  if (v14)
  {
    PB::TextFormatter::format(this, "curvature", *(a1 + 80));
    v14 = *(a1 + 116);
    if ((v14 & 0x10) == 0)
    {
LABEL_9:
      if ((v14 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 116) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(a1 + 112);
  PB::TextFormatter::format(this, "isValid");
  v14 = *(a1 + 116);
  if ((v14 & 2) == 0)
  {
LABEL_10:
    if ((v14 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "jerkNorm", *(a1 + 88));
  v14 = *(a1 + 116);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  if ((*(a1 + 116) & 8) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "torsion", *(a1 + 104));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFF6C4(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            *(a1 + 116) |= 0x10u;
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

            *(a1 + 112) = v80;
            goto LABEL_158;
          }

          if (v23 == 8)
          {
            *(a1 + 116) |= 4u;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
            {
LABEL_155:
              *(this + 24) = 1;
              goto LABEL_158;
            }

            *(a1 + 96) = *(*this + v42);
LABEL_85:
            v60 = *(this + 1) + 8;
LABEL_157:
            *(this + 1) = v60;
            goto LABEL_158;
          }
        }

        else
        {
          if (v23 == 5)
          {
            *(a1 + 116) |= 1u;
            v59 = *(this + 1);
            if (v59 > 0xFFFFFFFFFFFFFFF7 || v59 + 8 > *(this + 2))
            {
              goto LABEL_155;
            }

            *(a1 + 80) = *(*this + v59);
            goto LABEL_85;
          }

          if (v23 == 6)
          {
            *(a1 + 116) |= 8u;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
            {
              goto LABEL_155;
            }

            *(a1 + 104) = *(*this + v40);
            goto LABEL_85;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v61 = *(this + 1);
            v62 = *(this + 2);
            while (v61 < v62 && (*(this + 24) & 1) == 0)
            {
              v64 = *(a1 + 16);
              v63 = *(a1 + 24);
              if (v64 >= v63)
              {
                v66 = *(a1 + 8);
                v67 = v64 - v66;
                v68 = (v64 - v66) >> 2;
                v69 = v68 + 1;
                if ((v68 + 1) >> 62)
                {
                  goto LABEL_165;
                }

                v70 = v63 - v66;
                if (v70 >> 1 > v69)
                {
                  v69 = v70 >> 1;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v71 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v71 = v69;
                }

                if (v71)
                {
                  sub_245DF85BC(a1 + 8, v71);
                }

                v72 = (v64 - v66) >> 2;
                v73 = (4 * v68);
                v74 = (4 * v68 - 4 * v72);
                *v73 = 0;
                v65 = v73 + 1;
                memcpy(v74, v66, v67);
                v75 = *(a1 + 8);
                *(a1 + 8) = v74;
                *(a1 + 16) = v65;
                *(a1 + 24) = 0;
                if (v75)
                {
                  operator delete(v75);
                }
              }

              else
              {
                *v64 = 0;
                v65 = v64 + 4;
              }

              *(a1 + 16) = v65;
              v76 = *(this + 1);
              if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
              {
LABEL_118:
                *(this + 24) = 1;
                goto LABEL_119;
              }

              *(v65 - 1) = *(*this + v76);
              v62 = *(this + 2);
              v61 = *(this + 1) + 4;
              *(this + 1) = v61;
            }

            goto LABEL_119;
          }

          v85 = *(a1 + 16);
          v84 = *(a1 + 24);
          if (v85 >= v84)
          {
            v94 = *(a1 + 8);
            v95 = v85 - v94;
            v96 = (v85 - v94) >> 2;
            v97 = v96 + 1;
            if ((v96 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v98 = v84 - v94;
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
              sub_245DF85BC(a1 + 8, v99);
            }

            v110 = (v85 - v94) >> 2;
            v111 = (4 * v96);
            v112 = (4 * v96 - 4 * v110);
            *v111 = 0;
            v83 = v111 + 1;
            memcpy(v112, v94, v95);
            v113 = *(a1 + 8);
            *(a1 + 8) = v112;
            *(a1 + 16) = v83;
            *(a1 + 24) = 0;
            if (v113)
            {
              operator delete(v113);
            }
          }

          else
          {
            *v85 = 0;
            v83 = v85 + 4;
          }

          *(a1 + 16) = v83;
LABEL_153:
          v118 = *(this + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
          {
            goto LABEL_155;
          }

          *(v83 - 1) = *(*this + v118);
          v60 = *(this + 1) + 4;
          goto LABEL_157;
        }

        if (v23 == 4)
        {
          *(a1 + 116) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_155;
          }

          *(a1 + 88) = *(*this + v41);
          goto LABEL_85;
        }
      }

      else
      {
        if (v23 == 1)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
            }

            v43 = *(this + 1);
            v44 = *(this + 2);
            while (v43 < v44 && (*(this + 24) & 1) == 0)
            {
              v46 = *(a1 + 64);
              v45 = *(a1 + 72);
              if (v46 >= v45)
              {
                v48 = *(a1 + 56);
                v49 = v46 - v48;
                v50 = (v46 - v48) >> 2;
                v51 = v50 + 1;
                if ((v50 + 1) >> 62)
                {
                  goto LABEL_165;
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
                  sub_245DF85BC(a1 + 56, v53);
                }

                v54 = (v46 - v48) >> 2;
                v55 = (4 * v50);
                v56 = (4 * v50 - 4 * v54);
                *v55 = 0;
                v47 = v55 + 1;
                memcpy(v56, v48, v49);
                v57 = *(a1 + 56);
                *(a1 + 56) = v56;
                *(a1 + 64) = v47;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v47;
              v58 = *(this + 1);
              if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
              {
                goto LABEL_118;
              }

              *(v47 - 1) = *(*this + v58);
              v44 = *(this + 2);
              v43 = *(this + 1) + 4;
              *(this + 1) = v43;
            }

            goto LABEL_119;
          }

          v82 = *(a1 + 64);
          v81 = *(a1 + 72);
          if (v82 >= v81)
          {
            v88 = *(a1 + 56);
            v89 = v82 - v88;
            v90 = (v82 - v88) >> 2;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v92 = v81 - v88;
            if (v92 >> 1 > v91)
            {
              v91 = v92 >> 1;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v93 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_245DF85BC(a1 + 56, v93);
            }

            v106 = (v82 - v88) >> 2;
            v107 = (4 * v90);
            v108 = (4 * v90 - 4 * v106);
            *v107 = 0;
            v83 = v107 + 1;
            memcpy(v108, v88, v89);
            v109 = *(a1 + 56);
            *(a1 + 56) = v108;
            *(a1 + 64) = v83;
            *(a1 + 72) = 0;
            if (v109)
            {
              operator delete(v109);
            }
          }

          else
          {
            *v82 = 0;
            v83 = v82 + 4;
          }

          *(a1 + 64) = v83;
          goto LABEL_153;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
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
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_165;
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
                  sub_245DF85BC(a1 + 32, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
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
                v28 = v27 + 4;
              }

              *(a1 + 40) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
              {
                goto LABEL_118;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

LABEL_119:
            PB::Reader::recallMark();
            goto LABEL_158;
          }

          v87 = *(a1 + 40);
          v86 = *(a1 + 48);
          if (v87 >= v86)
          {
            v100 = *(a1 + 32);
            v101 = v87 - v100;
            v102 = (v87 - v100) >> 2;
            v103 = v102 + 1;
            if ((v102 + 1) >> 62)
            {
LABEL_165:
              sub_245DF85A4();
            }

            v104 = v86 - v100;
            if (v104 >> 1 > v103)
            {
              v103 = v104 >> 1;
            }

            if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v105 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v105 = v103;
            }

            if (v105)
            {
              sub_245DF85BC(a1 + 32, v105);
            }

            v114 = (v87 - v100) >> 2;
            v115 = (4 * v102);
            v116 = (4 * v102 - 4 * v114);
            *v115 = 0;
            v83 = v115 + 1;
            memcpy(v116, v100, v101);
            v117 = *(a1 + 32);
            *(a1 + 32) = v116;
            *(a1 + 40) = v83;
            *(a1 + 48) = 0;
            if (v117)
            {
              operator delete(v117);
            }
          }

          else
          {
            *v87 = 0;
            v83 = v87 + 4;
          }

          *(a1 + 40) = v83;
          goto LABEL_153;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_164:
        v119 = 0;
        return v119 & 1;
      }

LABEL_158:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v119 = v4 ^ 1;
  return v119 & 1;
}

uint64_t sub_245DFFF1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  v5 = *(result + 64);
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

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 116);
  if ((v13 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 88));
    v13 = *(v3 + 116);
    if ((v13 & 1) == 0)
    {
LABEL_12:
      if ((v13 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v3 + 116) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v13 = *(v3 + 116);
  if ((v13 & 8) == 0)
  {
LABEL_13:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v14 = *(v3 + 112);
    result = PB::Writer::write(this);
    if ((*(v3 + 116) & 4) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 104));
  v13 = *(v3 + 116);
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v13 & 4) == 0)
  {
    return result;
  }

LABEL_20:
  v15 = *(v3 + 96);

  return PB::Writer::write(this, v15);
}

uint64_t sub_245E0004C(uint64_t result)
{
  *result = &unk_2858CF3D8;
  *(result + 32) = 0;
  return result;
}

void sub_245E00074(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E000AC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF3D8;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
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
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 32) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    *(a1 + 32) = v3 | 4;
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_245E0012C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "calibrated", *(a1 + 8));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "lowerBound", *(a1 + 16));
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "upperBound", *(a1 + 24));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E001D0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 32) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
LABEL_33:
          *(this + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 24) = *(*this + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 32) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_38:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_42;
      }
    }

    *(a1 + 32) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
      goto LABEL_33;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_42:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245E00410(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 32);
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
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245E0049C(uint64_t result)
{
  *result = &unk_2858CF410;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245E004C0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF410;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E00540(PB::Base *a1)
{
  sub_245E004C0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E00578(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF410;
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

uint64_t sub_245E00684(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "accel");
  }

  v6 = *(a1 + 32);
  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 32);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_6:
    v7 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E00760(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245E00C94(uint64_t result, PB::Writer *this)
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

void *sub_245E00D34(void *result)
{
  *result = &unk_2858CF448;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_245E00D58(uint64_t a1)
{
  *a1 = &unk_2858CF448;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    sub_245DF8934(a1 + 16, v3);
  }

  sub_245DF8990((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_245E00DFC(uint64_t a1)
{
  sub_245E00D58(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E00E34(void *result, void *a2)
{
  result[1] = 0;
  *result = &unk_2858CF448;
  result[2] = 0;
  result[3] = 0;
  if (a2[3])
  {
    operator new();
  }

  if (a2[1])
  {
    operator new();
  }

  if (a2[2])
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E00FB8(void *a1, PB::TextFormatter *this, char *a3)
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

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E01064(int a1, PB::Reader *this)
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
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
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

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245E01364(uint64_t result)
{
  *(result + 36) = 0;
  *result = &unk_2858CF528;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_245E0138C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_245E01404(uint64_t result)
{
  *result = &unk_2858CF480;
  *(result + 32) = 0;
  return result;
}

void sub_245E0142C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E01464(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF480;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 28);
    v3 |= 0x10u;
    *(result + 32) = v3;
    *(result + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 32) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
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

  v7 = *(a2 + 20);
  v3 |= 4u;
  *(result + 32) = v3;
  *(result + 20) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    v9 = *(a2 + 29);
    *(result + 32) = v3 | 0x20;
    *(result + 29) = v9;
    return result;
  }

LABEL_13:
  v8 = *(a2 + 24);
  v3 |= 8u;
  *(result + 32) = v3;
  *(result + 24) = v8;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245E01538(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 0x10) != 0)
  {
    v7 = *(a1 + 28);
    PB::TextFormatter::format(this, "asleep");
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "averageConfidence");
  v5 = *(a1 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(a1 + 29);
  PB::TextFormatter::format(this, "initialized");
  v5 = *(a1 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "rawConfidence", *(a1 + 20));
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_7:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0163C(uint64_t a1, PB::Reader *this)
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
            *(a1 + 32) |= 4u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 20) = *(*this + v2);
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_103;
          case 5:
            *(a1 + 32) |= 8u;
            v43 = *(this + 1);
            v2 = *(this + 2);
            v44 = *this;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v43;
              v68 = (v44 + v43);
              v69 = v43 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v47) = 0;
                  *(this + 24) = 1;
                  goto LABEL_102;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v47 |= (v71 & 0x7F) << v65;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                --v67;
                ++v68;
                v69 = v70 + 1;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_101;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_101:
              v2 = v70;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = (v44 + v43);
              v49 = v43 + 1;
              while (1)
              {
                v2 = v49;
                *(this + 1) = v49;
                v50 = *v48++;
                v47 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_102:
            *(a1 + 24) = v47;
            goto LABEL_103;
          case 6:
            *(a1 + 32) |= 0x20u;
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

            *(a1 + 29) = v32;
            goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 32) |= 1u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v51 = 0;
              v52 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v53 = v2 - v33;
              v54 = (v34 + v33);
              v55 = v33 + 1;
              while (1)
              {
                if (!v53)
                {
                  v37 = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v56 = v55;
                v57 = *v54;
                *(this + 1) = v56;
                v37 |= (v57 & 0x7F) << v51;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                v55 = v56 + 1;
                v14 = v52++ > 8;
                if (v14)
                {
                  v37 = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                v37 = 0;
              }

LABEL_93:
              v2 = v56;
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

LABEL_94:
            *(a1 + 8) = v37;
            goto LABEL_103;
          case 2:
            *(a1 + 32) |= 0x10u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v42 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v41 = *(*this + v2++);
              *(this + 1) = v2;
              v42 = v41 != 0;
            }

            *(a1 + 28) = v42;
            goto LABEL_103;
          case 3:
            *(a1 + 32) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v58 = 0;
              v59 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v60 = v2 - v23;
              v61 = (v24 + v23);
              v62 = v23 + 1;
              while (1)
              {
                if (!v60)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                v63 = v62;
                v64 = *v61;
                *(this + 1) = v63;
                v27 |= (v64 & 0x7F) << v58;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                --v60;
                ++v61;
                v62 = v63 + 1;
                v14 = v59++ > 8;
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
              v2 = v63;
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
            *(a1 + 16) = v27;
            goto LABEL_103;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v72 = 0;
        return v72 & 1;
      }

      v2 = *(this + 1);
LABEL_103:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_107:
  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t sub_245E01BC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  result = PB::Writer::write(this);
  v4 = *(v3 + 32);
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
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v9 = *(v3 + 29);

  return PB::Writer::write(this);
}

uint64_t sub_245E01CA0(uint64_t result)
{
  *result = &unk_2858CF4B8;
  *(result + 28) = 0;
  return result;
}

void sub_245E01CC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E01D00(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF4B8;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 28) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 28) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(result + 28) = v3 | 8;
    *(result + 24) = v7;
    return result;
  }

  v6 = *(a2 + 20);
  v3 |= 4u;
  *(result + 28) = v3;
  *(result + 20) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245E01D9C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "confidenceLevel");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E01E60(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 28) |= 4u;
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
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v79 = v3 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
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
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

LABEL_112:
            v3 = v82;
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

LABEL_113:
          *(a1 + 20) = v52;
          goto LABEL_114;
        }

        if (v23 == 4)
        {
          *(a1 + 28) |= 8u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v65 = v3 - v32;
            v66 = (v33 + v32);
            v67 = v32 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_105;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v36 |= (v69 & 0x7F) << v63;
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
                LODWORD(v36) = 0;
                goto LABEL_104;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_104:
            v3 = v68;
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

LABEL_105:
          *(a1 + 24) = v36;
          goto LABEL_114;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 28) |= 1u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v72 = v3 - v40;
            v73 = (v41 + v40);
            v74 = v40 + 1;
            while (1)
            {
              if (!v72)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v44 |= (v76 & 0x7F) << v70;
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
                v44 = 0;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

LABEL_108:
            v3 = v75;
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
                v44 = 0;
                break;
              }
            }
          }

LABEL_109:
          *(a1 + 8) = v44;
          goto LABEL_114;
        }

        if (v23 == 2)
        {
          *(a1 + 28) |= 2u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v58 = v3 - v24;
            v59 = (v25 + v24);
            v60 = v24 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_101;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v28 |= (v62 & 0x7F) << v56;
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
                LODWORD(v28) = 0;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

LABEL_100:
            v3 = v61;
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

LABEL_101:
          *(a1 + 16) = v28;
          goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v84 = 0;
        return v84 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_114:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_245E02400(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v3 + 20);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E024A8(uint64_t result)
{
  *result = &unk_2858CF4F0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_245E024D0(void **a1)
{
  *a1 = &unk_2858CF4F0;
  v2 = a1 + 1;
  sub_245DF837C(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_245E0252C(void **a1)
{
  *a1 = &unk_2858CF4F0;
  v3 = a1 + 1;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x24C194490]();
}

uint64_t sub_245E0259C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF4F0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 2;
    *(result + 64) = 2;
    *(result + 40) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 64))
  {
LABEL_5:
    v5 = *(a2 + 32);
    v3 |= 1u;
    *(result + 64) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v9 = *(a2 + 56);
    v3 |= 0x10u;
    *(result + 64) = v3;
    *(result + 56) = v9;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
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

  v10 = *(a2 + 52);
  v3 |= 8u;
  *(result + 64) = v3;
  *(result + 52) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v11 = *(a2 + 48);
  v3 |= 4u;
  *(result + 64) = v3;
  *(result + 48) = v11;
  if ((*(a2 + 64) & 0x20) != 0)
  {
LABEL_10:
    v6 = *(a2 + 60);
    *(result + 64) = v3 | 0x20;
    *(result + 60) = v6;
  }

LABEL_11:
  v7 = *(a2 + 8);
  if (v7 != *(a2 + 16))
  {
    v8 = *v7;
    sub_245E026C4();
  }

  return result;
}

uint64_t sub_245E0281C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "batchedPPGData");
  }

  v8 = *(a1 + 64);
  if ((v8 & 4) != 0)
  {
    v9 = *(a1 + 48);
    PB::TextFormatter::format(this, "flagBitfield");
    v8 = *(a1 + 64);
    if ((v8 & 8) == 0)
    {
LABEL_5:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 52);
  PB::TextFormatter::format(this, "frameNum");
  v8 = *(a1 + 64);
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(a1 + 56);
  PB::TextFormatter::format(this, "frameType");
  v8 = *(a1 + 64);
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 60);
  PB::TextFormatter::format(this, "payloadsInBatch");
  v8 = *(a1 + 64);
  if ((v8 & 1) == 0)
  {
LABEL_8:
    if ((v8 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v13 = *(a1 + 32);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 64) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E0297C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_137;
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
            *(a1 + 64) |= 2u;
            v41 = *(this + 1);
            if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(this + 2))
            {
              *(a1 + 40) = *(*this + v41);
              *(this + 1) += 8;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_133;
          case 2:
            *(a1 + 64) |= 1u;
            v61 = *(this + 1);
            v60 = *(this + 2);
            v62 = *this;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
            {
              v93 = 0;
              v94 = 0;
              v65 = 0;
              v17 = v60 >= v61;
              v95 = v60 - v61;
              if (!v17)
              {
                v95 = 0;
              }

              v96 = (v62 + v61);
              v97 = v61 + 1;
              while (1)
              {
                if (!v95)
                {
                  v65 = 0;
                  *(this + 24) = 1;
                  goto LABEL_132;
                }

                v98 = *v96;
                *(this + 1) = v97;
                v65 |= (v98 & 0x7F) << v93;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                ++v97;
                v14 = v94++ > 8;
                if (v14)
                {
LABEL_111:
                  v65 = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                v65 = 0;
              }
            }

            else
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = (v62 + v61);
              v67 = v61 + 1;
              while (1)
              {
                *(this + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v14 = v64++ > 8;
                if (v14)
                {
                  goto LABEL_111;
                }
              }
            }

LABEL_132:
            *(a1 + 32) = v65;
            goto LABEL_133;
          case 3:
            *(a1 + 64) |= 0x10u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v87 = 0;
              v88 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v89 = v32 - v33;
              if (!v17)
              {
                v89 = 0;
              }

              v90 = (v34 + v33);
              v91 = v33 + 1;
              while (1)
              {
                if (!v89)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v92 = *v90;
                *(this + 1) = v91;
                v37 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                --v89;
                ++v90;
                ++v91;
                v14 = v88++ > 8;
                if (v14)
                {
LABEL_103:
                  LODWORD(v37) = 0;
                  goto LABEL_129;
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
                  goto LABEL_103;
                }
              }
            }

LABEL_129:
            *(a1 + 56) = v37;
            goto LABEL_133;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 64) |= 0x20u;
          v52 = *(this + 1);
          v51 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51)
          {
            v75 = 0;
            v76 = 0;
            v56 = 0;
            v17 = v51 >= v52;
            v77 = v51 - v52;
            if (!v17)
            {
              v77 = 0;
            }

            v78 = (v53 + v52);
            v79 = v52 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_123;
              }

              v80 = *v78;
              *(this + 1) = v79;
              v56 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_87:
                LODWORD(v56) = 0;
                goto LABEL_123;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            while (1)
            {
              *(this + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_123:
          *(a1 + 60) = v56;
          goto LABEL_133;
        }

        if (v22 == 7)
        {
          sub_245E03090();
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 64) |= 8u;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v69 = 0;
            v70 = 0;
            v47 = 0;
            v17 = v42 >= v43;
            v71 = v42 - v43;
            if (!v17)
            {
              v71 = 0;
            }

            v72 = (v44 + v43);
            v73 = v43 + 1;
            while (1)
            {
              if (!v71)
              {
                LODWORD(v47) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v74 = *v72;
              *(this + 1) = v73;
              v47 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              --v71;
              ++v72;
              ++v73;
              v14 = v70++ > 8;
              if (v14)
              {
LABEL_79:
                LODWORD(v47) = 0;
                goto LABEL_120;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v47) = 0;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            while (1)
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
              if (v14)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_120:
          *(a1 + 52) = v47;
          goto LABEL_133;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 4u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v81 = 0;
            v82 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v83 = v23 - v24;
            if (!v17)
            {
              v83 = 0;
            }

            v84 = (v25 + v24);
            v85 = v24 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_126;
              }

              v86 = *v84;
              *(this + 1) = v85;
              v28 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              --v83;
              ++v84;
              ++v85;
              v14 = v82++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v28) = 0;
                goto LABEL_126;
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
                goto LABEL_95;
              }
            }
          }

LABEL_126:
          *(a1 + 48) = v28;
          goto LABEL_133;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v100 = 0;
        return v100 & 1;
      }

LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_137:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_245E03214(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 64);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 64) & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v12 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v5 = *(v3 + 60);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_8:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}

void sub_245E03308(PB::Base *this)
{
  *this = &unk_2858CF528;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_245DF8934(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_245E03380(PB::Base *a1)
{
  sub_245E03308(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E033B8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF528;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 36) = 0;
  *(result + 24) = 0;
  if ((*(a2 + 36) & 2) != 0)
  {
    v2 = *(a2 + 28);
    *(result + 36) = 2;
    *(result + 28) = v2;
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = *(a2 + 24);
    *(result + 36) |= 1u;
    *(result + 24) = v4;
    v3 = *(a2 + 36);
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a2 + 32);
    *(result + 36) |= 4u;
    *(result + 32) = v5;
  }

  return result;
}

uint64_t sub_245E03540(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 36);
  if (v5)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "hardwareModel");
    v5 = *(a1 + 36);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 32);
    PB::TextFormatter::format(this, "isVirtualTransport");
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    v8 = *(a1 + 28);
    PB::TextFormatter::format(this, "side");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E03608(uint64_t a1, PB::Reader *this)
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
            goto LABEL_78;
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
          *(a1 + 36) |= 2u;
          v37 = *(this + 1);
          v36 = *(this + 2);
          v38 = *this;
          if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
          {
            v51 = 0;
            v52 = 0;
            v41 = 0;
            v17 = v36 >= v37;
            v53 = v36 - v37;
            if (!v17)
            {
              v53 = 0;
            }

            v54 = (v38 + v37);
            v55 = v37 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v41) = 0;
                *(this + 24) = 1;
                goto LABEL_73;
              }

              v56 = *v54;
              *(this + 1) = v55;
              v41 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              --v53;
              ++v54;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
LABEL_63:
                LODWORD(v41) = 0;
                goto LABEL_73;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            while (1)
            {
              *(this + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
              if (v14)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_73:
          *(a1 + 28) = v41;
          goto LABEL_74;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            *(a1 + 36) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v45 = 0;
              v46 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v47 = v27 - v28;
              if (!v17)
              {
                v47 = 0;
              }

              v48 = (v29 + v28);
              v49 = v28 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_70;
                }

                v50 = *v48;
                *(this + 1) = v49;
                v32 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
LABEL_55:
                  LODWORD(v32) = 0;
                  goto LABEL_70;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  goto LABEL_55;
                }
              }
            }

LABEL_70:
            *(a1 + 24) = v32;
            goto LABEL_74;
          case 5:
            *(a1 + 36) |= 4u;
            v23 = *(this + 1);
            if (v23 >= *(this + 2))
            {
              v26 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = v23 + 1;
              v25 = *(*this + v23);
              *(this + 1) = v24;
              v26 = v25 != 0;
            }

            *(a1 + 32) = v26;
            goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v58 = 0;
        return v58 & 1;
      }

LABEL_74:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_78:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t sub_245E03A74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 36) & 2) != 0)
  {
    v4 = *(result + 28);
    result = PB::Writer::writeVarInt(this);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 36);
  if (v5)
  {
    v6 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 36);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(v3 + 32);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245E03B20(uint64_t result)
{
  *result = &unk_2858CF560;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_245E03B44(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF560;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E03BC4(PB::Base *a1)
{
  sub_245E03B44(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E03BFC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF560;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 16);
    *(result + 24) |= 1u;
    *(result + 16) = v3;
    v2 = *(a2 + 24);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 20);
    *(result + 24) |= 2u;
    *(result + 20) = v4;
  }

  return result;
}

uint64_t sub_245E03CE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "dm");
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 20);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E03D98(uint64_t a1, PB::Reader *this)
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
            goto LABEL_70;
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
              goto LABEL_65;
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
LABEL_57:
              LODWORD(v37) = 0;
              goto LABEL_65;
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
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 20) = v37;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 1u;
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
              goto LABEL_62;
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
LABEL_49:
              LODWORD(v28) = 0;
              goto LABEL_62;
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
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_245E041CC(uint64_t result)
{
  *result = &unk_2858D07F8;
  *(result + 124) = 0;
  return result;
}

uint64_t sub_245E041F0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(v3 + 20);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void sub_245E04270(PB::Base *this)
{
  *this = &unk_2858CF598;
  v2 = *(this + 4);
  *(this + 4) = 0;
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

void sub_245E04304(PB::Base *a1)
{
  sub_245E04270(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E0433C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF598;
  *(a1 + 8) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 24) = 0u;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 44))
  {
    v3 = *(a2 + 40);
    *(a1 + 44) |= 1u;
    *(a1 + 40) = v3;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_245E04434(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "headToHeadsetTransformation", v8);
  }

  if (*(a1 + 44))
  {
    v9 = *(a1 + 40);
    PB::TextFormatter::format(this, "isH2HValid");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E04508(uint64_t a1, PB::Reader *this)
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
            goto LABEL_74;
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
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_76;
          }

          v27 = *(this + 1);
          v28 = *(this + 2);
          while (v27 < v28 && (*(this + 24) & 1) == 0)
          {
            v30 = *(a1 + 16);
            v29 = *(a1 + 24);
            if (v30 >= v29)
            {
              v32 = *(a1 + 8);
              v33 = v30 - v32;
              v34 = (v30 - v32) >> 2;
              v35 = v34 + 1;
              if ((v34 + 1) >> 62)
              {
                goto LABEL_77;
              }

              v36 = v29 - v32;
              if (v36 >> 1 > v35)
              {
                v35 = v36 >> 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v37 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                sub_245DF85BC(a1 + 8, v37);
              }

              v38 = (v30 - v32) >> 2;
              v39 = (4 * v34);
              v40 = (4 * v34 - 4 * v38);
              *v39 = 0;
              v31 = v39 + 1;
              memcpy(v40, v32, v33);
              v41 = *(a1 + 8);
              *(a1 + 8) = v40;
              *(a1 + 16) = v31;
              *(a1 + 24) = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v30 = 0;
              v31 = v30 + 4;
            }

            *(a1 + 16) = v31;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              *(this + 24) = 1;
              break;
            }

            *(v31 - 1) = *(*this + v42);
            v28 = *(this + 2);
            v27 = *(this + 1) + 4;
            *(this + 1) = v27;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v44 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v44 >= v43)
          {
            v46 = *(a1 + 8);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 2;
            v49 = v48 + 1;
            if ((v48 + 1) >> 62)
            {
LABEL_77:
              sub_245DF85A4();
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
              sub_245DF85BC(a1 + 8, v51);
            }

            v52 = (v44 - v46) >> 2;
            v53 = (4 * v48);
            v54 = (4 * v48 - 4 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(a1 + 8);
            *(a1 + 8) = v54;
            *(a1 + 16) = v45;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v45;
          v56 = *(this + 1);
          if (v56 <= 0xFFFFFFFFFFFFFFFBLL && v56 + 4 <= *(this + 2))
          {
            *(v45 - 1) = *(*this + v56);
            *(this + 1) += 4;
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      else if (v22 == 2)
      {
        *(a1 + 44) |= 1u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 40) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_76:
          v57 = 0;
          return v57 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_74:
  v57 = v4 ^ 1;
  return v57 & 1;
}

uint64_t sub_245E049AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 44))
  {
    v5 = *(v3 + 40);
    result = PB::Writer::write(this);
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_245E04A24(uint64_t result)
{
  *result = &unk_2858CF5D0;
  *(result + 8) = 0;
  *(result + 36) = 0;
  return result;
}

void sub_245E04A48(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF5D0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E04AC8(PB::Base *a1)
{
  sub_245E04A48(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E04B00(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF5D0;
  *(result + 8) = 0;
  *(result + 36) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 36);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 24);
    *(result + 36) |= 2u;
    *(result + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a2 + 36) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 28);
  *(result + 36) |= 4u;
  *(result + 28) = v5;
  v2 = *(a2 + 36);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_11:
  v6 = *(a2 + 32);
  *(result + 36) |= 8u;
  *(result + 32) = v6;
  if ((*(a2 + 36) & 1) == 0)
  {
    return result;
  }

LABEL_7:
  v3 = *(a2 + 16);
  *(result + 36) |= 1u;
  *(result + 16) = v3;
  return result;
}

uint64_t sub_245E04C2C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "gyro");
  }

  v6 = *(a1 + 36);
  if ((v6 & 2) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 36);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "sensorTime");
  v6 = *(a1 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v9 = *(a1 + 28);
  PB::TextFormatter::format(this, "sequenceNumber");
  if ((*(a1 + 36) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "temp", *(a1 + 32));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E04D28(uint64_t a1, PB::Reader *this)
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
            goto LABEL_96;
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
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 36) |= 2u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v63 = 0;
            v64 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v65 = v32 - v33;
            if (!v17)
            {
              v65 = 0;
            }

            v66 = (v34 + v33);
            v67 = v33 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_91;
              }

              v68 = *v66;
              *(this + 1) = v67;
              v37 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              --v65;
              ++v66;
              ++v67;
              v14 = v64++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v37) = 0;
                goto LABEL_91;
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
                goto LABEL_78;
              }
            }
          }

LABEL_91:
          *(a1 + 24) = v37;
          goto LABEL_92;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 36) |= 4u;
            v42 = *(this + 1);
            v41 = *(this + 2);
            v43 = *this;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v51 = 0;
              v52 = 0;
              v46 = 0;
              v17 = v41 >= v42;
              v53 = v41 - v42;
              if (!v17)
              {
                v53 = 0;
              }

              v54 = (v43 + v42);
              v55 = v42 + 1;
              while (1)
              {
                if (!v53)
                {
                  LODWORD(v46) = 0;
                  *(this + 24) = 1;
                  goto LABEL_85;
                }

                v56 = *v54;
                *(this + 1) = v55;
                v46 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
LABEL_62:
                  LODWORD(v46) = 0;
                  goto LABEL_85;
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
                  goto LABEL_62;
                }
              }
            }

LABEL_85:
            *(a1 + 28) = v46;
            goto LABEL_92;
          case 4:
            *(a1 + 36) |= 8u;
            v50 = *(this + 1);
            if (v50 <= 0xFFFFFFFFFFFFFFFBLL && v50 + 4 <= *(this + 2))
            {
              *(a1 + 32) = *(*this + v50);
              *(this + 1) += 4;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_92;
          case 5:
            *(a1 + 36) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v57 = 0;
              v58 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v59 = v23 - v24;
              if (!v17)
              {
                v59 = 0;
              }

              v60 = (v25 + v24);
              v61 = v24 + 1;
              while (1)
              {
                if (!v59)
                {
                  v28 = 0;
                  *(this + 24) = 1;
                  goto LABEL_88;
                }

                v62 = *v60;
                *(this + 1) = v61;
                v28 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                --v59;
                ++v60;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
LABEL_70:
                  v28 = 0;
                  goto LABEL_88;
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
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_88:
            *(a1 + 16) = v28;
            goto LABEL_92;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v70 = 0;
        return v70 & 1;
      }

LABEL_92:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_96:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t sub_245E05294(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 36);
  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      result = PB::Writer::write(this, *(v3 + 32));
      if ((*(v3 + 36) & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v3 + 36) & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 36);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_245E05350(void *result)
{
  *result = &unk_2858CF608;
  result[1] = 0;
  return result;
}

void sub_245E05370(PB::Base *this)
{
  *this = &unk_2858CF608;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_245E053D4(PB::Base *a1)
{
  sub_245E05370(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E0540C(void *result, uint64_t a2)
{
  *result = &unk_2858CF608;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E054CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E05528(int a1, PB::Reader *this)
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

      if (!PB::Reader::skip(this))
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

uint64_t sub_245E056FC(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

void *sub_245E05718(void *result)
{
  *result = &unk_2858CF640;
  result[1] = 0;
  return result;
}

void sub_245E05738(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF640;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E057B8(PB::Base *a1)
{
  sub_245E05738(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E057F0(void *result, uint64_t a2)
{
  *result = &unk_2858CF640;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E05898(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E05914(int a1, PB::Reader *this)
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

uint64_t sub_245E05B50(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245E05B6C(void *result)
{
  *result = &unk_2858CF678;
  result[1] = 0;
  return result;
}

void sub_245E05B8C(PB::Base *this)
{
  *this = &unk_2858CF678;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_245E05BF0(PB::Base *a1)
{
  sub_245E05B8C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E05C28(void *result, uint64_t a2)
{
  *result = &unk_2858CF678;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E05CE8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E05D44(int a1, PB::Reader *this)
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

      if (!PB::Reader::skip(this))
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

uint64_t sub_245E05F18(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

void sub_245E05F38(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E05F70(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF6B0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(result + 68) = 16;
    *(result + 40) = v4;
    v2 = *(a2 + 68);
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
    v5 = *(a2 + 52);
    v3 |= 0x40u;
    *(result + 68) = v3;
    *(result + 52) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 68) = v3;
    *(result + 48) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(result + 68) = v3;
  *(result + 16) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 60) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 32);
  v3 |= 8u;
  *(result + 68) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_22:
    v13 = *(a2 + 56);
    *(result + 68) = v3 | 0x80;
    *(result + 56) = v13;
    return result;
  }

LABEL_21:
  v12 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 64) = v12;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245E060B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "arrivalTimestamp", *(a1 + 8));
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

  PB::TextFormatter::format(this, "confidence", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(a1 + 52);
  PB::TextFormatter::format(this, "heartRate");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "hrSensorLocation");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "sensorTime", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "sequenceNumber");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "sourceTimestampToCFAbsoluteTime", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "sourceTimestampToMachContinuous", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v9 = *(a1 + 64);
  PB::TextFormatter::format(this, "timeSyncStatus");
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}