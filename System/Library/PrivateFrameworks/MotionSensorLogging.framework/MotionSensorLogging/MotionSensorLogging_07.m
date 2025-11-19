void *CMMsl::BraveHeartAccel::BraveHeartAccel(void *this, const CMMsl::BraveHeartAccel *a2)
{
  this[1] = 0;
  *this = &unk_286C1EF28;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::BraveHeartAccel::operator=(uint64_t a1, const CMMsl::BraveHeartAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartAccel::BraveHeartAccel(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C1EF28;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartAccel *a2, CMMsl::BraveHeartAccel *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::BraveHeartAccel::BraveHeartAccel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EF28;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C1EF28;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C1EF28;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C1EF28;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartAccel::formatText(CMMsl::BraveHeartAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "accel");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BraveHeartAccel::readFrom(CMMsl::BraveHeartAccel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL CMMsl::BraveHeartAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::Accel::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_25AB27374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::Accel::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::BraveHeartAccel::hash_value(CMMsl::BraveHeartAccel *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::Accel::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void *CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(void *this)
{
  *this = &unk_286C1EF60;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C1EF60;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartDeviceMotion::~BraveHeartDeviceMotion(CMMsl::BraveHeartDeviceMotion *this)
{
  *this = &unk_286C1EF60;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EF60;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EF60;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(void *this, const CMMsl::BraveHeartDeviceMotion *a2)
{
  this[1] = 0;
  *this = &unk_286C1EF60;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::BraveHeartDeviceMotion::operator=(uint64_t a1, const CMMsl::BraveHeartDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C1EF60;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartDeviceMotion *a2, CMMsl::BraveHeartDeviceMotion *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EF60;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C1EF60;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C1EF60;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C1EF60;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::formatText(CMMsl::BraveHeartDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "deviceMotion");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BraveHeartDeviceMotion::readFrom(CMMsl::BraveHeartDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL CMMsl::BraveHeartDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::DeviceMotion::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_25AB27E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::DeviceMotion::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::BraveHeartDeviceMotion::hash_value(CMMsl::BraveHeartDeviceMotion *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::DeviceMotion::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t this)
{
  *this = &unk_286C1EF98;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C1EF98;
  *(this + 44) = 0;
  return this;
}

void CMMsl::BraveHeartNatalieData::~BraveHeartNatalieData(CMMsl::BraveHeartNatalieData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t this, const CMMsl::BraveHeartNatalieData *a2)
{
  *this = &unk_286C1EF98;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 10);
      *(this + 44) = v3 | 0x10;
      *(this + 40) = v8;
      return this;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::BraveHeartNatalieData::operator=(uint64_t a1, const CMMsl::BraveHeartNatalieData *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 40);
    *(a1 + 40) = v9;
    v9 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BraveHeartNatalieData *a2, CMMsl::BraveHeartNatalieData *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  return result;
}

double CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EF98;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

{
  *a1 = &unk_286C1EF98;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t CMMsl::BraveHeartNatalieData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1EF98;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 44) = 0;
    v10 = *(a1 + 24);
    v6 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 40);
    *(a1 + 40) = v5;
    v11 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartNatalieData::formatText(CMMsl::BraveHeartNatalieData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "basalNatalies", *(this + 1));
    v5 = *(this + 44);
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

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "mets", *(this + 2));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "natalies", *(this + 3));
  v5 = *(this + 44);
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
  v6 = *(this + 10);
  PB::TextFormatter::format(a2, "session");
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "startDate", *(this + 4));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BraveHeartNatalieData::readFrom(CMMsl::BraveHeartNatalieData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 44) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_44:
          *(a2 + 24) = 1;
          goto LABEL_60;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_54;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_44;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_54;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_54;
        case 4:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_54:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_60;
        case 5:
          *(this + 44) |= 0x10u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = (v24 + v23);
            v34 = v2 - v23;
            v35 = v23 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_59;
              }

              v36 = v35;
              v37 = *v33;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v33;
              --v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_58;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_58:
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
              *(a2 + 1) = v29;
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

LABEL_59:
          *(this + 10) = v27;
          goto LABEL_60;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_60:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::BraveHeartNatalieData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 44);
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

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::BraveHeartNatalieData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 0x10) == 0;
  if ((*(a1 + 44) & 0x10) != 0)
  {
    return (*(a2 + 44) & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v2;
}

uint64_t CMMsl::BraveHeartNatalieData::hash_value(CMMsl::BraveHeartNatalieData *this)
{
  if ((*(this + 44) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v2 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v3 = 0.0;
    if (*(this + 44))
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if (*(this + 44))
  {
LABEL_9:
    v4 = *(this + 1);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v5 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5;
  }

LABEL_18:
  v4 = 0.0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v5 = *(this + 10);
  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5;
}

void *CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(void *this)
{
  *this = &unk_286C1EFD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C1EFD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartVO2MaxInput::~BraveHeartVO2MaxInput(CMMsl::BraveHeartVO2MaxInput *this)
{
  *this = &unk_286C1EFD0;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EFD0;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EFD0;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(void *this, const CMMsl::BraveHeartVO2MaxInput *a2)
{
  this[1] = 0;
  *this = &unk_286C1EFD0;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::operator=(uint64_t a1, const CMMsl::BraveHeartVO2MaxInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C1EFD0;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartVO2MaxInput *a2, CMMsl::BraveHeartVO2MaxInput *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EFD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C1EFD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C1EFD0;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C1EFD0;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::formatText(CMMsl::BraveHeartVO2MaxInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "vo2MaxInput");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BraveHeartVO2MaxInput::readFrom(CMMsl::BraveHeartVO2MaxInput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL CMMsl::BraveHeartVO2MaxInput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::VO2MaxInput::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_25AB29308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::VO2MaxInput::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::hash_value(CMMsl::BraveHeartVO2MaxInput *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::VO2MaxInput::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(uint64_t this)
{
  *this = &unk_286C1F008;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C1F008;
  *(this + 24) = 0;
  return this;
}

void CMMsl::BraveHeartWorkoutEvent::~BraveHeartWorkoutEvent(CMMsl::BraveHeartWorkoutEvent *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(CMMsl::BraveHeartWorkoutEvent *this, const CMMsl::BraveHeartWorkoutEvent *a2)
{
  *this = &unk_286C1F008;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 4;
    *(this + 24) = 4;
    *(this + 5) = v4;
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
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 4) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 24) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::operator=(uint64_t a1, const CMMsl::BraveHeartWorkoutEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BraveHeartWorkoutEvent *a2, CMMsl::BraveHeartWorkoutEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F008;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C1F008;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C1F008;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v10 = *(a1 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a1 + 24) = v3;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    v9[1] = v7;
    v9[2] = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::formatText(CMMsl::BraveHeartWorkoutEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "eventTime", *(this + 1));
    v5 = *(this + 24);
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

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "eventType");
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 5);
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BraveHeartWorkoutEvent::readFrom(CMMsl::BraveHeartWorkoutEvent *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
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
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_71;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v41 = (v32 + v31);
          v42 = v2 - v31;
          v43 = v31 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_65;
            }

            v44 = v43;
            v45 = *v41;
            *(a2 + 1) = v44;
            v35 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            ++v41;
            --v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_64:
          v2 = v44;
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
            *(a2 + 1) = v37;
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

LABEL_65:
        *(this + 4) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v24 + v23);
          v49 = v2 - v23;
          v50 = v23 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_69;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v27 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v48;
            --v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_68;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_68:
          v2 = v51;
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
            *(a2 + 1) = v29;
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

LABEL_69:
        *(this + 5) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_71;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_71:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v3 + 8);

  return PB::Writer::write(a2, v7);
}

BOOL CMMsl::BraveHeartWorkoutEvent::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::hash_value(CMMsl::BraveHeartWorkoutEvent *this)
{
  if ((*(this + 24) & 4) != 0)
  {
    v1 = *(this + 5);
    if ((*(this + 24) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      if (*(this + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v3 = 0.0;
      return v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return v2 ^ v1 ^ *&v3;
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t this)
{
  *this = &unk_286C1F040;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1F040;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BumpToWakeState::~BumpToWakeState(CMMsl::BumpToWakeState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t this, const CMMsl::BumpToWakeState *a2)
{
  *this = &unk_286C1F040;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::BumpToWakeState::operator=(uint64_t a1, const CMMsl::BumpToWakeState *a2)
{
  if (a1 != a2)
  {
    CMMsl::BumpToWakeState::BumpToWakeState(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BumpToWakeState *a2, CMMsl::BumpToWakeState *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1F040;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C1F040;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BumpToWakeState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = &unk_286C1F040;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::BumpToWakeState::formatText(CMMsl::BumpToWakeState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "state");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BumpToWakeState::readFrom(CMMsl::BumpToWakeState *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_63:
          v3 = v50;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 4) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_59:
          v3 = v43;
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
            v3 = v28;
            *(a2 + 1) = v28;
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
              v26 = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t CMMsl::BumpToWakeState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::BumpToWakeState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BumpToWakeState::hash_value(CMMsl::BumpToWakeState *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ v1;
}

uint64_t CMMsl::CMPedEntry::CMPedEntry(uint64_t this)
{
  *this = &unk_286C1F078;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1F078;
  *(this + 28) = 0;
  return this;
}

void CMMsl::CMPedEntry::~CMPedEntry(CMMsl::CMPedEntry *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CMPedEntry::CMPedEntry(CMMsl::CMPedEntry *this, const CMMsl::CMPedEntry *a2)
{
  *this = &unk_286C1F078;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
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
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::CMPedEntry::operator=(uint64_t a1, const CMMsl::CMPedEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedEntry::CMPedEntry(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CMPedEntry *a2, CMMsl::CMPedEntry *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::CMPedEntry::CMPedEntry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F078;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C1F078;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::CMPedEntry::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = &unk_286C1F078;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::CMPedEntry::formatText(CMMsl::CMPedEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "distance", *(this + 4));
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "speed", *(this + 5));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "speedUncertainty", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CMPedEntry::readFrom(CMMsl::CMPedEntry *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_40;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
LABEL_39:
        *(a2 + 1) = v2;
        goto LABEL_40;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_40:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::CMPedEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::CMPedEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::CMPedEntry::hash_value(CMMsl::CMPedEntry *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

uint64_t CMMsl::CMPedometerStep::CMPedometerStep(uint64_t this)
{
  *this = &unk_286C1F0B0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1F0B0;
  *(this + 64) = 0;
  return this;
}

void CMMsl::CMPedometerStep::~CMPedometerStep(CMMsl::CMPedometerStep *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CMPedometerStep::CMPedometerStep(uint64_t this, const CMMsl::CMPedometerStep *a2)
{
  *this = &unk_286C1F0B0;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 64) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 13);
    v3 |= 0x40u;
    *(this + 64) = v3;
    *(this + 52) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 60);
    *(this + 64) = v3 | 0x100;
    *(this + 60) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  if ((*(a2 + 32) & 0x100) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::CMPedometerStep::operator=(uint64_t a1, const CMMsl::CMPedometerStep *a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedometerStep::CMPedometerStep(v10, a2);
    v3 = v11;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v11 = v5;
    v12 = v4;
    *&v5 = v14;
    v6 = *(a1 + 40);
    *&v4 = *(a1 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v5;
    v7 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v13 = v6;
    v14 = v4;
    LOBYTE(v8) = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CMPedometerStep *a2, CMMsl::CMPedometerStep *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  LOBYTE(v11) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v11;
  return result;
}

double CMMsl::CMPedometerStep::CMPedometerStep(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F0B0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  return result;
}

uint64_t CMMsl::CMPedometerStep::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedometerStep::CMPedometerStep(v10, a2);
    v3 = v11;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v11 = v5;
    v12 = v4;
    *&v5 = v14;
    v6 = *(a1 + 40);
    *&v4 = *(a1 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v5;
    v7 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v13 = v6;
    v14 = v4;
    LOBYTE(v8) = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::CMPedometerStep::formatText(CMMsl::CMPedometerStep *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "configMask");
    v5 = *(this + 32);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 13);
  PB::TextFormatter::format(a2, "count");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "currentPace", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "distance", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "endTime", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(this + 60);
  PB::TextFormatter::format(a2, "isStepPace");
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v9 = *(this + 14);
  PB::TextFormatter::format(a2, "pedometerArmConstrainedState");
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "startTime", *(this + 5));
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CMPedometerStep::readFrom(CMMsl::CMPedometerStep *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 32) |= 0x40u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v51 = (v26 + v25);
            v52 = v2 - v25;
            v53 = v25 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v54 = v53;
              v55 = *v51;
              *(a2 + 1) = v54;
              v29 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v51;
              --v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_103;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_103:
            v2 = v54;
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
              *(a2 + 1) = v31;
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

LABEL_104:
          *(this + 13) = v29;
          goto LABEL_113;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
            goto LABEL_113;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_97;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_97;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_97;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_62;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_97;
      }

      if (v22 == 6)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_62;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_97:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_113;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 32) |= 0x80u;
          v33 = *(a2 + 1);
          v2 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(a2 + 1);
            }

            v58 = (v34 + v33);
            v59 = v2 - v33;
            v60 = v33 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v61 = v60;
              v62 = *v58;
              *(a2 + 1) = v61;
              v37 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              ++v58;
              --v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v37) = 0;
                goto LABEL_107;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_107:
            v2 = v61;
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
              *(a2 + 1) = v39;
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

LABEL_108:
          *(this + 14) = v37;
          goto LABEL_113;
        case 8:
          *(this + 32) |= 0x20u;
          v41 = *(a2 + 1);
          v2 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v42 + v41);
            v66 = v2 - v41;
            v67 = v41 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v45) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v45 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v45) = 0;
                goto LABEL_111;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_111:
            v2 = v68;
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
              *(a2 + 1) = v47;
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

LABEL_112:
          *(this + 12) = v45;
          goto LABEL_113;
        case 9:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 60) = v24;
          goto LABEL_113;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v70 = 0;
      return v70 & 1;
    }

    v2 = *(a2 + 1);
LABEL_113:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::CMPedometerStep::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v7 = *(v3 + 48);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 64) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  v6 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v3 + 60);

  return PB::Writer::write(a2);
}

BOOL CMMsl::CMPedometerStep::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x100) == 0;
  if ((*(a1 + 64) & 0x100) != 0)
  {
    return (*(a2 + 64) & 0x100) != 0 && *(a1 + 60) == *(a2 + 60);
  }

  return v4;
}

uint64_t CMMsl::CMPedometerStep::hash_value(CMMsl::CMPedometerStep *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = *(this + 4);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_6:
    v4 = *(this + 13);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    v5 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v6 = 0.0;
    if (v1)
    {
      goto LABEL_13;
    }

LABEL_26:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_23:
  v4 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v7 = *(this + 1);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_16:
    v8 = *(this + 14);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v9 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v10 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_27:
  v8 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v9 = *(this + 12);
  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v10 = *(this + 60);
  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
}

double CMMsl::CV3DPredictedPose::CV3DPredictedPose(CMMsl::CV3DPredictedPose *this)
{
  *this = &unk_286C1F0E8;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C1F0E8;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::CV3DPredictedPose::~CV3DPredictedPose(CMMsl::CV3DPredictedPose *this)
{
  *this = &unk_286C1F0E8;
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

{
  CMMsl::CV3DPredictedPose::~CV3DPredictedPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::CV3DPredictedPose *CMMsl::CV3DPredictedPose::CV3DPredictedPose(CMMsl::CV3DPredictedPose *this, const CMMsl::CV3DPredictedPose *a2)
{
  *this = &unk_286C1F0E8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 72) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 72) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 7);
    *(this + 72) |= 1u;
    *(this + 7) = v6;
  }

  return this;
}

uint64_t CMMsl::CV3DPredictedPose::operator=(uint64_t a1, const CMMsl::CV3DPredictedPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DPredictedPose::CV3DPredictedPose(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::CV3DPredictedPose::~CV3DPredictedPose(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CV3DPredictedPose *a2, CMMsl::CV3DPredictedPose *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::CV3DPredictedPose::CV3DPredictedPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F0E8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::CV3DPredictedPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DPredictedPose::CV3DPredictedPose(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::CV3DPredictedPose::~CV3DPredictedPose(&v9);
  }

  return a1;
}

uint64_t CMMsl::CV3DPredictedPose::formatText(CMMsl::CV3DPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "rotationMatrix", v7);
  }

  v8 = *(this + 72);
  if (v8)
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 7));
    v8 = *(this + 72);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "translation", v11);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CV3DPredictedPose::readFrom(CMMsl::CV3DPredictedPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_110:
            v84 = 0;
            return v84 & 1;
          }

          v42 = *(a2 + 1);
          v43 = *(a2 + 2);
          while (v42 < v43 && (*(a2 + 24) & 1) == 0)
          {
            v45 = *(this + 5);
            v44 = *(this + 6);
            if (v45 >= v44)
            {
              v47 = *(this + 4);
              v48 = v45 - v47;
              v49 = (v45 - v47) >> 3;
              v50 = v49 + 1;
              if ((v49 + 1) >> 61)
              {
                goto LABEL_112;
              }

              v51 = v44 - v47;
              if (v51 >> 2 > v50)
              {
                v50 = v51 >> 2;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF8)
              {
                v52 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                sub_25AD28710(v52);
              }

              v53 = (v45 - v47) >> 3;
              v54 = (8 * v49);
              v55 = (8 * v49 - 8 * v53);
              *v54 = 0;
              v46 = v54 + 1;
              memcpy(v55, v47, v48);
              v56 = *(this + 4);
              *(this + 4) = v55;
              *(this + 5) = v46;
              *(this + 6) = 0;
              if (v56)
              {
                operator delete(v56);
              }
            }

            else
            {
              *v45 = 0;
              v46 = v45 + 8;
            }

            *(this + 5) = v46;
            v57 = *(a2 + 1);
            if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
            {
LABEL_75:
              *(a2 + 24) = 1;
              goto LABEL_76;
            }

            *(v46 - 1) = *(*a2 + v57);
            v43 = *(a2 + 2);
            v42 = *(a2 + 1) + 8;
            *(a2 + 1) = v42;
          }

          goto LABEL_76;
        }

        v62 = *(this + 5);
        v61 = *(this + 6);
        if (v62 >= v61)
        {
          v69 = *(this + 4);
          v70 = v62 - v69;
          v71 = (v62 - v69) >> 3;
          v72 = v71 + 1;
          if ((v71 + 1) >> 61)
          {
LABEL_112:
            sub_25AAE66B8();
          }

          v73 = v61 - v69;
          if (v73 >> 2 > v72)
          {
            v72 = v73 >> 2;
          }

          if (v73 >= 0x7FFFFFFFFFFFFFF8)
          {
            v74 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v74 = v72;
          }

          if (v74)
          {
            sub_25AD28710(v74);
          }

          v79 = (v62 - v69) >> 3;
          v80 = (8 * v71);
          v81 = (8 * v71 - 8 * v79);
          *v80 = 0;
          v60 = v80 + 1;
          memcpy(v81, v69, v70);
          v82 = *(this + 4);
          *(this + 4) = v81;
          *(this + 5) = v60;
          *(this + 6) = 0;
          if (v82)
          {
            operator delete(v82);
          }
        }

        else
        {
          *v62 = 0;
          v60 = v62 + 8;
        }

        *(this + 5) = v60;
        goto LABEL_99;
      }

      if (v23 != 4)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_104;
      }

      *(this + 72) |= 1u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
      {
LABEL_101:
        *(a2 + 24) = 1;
        goto LABEL_104;
      }

      *(this + 7) = *(*a2 + v40);
    }

    else
    {
      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_110;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_112;
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
                sub_25AD28710(v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
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

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_75;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_76:
          PB::Reader::recallMark();
          goto LABEL_104;
        }

        v59 = *(this + 2);
        v58 = *(this + 3);
        if (v59 >= v58)
        {
          v63 = *(this + 1);
          v64 = v59 - v63;
          v65 = (v59 - v63) >> 3;
          v66 = v65 + 1;
          if ((v65 + 1) >> 61)
          {
            goto LABEL_112;
          }

          v67 = v58 - v63;
          if (v67 >> 2 > v66)
          {
            v66 = v67 >> 2;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFF8)
          {
            v68 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_25AD28710(v68);
          }

          v75 = (v59 - v63) >> 3;
          v76 = (8 * v65);
          v77 = (8 * v65 - 8 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(this + 1);
          *(this + 1) = v77;
          *(this + 2) = v60;
          *(this + 3) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 8;
        }

        *(this + 2) = v60;
LABEL_99:
        v83 = *(a2 + 1);
        if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(a2 + 2))
        {
          goto LABEL_101;
        }

        *(v60 - 1) = *(*a2 + v83);
        goto LABEL_103;
      }

      *(this + 72) |= 2u;
      v41 = *(a2 + 1);
      if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
      {
        goto LABEL_101;
      }

      *(this + 8) = *(*a2 + v41);
    }

LABEL_103:
    *(a2 + 1) += 8;
LABEL_104:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t CMMsl::CV3DPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 72) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  if (*(v3 + 72))
  {
    v10 = *(v3 + 56);

    return PB::Writer::write(a2, v10);
  }

  return this;
}

BOOL CMMsl::CV3DPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v8 = (*(a2 + 72) & 1) == 0;
  if (*(a1 + 72))
  {
    return (*(a2 + 72) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::CV3DPredictedPose::hash_value(CMMsl::CV3DPredictedPose *this)
{
  if ((*(this + 72) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes();
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = PBHashBytes();
  if (*(this + 72))
  {
    v9 = *(this + 7);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ *&v9;
}

void CMMsl::CV3DSLAMState::~CV3DSLAMState(CMMsl::CV3DSLAMState *this)
{
  *this = &unk_286C1F120;
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

{
  CMMsl::CV3DSLAMState::~CV3DSLAMState(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::CV3DSLAMState *CMMsl::CV3DSLAMState::CV3DSLAMState(CMMsl::CV3DSLAMState *this, const CMMsl::CV3DSLAMState *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = &unk_286C1F120;
  *(this + 22) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if (*(a2 + 88))
  {
    v5 = *(a2 + 10);
    *(this + 88) = 1;
    *(this + 10) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  return this;
}

uint64_t CMMsl::CV3DSLAMState::operator=(uint64_t a1, const CMMsl::CV3DSLAMState *a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DSLAMState::CV3DSLAMState(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v9;
    CMMsl::CV3DSLAMState::~CV3DSLAMState(&v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CV3DSLAMState *a2, CMMsl::CV3DSLAMState *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  return result;
}

uint64_t CMMsl::CV3DSLAMState::CV3DSLAMState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F120;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 80) = *(a2 + 80);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 56));
  return a1;
}

uint64_t CMMsl::CV3DSLAMState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DSLAMState::CV3DSLAMState(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v9;
    CMMsl::CV3DSLAMState::~CV3DSLAMState(&v11);
  }

  return a1;
}

uint64_t CMMsl::CV3DSLAMState::formatText(CMMsl::CV3DSLAMState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "rotationMatrix", v7);
  }

  if (*(this + 88))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "translation", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "velocity", v13);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CV3DSLAMState::readFrom(CMMsl::CV3DSLAMState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_138;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        goto LABEL_138;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_140;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_142;
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
                sub_25AD28710(v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
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

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_94;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_95:
          PB::Reader::recallMark();
          goto LABEL_134;
        }

        v74 = *(this + 2);
        v73 = *(this + 3);
        if (v74 >= v73)
        {
          v80 = *(this + 1);
          v81 = v74 - v80;
          v82 = (v74 - v80) >> 3;
          v83 = v82 + 1;
          if ((v82 + 1) >> 61)
          {
            goto LABEL_142;
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
            sub_25AD28710(v85);
          }

          v98 = (v74 - v80) >> 3;
          v99 = (8 * v82);
          v100 = (8 * v82 - 8 * v98);
          *v99 = 0;
          v75 = v99 + 1;
          memcpy(v100, v80, v81);
          v101 = *(this + 1);
          *(this + 1) = v100;
          *(this + 2) = v75;
          *(this + 3) = 0;
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

        *(this + 2) = v75;
LABEL_129:
        v110 = *(a2 + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(a2 + 2))
        {
          goto LABEL_131;
        }

        *(v75 - 1) = *(*a2 + v110);
        goto LABEL_133;
      }

      *(this + 88) |= 1u;
      v56 = *(a2 + 1);
      if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
      {
LABEL_131:
        *(a2 + 24) = 1;
        goto LABEL_134;
      }

      *(this + 10) = *(*a2 + v56);
LABEL_133:
      *(a2 + 1) += 8;
LABEL_134:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_138;
      }
    }

    if (v23 == 3)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_140:
          v111 = 0;
          return v111 & 1;
        }

        v57 = *(a2 + 1);
        v58 = *(a2 + 2);
        while (v57 < v58 && (*(a2 + 24) & 1) == 0)
        {
          v60 = *(this + 5);
          v59 = *(this + 6);
          if (v60 >= v59)
          {
            v62 = *(this + 4);
            v63 = v60 - v62;
            v64 = (v60 - v62) >> 3;
            v65 = v64 + 1;
            if ((v64 + 1) >> 61)
            {
              goto LABEL_142;
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
              sub_25AD28710(v67);
            }

            v68 = (v60 - v62) >> 3;
            v69 = (8 * v64);
            v70 = (8 * v64 - 8 * v68);
            *v69 = 0;
            v61 = v69 + 1;
            memcpy(v70, v62, v63);
            v71 = *(this + 4);
            *(this + 4) = v70;
            *(this + 5) = v61;
            *(this + 6) = 0;
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

          *(this + 5) = v61;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
          {
LABEL_94:
            *(a2 + 24) = 1;
            goto LABEL_95;
          }

          *(v61 - 1) = *(*a2 + v72);
          v58 = *(a2 + 2);
          v57 = *(a2 + 1) + 8;
          *(a2 + 1) = v57;
        }

        goto LABEL_95;
      }

      v79 = *(this + 5);
      v78 = *(this + 6);
      if (v79 >= v78)
      {
        v92 = *(this + 4);
        v93 = v79 - v92;
        v94 = (v79 - v92) >> 3;
        v95 = v94 + 1;
        if ((v94 + 1) >> 61)
        {
LABEL_142:
          sub_25AAE66B8();
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
          sub_25AD28710(v97);
        }

        v106 = (v79 - v92) >> 3;
        v107 = (8 * v94);
        v108 = (8 * v94 - 8 * v106);
        *v107 = 0;
        v75 = v107 + 1;
        memcpy(v108, v92, v93);
        v109 = *(this + 4);
        *(this + 4) = v108;
        *(this + 5) = v75;
        *(this + 6) = 0;
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

      *(this + 5) = v75;
    }

    else
    {
      if (v23 != 4)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_134;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_140;
        }

        v40 = *(a2 + 1);
        v41 = *(a2 + 2);
        while (v40 < v41 && (*(a2 + 24) & 1) == 0)
        {
          v43 = *(this + 8);
          v42 = *(this + 9);
          if (v43 >= v42)
          {
            v45 = *(this + 7);
            v46 = v43 - v45;
            v47 = (v43 - v45) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_142;
            }

            v49 = v42 - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              sub_25AD28710(v50);
            }

            v51 = (v43 - v45) >> 3;
            v52 = (8 * v47);
            v53 = (8 * v47 - 8 * v51);
            *v52 = 0;
            v44 = v52 + 1;
            memcpy(v53, v45, v46);
            v54 = *(this + 7);
            *(this + 7) = v53;
            *(this + 8) = v44;
            *(this + 9) = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v43 = 0;
            v44 = v43 + 8;
          }

          *(this + 8) = v44;
          v55 = *(a2 + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(v44 - 1) = *(*a2 + v55);
          v41 = *(a2 + 2);
          v40 = *(a2 + 1) + 8;
          *(a2 + 1) = v40;
        }

        goto LABEL_95;
      }

      v77 = *(this + 8);
      v76 = *(this + 9);
      if (v77 >= v76)
      {
        v86 = *(this + 7);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_142;
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
          sub_25AD28710(v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(this + 7);
        *(this + 7) = v104;
        *(this + 8) = v75;
        *(this + 9) = 0;
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

      *(this + 8) = v75;
    }

    goto LABEL_129;
  }

LABEL_138:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t CMMsl::CV3DSLAMState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 88))
  {
    this = PB::Writer::write(a2, *(this + 80));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = v3[4];
  v8 = v3[5];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v11 = v3[7];
  v10 = v3[8];
  while (v11 != v10)
  {
    v12 = *v11++;
    this = PB::Writer::write(a2, v12);
  }

  return this;
}

uint64_t CMMsl::CV3DSLAMState::hash_value(CMMsl::CV3DSLAMState *this)
{
  if (*(this + 88))
  {
    if (*(this + 10) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 10);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes() ^ v2;
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = PBHashBytes();
  v9 = *(this + 7);
  v10 = *(this + 8);
  return v5 ^ v8 ^ PBHashBytes();
}

uint64_t CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t this)
{
  *this = &unk_286C1F158;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C1F158;
  *(this + 68) = 0;
  return this;
}

void CMMsl::CVIMUMeasurement::~CVIMUMeasurement(CMMsl::CVIMUMeasurement *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t this, const CMMsl::CVIMUMeasurement *a2)
{
  *this = &unk_286C1F158;
  *(this + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 68) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 68);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 68) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 68) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 68) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 48) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 68) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 16);
    *(this + 68) = v3 | 0x80;
    *(this + 64) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v10;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::CVIMUMeasurement::operator=(uint64_t a1, const CMMsl::CVIMUMeasurement *a2)
{
  if (a1 != a2)
  {
    CMMsl::CVIMUMeasurement::CVIMUMeasurement(v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v6;
    v12 = v3;
    *&v6 = v14;
    *&v3 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v13;
    *(a1 + 64) = v6;
    v13 = v3;
    v14 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CVIMUMeasurement *a2, CMMsl::CVIMUMeasurement *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  return result;
}

double CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F158;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

{
  *a1 = &unk_286C1F158;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t CMMsl::CVIMUMeasurement::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C1F158;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    *(a2 + 68) = 0;
    v8 = *(a1 + 40);
    v12 = *(a1 + 8);
    v9 = *(a1 + 24);
    *(a1 + 40) = v5;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
    v13 = v9;
    v14 = v8;
    *&v3 = *(a1 + 56);
    *&v4 = *(a1 + 64);
    *(a1 + 56) = v6;
    *(a1 + 64) = v7;
    v15 = v3;
    v16 = v4;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::CVIMUMeasurement::formatText(CMMsl::CVIMUMeasurement *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 68);
  if (v5)
  {
    PB::TextFormatter::format(a2, "accelX", *(this + 1));
    v5 = *(this + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelY", *(this + 2));
  v5 = *(this + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "accelZ", *(this + 3));
  v5 = *(this + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "gyroX", *(this + 4));
  v5 = *(this + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "gyroY", *(this + 5));
  v5 = *(this + 68);
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
  PB::TextFormatter::format(a2, "gyroZ", *(this + 6));
  v5 = *(this + 68);
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
  v6 = *(this + 16);
  PB::TextFormatter::format(a2, "sequenceNumber");
  if ((*(this + 68) & 0x40) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CVIMUMeasurement::readFrom(CMMsl::CVIMUMeasurement *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 68) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_58:
            *(a2 + 24) = 1;
            goto LABEL_74;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 8)
        {
          *(this + 68) |= 0x80u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = (v24 + v23);
            v34 = v2 - v23;
            v35 = v23 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_73;
              }

              v36 = v35;
              v37 = *v33;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v33;
              --v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_72;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_72:
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
              *(a2 + 1) = v29;
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

LABEL_73:
          *(this + 16) = v27;
          goto LABEL_74;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 68) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_58;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 6)
        {
          *(this + 68) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_58;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_68;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 68) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_68;
      }

      if (v22 == 4)
      {
        *(this + 68) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_68;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 68) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 7) = *(*a2 + v2);
        goto LABEL_68;
      }

      if (v22 == 2)
      {
        *(this + 68) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_68:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_74;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_74:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::CVIMUMeasurement::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 68);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 64);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::CVIMUMeasurement::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x80) != 0)
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  else
  {
    return ((v3 | v2) & 0x80u) == 0;
  }
}

uint64_t CMMsl::CVIMUMeasurement::hash_value(CMMsl::CVIMUMeasurement *this)
{
  if ((*(this + 68) & 0x40) == 0)
  {
    v1 = 0.0;
    if ((*(this + 68) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v2 = 0.0;
    if ((*(this + 68) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v3 = 0.0;
    if ((*(this + 68) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_27:
    v4 = 0.0;
    if (*(this + 68))
    {
      goto LABEL_12;
    }

LABEL_28:
    v5 = 0.0;
    if ((*(this + 68) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v6 = 0.0;
    if ((*(this + 68) & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v1 = *(this + 7);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 68) & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 68) & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 68) & 4) != 0)
  {
LABEL_18:
    v7 = *(this + 3);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }

    if ((*(this + 68) & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v8 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8;
  }

LABEL_30:
  v7 = 0.0;
  if ((*(this + 68) & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v8 = *(this + 16);
  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8;
}

uint64_t CMMsl::CVWatchCalories::CVWatchCalories(uint64_t this)
{
  *this = &unk_286C1F190;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1F190;
  *(this + 28) = 0;
  return this;
}

void CMMsl::CVWatchCalories::~CVWatchCalories(CMMsl::CVWatchCalories *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::CVWatchCalories::CVWatchCalories(CMMsl::CVWatchCalories *this, const CMMsl::CVWatchCalories *a2)
{
  *this = &unk_286C1F190;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = LODWORD(result);
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
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 28) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::CVWatchCalories::operator=(uint64_t a1, const CMMsl::CVWatchCalories *a2)
{
  if (a1 != a2)
  {
    CMMsl::CVWatchCalories::CVWatchCalories(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CVWatchCalories *a2, CMMsl::CVWatchCalories *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::CVWatchCalories::CVWatchCalories(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F190;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C1F190;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::CVWatchCalories::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C1F190;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v7;
    v10 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::CVWatchCalories::formatText(CMMsl::CVWatchCalories *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "calories_kCal", *(this + 6));
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CVWatchCalories::readFrom(CMMsl::CVWatchCalories *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 8;
LABEL_34:
        *(a2 + 1) = v2;
        goto LABEL_35;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 6) = *(*a2 + v2);
        v2 = *(a2 + 1) + 4;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_35:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_35;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_39:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::CVWatchCalories::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::CVWatchCalories::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 1) == 0;
  if (*(a1 + 28))
  {
    return (*(a2 + 28) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::CVWatchCalories::hash_value(CMMsl::CVWatchCalories *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v4 = *(this + 6);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if (*(this + 28))
      {
        goto LABEL_6;
      }

LABEL_13:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void *CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(void *this)
{
  *this = &unk_286C1F1C8;
  this[28] = 0;
  return this;
}

{
  *this = &unk_286C1F1C8;
  this[28] = 0;
  return this;
}

void CMMsl::CalorieControllerMETsConsumed::~CalorieControllerMETsConsumed(CMMsl::CalorieControllerMETsConsumed *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(CMMsl::CalorieControllerMETsConsumed *this, const CMMsl::CalorieControllerMETsConsumed *a2)
{
  *this = &unk_286C1F1C8;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) != 0)
  {
    v4 = *(a2 + 13);
    v3 = 4096;
    *(this + 28) = 4096;
    *(this + 13) = v4;
    v2 = *(a2 + 28);
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
    v4 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 28) = v3;
    *(this + 2) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 8);
    v3 |= 0x80uLL;
    *(this + 28) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x40000) == 0)
    {
LABEL_8:
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a2 + 38);
  v3 |= 0x40000uLL;
  *(this + 28) = v3;
  *(this + 38) = v5;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 51);
  v3 |= 0x80000000uLL;
  *(this + 28) = v3;
  *(this + 51) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 54);
  v3 |= 0x400000000uLL;
  *(this + 28) = v3;
  *(this + 54) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 48);
  v3 |= 0x10000000uLL;
  *(this + 28) = v3;
  *(this + 48) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x100000uLL;
  *(this + 28) = v3;
  *(this + 40) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x200000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 41);
  v3 |= 0x200000uLL;
  *(this + 28) = v3;
  *(this + 41) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4 = *(a2 + 11);
  v3 |= 0x400uLL;
  *(this + 28) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6 = *(a2 + 222);
  v3 |= 0x2000000000uLL;
  *(this + 28) = v3;
  *(this + 222) = v6;
  v2 = *(a2 + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 28) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 = *(a2 + 15);
  v3 |= 0x4000uLL;
  *(this + 28) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = *(a2 + 50);
  v3 |= 0x40000000uLL;
  *(this + 28) = v3;
  *(this + 50) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 = *(a2 + 14);
  v3 |= 0x2000uLL;
  *(this + 28) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = *(a2 + 16);
  v3 |= 0x8000uLL;
  *(this + 28) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 28) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = *(a2 + 12);
  v3 |= 0x800uLL;
  *(this + 28) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v8 = *(a2 + 44);
  v3 |= 0x1000000uLL;
  *(this + 28) = v3;
  *(this + 44) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_24:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v4 = *(a2 + 18);
  v3 |= 0x20000uLL;
  *(this + 28) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_25:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v4 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 28) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4 = *(a2 + 7);
  v3 |= 0x40uLL;
  *(this + 28) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  v9 = *(a2 + 43);
  v3 |= 0x800000uLL;
  *(this + 28) = v3;
  *(this + 43) = v9;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  LODWORD(v4) = *(a2 + 47);
  v3 |= 0x8000000uLL;
  *(this + 28) = v3;
  *(this + 47) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  LODWORD(v4) = *(a2 + 46);
  v3 |= 0x4000000uLL;
  *(this + 28) = v3;
  *(this + 46) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000) == 0)
  {
LABEL_30:
    if ((v2 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  v10 = *(a2 + 17);
  v3 |= 0x10000uLL;
  *(this + 28) = v3;
  *(this + 17) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 1) == 0)
  {
LABEL_31:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  v11 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 28) = v3;
  *(this + 1) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  LODWORD(v4) = *(a2 + 52);
  v3 |= 0x100000000uLL;
  *(this + 28) = v3;
  *(this + 52) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  v12 = *(a2 + 45);
  v3 |= 0x2000000uLL;
  *(this + 28) = v3;
  *(this + 45) = v12;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  v13 = *(a2 + 39);
  v3 |= 0x80000uLL;
  *(this + 28) = v3;
  *(this + 39) = v13;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  v14 = *(a2 + 221);
  v3 |= 0x1000000000uLL;
  *(this + 28) = v3;
  *(this + 221) = v14;
  v2 = *(a2 + 28);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  v15 = *(a2 + 220);
  v3 |= 0x800000000uLL;
  *(this + 28) = v3;
  *(this + 220) = v15;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  LODWORD(v4) = *(a2 + 49);
  v3 |= 0x20000000uLL;
  *(this + 28) = v3;
  *(this + 49) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_38:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 28) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_39:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4 = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 28) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000) == 0)
  {
LABEL_40:
    if ((v2 & 4) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(a2 + 42);
  v3 |= 0x400000uLL;
  *(this + 28) = v3;
  *(this + 42) = v16;
  v2 = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_41:
    if ((v2 & 0x200000000) == 0)
    {
      return *&v4;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 28) = v3;
  *(this + 3) = v4;
  if ((*(a2 + 28) & 0x200000000) == 0)
  {
    return *&v4;
  }

LABEL_78:
  LODWORD(v4) = *(a2 + 53);
  *(this + 28) = v3 | 0x200000000;
  *(this + 53) = v4;
  return *&v4;
}

CMMsl *CMMsl::CalorieControllerMETsConsumed::operator=(CMMsl *a1, const CMMsl::CalorieControllerMETsConsumed *a2)
{
  if (a1 != a2)
  {
    CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CalorieControllerMETsConsumed *a2, CMMsl::CalorieControllerMETsConsumed *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v3) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  LODWORD(v6) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v6;
  LODWORD(v6) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v6;
  LODWORD(v6) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  LODWORD(v6) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  LODWORD(v6) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  LOBYTE(v3) = *(this + 222);
  *(this + 222) = *(a2 + 222);
  *(a2 + 222) = v3;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v9;
  LODWORD(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  LODWORD(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v14 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v14;
  v15 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  LODWORD(v3) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v3;
  LODWORD(v16) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v16;
  LODWORD(v16) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v16;
  v17 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v17;
  v18 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v18;
  LODWORD(v16) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v16;
  LODWORD(v18) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v18;
  LODWORD(v18) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v18;
  LOBYTE(v18) = *(this + 221);
  *(this + 221) = *(a2 + 221);
  *(a2 + 221) = v18;
  LOBYTE(v18) = *(this + 220);
  *(this + 220) = *(a2 + 220);
  *(a2 + 220) = v18;
  LODWORD(v16) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v16;
  v19 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v19;
  v20 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v20;
  LODWORD(v18) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v18;
  v21 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v21;
  result = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = result;
  return result;
}

float CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F1C8;
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 222) = *(a2 + 222);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 212);
  *(a1 + 212) = result;
  return result;
}

CMMsl *CMMsl::CalorieControllerMETsConsumed::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CalorieControllerMETsConsumed::formatText(CMMsl::CalorieControllerMETsConsumed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 0x40000) != 0)
  {
    v6 = *(this + 38);
    PB::TextFormatter::format(a2, "activity");
    v5 = *(this + 28);
    if ((v5 & 0x80000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 39);
  PB::TextFormatter::format(a2, "activityTypeWithoutOverride");
  v5 = *(this + 28);
  if ((v5 & 0x100000) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "avgTruthMets", *(this + 40));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(this + 1);
  PB::TextFormatter::format(a2, "basalCalories");
  v5 = *(this + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "basalMets", *(this + 41));
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "computeTime", *(this + 2));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "currentPace", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "distance", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 0x400000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = *(this + 42);
  PB::TextFormatter::format(a2, "distanceSource");
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "duration", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  v10 = *(this + 43);
  PB::TextFormatter::format(a2, "elevationAscended");
  v5 = *(this + 28);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v11 = *(this + 44);
  PB::TextFormatter::format(a2, "gradeType");
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "heartRate", *(this + 6));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "heartRateConfidence", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  v12 = *(this + 220);
  PB::TextFormatter::format(a2, "isMotionOverrideSet");
  v5 = *(this + 28);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v13 = *(this + 221);
  PB::TextFormatter::format(a2, "isStanding");
  v5 = *(this + 28);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = *(this + 222);
  PB::TextFormatter::format(a2, "isStored");
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "now", *(this + 8));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "pedDistance", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "pedRawDistance", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v15 = *(this + 45);
  PB::TextFormatter::format(a2, "pushCount");
  v5 = *(this + 28);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "rawFMMets", *(this + 46));
  v5 = *(this + 28);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "rawHRMets", *(this + 47));
  v5 = *(this + 28);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "rawTruthMets", *(this + 48));
  v5 = *(this + 28);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "rawWRMets", *(this + 49));
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_27:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "recordInterval", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "speed", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "startTime", *(this + 13));
  v5 = *(this + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "stepBegin", *(this + 14));
  v5 = *(this + 28);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  v16 = *(this + 50);
  PB::TextFormatter::format(a2, "stepCount");
  v5 = *(this + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "stepDuration", *(this + 15));
  v5 = *(this + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "stepEnd", *(this + 16));
  v5 = *(this + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  v17 = *(this + 17);
  PB::TextFormatter::format(a2, "totalCalories");
  v5 = *(this + 28);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "userMets", *(this + 51));
  v5 = *(this + 28);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "vectorMag", *(this + 52));
  v5 = *(this + 28);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "vectorMagCmSimOnly", *(this + 53));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_38:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "verticalSpeed", *(this + 18));
  if ((*(this + 28) & 0x400000000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(a2, "wrMets", *(this + 54));
  }

LABEL_40:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CalorieControllerMETsConsumed::readFrom(CMMsl::CalorieControllerMETsConsumed *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_290:
    v197 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
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
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_290;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 28) |= 0x1000uLL;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 13) = *(*a2 + v22);
          goto LABEL_144;
        case 2u:
          *(this + 28) |= 2uLL;
          v65 = *(a2 + 1);
          if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 2) = *(*a2 + v65);
          goto LABEL_144;
        case 3u:
          *(this + 28) |= 0x80uLL;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 8) = *(*a2 + v53);
          goto LABEL_144;
        case 4u:
          *(this + 28) |= 0x40000uLL;
          v56 = *(a2 + 1);
          v55 = *(a2 + 2);
          v57 = *a2;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_270;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_192:
            LODWORD(v60) = 0;
            goto LABEL_270;
          }

          v154 = 0;
          v155 = 0;
          v60 = 0;
          v156 = (v57 + v56);
          v18 = v55 >= v56;
          v157 = v55 - v56;
          if (!v18)
          {
            v157 = 0;
          }

          v158 = v56 + 1;
          while (2)
          {
            if (v157)
            {
              v159 = *v156;
              *(a2 + 1) = v158;
              v60 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                ++v156;
                --v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_192;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v60) = 0;
              }
            }

            else
            {
              LODWORD(v60) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_270:
          *(this + 38) = v60;
          goto LABEL_250;
        case 5u:
          *(this + 28) |= 0x80000000uLL;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 51) = *(*a2 + v40);
          goto LABEL_248;
        case 6u:
          *(this + 28) |= 0x400000000uLL;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 54) = *(*a2 + v72);
          goto LABEL_248;
        case 7u:
          *(this + 28) |= 0x10000000uLL;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 48) = *(*a2 + v83);
          goto LABEL_248;
        case 8u:
          *(this + 28) |= 0x100000uLL;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 40) = *(*a2 + v64);
          goto LABEL_248;
        case 9u:
          *(this + 28) |= 0x200000uLL;
          v97 = *(a2 + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 41) = *(*a2 + v97);
          goto LABEL_248;
        case 0xAu:
          *(this + 28) |= 0x400uLL;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 11) = *(*a2 + v42);
          goto LABEL_144;
        case 0xBu:
          *(this + 28) |= 0x2000000000uLL;
          v93 = *(a2 + 1);
          if (v93 >= *(a2 + 2))
          {
            v96 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v94 = v93 + 1;
            v95 = *(*a2 + v93);
            *(a2 + 1) = v94;
            v96 = v95 != 0;
          }

          *(this + 222) = v96;
          goto LABEL_250;
        case 0xCu:
          *(this + 28) |= 0x10uLL;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 5) = *(*a2 + v39);
          goto LABEL_144;
        case 0xDu:
          *(this + 28) |= 0x4000uLL;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 15) = *(*a2 + v41);
          goto LABEL_144;
        case 0xEu:
          *(this + 28) |= 0x40000000uLL;
          v75 = *(a2 + 1);
          v74 = *(a2 + 2);
          v76 = *a2;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(a2 + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_273;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_202:
            LODWORD(v79) = 0;
            goto LABEL_273;
          }

          v160 = 0;
          v161 = 0;
          v79 = 0;
          v162 = (v76 + v75);
          v18 = v74 >= v75;
          v163 = v74 - v75;
          if (!v18)
          {
            v163 = 0;
          }

          v164 = v75 + 1;
          while (2)
          {
            if (v163)
            {
              v165 = *v162;
              *(a2 + 1) = v164;
              v79 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                ++v162;
                --v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_202;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_273:
          *(this + 50) = v79;
          goto LABEL_250;
        case 0xFu:
          *(this + 28) |= 0x2000uLL;
          v37 = *(a2 + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 14) = *(*a2 + v37);
          goto LABEL_144;
        case 0x10u:
          *(this + 28) |= 0x8000uLL;
          v54 = *(a2 + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 16) = *(*a2 + v54);
          goto LABEL_144;
        case 0x11u:
          *(this + 28) |= 8uLL;
          v36 = *(a2 + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 4) = *(*a2 + v36);
          goto LABEL_144;
        case 0x12u:
          *(this + 28) |= 0x800uLL;
          v70 = *(a2 + 1);
          if (v70 > 0xFFFFFFFFFFFFFFF7 || v70 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 12) = *(*a2 + v70);
          goto LABEL_144;
        case 0x13u:
          *(this + 28) |= 0x1000000uLL;
          v85 = *(a2 + 1);
          v84 = *(a2 + 2);
          v86 = *a2;
          if (v85 <= 0xFFFFFFFFFFFFFFF5 && v85 + 10 <= v84)
          {
            v87 = 0;
            v88 = 0;
            v89 = 0;
            v90 = (v86 + v85);
            v91 = v85 + 1;
            do
            {
              *(a2 + 1) = v91;
              v92 = *v90++;
              v89 |= (v92 & 0x7F) << v87;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_276;
              }

              v87 += 7;
              ++v91;
              v14 = v88++ > 8;
            }

            while (!v14);
LABEL_210:
            LODWORD(v89) = 0;
            goto LABEL_276;
          }

          v166 = 0;
          v167 = 0;
          v89 = 0;
          v168 = (v86 + v85);
          v18 = v84 >= v85;
          v169 = v84 - v85;
          if (!v18)
          {
            v169 = 0;
          }

          v170 = v85 + 1;
          while (2)
          {
            if (v169)
            {
              v171 = *v168;
              *(a2 + 1) = v170;
              v89 |= (v171 & 0x7F) << v166;
              if (v171 < 0)
              {
                v166 += 7;
                ++v168;
                --v169;
                ++v170;
                v14 = v167++ > 8;
                if (v14)
                {
                  goto LABEL_210;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v89) = 0;
              }
            }

            else
            {
              LODWORD(v89) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_276:
          *(this + 44) = v89;
          goto LABEL_250;
        case 0x14u:
          *(this + 28) |= 0x20000uLL;
          v112 = *(a2 + 1);
          if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 18) = *(*a2 + v112);
          goto LABEL_144;
        case 0x15u:
          *(this + 28) |= 0x20uLL;
          v71 = *(a2 + 1);
          if (v71 > 0xFFFFFFFFFFFFFFF7 || v71 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 6) = *(*a2 + v71);
          goto LABEL_144;
        case 0x16u:
          *(this + 28) |= 0x40uLL;
          v73 = *(a2 + 1);
          if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 7) = *(*a2 + v73);
          goto LABEL_144;
        case 0x17u:
          *(this + 28) |= 0x800000uLL;
          v104 = *(a2 + 1);
          v103 = *(a2 + 2);
          v105 = *a2;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(a2 + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_279;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_222:
            LODWORD(v108) = 0;
            goto LABEL_279;
          }

          v172 = 0;
          v173 = 0;
          v108 = 0;
          v174 = (v105 + v104);
          v18 = v103 >= v104;
          v175 = v103 - v104;
          if (!v18)
          {
            v175 = 0;
          }

          v176 = v104 + 1;
          while (2)
          {
            if (v175)
            {
              v177 = *v174;
              *(a2 + 1) = v176;
              v108 |= (v177 & 0x7F) << v172;
              if (v177 < 0)
              {
                v172 += 7;
                ++v174;
                --v175;
                ++v176;
                v14 = v173++ > 8;
                if (v14)
                {
                  goto LABEL_222;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_279:
          *(this + 43) = v108;
          goto LABEL_250;
        case 0x18u:
          *(this + 28) |= 0x8000000uLL;
          v114 = *(a2 + 1);
          if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 47) = *(*a2 + v114);
          goto LABEL_248;
        case 0x19u:
          *(this + 28) |= 0x4000000uLL;
          v52 = *(a2 + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 46) = *(*a2 + v52);
          goto LABEL_248;
        case 0x1Au:
          *(this + 28) |= 0x10000uLL;
          v44 = *(a2 + 1);
          v43 = *(a2 + 2);
          v45 = *a2;
          if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            do
            {
              *(a2 + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_267;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_184:
            v48 = 0;
            goto LABEL_267;
          }

          v148 = 0;
          v149 = 0;
          v48 = 0;
          v150 = (v45 + v44);
          v18 = v43 >= v44;
          v151 = v43 - v44;
          if (!v18)
          {
            v151 = 0;
          }

          v152 = v44 + 1;
          while (2)
          {
            if (v151)
            {
              v153 = *v150;
              *(a2 + 1) = v152;
              v48 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                ++v150;
                --v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_184;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_267:
          *(this + 17) = v48;
          goto LABEL_250;
        case 0x1Bu:
          *(this + 28) |= 1uLL;
          v134 = *(a2 + 1);
          v133 = *(a2 + 2);
          v135 = *a2;
          if (v134 <= 0xFFFFFFFFFFFFFFF5 && v134 + 10 <= v133)
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = (v135 + v134);
            v140 = v134 + 1;
            do
            {
              *(a2 + 1) = v140;
              v141 = *v139++;
              v138 |= (v141 & 0x7F) << v136;
              if ((v141 & 0x80) == 0)
              {
                goto LABEL_288;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_246:
            v138 = 0;
            goto LABEL_288;
          }

          v190 = 0;
          v191 = 0;
          v138 = 0;
          v192 = (v135 + v134);
          v18 = v133 >= v134;
          v193 = v133 - v134;
          if (!v18)
          {
            v193 = 0;
          }

          v194 = v134 + 1;
          while (2)
          {
            if (v193)
            {
              v195 = *v192;
              *(a2 + 1) = v194;
              v138 |= (v195 & 0x7F) << v190;
              if (v195 < 0)
              {
                v190 += 7;
                ++v192;
                --v193;
                ++v194;
                v14 = v191++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v138 = 0;
              }
            }

            else
            {
              v138 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_288:
          *(this + 1) = v138;
          goto LABEL_250;
        case 0x1Cu:
          *(this + 28) |= 0x100000000uLL;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 52) = *(*a2 + v34);
          goto LABEL_248;
        case 0x1Du:
          *(this + 28) |= 0x2000000uLL;
          v116 = *(a2 + 1);
          v115 = *(a2 + 2);
          v117 = *a2;
          if (v116 <= 0xFFFFFFFFFFFFFFF5 && v116 + 10 <= v115)
          {
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v121 = (v117 + v116);
            v122 = v116 + 1;
            do
            {
              *(a2 + 1) = v122;
              v123 = *v121++;
              v120 |= (v123 & 0x7F) << v118;
              if ((v123 & 0x80) == 0)
              {
                goto LABEL_282;
              }

              v118 += 7;
              ++v122;
              v14 = v119++ > 8;
            }

            while (!v14);
LABEL_230:
            LODWORD(v120) = 0;
            goto LABEL_282;
          }

          v178 = 0;
          v179 = 0;
          v120 = 0;
          v180 = (v117 + v116);
          v18 = v115 >= v116;
          v181 = v115 - v116;
          if (!v18)
          {
            v181 = 0;
          }

          v182 = v116 + 1;
          while (2)
          {
            if (v181)
            {
              v183 = *v180;
              *(a2 + 1) = v182;
              v120 |= (v183 & 0x7F) << v178;
              if (v183 < 0)
              {
                v178 += 7;
                ++v180;
                --v181;
                ++v182;
                v14 = v179++ > 8;
                if (v14)
                {
                  goto LABEL_230;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v120) = 0;
              }
            }

            else
            {
              LODWORD(v120) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_282:
          *(this + 45) = v120;
          goto LABEL_250;
        case 0x1Eu:
          *(this + 28) |= 0x80000uLL;
          v125 = *(a2 + 1);
          v124 = *(a2 + 2);
          v126 = *a2;
          if (v125 <= 0xFFFFFFFFFFFFFFF5 && v125 + 10 <= v124)
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
            v130 = (v126 + v125);
            v131 = v125 + 1;
            do
            {
              *(a2 + 1) = v131;
              v132 = *v130++;
              v129 |= (v132 & 0x7F) << v127;
              if ((v132 & 0x80) == 0)
              {
                goto LABEL_285;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v129) = 0;
            goto LABEL_285;
          }

          v184 = 0;
          v185 = 0;
          v129 = 0;
          v186 = (v126 + v125);
          v18 = v124 >= v125;
          v187 = v124 - v125;
          if (!v18)
          {
            v187 = 0;
          }

          v188 = v125 + 1;
          while (2)
          {
            if (v187)
            {
              v189 = *v186;
              *(a2 + 1) = v188;
              v129 |= (v189 & 0x7F) << v184;
              if (v189 < 0)
              {
                v184 += 7;
                ++v186;
                --v187;
                ++v188;
                v14 = v185++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v129) = 0;
              }
            }

            else
            {
              LODWORD(v129) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_285:
          *(this + 39) = v129;
          goto LABEL_250;
        case 0x1Fu:
          *(this + 28) |= 0x1000000000uLL;
          v98 = *(a2 + 1);
          if (v98 >= *(a2 + 2))
          {
            v101 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v99 = v98 + 1;
            v100 = *(*a2 + v98);
            *(a2 + 1) = v99;
            v101 = v100 != 0;
          }

          *(this + 221) = v101;
          goto LABEL_250;
        case 0x20u:
          *(this + 28) |= 0x800000000uLL;
          v66 = *(a2 + 1);
          if (v66 >= *(a2 + 2))
          {
            v69 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v67 = v66 + 1;
            v68 = *(*a2 + v66);
            *(a2 + 1) = v67;
            v69 = v68 != 0;
          }

          *(this + 220) = v69;
          goto LABEL_250;
        case 0x21u:
          *(this + 28) |= 0x20000000uLL;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 49) = *(*a2 + v102);
          goto LABEL_248;
        case 0x22u:
          *(this + 28) |= 0x100uLL;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 9) = *(*a2 + v38);
          goto LABEL_144;
        case 0x23u:
          *(this + 28) |= 0x200uLL;
          v35 = *(a2 + 1);
          if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 10) = *(*a2 + v35);
          goto LABEL_144;
        case 0x24u:
          *(this + 28) |= 0x400000uLL;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            do
            {
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_264;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_176:
            LODWORD(v29) = 0;
            goto LABEL_264;
          }

          v142 = 0;
          v143 = 0;
          v29 = 0;
          v144 = (v26 + v25);
          v18 = v24 >= v25;
          v145 = v24 - v25;
          if (!v18)
          {
            v145 = 0;
          }

          v146 = v25 + 1;
          break;
        case 0x25u:
          *(this + 28) |= 4uLL;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
          {
            goto LABEL_147;
          }

          *(this + 3) = *(*a2 + v33);
LABEL_144:
          v113 = *(a2 + 1) + 8;
          goto LABEL_249;
        case 0x26u:
          *(this + 28) |= 0x200000000uLL;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
LABEL_147:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 53) = *(*a2 + v23);
LABEL_248:
            v113 = *(a2 + 1) + 4;
LABEL_249:
            *(a2 + 1) = v113;
          }

          goto LABEL_250;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v145)
        {
          LODWORD(v29) = 0;
          *(a2 + 24) = 1;
          goto LABEL_264;
        }

        v147 = *v144;
        *(a2 + 1) = v146;
        v29 |= (v147 & 0x7F) << v142;
        if ((v147 & 0x80) == 0)
        {
          break;
        }

        v142 += 7;
        ++v144;
        --v145;
        ++v146;
        v14 = v143++ > 8;
        if (v14)
        {
          goto LABEL_176;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v29) = 0;
      }

LABEL_264:
      *(this + 42) = v29;
LABEL_250:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_290;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_290;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      goto LABEL_250;
    }

    v197 = 0;
  }

  return v197 & 1;
}