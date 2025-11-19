void *sub_245EB55B0(void *result)
{
  *result = &unk_2858D3568;
  result[1] = 0;
  return result;
}

void sub_245EB55D0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3568;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB5650(PB::Base *a1)
{
  sub_245EB55D0(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB5688(void *result, uint64_t a2)
{
  *result = &unk_2858D3568;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB5730(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB57AC(int a1, PB::Reader *this)
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

uint64_t sub_245EB59C8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB59E4(void *result)
{
  *result = &unk_2858D35A0;
  result[1] = 0;
  return result;
}

void sub_245EB5A04(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D35A0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB5A84(PB::Base *a1)
{
  sub_245EB5A04(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB5ABC(void *result, uint64_t a2)
{
  *result = &unk_2858D35A0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB5B64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB5BE0(int a1, PB::Reader *this)
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

uint64_t sub_245EB5DFC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB5E18(void *result)
{
  *result = &unk_2858D35D8;
  result[1] = 0;
  return result;
}

void sub_245EB5E38(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D35D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB5EB8(PB::Base *a1)
{
  sub_245EB5E38(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB5EF0(void *result, uint64_t a2)
{
  *result = &unk_2858D35D8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB5F98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB6014(int a1, PB::Reader *this)
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

uint64_t sub_245EB6230(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB624C(void *result)
{
  *result = &unk_2858D3610;
  result[1] = 0;
  return result;
}

void sub_245EB626C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3610;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB62EC(PB::Base *a1)
{
  sub_245EB626C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB6324(void *result, uint64_t a2)
{
  *result = &unk_2858D3610;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB63CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB6448(int a1, PB::Reader *this)
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

uint64_t sub_245EB6664(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB6680(void *result)
{
  *result = &unk_2858D3648;
  result[1] = 0;
  return result;
}

void sub_245EB66A0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3648;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB6720(PB::Base *a1)
{
  sub_245EB66A0(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB6758(void *result, uint64_t a2)
{
  *result = &unk_2858D3648;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB6800(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB687C(int a1, PB::Reader *this)
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

uint64_t sub_245EB6A98(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB6AB4(void *result)
{
  *result = &unk_2858D3680;
  result[1] = 0;
  return result;
}

void sub_245EB6AD4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3680;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB6B54(PB::Base *a1)
{
  sub_245EB6AD4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB6B8C(void *result, uint64_t a2)
{
  *result = &unk_2858D3680;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB6C34(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB6CB0(int a1, PB::Reader *this)
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

uint64_t sub_245EB6ECC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB6EE8(void *result)
{
  *result = &unk_2858D36B8;
  result[1] = 0;
  return result;
}

void sub_245EB6F08(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D36B8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB6F88(PB::Base *a1)
{
  sub_245EB6F08(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB6FC0(void *result, uint64_t a2)
{
  *result = &unk_2858D36B8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB7068(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB70E4(int a1, PB::Reader *this)
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

uint64_t sub_245EB7300(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB731C(void *result)
{
  *result = &unk_2858D36F0;
  result[1] = 0;
  return result;
}

void sub_245EB733C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D36F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB73BC(PB::Base *a1)
{
  sub_245EB733C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB73F4(void *result, uint64_t a2)
{
  *result = &unk_2858D36F0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB749C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB7518(int a1, PB::Reader *this)
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

uint64_t sub_245EB7734(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB7750(void *result)
{
  *result = &unk_2858D3728;
  result[1] = 0;
  return result;
}

void sub_245EB7770(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3728;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB77F0(PB::Base *a1)
{
  sub_245EB7770(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB7828(void *result, uint64_t a2)
{
  *result = &unk_2858D3728;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB78D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB794C(int a1, PB::Reader *this)
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

uint64_t sub_245EB7B68(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB7B84(void *result)
{
  *result = &unk_2858D3760;
  result[1] = 0;
  return result;
}

void sub_245EB7BA4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3760;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB7C24(PB::Base *a1)
{
  sub_245EB7BA4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB7C5C(void *result, uint64_t a2)
{
  *result = &unk_2858D3760;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB7D04(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB7D80(int a1, PB::Reader *this)
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

uint64_t sub_245EB7F9C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB7FB8(void *result)
{
  *result = &unk_2858D3798;
  result[1] = 0;
  return result;
}

void sub_245EB7FD8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3798;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB8058(PB::Base *a1)
{
  sub_245EB7FD8(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB8090(void *result, uint64_t a2)
{
  *result = &unk_2858D3798;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB8138(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB81B4(int a1, PB::Reader *this)
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

uint64_t sub_245EB83D0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245EB83EC(uint64_t result)
{
  *result = &unk_2858D37D0;
  *(result + 28) = 0;
  return result;
}

void sub_245EB8414(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EB844C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D37D0;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(a1 + 28) = 4;
    *(a1 + 24) = v4;
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
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 28) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    *(a1 + 28) = v3 | 2;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_245EB84CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "restingHeartRate", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "walkingHeartRateAverage", *(a1 + 16));
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "workoutActivityType");
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB8570(uint64_t a1, PB::Reader *this)
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
            goto LABEL_59;
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
        goto LABEL_59;
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
          goto LABEL_37;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_49:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_55;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 4u;
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
              goto LABEL_54;
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
              goto LABEL_53;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
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

LABEL_54:
        *(a1 + 24) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(this + 1);
      }

LABEL_55:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(a1 + 28) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_37:
      *(this + 24) = 1;
      goto LABEL_55;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245EB887C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(result + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
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
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

void *sub_245EB8908(void *result)
{
  *result = &unk_2858D3808;
  result[1] = 0;
  return result;
}

void sub_245EB8928(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3808;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB89A8(PB::Base *a1)
{
  sub_245EB8928(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB89E0(void *result, uint64_t a2)
{
  *result = &unk_2858D3808;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB8A88(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB8B04(int a1, PB::Reader *this)
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

uint64_t sub_245EB8D20(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB8D3C(void *result)
{
  *result = &unk_2858D3840;
  result[1] = 0;
  return result;
}

void sub_245EB8D5C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3840;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB8DDC(PB::Base *a1)
{
  sub_245EB8D5C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB8E14(void *result, uint64_t a2)
{
  *result = &unk_2858D3840;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB8EBC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB8F38(int a1, PB::Reader *this)
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

uint64_t sub_245EB9154(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB9170(void *result)
{
  *result = &unk_2858D3878;
  result[1] = 0;
  return result;
}

void sub_245EB9190(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3878;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB9210(PB::Base *a1)
{
  sub_245EB9190(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB9248(void *result, uint64_t a2)
{
  *result = &unk_2858D3878;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB92F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB936C(int a1, PB::Reader *this)
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

uint64_t sub_245EB9588(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB95A4(void *result)
{
  *result = &unk_2858D38B0;
  result[1] = 0;
  return result;
}

void sub_245EB95C4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D38B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB9644(PB::Base *a1)
{
  sub_245EB95C4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB967C(void *result, uint64_t a2)
{
  *result = &unk_2858D38B0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB9724(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB97A0(int a1, PB::Reader *this)
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

uint64_t sub_245EB99BC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB99D8(void *result)
{
  *result = &unk_2858D38E8;
  result[1] = 0;
  return result;
}

void sub_245EB99F8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D38E8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB9A78(PB::Base *a1)
{
  sub_245EB99F8(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB9AB0(void *result, uint64_t a2)
{
  *result = &unk_2858D38E8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB9B58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB9BD4(int a1, PB::Reader *this)
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

uint64_t sub_245EB9DF0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EB9E0C(void *result)
{
  *result = &unk_2858D3920;
  result[1] = 0;
  return result;
}

void sub_245EB9E2C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3920;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB9EAC(PB::Base *a1)
{
  sub_245EB9E2C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EB9EE4(void *result, uint64_t a2)
{
  *result = &unk_2858D3920;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB9F8C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBA008(int a1, PB::Reader *this)
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

uint64_t sub_245EBA224(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBA240(void *result)
{
  *result = &unk_2858D3958;
  result[1] = 0;
  return result;
}

void sub_245EBA260(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3958;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBA2E0(PB::Base *a1)
{
  sub_245EBA260(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBA318(void *result, uint64_t a2)
{
  *result = &unk_2858D3958;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBA3C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBA43C(int a1, PB::Reader *this)
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

uint64_t sub_245EBA658(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBA674(void *result)
{
  *result = &unk_2858D3990;
  result[1] = 0;
  return result;
}

void sub_245EBA694(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3990;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBA714(PB::Base *a1)
{
  sub_245EBA694(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBA74C(void *result, uint64_t a2)
{
  *result = &unk_2858D3990;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBA7F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBA870(int a1, PB::Reader *this)
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

uint64_t sub_245EBAA8C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBAAA8(void *result)
{
  *result = &unk_2858D39C8;
  result[1] = 0;
  return result;
}

void sub_245EBAAC8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D39C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBAB48(PB::Base *a1)
{
  sub_245EBAAC8(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBAB80(void *result, uint64_t a2)
{
  *result = &unk_2858D39C8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBAC28(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBACA4(int a1, PB::Reader *this)
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

uint64_t sub_245EBAEDC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBAEF8(void *result)
{
  *result = &unk_2858D3A00;
  result[1] = 0;
  return result;
}

void sub_245EBAF18(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3A00;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBAF98(PB::Base *a1)
{
  sub_245EBAF18(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBAFD0(void *result, uint64_t a2)
{
  *result = &unk_2858D3A00;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBB078(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBB0F4(int a1, PB::Reader *this)
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

uint64_t sub_245EBB32C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBB348(void *result)
{
  *result = &unk_2858D3A38;
  result[1] = 0;
  return result;
}

void sub_245EBB368(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3A38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBB3E8(PB::Base *a1)
{
  sub_245EBB368(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBB420(void *result, uint64_t a2)
{
  *result = &unk_2858D3A38;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBB4C8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBB544(int a1, PB::Reader *this)
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

uint64_t sub_245EBB77C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBB798(void *result)
{
  *result = &unk_2858D3A70;
  result[1] = 0;
  return result;
}

void sub_245EBB7B8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3A70;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBB838(PB::Base *a1)
{
  sub_245EBB7B8(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBB870(void *result, uint64_t a2)
{
  *result = &unk_2858D3A70;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBB918(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBB994(int a1, PB::Reader *this)
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

uint64_t sub_245EBBBCC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EBBBE8(void *result)
{
  *result = &unk_2858D3AA8;
  result[1] = 0;
  return result;
}

void sub_245EBBC08(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3AA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBBC88(PB::Base *a1)
{
  sub_245EBBC08(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBBCC0(void *result, uint64_t a2)
{
  *result = &unk_2858D3AA8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBBD6C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBBDE8(int a1, PB::Reader *this)
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

void *sub_245EBC020(void *result)
{
  *result = &unk_2858D3AE0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_245EBC044(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void sub_245EBC060(void **a1)
{
  *a1 = &unk_2858D3AE0;
  v2 = a1 + 1;
  sub_245DF837C(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_245EBC0BC(void **a1)
{
  *a1 = &unk_2858D3AE0;
  v3 = a1 + 1;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x24C194490]();
}

void *sub_245EBC12C(void *result, uint64_t a2)
{
  result[1] = 0;
  *result = &unk_2858D3AE0;
  result[2] = 0;
  result[3] = 0;
  v2 = *(a2 + 8);
  if (v2 != *(a2 + 16))
  {
    v3 = *v2;
    sub_245EBC1A4();
  }

  return result;
}

uint64_t sub_245EBC2F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "workoutPriors");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBC390(int a1, PB::Reader *this)
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

      if ((v9 >> 3) == 2)
      {
        sub_245EBC564();
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

uint64_t sub_245EBC6CC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

void *sub_245EBC718(void *result)
{
  *result = &unk_2858D3B18;
  result[1] = 0;
  return result;
}

void sub_245EBC738(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D3B18;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EBC7B8(PB::Base *a1)
{
  sub_245EBC738(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EBC7F0(void *result, uint64_t a2)
{
  *result = &unk_2858D3B18;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EBC898(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBC914(int a1, PB::Reader *this)
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

uint64_t sub_245EBCB30(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245EBCB4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, a1, v6);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, *a1, v6);
  }
  v8 = ;
  v19 = 0;
  if (objc_msgSend_fileExistsAtPath_isDirectory_(v7, v9, v8, &v19))
  {
    if ((v19 & 1) == 0)
    {
LABEL_15:
      v14 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    v11 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v7, v10, v8, 1, 0, &v18);
    v12 = v18;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      if (qword_27EE37610 != -1)
      {
        sub_245F2B088();
      }

      v15 = qword_27EE37608;
      if (os_log_type_enabled(qword_27EE37608, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v13;
        _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_INFO, "Unable to create directory at path: %{public}@, error, %{public}@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  v14 = 1;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_245EBCCEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  v11 = MEMORY[0x277CBEBC0];
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, a1, v9);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, *a1, v9);
  }
  v12 = ;
  v15 = objc_msgSend_fileURLWithPath_(v11, v13, v12, v14);
  v50 = 0;
  v45 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v10, v16, v15, 0, 4, &v50);
  v17 = v50;

  if (v17)
  {
    if (qword_27EE37610 != -1)
    {
      sub_245F2B088();
    }

    v20 = qword_27EE37608;
    if (os_log_type_enabled(qword_27EE37608, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v21 = a1;
      }

      else
      {
        v21 = *a1;
      }

      *buf = 136446466;
      *&buf[4] = v21;
      v54 = 2114;
      v55 = v17;
      _os_log_impl(&dword_245D80000, v20, OS_LOG_TYPE_INFO, "Unable to list files at path: %{public}s, error, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, a2, v19);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, *a2, v19);
    }
    v22 = ;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v23 = v45;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v46, v52, 16);
    if (v28)
    {
      v29 = *v47;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v31 = *(*(&v46 + 1) + 8 * i);
          v32 = objc_msgSend_pathExtension(v31, v25, v26, v27);
          v34 = objc_msgSend_compare_options_(v32, v33, v22, 1) == 0;

          if (v34)
          {
            v35 = v31;
            *buf = objc_msgSend_fileSystemRepresentation(v31, v36, v37, v38);
            v39 = a5[1];
            if (v39 >= a5[2])
            {
              v40 = sub_245EBD238(a5, buf);
            }

            else
            {
              sub_245EBD35C(a5, a5[1], buf);
              v40 = v39 + 24;
            }

            a5[1] = v40;
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v46, v52, 16);
      }

      while (v28);
    }

    v41 = a5[1];
    v42 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v41[-*a5] >> 3));
    if (v41 == *a5)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_245EBD404(*a5, v41, &v51, v43, 1);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_245EBCFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *(v12 - 128) = v10;
  sub_245E4D0B0((v12 - 128));
  _Unwind_Resume(a1);
}

void sub_245EBD080(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, a1, v6);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, *a1, v6);
  }
  v8 = ;
  v15 = 0;
  v10 = objc_msgSend_removeItemAtPath_error_(v7, v9, v8, &v15);
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    if (qword_27EE37610 != -1)
    {
      sub_245F2B088();
    }

    v12 = qword_27EE37608;
    if (os_log_type_enabled(qword_27EE37608, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *buf = 136446466;
      v17 = v13;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_INFO, "Unable to delete file %{public}s, error, %{public}@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_245EBD1F4()
{
  v0 = os_log_create("com.apple.MotionSensorLogging", "MSL");
  v1 = qword_27EE37608;
  qword_27EE37608 = v0;
}

uint64_t sub_245EBD238(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_245DF85A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_245E53738(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  sub_245EBD35C(a1, (24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_245E53790(&v13);
  return v7;
}

void sub_245EBD348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245E53790(va);
  _Unwind_Resume(a1);
}

size_t sub_245EBD35C(uint64_t a1, _BYTE *a2, const char **a3)
{
  v4 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245DF891C();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

void sub_245EBD404(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = sub_245E49F24(v10 + 3, v10);
        v58 = sub_245E49F24(a2 - 3, v10 + 3);
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            goto LABEL_96;
          }

          v122 = v10[2];
          v98 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v98;
          v10[5] = v122;
          if ((sub_245E49F24(a2 - 3, v10 + 3) & 0x80) == 0)
          {
            return;
          }

          v70 = v10[5];
          v71 = *(v10 + 3);
          v72 = *(a2 - 1);
          *(v10 + 3) = *v8;
          v10[5] = v72;
          *v8 = v71;
LABEL_97:
          *(a2 - 1) = v70;
          return;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return;
        }

        v59 = v10[5];
        v60 = *(v10 + 3);
        v61 = *(a2 - 1);
        *(v10 + 3) = *v8;
        v10[5] = v61;
        *v8 = v60;
        *(a2 - 1) = v59;
LABEL_71:
        if ((sub_245E49F24(v10 + 3, v10) & 0x80) != 0)
        {
          v121 = v10[2];
          v97 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v97;
          v10[5] = v121;
        }

        return;
      case 4uLL:

        sub_245EBDEBC(v10, v10 + 3, v10 + 6, a2 - 3);
        return;
      case 5uLL:
        sub_245EBDEBC(v10, v10 + 3, v10 + 6, v10 + 9);
        if ((sub_245E49F24(a2 - 3, v10 + 9) & 0x80) == 0)
        {
          return;
        }

        v62 = v10[11];
        v63 = *(v10 + 9);
        v64 = *(a2 - 1);
        *(v10 + 9) = *v8;
        v10[11] = v64;
        *v8 = v63;
        *(a2 - 1) = v62;
        if ((sub_245E49F24(v10 + 9, v10 + 6) & 0x80) == 0)
        {
          return;
        }

        v65 = v10[8];
        v66 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 9);
        v10[8] = v10[11];
        *(v10 + 9) = v66;
        v10[11] = v65;
        if ((sub_245E49F24(v10 + 6, v10 + 3) & 0x80) == 0)
        {
          return;
        }

        v67 = v10[5];
        v68 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 3);
        v10[5] = v10[8];
        *(v10 + 3) = v68;
        v10[8] = v67;
        goto LABEL_71;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_245EBE07C(v10, a2);
      }

      else
      {

        sub_245EBE18C(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_245EBE9A4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_245E49F24(&v10[3 * v15], v10);
      v18 = sub_245E49F24(a2 - 3, (a1 + 24 * v15));
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          v105 = *(a1 + 16);
          v81 = *a1;
          v29 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v29;
        }

        else
        {
          v104 = *(a1 + 16);
          v80 = *a1;
          v25 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v25;
          v16[2] = v104;
          *v16 = v80;
          if ((sub_245E49F24(a2 - 3, (a1 + 24 * v15)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v105 = v16[2];
          v81 = *v16;
          v26 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v26;
        }

        *v8 = v81;
        *(a2 - 1) = v105;
      }

      else if (v18 < 0)
      {
        v100 = v16[2];
        v76 = *v16;
        v19 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v19;
        *v8 = v76;
        *(a2 - 1) = v100;
        if ((sub_245E49F24((a1 + 24 * v15), a1) & 0x80) != 0)
        {
          v101 = *(a1 + 16);
          v77 = *a1;
          v20 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v20;
          v16[2] = v101;
          *v16 = v77;
        }
      }

LABEL_29:
      v30 = (a1 + 24 * v15 - 24);
      v31 = sub_245E49F24(v30, (a1 + 24));
      v32 = sub_245E49F24(v74, v30);
      if (v31 < 0)
      {
        if (v32 < 0)
        {
          v38 = *(a1 + 40);
          v39 = *(a1 + 24);
          v40 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v40;
          *v74 = v39;
          *(a2 - 4) = v38;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v35 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v35;
          *(a1 + 24 * v15 - 8) = v110;
          *v30 = v86;
          if ((sub_245E49F24(v74, v30) & 0x80) != 0)
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v30;
            v36 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v30 = v36;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v32 < 0)
      {
        v108 = *(a1 + 24 * v15 - 8);
        v84 = *v30;
        v33 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v30 = v33;
        *v74 = v84;
        *(a2 - 4) = v108;
        if ((sub_245E49F24(v30, (a1 + 24)) & 0x80) != 0)
        {
          v85 = *(a1 + 24);
          v109 = *(a1 + 40);
          v34 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v34;
          *(a1 + 24 * v15 - 8) = v109;
          *v30 = v85;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_245E49F24((v41 + 24), (a1 + 48));
      v43 = sub_245E49F24(a2 - 9, (v41 + 24));
      if (v42 < 0)
      {
        if (v43 < 0)
        {
          v48 = *(a1 + 64);
          v49 = *(a1 + 48);
          v50 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v50;
          *v9 = v49;
        }

        else
        {
          v90 = *(a1 + 48);
          v114 = *(a1 + 64);
          v46 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v46;
          *(v41 + 40) = v114;
          *(v41 + 24) = v90;
          if ((sub_245E49F24(a2 - 9, (v41 + 24)) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v47 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v47;
          *v9 = v91;
          v48 = v115;
        }

        *(a2 - 7) = v48;
      }

      else if (v43 < 0)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v44 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v44;
        *v9 = v88;
        *(a2 - 7) = v112;
        if ((sub_245E49F24((v41 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v45 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v45;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

LABEL_48:
      v51 = sub_245E49F24(v16, v30);
      v52 = sub_245E49F24((v41 + 24), v16);
      if ((v51 & 0x80) == 0)
      {
        if (v52 < 0)
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
          if ((sub_245E49F24(v16, v30) & 0x80) != 0)
          {
            v117 = v30[2];
            v93 = *v30;
            *v30 = *v16;
            v30[2] = v16[2];
            v16[2] = v117;
            *v16 = v93;
          }
        }

        goto LABEL_57;
      }

      if (v52 < 0)
      {
        v119 = v30[2];
        v95 = *v30;
        *v30 = *(v41 + 24);
        v30[2] = *(v41 + 40);
LABEL_56:
        *(v41 + 40) = v119;
        *(v41 + 24) = v95;
      }

      else
      {
        v118 = v30[2];
        v94 = *v30;
        *v30 = *v16;
        v30[2] = v16[2];
        v16[2] = v118;
        *v16 = v94;
        if ((sub_245E49F24((v41 + 24), v16) & 0x80) != 0)
        {
          v119 = v16[2];
          v95 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          goto LABEL_56;
        }
      }

LABEL_57:
      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v21 = sub_245E49F24(v10, &v10[3 * v15]);
    v22 = sub_245E49F24(a2 - 3, a1);
    if (v21 < 0)
    {
      if (v22 < 0)
      {
        v107 = v16[2];
        v83 = *v16;
        v37 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v37;
      }

      else
      {
        v106 = v16[2];
        v82 = *v16;
        v27 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v27;
        *(a1 + 16) = v106;
        *a1 = v82;
        if ((sub_245E49F24(a2 - 3, a1) & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v107 = *(a1 + 16);
        v83 = *a1;
        v28 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v28;
      }

      *v8 = v83;
      *(a2 - 1) = v107;
      goto LABEL_58;
    }

    if (v22 < 0)
    {
      v102 = *(a1 + 16);
      v78 = *a1;
      v23 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v23;
      *v8 = v78;
      *(a2 - 1) = v102;
      if ((sub_245E49F24(a1, (a1 + 24 * v15)) & 0x80) != 0)
      {
        v103 = v16[2];
        v79 = *v16;
        v24 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v24;
        *(a1 + 16) = v103;
        *a1 = v79;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && (sub_245E49F24((a1 - 24), a1) & 0x80) == 0)
    {
      v10 = sub_245EBE278(a1, a2);
      goto LABEL_65;
    }

    v54 = sub_245EBE3F0(a1, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_245EBE568(a1, v54);
    v10 = v54 + 3;
    if (sub_245EBE568((v54 + 3), a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_245EBD404(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 3;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v69 = sub_245E49F24(a2 - 3, v10);
  if (v69 < 0)
  {
LABEL_96:
    v123 = v10[2];
    v99 = *v10;
    v73 = *v8;
    v10[2] = *(a2 - 1);
    *v10 = v73;
    *v8 = v99;
    v70 = v123;
    goto LABEL_97;
  }
}

__n128 sub_245EBDEBC(void **a1, void **a2, void **a3, void *a4)
{
  v8 = sub_245E49F24(a2, a1);
  v9 = sub_245E49F24(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((sub_245E49F24(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((sub_245E49F24(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((sub_245E49F24(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((sub_245E49F24(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((sub_245E49F24(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

void sub_245EBE07C(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v16 = v2;
    v17 = v3;
    v6 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        if ((sub_245E49F24(v6, v9) & 0x80) != 0)
        {
          v14 = *v8;
          v15 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v10 = v7;
          do
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 47) < 0)
            {
              operator delete(*(v11 + 24));
            }

            *(v11 + 24) = *v11;
            *(v11 + 40) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            if (!v10)
            {
              v13 = a1;
              goto LABEL_13;
            }

            v10 -= 24;
          }

          while ((sub_245E49F24(&v14, (v10 + a1)) & 0x80) != 0);
          v12 = *(a1 + v10 + 47);
          v13 = a1 + v10 + 24;
          if (v12 < 0)
          {
            operator delete(*v13);
          }

LABEL_13:
          *v13 = v14;
          *(v13 + 16) = v15;
        }

        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }
}

void sub_245EBE18C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v13 = v2;
    v14 = v3;
    v5 = a1;
    v6 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v7 = a1 - 3;
      do
      {
        v8 = v5;
        v5 = v6;
        if ((sub_245E49F24(v6, v8) & 0x80) != 0)
        {
          v11 = *v5;
          v12 = v5[2];
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v9 = v7;
          do
          {
            if (*(v9 + 71) < 0)
            {
              operator delete(v9[6]);
            }

            *(v9 + 3) = *(v9 + 3);
            v9[8] = v9[5];
            *(v9 + 47) = 0;
            *(v9 + 24) = 0;
            v10 = sub_245E49F24(&v11, v9);
            v9 -= 3;
          }

          while (v10 < 0);
          if (*(v9 + 71) < 0)
          {
            operator delete(v9[6]);
          }

          *(v9 + 3) = v11;
          v9[8] = v12;
        }

        v6 = v5 + 3;
        v7 += 3;
      }

      while (v5 + 3 != a2);
    }
  }
}

void **sub_245EBE278(void **a1, unint64_t a2)
{
  v2 = a2;
  v14 = *a1;
  v15 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if ((sub_245E49F24(&v14, (a2 - 24)) & 0x80) != 0)
  {
    v5 = a1;
    do
    {
      v5 += 3;
    }

    while ((sub_245E49F24(&v14, v5) & 0x80) == 0);
  }

  else
  {
    v4 = a1 + 3;
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = sub_245E49F24(&v14, v4);
      v4 = v5 + 3;
    }

    while ((v6 & 0x80) == 0);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((sub_245E49F24(&v14, v2) & 0x80) != 0);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    v17 = v5[2];
    v16 = v7;
    v8 = *v2;
    v5[2] = *(v2 + 16);
    *v5 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v5 += 3;
    }

    while ((sub_245E49F24(&v14, v5) & 0x80) == 0);
    do
    {
      v2 -= 24;
    }

    while ((sub_245E49F24(&v14, v2) & 0x80) != 0);
  }

  v10 = v5 - 3;
  if (v5 - 3 == a1)
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*v10);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v11 = *v10;
    a1[2] = *(v5 - 1);
    *a1 = v11;
    *(v5 - 1) = 0;
    *(v5 - 24) = 0;
  }

  v12 = v14;
  *(v5 - 1) = v15;
  *v10 = v12;
  return v5;
}

void *sub_245EBE3F0(__int128 *a1, void *a2)
{
  v4 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v4 += 24;
  }

  while ((sub_245E49F24((a1 + v4), &v15) & 0x80) != 0);
  v5 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while ((sub_245E49F24(a2, &v15) & 0x80) == 0);
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while ((sub_245E49F24(a2, &v15) & 0x80) == 0);
  }

  v6 = (a1 + v4);
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v17 = *v6;
      v8 = v17;
      v18 = v6[2];
      v9 = v18;
      v10 = v7[2];
      *v6 = *v7;
      v6[2] = v10;
      v7[2] = v9;
      *v7 = v8;
      do
      {
        v6 += 3;
      }

      while ((sub_245E49F24(v6, &v15) & 0x80) != 0);
      do
      {
        v7 -= 3;
      }

      while ((sub_245E49F24(v7, &v15) & 0x80) == 0);
    }

    while (v6 < v7);
  }

  v11 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v11);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v11;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v12;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v13 = v15;
  *(v6 - 1) = v16;
  *v11 = v13;
  return v6 - 3;
}

BOOL sub_245EBE568(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_245E49F24((a1 + 24), a1);
        v15 = sub_245E49F24(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((sub_245E49F24(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        sub_245EBDEBC(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_245EBDEBC(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((sub_245E49F24(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((sub_245E49F24((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((sub_245E49F24((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((sub_245E49F24((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((sub_245E49F24(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = sub_245E49F24((a1 + 24), a1);
  v23 = sub_245E49F24((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((sub_245E49F24((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((sub_245E49F24((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((sub_245E49F24(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = sub_245E49F24(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void *sub_245EBE9A4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_245EBEBD8(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((sub_245E49F24(v13, a1) & 0x80) != 0)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_245EBEBD8(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 3);
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_245EBED68(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 2);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 1) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          sub_245EBEE34(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_245EBEBC0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_245EBEBD8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && (sub_245E49F24((a1 + 24 * v11), (v12 + 24)) & 0x80u) != 0)
      {
        v12 += 24;
        v11 = v13;
      }

      if ((sub_245E49F24(v12, v7) & 0x80) == 0)
      {
        v19 = *v7;
        v20 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v15 = v12;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v16 = *v12;
          v7[1].n128_u64[0] = *(v12 + 16);
          *v7 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 24 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && (sub_245E49F24((a1 + 24 * v17), (v12 + 24)) & 0x80u) != 0)
          {
            v12 += 24;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
          if ((sub_245E49F24(v12, &v19) & 0x80) != 0)
          {
            if (v15[1].n128_i8[7] < 0)
            {
              operator delete(v15->n128_u64[0]);
            }

            break;
          }
        }

        result = v19;
        v15[1].n128_u64[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

__int128 *sub_245EBED68(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = (v7 + 48);
      if ((sub_245E49F24((v7 + 24), (v7 + 48)) & 0x80u) != 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    *(v8 + 23) = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double sub_245EBEE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if ((sub_245E49F24(v8, (a2 - 24)) & 0x80) != 0)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      while (1)
      {
        v11 = v8;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v12 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v12;
        *(v8 + 23) = 0;
        *v8 = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v9 = v11;
        if ((sub_245E49F24(v8, &v13) & 0x80) == 0)
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          break;
        }
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 2) = v14;
    }
  }

  return result;
}

double sub_245EBEF24(unint64_t a1)
{
  v2 = *&qword_27EE37618;
  if (*&qword_27EE37618 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_27EE37618 = v2;
  }

  return v2 * a1;
}

double sub_245EBEFE4()
{
  v0 = mach_absolute_time();

  return sub_245EBEF24(v0);
}

double sub_245EBF00C()
{
  v0 = mach_continuous_time();

  return sub_245EBEF24(v0);
}

uint64_t sub_245EBF034(uint64_t result)
{
  *result = &unk_2858D46E0;
  *(result + 20) = 0;
  return result;
}

void sub_245EBF05C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EBF094(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D46E0;
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

uint64_t sub_245EBF0F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "keyPressedDown");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBF174(uint64_t a1, PB::Reader *this)
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
            goto LABEL_38;
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

        *(a1 + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_245EBF380(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245EBF3EC(uint64_t result)
{
  *result = &unk_2858D4718;
  *(result + 28) = 0;
  return result;
}

void sub_245EBF414(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EBF44C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D4718;
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

uint64_t sub_245EBF4E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "accelFilterX", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
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

  PB::TextFormatter::format(this, "accelFilterY", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "accelFilterZ", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBF5AC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EBF83C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EBF8E4(uint64_t result)
{
  *result = &unk_2858D4750;
  *(result + 20) = 0;
  return result;
}

void sub_245EBF90C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EBF944(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4750;
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

uint64_t sub_245EBF9A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "state");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBFA24(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EBFCF0(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EBFD5C(uint64_t result)
{
  *result = &unk_2858D4788;
  *(result + 20) = 0;
  return result;
}

void sub_245EBFD84(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EBFDBC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4788;
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

uint64_t sub_245EBFE20(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "touchActive");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EBFE9C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_38;
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

        *(a1 + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_245EC00A8(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

double sub_245EC0114(uint64_t a1)
{
  *a1 = &unk_2858D47C0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 184) = 0xFFFFFFFFLL;
  *(a1 + 192) = 0;
  return result;
}

void sub_245EC0158(PB::Base *this)
{
  *this = &unk_2858D47C0;
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

void sub_245EC01DC(PB::Base *a1)
{
  sub_245EC0158(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EC0214(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D47C0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 184) = 0xFFFFFFFFLL;
  *(a1 + 192) = 0;
  v6 = *(a2 + 192);
  if ((v6 & 0x4000) != 0)
  {
    v8 = *(a2 + 188);
    v7 = 0x4000;
    *(a1 + 192) = 0x4000;
    *(a1 + 188) = v8;
    v6 = *(a2 + 192);
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if ((*(a2 + 192) & 0x1000) != 0)
  {
LABEL_5:
    v9 = *(a2 + 176);
    v7 |= 0x1000u;
    *(a1 + 192) = v7;
    *(a1 + 176) = v9;
    v6 = *(a2 + 192);
  }

LABEL_6:
  if ((v6 & 0x40) != 0)
  {
    v10 = *(a2 + 128);
    *(a1 + 192) = v7 | 0x40;
    *(a1 + 128) = v10;
  }

  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF86C8(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  v11 = *(a2 + 192);
  if ((v11 & 2) != 0)
  {
    v14 = *(a2 + 88);
    *(a1 + 192) |= 2u;
    *(a1 + 88) = v14;
    v11 = *(a2 + 192);
    if ((v11 & 0x2000) == 0)
    {
LABEL_12:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 192) & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a2 + 184);
  *(a1 + 192) |= 0x2000u;
  *(a1 + 184) = v15;
  v11 = *(a2 + 192);
  if ((v11 & 4) == 0)
  {
LABEL_13:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = *(a2 + 96);
  *(a1 + 192) |= 4u;
  *(a1 + 96) = v16;
  v11 = *(a2 + 192);
  if ((v11 & 0x10) == 0)
  {
LABEL_14:
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = *(a2 + 112);
  *(a1 + 192) |= 0x10u;
  *(a1 + 112) = v17;
  v11 = *(a2 + 192);
  if ((v11 & 1) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = *(a2 + 80);
  *(a1 + 192) |= 1u;
  *(a1 + 80) = v18;
  v11 = *(a2 + 192);
  if ((v11 & 8) == 0)
  {
LABEL_16:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = *(a2 + 104);
  *(a1 + 192) |= 8u;
  *(a1 + 104) = v19;
  v11 = *(a2 + 192);
  if ((v11 & 0x20) == 0)
  {
LABEL_17:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = *(a2 + 120);
  *(a1 + 192) |= 0x20u;
  *(a1 + 120) = v20;
  v11 = *(a2 + 192);
  if ((v11 & 0x800) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = *(a2 + 168);
  *(a1 + 192) |= 0x800u;
  *(a1 + 168) = v21;
  v11 = *(a2 + 192);
  if ((v11 & 0x80) == 0)
  {
LABEL_19:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = *(a2 + 136);
  *(a1 + 192) |= 0x80u;
  *(a1 + 136) = v22;
  v11 = *(a2 + 192);
  if ((v11 & 0x100) == 0)
  {
LABEL_20:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_34:
    v24 = *(a2 + 152);
    *(a1 + 192) |= 0x200u;
    *(a1 + 152) = v24;
    if ((*(a2 + 192) & 0x400) == 0)
    {
      return a1;
    }

    goto LABEL_22;
  }

LABEL_33:
  v23 = *(a2 + 144);
  *(a1 + 192) |= 0x100u;
  *(a1 + 144) = v23;
  v11 = *(a2 + 192);
  if ((v11 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v11 & 0x400) != 0)
  {
LABEL_22:
    v12 = *(a2 + 160);
    *(a1 + 192) |= 0x400u;
    *(a1 + 160) = v12;
  }

  return a1;
}

uint64_t sub_245EC04AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 192);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 80));
    v5 = *(a1 + 192);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence", *(a1 + 88));
  v5 = *(a1 + 192);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = *(a1 + 184);
  PB::TextFormatter::format(this, "globalReferenceFrame");
  v5 = *(a1 + 192);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "latitude", *(a1 + 96));
  v5 = *(a1 + 192);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "locationTimestamp", *(a1 + 104));
  v5 = *(a1 + 192);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "longitude", *(a1 + 112));
  v5 = *(a1 + 192);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "machContinuousLocationTimestamp", *(a1 + 120));
  v5 = *(a1 + 192);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 128));
  v5 = *(a1 + 192);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "polylinesLocation1Latitude", *(a1 + 136));
  v5 = *(a1 + 192);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "polylinesLocation1Longitude", *(a1 + 144));
  v5 = *(a1 + 192);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "polylinesLocation2Latitude", *(a1 + 152));
  v5 = *(a1 + 192);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_39:
  PB::TextFormatter::format(this, "polylinesLocation2Longitude", *(a1 + 160));
  if ((*(a1 + 192) & 0x800) != 0)
  {
LABEL_14:
    v6 = *(a1 + 168);
    PB::TextFormatter::format(this, "roadID");
  }

LABEL_15:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "rotationFromGlobalToCameraFrame", v9);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "rotationFromGlobalToDeviceFrame", v12);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "rotationalAccuracyInRadians", v15);
  }

  v16 = *(a1 + 192);
  if ((v16 & 0x4000) != 0)
  {
    v17 = *(a1 + 188);
    PB::TextFormatter::format(this, "status");
    v16 = *(a1 + 192);
  }

  if ((v16 & 0x1000) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 176));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EC075C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_228;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 192) |= 0x4000u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_206;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v28) = 0;
            goto LABEL_206;
          }

          v119 = 0;
          v120 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v121 = v23 - v24;
          if (!v17)
          {
            v121 = 0;
          }

          v122 = (v25 + v24);
          v123 = v24 + 1;
          while (2)
          {
            if (v121)
            {
              v124 = *v122;
              *(this + 1) = v123;
              v28 |= (v124 & 0x7F) << v119;
              if (v124 < 0)
              {
                v119 += 7;
                --v121;
                ++v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_206:
          *(a1 + 188) = v28;
          goto LABEL_224;
        case 2u:
          *(a1 + 192) |= 0x1000u;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 176) = *(*this + v80);
          goto LABEL_223;
        case 3u:
          *(a1 + 192) |= 0x40u;
          v53 = *(this + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 128) = *(*this + v53);
          goto LABEL_223;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_230;
            }

            v55 = *(this + 1);
            v56 = *(this + 2);
            while (v55 < v56 && (*(this + 24) & 1) == 0)
            {
              v58 = *(a1 + 40);
              v57 = *(a1 + 48);
              if (v58 >= v57)
              {
                v60 = *(a1 + 32);
                v61 = v58 - v60;
                v62 = (v58 - v60) >> 3;
                v63 = v62 + 1;
                if ((v62 + 1) >> 61)
                {
                  goto LABEL_231;
                }

                v64 = v57 - v60;
                if (v64 >> 2 > v63)
                {
                  v63 = v64 >> 2;
                }

                if (v64 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v63;
                }

                if (v65)
                {
                  sub_245DF8830(a1 + 32, v65);
                }

                v66 = (v58 - v60) >> 3;
                v67 = (8 * v62);
                v68 = (8 * v62 - 8 * v66);
                *v67 = 0;
                v59 = v67 + 1;
                memcpy(v68, v60, v61);
                v69 = *(a1 + 32);
                *(a1 + 32) = v68;
                *(a1 + 40) = v59;
                *(a1 + 48) = 0;
                if (v69)
                {
                  operator delete(v69);
                }
              }

              else
              {
                *v58 = 0;
                v59 = v58 + 8;
              }

              *(a1 + 40) = v59;
              v70 = *(this + 1);
              if (v70 > 0xFFFFFFFFFFFFFFF7 || v70 + 8 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v59 - 1) = *(*this + v70);
              v56 = *(this + 2);
              v55 = *(this + 1) + 8;
              *(this + 1) = v55;
            }

            goto LABEL_173;
          }

          v126 = *(a1 + 40);
          v125 = *(a1 + 48);
          if (v126 >= v125)
          {
            v141 = *(a1 + 32);
            v142 = v126 - v141;
            v143 = (v126 - v141) >> 3;
            v144 = v143 + 1;
            if ((v143 + 1) >> 61)
            {
              goto LABEL_231;
            }

            v145 = v125 - v141;
            if (v145 >> 2 > v144)
            {
              v144 = v145 >> 2;
            }

            if (v145 >= 0x7FFFFFFFFFFFFFF8)
            {
              v146 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v146 = v144;
            }

            if (v146)
            {
              sub_245DF8830(a1 + 32, v146);
            }

            v157 = (v126 - v141) >> 3;
            v158 = (8 * v143);
            v159 = (8 * v143 - 8 * v157);
            *v158 = 0;
            v112 = v158 + 1;
            memcpy(v159, v141, v142);
            v160 = *(a1 + 32);
            *(a1 + 32) = v159;
            *(a1 + 40) = v112;
            *(a1 + 48) = 0;
            if (v160)
            {
              operator delete(v160);
            }
          }

          else
          {
            *v126 = 0;
            v112 = v126 + 8;
          }

          *(a1 + 40) = v112;
          goto LABEL_219;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_230;
            }

            v35 = *(this + 1);
            v36 = *(this + 2);
            while (v35 < v36 && (*(this + 24) & 1) == 0)
            {
              v38 = *(a1 + 16);
              v37 = *(a1 + 24);
              if (v38 >= v37)
              {
                v40 = *(a1 + 8);
                v41 = v38 - v40;
                v42 = (v38 - v40) >> 3;
                v43 = v42 + 1;
                if ((v42 + 1) >> 61)
                {
                  goto LABEL_231;
                }

                v44 = v37 - v40;
                if (v44 >> 2 > v43)
                {
                  v43 = v44 >> 2;
                }

                if (v44 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v45 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v45 = v43;
                }

                if (v45)
                {
                  sub_245DF8830(a1 + 8, v45);
                }

                v46 = (v38 - v40) >> 3;
                v47 = (8 * v42);
                v48 = (8 * v42 - 8 * v46);
                *v47 = 0;
                v39 = v47 + 1;
                memcpy(v48, v40, v41);
                v49 = *(a1 + 8);
                *(a1 + 8) = v48;
                *(a1 + 16) = v39;
                *(a1 + 24) = 0;
                if (v49)
                {
                  operator delete(v49);
                }
              }

              else
              {
                *v38 = 0;
                v39 = v38 + 8;
              }

              *(a1 + 16) = v39;
              v50 = *(this + 1);
              if (v50 > 0xFFFFFFFFFFFFFFF7 || v50 + 8 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v39 - 1) = *(*this + v50);
              v36 = *(this + 2);
              v35 = *(this + 1) + 8;
              *(this + 1) = v35;
            }

            goto LABEL_173;
          }

          v111 = *(a1 + 16);
          v110 = *(a1 + 24);
          if (v111 >= v110)
          {
            v135 = *(a1 + 8);
            v136 = v111 - v135;
            v137 = (v111 - v135) >> 3;
            v138 = v137 + 1;
            if ((v137 + 1) >> 61)
            {
              goto LABEL_231;
            }

            v139 = v110 - v135;
            if (v139 >> 2 > v138)
            {
              v138 = v139 >> 2;
            }

            if (v139 >= 0x7FFFFFFFFFFFFFF8)
            {
              v140 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v140 = v138;
            }

            if (v140)
            {
              sub_245DF8830(a1 + 8, v140);
            }

            v153 = (v111 - v135) >> 3;
            v154 = (8 * v137);
            v155 = (8 * v137 - 8 * v153);
            *v154 = 0;
            v112 = v154 + 1;
            memcpy(v155, v135, v136);
            v156 = *(a1 + 8);
            *(a1 + 8) = v155;
            *(a1 + 16) = v112;
            *(a1 + 24) = 0;
            if (v156)
            {
              operator delete(v156);
            }
          }

          else
          {
            *v111 = 0;
            v112 = v111 + 8;
          }

          *(a1 + 16) = v112;
          goto LABEL_219;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_230:
              v166 = 0;
              return v166 & 1;
            }

            v82 = *(this + 1);
            v83 = *(this + 2);
            while (v82 < v83 && (*(this + 24) & 1) == 0)
            {
              v85 = *(a1 + 64);
              v84 = *(a1 + 72);
              if (v85 >= v84)
              {
                v87 = *(a1 + 56);
                v88 = v85 - v87;
                v89 = (v85 - v87) >> 3;
                v90 = v89 + 1;
                if ((v89 + 1) >> 61)
                {
                  goto LABEL_231;
                }

                v91 = v84 - v87;
                if (v91 >> 2 > v90)
                {
                  v90 = v91 >> 2;
                }

                if (v91 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v92 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v92 = v90;
                }

                if (v92)
                {
                  sub_245DF8830(a1 + 56, v92);
                }

                v93 = (v85 - v87) >> 3;
                v94 = (8 * v89);
                v95 = (8 * v89 - 8 * v93);
                *v94 = 0;
                v86 = v94 + 1;
                memcpy(v95, v87, v88);
                v96 = *(a1 + 56);
                *(a1 + 56) = v95;
                *(a1 + 64) = v86;
                *(a1 + 72) = 0;
                if (v96)
                {
                  operator delete(v96);
                }
              }

              else
              {
                *v85 = 0;
                v86 = v85 + 8;
              }

              *(a1 + 64) = v86;
              v97 = *(this + 1);
              if (v97 > 0xFFFFFFFFFFFFFFF7 || v97 + 8 > *(this + 2))
              {
LABEL_172:
                *(this + 24) = 1;
                break;
              }

              *(v86 - 1) = *(*this + v97);
              v83 = *(this + 2);
              v82 = *(this + 1) + 8;
              *(this + 1) = v82;
            }

LABEL_173:
            PB::Reader::recallMark();
          }

          else
          {
            v134 = *(a1 + 64);
            v133 = *(a1 + 72);
            if (v134 >= v133)
            {
              v147 = *(a1 + 56);
              v148 = v134 - v147;
              v149 = (v134 - v147) >> 3;
              v150 = v149 + 1;
              if ((v149 + 1) >> 61)
              {
LABEL_231:
                sub_245DF85A4();
              }

              v151 = v133 - v147;
              if (v151 >> 2 > v150)
              {
                v150 = v151 >> 2;
              }

              if (v151 >= 0x7FFFFFFFFFFFFFF8)
              {
                v152 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v152 = v150;
              }

              if (v152)
              {
                sub_245DF8830(a1 + 56, v152);
              }

              v161 = (v134 - v147) >> 3;
              v162 = (8 * v149);
              v163 = (8 * v149 - 8 * v161);
              *v162 = 0;
              v112 = v162 + 1;
              memcpy(v163, v147, v148);
              v164 = *(a1 + 56);
              *(a1 + 56) = v163;
              *(a1 + 64) = v112;
              *(a1 + 72) = 0;
              if (v164)
              {
                operator delete(v164);
              }
            }

            else
            {
              *v134 = 0;
              v112 = v134 + 8;
            }

            *(a1 + 64) = v112;
LABEL_219:
            v165 = *(this + 1);
            if (v165 <= 0xFFFFFFFFFFFFFFF7 && v165 + 8 <= *(this + 2))
            {
              *(v112 - 1) = *(*this + v165);
LABEL_223:
              *(this + 1) += 8;
            }

            else
            {
LABEL_221:
              *(this + 24) = 1;
            }
          }

LABEL_224:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_228;
          }

          break;
        case 7u:
          *(a1 + 192) |= 2u;
          v107 = *(this + 1);
          if (v107 > 0xFFFFFFFFFFFFFFF7 || v107 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 88) = *(*this + v107);
          goto LABEL_223;
        case 8u:
          *(a1 + 192) |= 0x2000u;
          v72 = *(this + 1);
          v71 = *(this + 2);
          v73 = *this;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(this + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_203;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_151:
            LODWORD(v76) = 0;
            goto LABEL_203;
          }

          v113 = 0;
          v114 = 0;
          v76 = 0;
          v17 = v71 >= v72;
          v115 = v71 - v72;
          if (!v17)
          {
            v115 = 0;
          }

          v116 = (v73 + v72);
          v117 = v72 + 1;
          while (2)
          {
            if (v115)
            {
              v118 = *v116;
              *(this + 1) = v117;
              v76 |= (v118 & 0x7F) << v113;
              if (v118 < 0)
              {
                v113 += 7;
                --v115;
                ++v116;
                ++v117;
                v14 = v114++ > 8;
                if (v14)
                {
                  goto LABEL_151;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v76) = 0;
              }
            }

            else
            {
              LODWORD(v76) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_203:
          *(a1 + 184) = v76;
          goto LABEL_224;
        case 9u:
          *(a1 + 192) |= 4u;
          v109 = *(this + 1);
          if (v109 > 0xFFFFFFFFFFFFFFF7 || v109 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 96) = *(*this + v109);
          goto LABEL_223;
        case 0xAu:
          *(a1 + 192) |= 0x10u;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 112) = *(*this + v52);
          goto LABEL_223;
        case 0xBu:
          *(a1 + 192) |= 1u;
          v108 = *(this + 1);
          if (v108 > 0xFFFFFFFFFFFFFFF7 || v108 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 80) = *(*this + v108);
          goto LABEL_223;
        case 0xCu:
          *(a1 + 192) |= 8u;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 104) = *(*this + v34);
          goto LABEL_223;
        case 0xDu:
          *(a1 + 192) |= 0x20u;
          v51 = *(this + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 120) = *(*this + v51);
          goto LABEL_223;
        case 0xEu:
          *(a1 + 192) |= 0x800u;
          v99 = *(this + 1);
          v98 = *(this + 2);
          v100 = *this;
          if (v99 <= 0xFFFFFFFFFFFFFFF5 && v99 + 10 <= v98)
          {
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v104 = (v100 + v99);
            v105 = v99 + 1;
            do
            {
              *(this + 1) = v105;
              v106 = *v104++;
              v103 |= (v106 & 0x7F) << v101;
              if ((v106 & 0x80) == 0)
              {
                goto LABEL_209;
              }

              v101 += 7;
              ++v105;
              v14 = v102++ > 8;
            }

            while (!v14);
LABEL_169:
            v103 = 0;
            goto LABEL_209;
          }

          v127 = 0;
          v128 = 0;
          v103 = 0;
          v17 = v98 >= v99;
          v129 = v98 - v99;
          if (!v17)
          {
            v129 = 0;
          }

          v130 = (v100 + v99);
          v131 = v99 + 1;
          while (2)
          {
            if (v129)
            {
              v132 = *v130;
              *(this + 1) = v131;
              v103 |= (v132 & 0x7F) << v127;
              if (v132 < 0)
              {
                v127 += 7;
                --v129;
                ++v130;
                ++v131;
                v14 = v128++ > 8;
                if (v14)
                {
                  goto LABEL_169;
                }

                continue;
              }

              if (*(this + 24))
              {
                v103 = 0;
              }
            }

            else
            {
              v103 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_209:
          *(a1 + 168) = v103;
          goto LABEL_224;
        case 0xFu:
          *(a1 + 192) |= 0x80u;
          v33 = *(this + 1);
          if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 136) = *(*this + v33);
          goto LABEL_223;
        case 0x10u:
          *(a1 + 192) |= 0x100u;
          v54 = *(this + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 144) = *(*this + v54);
          goto LABEL_223;
        case 0x11u:
          *(a1 + 192) |= 0x200u;
          v32 = *(this + 1);
          if (v32 > 0xFFFFFFFFFFFFFFF7 || v32 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 152) = *(*this + v32);
          goto LABEL_223;
        case 0x12u:
          *(a1 + 192) |= 0x400u;
          v81 = *(this + 1);
          if (v81 > 0xFFFFFFFFFFFFFFF7 || v81 + 8 > *(this + 2))
          {
            goto LABEL_221;
          }

          *(a1 + 160) = *(*this + v81);
          goto LABEL_223;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_230;
          }

          goto LABEL_224;
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

LABEL_228:
  v166 = v4 ^ 1;
  return v166 & 1;
}

uint64_t sub_245EC1414(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 192);
  if ((v4 & 0x4000) == 0)
  {
    if ((*(result + 192) & 0x1000) == 0)
    {
      goto LABEL_3;
    }

LABEL_28:
    result = PB::Writer::write(this, *(v3 + 176));
    if ((*(v3 + 192) & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(result + 188);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  if ((v4 & 0x40) != 0)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 128));
  }

LABEL_5:
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

  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 192);
  if ((v14 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 88));
    v14 = *(v3 + 192);
    if ((v14 & 0x2000) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((*(v3 + 192) & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(v3 + 184);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 192);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 96));
  v14 = *(v3 + 192);
  if ((v14 & 0x10) == 0)
  {
LABEL_18:
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 112));
  v14 = *(v3 + 192);
  if ((v14 & 1) == 0)
  {
LABEL_19:
    if ((v14 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 80));
  v14 = *(v3 + 192);
  if ((v14 & 8) == 0)
  {
LABEL_20:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 104));
  v14 = *(v3 + 192);
  if ((v14 & 0x20) == 0)
  {
LABEL_21:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 120));
  v14 = *(v3 + 192);
  if ((v14 & 0x800) == 0)
  {
LABEL_22:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 192);
  if ((v14 & 0x80) == 0)
  {
LABEL_23:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 136));
  v14 = *(v3 + 192);
  if ((v14 & 0x100) == 0)
  {
LABEL_24:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_25;
    }

LABEL_40:
    result = PB::Writer::write(this, *(v3 + 152));
    if ((*(v3 + 192) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 144));
  v14 = *(v3 + 192);
  if ((v14 & 0x200) != 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  if ((v14 & 0x400) == 0)
  {
    return result;
  }

LABEL_41:
  v18 = *(v3 + 160);

  return PB::Writer::write(this, v18);
}

uint64_t sub_245EC165C(uint64_t result)
{
  *result = &unk_2858D47F8;
  *(result + 40) = 0;
  return result;
}

void sub_245EC1684(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EC16BC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D47F8;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 40) = v3;
    *(a1 + 16) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 40) = v3;
    *(a1 + 20) = v6;
    v2 = *(a2 + 40);
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
  *(a1 + 40) = v3;
  *(a1 + 24) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 40) = v3;
  *(a1 + 28) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 40) = v3;
  *(a1 + 32) = v9;
  if ((*(a2 + 40) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 36);
  *(a1 + 40) = v3 | 0x40;
  *(a1 + 36) = v4;
  return *&v4;
}