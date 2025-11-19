uint64_t CMMsl::VIOEstimation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 340);
  if ((v4 & 0x40) != 0)
  {
    v42 = *(this + 336);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 340);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*(this + 340) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 312));
  v4 = *(v3 + 340);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    this = PB::Writer::write(a2, *(v3 + 320));
    if ((*(v3 + 340) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 296));
  v4 = *(v3 + 340);
  if ((v4 & 8) != 0)
  {
    goto LABEL_50;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 304));
  }

LABEL_7:
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10);
  }

  v11 = *(v3 + 272);
  v12 = *(v3 + 280);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13);
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::write(a2, v16);
  }

  v17 = *(v3 + 224);
  v18 = *(v3 + 232);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::write(a2, v19);
  }

  v20 = *(v3 + 152);
  v21 = *(v3 + 160);
  while (v20 != v21)
  {
    v22 = *v20++;
    this = PB::Writer::write(a2, v22);
  }

  v23 = *(v3 + 128);
  v24 = *(v3 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    this = PB::Writer::write(a2, v25);
  }

  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  while (v26 != v27)
  {
    v28 = *v26++;
    this = PB::Writer::write(a2, v28);
  }

  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  while (v29 != v30)
  {
    v31 = *v29++;
    this = PB::Writer::write(a2, v31);
  }

  v32 = *(v3 + 200);
  v33 = *(v3 + 208);
  while (v32 != v33)
  {
    v34 = *v32++;
    this = PB::Writer::write(a2, v34);
  }

  v35 = *(v3 + 80);
  v36 = *(v3 + 88);
  while (v35 != v36)
  {
    v37 = *v35++;
    this = PB::Writer::write(a2, v37);
  }

  v38 = *(v3 + 56);
  v39 = *(v3 + 64);
  while (v38 != v39)
  {
    v40 = *v38++;
    this = PB::Writer::write(a2, v40);
  }

  v41 = *(v3 + 340);
  if ((v41 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 332));
    v41 = *(v3 + 340);
  }

  if ((v41 & 0x10) != 0)
  {
    v43 = *(v3 + 328);

    return PB::Writer::write(a2, v43);
  }

  return this;
}

uint64_t CMMsl::VIOEstimation::hash_value(CMMsl::VIOEstimation *this)
{
  if ((*(this + 340) & 0x40) == 0)
  {
    v51 = 0;
    if ((*(this + 340) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v50 = 0.0;
    if (*(this + 340))
    {
      goto LABEL_6;
    }

LABEL_17:
    v49 = 0.0;
    if ((*(this + 340) & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v51 = *(this + 84);
  if ((*(this + 340) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 39);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  v50 = v2;
  if ((*(this + 340) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 37);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v49 = v3;
  if ((*(this + 340) & 8) != 0)
  {
LABEL_9:
    v4 = *(this + 40);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    v48 = v4;
    if ((*(this + 340) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v47 = 0.0;
    goto LABEL_20;
  }

LABEL_18:
  v48 = 0.0;
  if ((*(this + 340) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v5 = *(this + 38);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v47 = v5;
LABEL_20:
  v6 = *(this + 22);
  v7 = *(this + 23);
  v46 = PBHashBytes();
  v8 = *(this + 13);
  v9 = *(this + 14);
  v45 = PBHashBytes();
  v10 = *(this + 34);
  v11 = *(this + 35);
  v12 = PBHashBytes();
  v13 = *(this + 1);
  v14 = *(this + 2);
  v15 = PBHashBytes();
  v16 = *(this + 28);
  v17 = *(this + 29);
  v18 = PBHashBytes();
  v19 = *(this + 19);
  v20 = *(this + 20);
  v21 = PBHashBytes();
  v22 = *(this + 16);
  v23 = *(this + 17);
  v24 = PBHashBytes();
  v25 = *(this + 31);
  v26 = *(this + 32);
  v27 = PBHashBytes();
  v28 = *(this + 4);
  v29 = *(this + 5);
  v30 = PBHashBytes();
  v31 = *(this + 25);
  v32 = *(this + 26);
  v33 = PBHashBytes();
  v34 = *(this + 10);
  v35 = *(this + 11);
  v36 = PBHashBytes();
  v37 = *(this + 7);
  v38 = *(this + 8);
  v39 = PBHashBytes();
  if ((*(this + 340) & 0x20) != 0)
  {
    v43 = *(this + 83);
    v40 = LODWORD(v43);
    if (v43 == 0.0)
    {
      v40 = 0;
    }

    if ((*(this + 340) & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    v42 = 0;
    return *&v50 ^ v51 ^ *&v49 ^ *&v48 ^ *&v47 ^ v46 ^ v45 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v27 ^ v30 ^ v33 ^ v36 ^ v39 ^ v40 ^ v42;
  }

  v40 = 0;
  if ((*(this + 340) & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v41 = *(this + 82);
  v42 = LODWORD(v41);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  return *&v50 ^ v51 ^ *&v49 ^ *&v48 ^ *&v47 ^ v46 ^ v45 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v27 ^ v30 ^ v33 ^ v36 ^ v39 ^ v40 ^ v42;
}

void CMMsl::VIOPose::~VIOPose(CMMsl::VIOPose *this)
{
  *this = &unk_286C24210;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VIOPose::~VIOPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VIOPose *CMMsl::VIOPose::VIOPose(CMMsl::VIOPose *this, const CMMsl::VIOPose *a2)
{
  *this = &unk_286C24210;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v7 = *(a2 + 4);
    v6 = 1;
    *(this + 56) = 1;
    *(this + 4) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 56) & 0x200) != 0)
  {
LABEL_5:
    v8 = *(a2 + 13);
    v6 |= 0x200u;
    *(this + 56) = v6;
    *(this + 13) = v8;
    v5 = *(a2 + 56);
  }

LABEL_6:
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 5);
    *(this + 56) = v6 | 2;
    *(this + 5) = v9;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v10 = *(a2 + 56);
  if ((v10 & 8) != 0)
  {
    v13 = *(a2 + 7);
    *(this + 56) |= 8u;
    *(this + 7) = v13;
    v10 = *(a2 + 56);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 8);
  *(this + 56) |= 0x10u;
  *(this + 8) = v14;
  v10 = *(a2 + 56);
  if ((v10 & 0x20) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = *(a2 + 9);
  *(this + 56) |= 0x20u;
  *(this + 9) = v15;
  v10 = *(a2 + 56);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *(a2 + 6);
  *(this + 56) |= 4u;
  *(this + 6) = v16;
  v10 = *(a2 + 56);
  if ((v10 & 0x80) == 0)
  {
LABEL_15:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = *(a2 + 12);
    *(this + 56) |= 0x100u;
    *(this + 12) = v18;
    if ((*(a2 + 56) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_23:
  v17 = *(a2 + 11);
  *(this + 56) |= 0x80u;
  *(this + 11) = v17;
  v10 = *(a2 + 56);
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 0x40) != 0)
  {
LABEL_17:
    v11 = *(a2 + 10);
    *(this + 56) |= 0x40u;
    *(this + 10) = v11;
  }

  return this;
}

CMMsl *CMMsl::VIOPose::operator=(CMMsl *a1, const CMMsl::VIOPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOPose::VIOPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOPose::~VIOPose(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VIOPose *a2, CMMsl::VIOPose *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  return result;
}

uint64_t CMMsl::VIOPose::VIOPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24210;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  sub_25AD28758(a1 + 8, (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

CMMsl *CMMsl::VIOPose::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOPose::VIOPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOPose::~VIOPose(v5);
  }

  return a1;
}

uint64_t CMMsl::VIOPose::formatText(CMMsl::VIOPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    PB::TextFormatter::format(a2, "currentTimestamp", *(this + 4));
    v5 = *(this + 56);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "latestInertialTimestamp", *(this + 5));
  v5 = *(this + 56);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "latestInertialTimestampMeta", *(this + 6));
  v5 = *(this + 56);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "positionX", *(this + 7));
  v5 = *(this + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "positionY", *(this + 8));
  v5 = *(this + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "positionZ", *(this + 9));
  v5 = *(this + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "predictionComputeTimeMeta", *(this + 10));
  v5 = *(this + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "predictionTimeMeta", *(this + 11));
  if ((*(this + 56) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "propagationTimeMeta", *(this + 12));
  }

LABEL_11:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "rotationMatrixElement", v8);
  }

  if ((*(this + 56) & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 13));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VIOPose::readFrom(CMMsl::VIOPose *this, PB::Reader *a2)
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
        goto LABEL_107;
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
        goto LABEL_107;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 > 8)
        {
          switch(v22)
          {
            case 9:
              *(this + 56) |= 0x80u;
              v48 = *(a2 + 1);
              if (v48 > 0xFFFFFFFFFFFFFFF7 || v48 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 11) = *(*a2 + v48);
              goto LABEL_102;
            case 0xA:
              *(this + 56) |= 0x100u;
              v45 = *(a2 + 1);
              if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 12) = *(*a2 + v45);
              goto LABEL_102;
            case 0xB:
              *(this + 56) |= 0x40u;
              v25 = *(a2 + 1);
              if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 10) = *(*a2 + v25);
              goto LABEL_102;
          }
        }

        else
        {
          switch(v22)
          {
            case 6:
              *(this + 56) |= 0x10u;
              v47 = *(a2 + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 8) = *(*a2 + v47);
              goto LABEL_102;
            case 7:
              *(this + 56) |= 0x20u;
              v44 = *(a2 + 1);
              if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 9) = *(*a2 + v44);
              goto LABEL_102;
            case 8:
              *(this + 56) |= 4u;
              v23 = *(a2 + 1);
              if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
              {
                goto LABEL_100;
              }

              *(this + 6) = *(*a2 + v23);
LABEL_102:
              *(a2 + 1) += 8;
              goto LABEL_103;
          }
        }

        goto LABEL_17;
      }

      if (v22 <= 2)
      {
        break;
      }

      if (v22 == 3)
      {
        *(this + 56) |= 2u;
        v46 = *(a2 + 1);
        if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(a2 + 2))
        {
          goto LABEL_100;
        }

        *(this + 5) = *(*a2 + v46);
        goto LABEL_102;
      }

      if (v22 != 4)
      {
        if (v22 == 5)
        {
          *(this + 56) |= 8u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_100;
          }

          *(this + 7) = *(*a2 + v24);
          goto LABEL_102;
        }

        goto LABEL_17;
      }

      if ((v10 & 7) != 2)
      {
        v50 = *(this + 2);
        v49 = *(this + 3);
        if (v50 >= v49)
        {
          v52 = *(this + 1);
          v53 = v50 - v52;
          v54 = (v50 - v52) >> 3;
          v55 = v54 + 1;
          if ((v54 + 1) >> 61)
          {
LABEL_111:
            sub_25AAE66B8();
          }

          v56 = v49 - v52;
          if (v56 >> 2 > v55)
          {
            v55 = v56 >> 2;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            sub_25AD28710(v57);
          }

          v58 = (v50 - v52) >> 3;
          v59 = (8 * v54);
          v60 = (8 * v54 - 8 * v58);
          *v59 = 0;
          v51 = v59 + 1;
          memcpy(v60, v52, v53);
          v61 = *(this + 1);
          *(this + 1) = v60;
          *(this + 2) = v51;
          *(this + 3) = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *v50 = 0;
          v51 = v50 + 8;
        }

        *(this + 2) = v51;
        v62 = *(a2 + 1);
        if (v62 > 0xFFFFFFFFFFFFFFF7 || v62 + 8 > *(a2 + 2))
        {
LABEL_100:
          *(a2 + 24) = 1;
          goto LABEL_103;
        }

        *(v51 - 1) = *(*a2 + v62);
        goto LABEL_102;
      }

      if (PB::Reader::placeMark())
      {
LABEL_109:
        v63 = 0;
        return v63 & 1;
      }

      v28 = *(a2 + 1);
      v29 = *(a2 + 2);
      while (v28 < v29 && (*(a2 + 24) & 1) == 0)
      {
        v31 = *(this + 2);
        v30 = *(this + 3);
        if (v31 >= v30)
        {
          v33 = *(this + 1);
          v34 = v31 - v33;
          v35 = (v31 - v33) >> 3;
          v36 = v35 + 1;
          if ((v35 + 1) >> 61)
          {
            goto LABEL_111;
          }

          v37 = v30 - v33;
          if (v37 >> 2 > v36)
          {
            v36 = v37 >> 2;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            sub_25AD28710(v38);
          }

          v39 = (v31 - v33) >> 3;
          v40 = (8 * v35);
          v41 = (8 * v35 - 8 * v39);
          *v40 = 0;
          v32 = v40 + 1;
          memcpy(v41, v33, v34);
          v42 = *(this + 1);
          *(this + 1) = v41;
          *(this + 2) = v32;
          *(this + 3) = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v31 = 0;
          v32 = v31 + 8;
        }

        *(this + 2) = v32;
        v43 = *(a2 + 1);
        if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v32 - 1) = *(*a2 + v43);
        v29 = *(a2 + 2);
        v28 = *(a2 + 1) + 8;
        *(a2 + 1) = v28;
      }

      PB::Reader::recallMark();
LABEL_103:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 1)
    {
      *(this + 56) |= 1u;
      v27 = *(a2 + 1);
      if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
      {
        goto LABEL_100;
      }

      *(this + 4) = *(*a2 + v27);
      goto LABEL_102;
    }

    if (v22 == 2)
    {
      *(this + 56) |= 0x200u;
      v26 = *(a2 + 1);
      if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
      {
        goto LABEL_100;
      }

      *(this + 13) = *(*a2 + v26);
      goto LABEL_102;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_103;
  }

LABEL_107:
  v63 = v4 ^ 1;
  return v63 & 1;
}

uint64_t CMMsl::VIOPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 112) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    this = PB::Writer::write(a2, *(v3 + 104));
    if ((*(v3 + 112) & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = PB::Writer::write(a2, *(this + 32));
  v4 = *(v3 + 112);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v4 & 2) != 0)
  {
LABEL_4:
    this = PB::Writer::write(a2, *(v3 + 40));
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 112);
  if ((v8 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 56));
    v8 = *(v3 + 112);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = PB::Writer::write(a2, *(v3 + 64));
  v8 = *(v3 + 112);
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 72));
  v8 = *(v3 + 112);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48));
  v8 = *(v3 + 112);
  if ((v8 & 0x80) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 96));
    if ((*(v3 + 112) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 88));
  v8 = *(v3 + 112);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v8 & 0x40) == 0)
  {
    return this;
  }

LABEL_25:
  v9 = *(v3 + 80);

  return PB::Writer::write(a2, v9);
}

uint64_t CMMsl::VIOPose::hash_value(CMMsl::VIOPose *this)
{
  v2 = *(this + 56);
  if (v2)
  {
    if (*(this + 4) == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 4);
    }

    if ((*(this + 56) & 0x200) != 0)
    {
LABEL_3:
      if (*(this + 13) == 0.0)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(this + 13);
      }

      if ((v2 & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 56) & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(this + 5) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 5);
  }

LABEL_16:
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  v9 = *(this + 56);
  if ((v9 & 8) == 0)
  {
    v10 = 0.0;
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_39:
    v11 = 0.0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_40:
    v12 = 0.0;
    if ((v9 & 4) != 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v13 = 0.0;
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_42:
    v14 = 0.0;
    if ((*(this + 56) & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v9 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v11 = *(this + 8);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v9 & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  v12 = *(this + 9);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v9 & 4) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v13 = *(this + 6);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v9 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v14 = *(this + 11);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((*(this + 56) & 0x100) != 0)
  {
LABEL_30:
    v15 = *(this + 12);
    if (v15 == 0.0)
    {
      v15 = 0.0;
    }

    if ((v9 & 0x40) != 0)
    {
      goto LABEL_33;
    }

LABEL_44:
    v16 = 0.0;
    return v4 ^ v3 ^ v5 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v8 ^ *&v14 ^ *&v15 ^ *&v16;
  }

LABEL_43:
  v15 = 0.0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  v16 = *(this + 10);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return v4 ^ v3 ^ v5 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v8 ^ *&v14 ^ *&v15 ^ *&v16;
}

void CMMsl::VIOReplayPose::~VIOReplayPose(CMMsl::VIOReplayPose *this)
{
  *this = &unk_286C24248;
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
  CMMsl::VIOReplayPose::~VIOReplayPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::VIOReplayPose *CMMsl::VIOReplayPose::VIOReplayPose(CMMsl::VIOReplayPose *this, const CMMsl::VIOReplayPose *a2)
{
  *this = &unk_286C24248;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 7);
    *(this + 64) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  }

  return this;
}

uint64_t CMMsl::VIOReplayPose::operator=(uint64_t a1, const CMMsl::VIOReplayPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOReplayPose::VIOReplayPose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::VIOReplayPose::~VIOReplayPose(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VIOReplayPose *a2, CMMsl::VIOReplayPose *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
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
  return result;
}

uint64_t CMMsl::VIOReplayPose::VIOReplayPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24248;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::VIOReplayPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOReplayPose::VIOReplayPose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::VIOReplayPose::~VIOReplayPose(v10);
  }

  return a1;
}

uint64_t CMMsl::VIOReplayPose::formatText(CMMsl::VIOReplayPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "so3", v7);
  }

  if (*(this + 64))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "translation", v10);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VIOReplayPose::readFrom(CMMsl::VIOReplayPose *this, PB::Reader *a2)
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
        goto LABEL_103;
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
        goto LABEL_103;
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
            goto LABEL_105;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 >= v27)
            {
              v30 = *(this + 1);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_107;
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
                sub_25AD28710(v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 1);
              *(this + 1) = v38;
              *(this + 2) = v29;
              *(this + 3) = 0;
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

            *(this + 2) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
            {
              goto LABEL_70;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 8;
            *(a2 + 1) = v25;
          }

LABEL_71:
          PB::Reader::recallMark();
          goto LABEL_99;
        }

        v58 = *(this + 2);
        v57 = *(this + 3);
        if (v58 >= v57)
        {
          v62 = *(this + 1);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
            goto LABEL_107;
          }

          v66 = v57 - v62;
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

          v74 = (v58 - v62) >> 3;
          v75 = (8 * v64);
          v76 = (8 * v64 - 8 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(this + 1);
          *(this + 1) = v76;
          *(this + 2) = v59;
          *(this + 3) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 8;
        }

        *(this + 2) = v59;
LABEL_94:
        v82 = *(a2 + 1);
        if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(a2 + 2))
        {
          goto LABEL_96;
        }

        *(v59 - 1) = *(*a2 + v82);
        goto LABEL_98;
      }

      if (v23 != 1)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_99;
      }

      *(this + 64) |= 1u;
      v24 = *(a2 + 1);
      if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
      {
LABEL_96:
        *(a2 + 24) = 1;
        goto LABEL_99;
      }

      *(this + 7) = *(*a2 + v24);
LABEL_98:
      *(a2 + 1) += 8;
LABEL_99:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
LABEL_105:
        v83 = 0;
        return v83 & 1;
      }

      v41 = *(a2 + 1);
      v42 = *(a2 + 2);
      while (v41 < v42 && (*(a2 + 24) & 1) == 0)
      {
        v44 = *(this + 5);
        v43 = *(this + 6);
        if (v44 >= v43)
        {
          v46 = *(this + 4);
          v47 = v44 - v46;
          v48 = (v44 - v46) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            goto LABEL_107;
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
            sub_25AD28710(v51);
          }

          v52 = (v44 - v46) >> 3;
          v53 = (8 * v48);
          v54 = (8 * v48 - 8 * v52);
          *v53 = 0;
          v45 = v53 + 1;
          memcpy(v54, v46, v47);
          v55 = *(this + 4);
          *(this + 4) = v54;
          *(this + 5) = v45;
          *(this + 6) = 0;
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

        *(this + 5) = v45;
        v56 = *(a2 + 1);
        if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
        {
LABEL_70:
          *(a2 + 24) = 1;
          goto LABEL_71;
        }

        *(v45 - 1) = *(*a2 + v56);
        v42 = *(a2 + 2);
        v41 = *(a2 + 1) + 8;
        *(a2 + 1) = v41;
      }

      goto LABEL_71;
    }

    v61 = *(this + 5);
    v60 = *(this + 6);
    if (v61 >= v60)
    {
      v68 = *(this + 4);
      v69 = v61 - v68;
      v70 = (v61 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_107:
        sub_25AAE66B8();
      }

      v72 = v60 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        sub_25AD28710(v73);
      }

      v78 = (v61 - v68) >> 3;
      v79 = (8 * v70);
      v80 = (8 * v70 - 8 * v78);
      *v79 = 0;
      v59 = v79 + 1;
      memcpy(v80, v68, v69);
      v81 = *(this + 4);
      *(this + 4) = v80;
      *(this + 5) = v59;
      *(this + 6) = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }

    else
    {
      *v61 = 0;
      v59 = v61 + 8;
    }

    *(this + 5) = v59;
    goto LABEL_94;
  }

LABEL_103:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::VIOReplayPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write(a2, *(this + 56));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9);
  }

  return this;
}

uint64_t CMMsl::VIOReplayPose::hash_value(CMMsl::VIOReplayPose *this)
{
  if (*(this + 64))
  {
    if (*(this + 7) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 7);
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
  return v5 ^ PBHashBytes();
}

void CMMsl::VO2MaxInput::~VO2MaxInput(CMMsl::VO2MaxInput *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::VO2MaxInput::VO2MaxInput(CMMsl::VO2MaxInput *this, const CMMsl::VO2MaxInput *a2)
{
  *this = &unk_286C24280;
  *(this + 22) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) != 0)
  {
    result = *(a2 + 8);
    v3 = 128;
    *(this + 44) = 128;
    *(this + 8) = result;
    v2 = *(a2 + 44);
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
    result = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v5 = *(a2 + 19);
    v3 |= 0x200u;
    *(this + 44) = v3;
    *(this + 19) = v5;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(a2 + 18);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 18) = v6;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a2 + 84);
  v3 |= 0x800u;
  *(this + 44) = v3;
  *(this + 84) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 85);
  v3 |= 0x1000u;
  *(this + 44) = v3;
  *(this + 85) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 20);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 44);
  if ((v2 & 0x2000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 5);
    *(this + 44) = v3 | 0x10;
    *(this + 5) = result;
    return result;
  }

LABEL_29:
  v10 = *(a2 + 86);
  v3 |= 0x2000u;
  *(this + 44) = v3;
  *(this + 86) = v10;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::VO2MaxInput::operator=(CMMsl *a1, const CMMsl::VO2MaxInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxInput::VO2MaxInput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxInput *a2, CMMsl::VO2MaxInput *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  LOBYTE(v10) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v10;
  LOBYTE(v10) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v10;
  v13 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v13;
  LOBYTE(v13) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v13;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

double CMMsl::VO2MaxInput::VO2MaxInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24280;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 86) = *(a2 + 86);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

CMMsl *CMMsl::VO2MaxInput::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxInput::VO2MaxInput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxInput::formatText(CMMsl::VO2MaxInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "cadence", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "grade", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(this + 18);
  PB::TextFormatter::format(a2, "gradeType");
  v5 = *(this + 44);
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
  v8 = *(this + 84);
  PB::TextFormatter::format(a2, "hasGps");
  v5 = *(this + 44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(this + 85);
  PB::TextFormatter::format(a2, "hasStrideCal");
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "heartRate", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "heartRateConfidence", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "hrTime", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(this + 86);
  PB::TextFormatter::format(a2, "isStroller");
  v5 = *(this + 44);
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
  v11 = *(this + 19);
  PB::TextFormatter::format(a2, "metSource");
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "mets", *(this + 6));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "pace", *(this + 7));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "startDate", *(this + 8));
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_15:
    v6 = *(this + 20);
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_16:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VO2MaxInput::readFrom(CMMsl::VO2MaxInput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_123:
    v73 = v4 ^ 1;
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
        goto LABEL_123;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_103;
        case 2u:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_103;
        case 3u:
          *(this + 44) |= 0x200u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v59 = 0;
            v60 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v61 = (v35 + v34);
            v62 = v2 - v34;
            v63 = v34 + 1;
            while (1)
            {
              if (!v62)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v64 = v63;
              v65 = *v61;
              *(a2 + 1) = v64;
              v38 |= (v65 & 0x7F) << v59;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              ++v61;
              --v62;
              v63 = v64 + 1;
              v14 = v60++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_113:
                v2 = v64;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_113;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_114:
          *(this + 19) = v38;
          break;
        case 4u:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_103;
        case 5u:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_103;
        case 6u:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_103;
        case 7u:
          *(this + 44) |= 0x100u;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(a2 + 1);
            }

            v68 = (v43 + v42);
            v69 = v2 - v42;
            v70 = v42 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_118;
              }

              v71 = v70;
              v72 = *v68;
              *(a2 + 1) = v71;
              v46 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v68;
              --v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
LABEL_117:
                v2 = v71;
                goto LABEL_118;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }

            goto LABEL_117;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          LODWORD(v46) = 0;
LABEL_118:
          *(this + 18) = v46;
          break;
        case 8u:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_103;
        case 9u:
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_71;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_103;
        case 0xAu:
          *(this + 44) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 84) = v33;
          break;
        case 0xBu:
          *(this + 44) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v50 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v51 = v50 != 0;
          }

          *(this + 85) = v51;
          break;
        case 0xCu:
          *(this + 44) |= 0x400u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v54 = (v23 + v22);
            v55 = v2 - v22;
            v56 = v22 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_110;
              }

              v57 = v56;
              v58 = *v54;
              *(a2 + 1) = v57;
              v26 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v54;
              --v55;
              v56 = v57 + 1;
              v14 = v53++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_109:
                v2 = v57;
                goto LABEL_110;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_109;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_110;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_110:
          *(this + 20) = v26;
          break;
        case 0xDu:
          *(this + 44) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 86) = v31;
          break;
        case 0xEu:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_71:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 5) = *(*a2 + v2);
LABEL_103:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_119:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_123;
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
        goto LABEL_123;
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
      v2 = *(a2 + 1);
      goto LABEL_119;
    }

    v73 = 0;
  }

  return v73 & 1;
}

uint64_t CMMsl::VO2MaxInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
    v4 = *(v3 + 88);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = *(v3 + 76);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(v3 + 84);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(v3 + 85);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v10 = *(v3 + 86);
    this = PB::Writer::write(a2);
    if ((*(v3 + 88) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  v9 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_29:
  v11 = *(v3 + 40);

  return PB::Writer::write(a2, v11);
}

uint64_t CMMsl::VO2MaxInput::hash_value(CMMsl::VO2MaxInput *this)
{
  v1 = *(this + 44);
  if ((v1 & 0x80) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v3 = 0.0;
    if ((*(this + 44) & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

  v2 = *(this + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 6);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 0x200) != 0)
  {
LABEL_6:
    v4 = *(this + 19);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_35:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_36:
    v6 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_37:
    v7 = 0.0;
    if ((*(this + 44) & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_34:
  v4 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_7:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_10:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_37;
  }

LABEL_13:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 44) & 0x100) != 0)
  {
LABEL_16:
    v8 = *(this + 18);
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_39:
    v9 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v10 = 0.0;
    if ((*(this + 44) & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_38:
  v8 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v9 = *(this + 1);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 44) & 0x800) != 0)
  {
LABEL_23:
    v11 = *(this + 84);
    if ((*(this + 44) & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*(this + 44) & 0x1000) != 0)
  {
LABEL_24:
    v12 = *(this + 85);
    if ((*(this + 44) & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_25:
    v13 = *(this + 20);
    if ((*(this + 44) & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*(this + 44) & 0x2000) != 0)
  {
LABEL_26:
    v14 = *(this + 86);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_45:
    v15 = 0.0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
  }

LABEL_44:
  v14 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  v15 = *(this + 5);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
}

void CMMsl::VO2MaxModelInput::~VO2MaxModelInput(CMMsl::VO2MaxModelInput *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::VO2MaxModelInput::VO2MaxModelInput(CMMsl::VO2MaxModelInput *this, const CMMsl::VO2MaxModelInput *a2)
{
  *this = &unk_286C242B8;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 40) = 4;
    *(this + 3) = result;
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
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 4);
    *(this + 40) = v3 | 8;
    *(this + 4) = result;
    return result;
  }

  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 1) = result;
  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::VO2MaxModelInput::operator=(uint64_t a1, const CMMsl::VO2MaxModelInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxModelInput::VO2MaxModelInput(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxModelInput *a2, CMMsl::VO2MaxModelInput *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

double CMMsl::VO2MaxModelInput::VO2MaxModelInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C242B8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = &unk_286C242B8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::VO2MaxModelInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C242B8;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v4 = *(a2 + 8);
    v9 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxModelInput::formatText(CMMsl::VO2MaxModelInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "hr", *(this + 1));
    v5 = *(this + 40);
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

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "hrTime", *(this + 2));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "time", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "vo2", *(this + 4));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VO2MaxModelInput::readFrom(CMMsl::VO2MaxModelInput *this, PB::Reader *a2)
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
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::VO2MaxModelInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 8));
      if ((*(v3 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::VO2MaxModelInput::hash_value(CMMsl::VO2MaxModelInput *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 40))
  {
LABEL_6:
    v3 = *(this + 1);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::VO2MaxOutput::~VO2MaxOutput(CMMsl::VO2MaxOutput *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::VO2MaxOutput::VO2MaxOutput(uint64_t this, const CMMsl::VO2MaxOutput *a2)
{
  *this = &unk_286C242F0;
  *(this + 72) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 32;
    *(this + 72) = 32;
    *(this + 48) = v4;
    v2 = *(a2 + 36);
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 72) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 17);
    v3 |= 0x100u;
    *(this + 72) = v3;
    *(this + 68) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 72) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 4);
  v3 |= 8u;
  *(this + 72) = v3;
  *(this + 32) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 72) = v3;
  *(this + 40) = v9;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 72) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 36);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 16);
    *(this + 72) = v3 | 0x80;
    *(this + 64) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 72) = v3;
  *(this + 24) = v11;
  if ((*(a2 + 36) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::VO2MaxOutput::operator=(uint64_t a1, const CMMsl::VO2MaxOutput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxOutput::VO2MaxOutput(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v5;
    *&v5 = v15;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v5;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v14 = v6;
    v15 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxOutput *a2, CMMsl::VO2MaxOutput *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  return result;
}

double CMMsl::VO2MaxOutput::VO2MaxOutput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C242F0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t CMMsl::VO2MaxOutput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxOutput::VO2MaxOutput(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v5;
    *&v5 = v15;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v5;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v14 = v6;
    v15 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxOutput::formatText(CMMsl::VO2MaxOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "durationInSeconds", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "estimatedVo2Max", *(this + 2));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "filteredVo2Max", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "hrMax", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "hrMin", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(this + 16);
  PB::TextFormatter::format(a2, "sessionType");
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "startTime", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "variance", *(this + 7));
  if ((*(this + 36) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(this + 17);
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VO2MaxOutput::readFrom(CMMsl::VO2MaxOutput *this, PB::Reader *a2)
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
          *(this + 36) |= 0x100u;
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
                goto LABEL_90;
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
                goto LABEL_89;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_89:
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

LABEL_90:
          *(this + 17) = v35;
          goto LABEL_95;
        }

        if (v22 == 4)
        {
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
            goto LABEL_95;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_84;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 36) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_84;
        }

        if (v22 == 2)
        {
          *(this + 36) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_84;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 36) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_66;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_84;
      }

      if (v22 == 6)
      {
        *(this + 36) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_66;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_84;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 36) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_84;
        case 8:
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_84:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_95;
        case 9:
          *(this + 36) |= 0x80u;
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
                goto LABEL_94;
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
                goto LABEL_93;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_93:
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

LABEL_94:
          *(this + 16) = v27;
          goto LABEL_95;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_95:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::VO2MaxOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48));
    v4 = *(v3 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 72) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v6 = *(v3 + 64);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::VO2MaxOutput::hash_value(CMMsl::VO2MaxOutput *this)
{
  v1 = *(this + 36);
  if ((v1 & 0x20) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((*(this + 36) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  v2 = *(this + 6);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 36) & 0x100) != 0)
  {
LABEL_6:
    v4 = *(this + 17);
    if (v1)
    {
      goto LABEL_7;
    }

LABEL_28:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v6 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v7 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_27:
  v4 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v8 = *(this + 7);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_19:
    v9 = *(this + 3);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if ((v1 & 0x80) != 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    v10 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10;
  }

LABEL_32:
  v9 = 0.0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v10 = *(this + 16);
  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10;
}

void CMMsl::VehicularFlagsData::~VehicularFlagsData(CMMsl::VehicularFlagsData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::VehicularFlagsData::VehicularFlagsData(uint64_t this, const CMMsl::VehicularFlagsData *a2)
{
  *this = &unk_286C24328;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 16;
    *(this + 20) = 16;
    *(this + 15) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 8u;
    *(this + 20) = v3;
    *(this + 14) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 12) = v6;
    v2 = *(a2 + 20);
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

  v7 = *(a2 + 16);
  v3 |= 0x20u;
  *(this + 20) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 20);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 2);
    *(this + 20) = v3 | 1;
    *(this + 8) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 13);
  v3 |= 4u;
  *(this + 20) = v3;
  *(this + 13) = v8;
  if (*(a2 + 20))
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::VehicularFlagsData::operator=(uint64_t a1, const CMMsl::VehicularFlagsData *a2)
{
  if (a1 != a2)
  {
    CMMsl::VehicularFlagsData::VehicularFlagsData(v8, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v12;
    v12 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 12);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 12) = v6;
    v9 = v5;
    v10 = v4;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::VehicularFlagsData *a2, CMMsl::VehicularFlagsData *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  LOBYTE(v3) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  LOBYTE(v3) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  LOBYTE(v3) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LOBYTE(v3) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::VehicularFlagsData::VehicularFlagsData(uint64_t result, uint64_t a2)
{
  *result = &unk_286C24328;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 15) = *(a2 + 15);
  *(result + 14) = *(a2 + 14);
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 13) = *(a2 + 13);
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C24328;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 15) = *(a2 + 15);
  *(result + 14) = *(a2 + 14);
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 13) = *(a2 + 13);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::VehicularFlagsData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C24328;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v14 = *(a1 + 20);
    v13 = *(a1 + 16);
    v5 = *(a2 + 8);
    v6 = *(a2 + 12);
    *(a1 + 20) = v3;
    *(a1 + 16) = v4;
    v8 = *(a1 + 8);
    v7 = *(a1 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    v11 = v8;
    v12 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::VehicularFlagsData::formatText(CMMsl::VehicularFlagsData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 12);
    PB::TextFormatter::format(a2, "basebandHint");
    v5 = *(this + 20);
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

  else if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 13);
  PB::TextFormatter::format(a2, "btHint");
  v5 = *(this + 20);
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
  v9 = *(this + 14);
  PB::TextFormatter::format(a2, "gpsHint");
  v5 = *(this + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(this + 15);
  PB::TextFormatter::format(a2, "motionHint");
  v5 = *(this + 20);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = *(this + 2);
  PB::TextFormatter::format(a2, "vehicularData");
  if ((*(this + 20) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "wifiHint");
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VehicularFlagsData::readFrom(CMMsl::VehicularFlagsData *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
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
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 20) |= 0x20u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v36 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v35 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v36 = v35 != 0;
          }

          *(this + 16) = v36;
          goto LABEL_19;
        case 5:
          *(this + 20) |= 4u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v40 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v39 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v40 = v39 != 0;
          }

          *(this + 13) = v40;
          goto LABEL_19;
        case 6:
          *(this + 20) |= 1u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v43 = (v26 + v25);
            v44 = v3 - v25;
            v45 = v25 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_70;
              }

              v46 = v45;
              v47 = *v43;
              *(a2 + 1) = v46;
              v29 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v43;
              --v44;
              v45 = v46 + 1;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_69;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_69:
            v3 = v46;
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
              v3 = v31;
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

LABEL_70:
          *(this + 2) = v29;
          goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 20) |= 0x10u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v34 = v33 != 0;
          }

          *(this + 15) = v34;
          goto LABEL_19;
        case 2:
          *(this + 20) |= 8u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v38 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v37 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v38 = v37 != 0;
          }

          *(this + 14) = v38;
          goto LABEL_19;
        case 3:
          *(this + 20) |= 2u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v24 = v23 != 0;
          }

          *(this + 12) = v24;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v48 = 0;
      return v48 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v48 = v4 ^ 1;
  return v48 & 1;
}

uint64_t CMMsl::VehicularFlagsData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(this + 15);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 20);
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

  else if ((*(this + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 14);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(v3 + 12);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = *(v3 + 13);
    this = PB::Writer::write(a2);
    if ((*(v3 + 20) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = *(v3 + 16);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_13:
  v10 = *(v3 + 8);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::VehicularFlagsData::hash_value(CMMsl::VehicularFlagsData *this)
{
  if ((*(this + 20) & 0x10) != 0)
  {
    v1 = *(this + 15);
    if ((*(this + 20) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 14);
      if ((*(this + 20) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 20) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 20) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 12);
    if ((*(this + 20) & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v3 = 0;
  if ((*(this + 20) & 0x20) != 0)
  {
LABEL_5:
    v4 = *(this + 16);
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if (*(this + 20))
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_11:
  v4 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = *(this + 13);
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v6 = *(this + 2);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
}

void CMMsl::VelocityEstimatorFusionState::~VelocityEstimatorFusionState(CMMsl::VelocityEstimatorFusionState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(CMMsl::VelocityEstimatorFusionState *this, const CMMsl::VelocityEstimatorFusionState *a2)
{
  *this = &unk_286C24360;
  *(this + 15) = 0;
  v2 = *(a2 + 30);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 30) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 30);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 30) & 0x100) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 12);
    v3 |= 0x100u;
    *(this + 30) = v3;
    *(this + 12) = LODWORD(result);
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    LODWORD(result) = *(a2 + 13);
    v3 |= 0x200u;
    *(this + 30) = v3;
    *(this + 13) = LODWORD(result);
    v2 = *(a2 + 30);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 14);
  v3 |= 0x400u;
  *(this + 30) = v3;
  *(this + 14) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result) = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 30) = v3;
  *(this + 9) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(result) = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 30) = v3;
  *(this + 10) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 30) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = *(a2 + 6);
  v3 |= 4u;
  *(this + 30) = v3;
  *(this + 6) = v5;
  v2 = *(a2 + 30);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(a2 + 7);
  v3 |= 8u;
  *(this + 30) = v3;
  *(this + 7) = v6;
  v2 = *(a2 + 30);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 2);
    *(this + 30) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_23:
  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 30) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 30) & 2) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::VelocityEstimatorFusionState::operator=(CMMsl *a1, const CMMsl::VelocityEstimatorFusionState *a2)
{
  if (a1 != a2)
  {
    CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VelocityEstimatorFusionState *a2, CMMsl::VelocityEstimatorFusionState *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24360;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::VelocityEstimatorFusionState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::VelocityEstimatorFusionState::formatText(CMMsl::VelocityEstimatorFusionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "sourceX");
    v5 = *(this + 30);
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

  v7 = *(this + 7);
  PB::TextFormatter::format(a2, "sourceY");
  v5 = *(this + 30);
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
  v8 = *(this + 8);
  PB::TextFormatter::format(a2, "sourceZ");
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "velocityUncX", *(this + 9));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "velocityUncY", *(this + 10));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "velocityUncZ", *(this + 11));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "velocityX", *(this + 12));
  v5 = *(this + 30);
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
  PB::TextFormatter::format(a2, "velocityY", *(this + 13));
  if ((*(this + 30) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "velocityZ", *(this + 14));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VelocityEstimatorFusionState::readFrom(CMMsl::VelocityEstimatorFusionState *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 30) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_72:
            *(a2 + 24) = 1;
            goto LABEL_122;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_53:
          v2 = *(a2 + 1) + 8;
          goto LABEL_106;
        }

        if (v22 == 2)
        {
          *(this + 30) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 12) = *(*a2 + v2);
LABEL_105:
          v2 = *(a2 + 1) + 4;
LABEL_106:
          *(a2 + 1) = v2;
          goto LABEL_122;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 30) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 13) = *(*a2 + v2);
            goto LABEL_105;
          case 4:
            *(this + 30) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 14) = *(*a2 + v2);
            goto LABEL_105;
          case 5:
            *(this + 30) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 9) = *(*a2 + v2);
            goto LABEL_105;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 30) |= 8u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v63 = (v40 + v39);
            v64 = v2 - v39;
            v65 = v39 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_121;
              }

              v66 = v65;
              v67 = *v63;
              *(a2 + 1) = v66;
              v43 |= (v67 & 0x7F) << v61;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v63;
              --v64;
              v65 = v66 + 1;
              v14 = v62++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_120;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_120:
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
              *(a2 + 1) = v45;
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

LABEL_121:
          *(this + 7) = v43;
          goto LABEL_122;
        case 0xA:
          *(this + 30) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v49 = (v32 + v31);
            v50 = v2 - v31;
            v51 = v31 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_113;
              }

              v52 = v51;
              v53 = *v49;
              *(a2 + 1) = v52;
              v35 |= (v53 & 0x7F) << v47;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v49;
              --v50;
              v51 = v52 + 1;
              v14 = v48++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_112:
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

LABEL_113:
          *(this + 8) = v35;
          goto LABEL_122;
        case 0xB:
          *(this + 30) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_53;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 30) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_105;
        case 7:
          *(this + 30) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_105;
        case 8:
          *(this + 30) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v56 = (v24 + v23);
            v57 = v2 - v23;
            v58 = v23 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_117;
              }

              v59 = v58;
              v60 = *v56;
              *(a2 + 1) = v59;
              v27 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v56;
              --v57;
              v58 = v59 + 1;
              v14 = v55++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_116:
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

LABEL_117:
          *(this + 6) = v27;
          goto LABEL_122;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_122:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::VelocityEstimatorFusionState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
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

  else if ((*(this + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
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
  this = PB::Writer::write(a2, *(v3 + 52));
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
  this = PB::Writer::write(a2, *(v3 + 36));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
  this = PB::Writer::write(a2, *(v3 + 44));
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
  this = PB::Writer::writeVarInt(a2);
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
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 60) & 2) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  v6 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v3 + 16);

  return PB::Writer::write(a2, v8);
}

uint64_t CMMsl::VelocityEstimatorFusionState::hash_value(CMMsl::VelocityEstimatorFusionState *this)
{
  v1 = *(this + 30);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    v4 = 0;
    if ((*(this + 30) & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v6 = 0;
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_32:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_34:
    v12 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    v14 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 30) & 0x100) == 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = *(this + 12);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 30) & 0x200) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v5 = *(this + 13);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 30) & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v7 = *(this + 14);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  v9 = *(this + 9);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v11 = *(this + 10);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v13 = *(this + 11);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_21:
    v15 = *(this + 6);
    if ((v1 & 8) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_22:
    v16 = *(this + 7);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_23:
    v17 = *(this + 8);
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v18 = 0.0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
  }

LABEL_38:
  v17 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  v18 = *(this + 2);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
}

void CMMsl::VibrationEvent::~VibrationEvent(CMMsl::VibrationEvent *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::VibrationEvent::VibrationEvent(uint64_t this, const CMMsl::VibrationEvent *a2)
{
  *this = &unk_286C24398;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::VibrationEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C24398;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = &unk_286C24398;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::VibrationEvent *a2, CMMsl::VibrationEvent *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::VibrationEvent::formatText(CMMsl::VibrationEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "isDeviceVibrating");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::VibrationEvent::readFrom(CMMsl::VibrationEvent *this, PB::Reader *a2)
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
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v23 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v22 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v23 = v22 != 0;
        }

        *(this + 8) = v23;
      }

      else
      {
LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::VibrationEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::VibrationEvent::hash_value(CMMsl::VibrationEvent *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

void CMMsl::ViewObstructedMachineLearningDecision::~ViewObstructedMachineLearningDecision(CMMsl::ViewObstructedMachineLearningDecision *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(uint64_t this, const CMMsl::ViewObstructedMachineLearningDecision *a2)
{
  *this = &unk_286C243D0;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::operator=(uint64_t a1, const CMMsl::ViewObstructedMachineLearningDecision *a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ViewObstructedMachineLearningDecision *a2, CMMsl::ViewObstructedMachineLearningDecision *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(uint64_t result, uint64_t a2)
{
  *result = &unk_286C243D0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C243D0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = &unk_286C243D0;
    v9[1] = v7;
    LOBYTE(v7) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::formatText(CMMsl::ViewObstructedMachineLearningDecision *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "shouldSuppress");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::readFrom(CMMsl::ViewObstructedMachineLearningDecision *this, PB::Reader *a2)
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
        goto LABEL_52;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v31 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v30 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v31 = v30 != 0;
        }

        *(this + 16) = v31;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v32 = 0;
          v33 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v34 = (v23 + v22);
          v35 = v3 - v22;
          v36 = v22 + 1;
          while (1)
          {
            if (!v35)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_47;
            }

            v37 = v36;
            v38 = *v34;
            *(a2 + 1) = v37;
            v26 |= (v38 & 0x7F) << v32;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            v36 = v37 + 1;
            v14 = v33++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_46;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_46:
          v3 = v37;
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

LABEL_47:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v39 = 0;
          return v39 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_52;
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

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::hash_value(CMMsl::ViewObstructedMachineLearningDecision *this)
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
  v2 = *(this + 16);
  return v2 ^ v1;
}

void CMMsl::ViewObstructedMachineLearningFeatures::~ViewObstructedMachineLearningFeatures(CMMsl::ViewObstructedMachineLearningFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ViewObstructedMachineLearningFeatures::ViewObstructedMachineLearningFeatures(CMMsl::ViewObstructedMachineLearningFeatures *this, const CMMsl::ViewObstructedMachineLearningFeatures *a2)
{
  *this = &unk_286C24408;
  *(this + 29) = 0;
  v2 = *(a2 + 29);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 29) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 29);
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
    result = *(a2 + 17);
    v3 |= 0x4000u;
    *(this + 29) = v3;
    *(this + 17) = result;
    v2 = *(a2 + 29);
  }

LABEL_6:
  if ((v2 & 0x8000) != 0)
  {
    result = *(a2 + 18);
    v3 |= 0x8000u;
    *(this + 29) = v3;
    *(this + 18) = result;
    v2 = *(a2 + 29);
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

  result = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 29) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 29) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 29) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 29) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 29) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 29) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 28);
  v3 |= 0x2000000u;
  *(this + 29) = v3;
  *(this + 28) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 21);
  v3 |= 0x40000u;
  *(this + 29) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 20);
  v3 |= 0x20000u;
  *(this + 29) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 29) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 6);
  v3 |= 8u;
  *(this + 29) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 29) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 29) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 29) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 29) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 22);
  v3 |= 0x80000u;
  *(this + 29) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 23);
  v3 |= 0x100000u;
  *(this + 29) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 24);
  v3 |= 0x200000u;
  *(this + 29) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 25);
  v3 |= 0x400000u;
  *(this + 29) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 26);
  v3 |= 0x800000u;
  *(this + 29) = v3;
  *(this + 26) = result;
  v2 = *(a2 + 29);
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
  result = *(a2 + 27);
  v3 |= 0x1000000u;
  *(this + 29) = v3;
  *(this + 27) = result;
  v2 = *(a2 + 29);
  if ((v2 & 0x100) == 0)
  {
LABEL_29:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_54:
    result = *(a2 + 4);
    *(this + 29) = v3 | 2;
    *(this + 4) = result;
    return result;
  }

LABEL_53:
  result = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 29) = v3;
  *(this + 11) = result;
  if ((*(a2 + 29) & 2) != 0)
  {
    goto LABEL_54;
  }

  return result;
}

CMMsl *CMMsl::ViewObstructedMachineLearningFeatures::operator=(CMMsl *a1, const CMMsl::ViewObstructedMachineLearningFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningFeatures::ViewObstructedMachineLearningFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ViewObstructedMachineLearningFeatures *a2, CMMsl::ViewObstructedMachineLearningFeatures *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  v6 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  v7 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v13;
  v14 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v14;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  v16 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v16;
  v17 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v18;
  v19 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v19;
  v20 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v20;
  v21 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v21;
  v22 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v22;
  v23 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v23;
  v24 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v24;
  v25 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v25;
  v26 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v26;
  v27 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v27;
  v28 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v28;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::ViewObstructedMachineLearningFeatures::ViewObstructedMachineLearningFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24408;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::ViewObstructedMachineLearningFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningFeatures::ViewObstructedMachineLearningFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ViewObstructedMachineLearningFeatures::formatText(CMMsl::ViewObstructedMachineLearningFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 29);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "absMeanGravX", *(this + 4));
    v5 = *(this + 29);
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

  PB::TextFormatter::format(a2, "accelFFTBin1", *(this + 5));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBin2", *(this + 6));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBin3", *(this + 7));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBin4", *(this + 8));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBin5", *(this + 9));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBin6", *(this + 10));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "accelFFTBinDotPressureFFTBin", *(this + 11));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "fFTBin1", *(this + 12));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "fFTBin2", *(this + 13));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "fFTBin3", *(this + 14));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "fFTBin4", *(this + 15));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "fFTBin5", *(this + 16));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "meanGravX", *(this + 17));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "meanGravY", *(this + 18));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "meanGravZ", *(this + 19));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "medianLux", *(this + 20));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "medianPocketProbability", *(this + 21));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin1", *(this + 22));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin2", *(this + 23));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin3", *(this + 24));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin4", *(this + 25));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin5", *(this + 26));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "pressureFFTBin6", *(this + 27));
  v5 = *(this + 29);
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
  PB::TextFormatter::format(a2, "stdPressure", *(this + 28));
  if (*(this + 29))
  {
LABEL_27:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_28:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ViewObstructedMachineLearningFeatures::readFrom(CMMsl::ViewObstructedMachineLearningFeatures *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_122:
    v37 = v4 ^ 1;
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
        goto LABEL_122;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 29) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v30 = 0;
            v31 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v32 = (v23 + v22);
            v33 = v2 - v22;
            v34 = v22 + 1;
            while (1)
            {
              if (!v33)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_120;
              }

              v35 = v34;
              v36 = *v32;
              *(a2 + 1) = v35;
              v26 |= (v36 & 0x7F) << v30;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v32;
              --v33;
              v34 = v35 + 1;
              v14 = v31++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_119:
                v2 = v35;
                goto LABEL_120;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_119;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_120;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_120:
          *(this + 1) = v26;
          break;
        case 2u:
          *(this + 29) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_112;
        case 3u:
          *(this + 29) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_112;
        case 4u:
          *(this + 29) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_112;
        case 5u:
          *(this + 29) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_112;
        case 6u:
          *(this + 29) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_112;
        case 7u:
          *(this + 29) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_112;
        case 8u:
          *(this + 29) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_112;
        case 9u:
          *(this + 29) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_112;
        case 0xAu:
          *(this + 29) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_112;
        case 0xBu:
          *(this + 29) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_112;
        case 0xCu:
          *(this + 29) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_112;
        case 0xDu:
          *(this + 29) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_112;
        case 0xEu:
          *(this + 29) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_112;
        case 0xFu:
          *(this + 29) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_112;
        case 0x10u:
          *(this + 29) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_112;
        case 0x11u:
          *(this + 29) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_112;
        case 0x12u:
          *(this + 29) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_112;
        case 0x13u:
          *(this + 29) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_112;
        case 0x14u:
          *(this + 29) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_112;
        case 0x15u:
          *(this + 29) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_112;
        case 0x16u:
          *(this + 29) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_112;
        case 0x17u:
          *(this + 29) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_112;
        case 0x18u:
          *(this + 29) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_112;
        case 0x19u:
          *(this + 29) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Au:
          *(this + 29) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_102:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 4) = *(*a2 + v2);
LABEL_112:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_113:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_122;
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
        goto LABEL_122;
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
      v2 = *(a2 + 1);
      goto LABEL_113;
    }

    v37 = 0;
  }

  return v37 & 1;
}

uint64_t CMMsl::ViewObstructedMachineLearningFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 116);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
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

  this = PB::Writer::write(a2, *(v3 + 68));
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
  this = PB::Writer::write(a2, *(v3 + 72));
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
  this = PB::Writer::write(a2, *(v3 + 76));
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
  this = PB::Writer::write(a2, *(v3 + 48));
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
  this = PB::Writer::write(a2, *(v3 + 52));
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
  this = PB::Writer::write(a2, *(v3 + 60));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::write(a2, *(v3 + 112));
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
  this = PB::Writer::write(a2, *(v3 + 84));
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
  this = PB::Writer::write(a2, *(v3 + 80));
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
  this = PB::Writer::write(a2, *(v3 + 20));
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
  this = PB::Writer::write(a2, *(v3 + 24));
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
  this = PB::Writer::write(a2, *(v3 + 28));
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
  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 36));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
  this = PB::Writer::write(a2, *(v3 + 88));
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
  this = PB::Writer::write(a2, *(v3 + 92));
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
  this = PB::Writer::write(a2, *(v3 + 96));
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
  this = PB::Writer::write(a2, *(v3 + 100));
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
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    this = PB::Writer::write(a2, *(v3 + 44));
    if ((*(v3 + 116) & 2) == 0)
    {
      return this;
    }

    goto LABEL_53;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_53:
  v6 = *(v3 + 16);

  return PB::Writer::write(a2, v6);
}

uint64_t CMMsl::ViewObstructedMachineLearningFeatures::hash_value(CMMsl::ViewObstructedMachineLearningFeatures *this)
{
  v1 = *(this + 29);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_3;
    }

LABEL_49:
    v4 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_6;
    }

LABEL_50:
    v6 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_9;
    }

LABEL_51:
    v8 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_52:
    v10 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_53:
    v12 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_18;
    }

LABEL_54:
    v14 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_21;
    }

LABEL_55:
    v16 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    v18 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    v20 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_30;
    }

LABEL_58:
    v22 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    v24 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    v26 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_39;
    }

LABEL_61:
    v28 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

  v2 = *(this + 1);
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_49;
  }

LABEL_3:
  v3 = *(this + 17);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_50;
  }

LABEL_6:
  v5 = *(this + 18);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_51;
  }

LABEL_9:
  v7 = *(this + 19);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_12:
  v9 = *(this + 12);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_53;
  }

LABEL_15:
  v11 = *(this + 13);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_54;
  }

LABEL_18:
  v13 = *(this + 14);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_21:
  v15 = *(this + 15);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  v17 = *(this + 16);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  v19 = *(this + 28);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_58;
  }

LABEL_30:
  v21 = *(this + 21);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

LABEL_33:
  v23 = *(this + 20);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  v25 = *(this + 5);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_39:
  v27 = *(this + 6);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_42:
    v29 = *(this + 7);
    v30 = LODWORD(v29);
    if (v29 == 0.0)
    {
      v30 = 0;
    }

    if ((v1 & 0x20) != 0)
    {
      goto LABEL_45;
    }

LABEL_63:
    v32 = 0;
    goto LABEL_64;
  }

LABEL_62:
  v30 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_45:
  v31 = *(this + 8);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

LABEL_64:
  if ((v1 & 0x40) == 0)
  {
    v33 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_66;
    }

LABEL_96:
    v35 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_69;
    }

LABEL_97:
    v37 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_72;
    }

LABEL_98:
    v39 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_75;
    }

LABEL_99:
    v41 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_78;
    }

LABEL_100:
    v43 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v45 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_102:
    v47 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_103;
  }

  v52 = *(this + 9);
  v33 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_96;
  }

LABEL_66:
  v34 = *(this + 10);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_97;
  }

LABEL_69:
  v36 = *(this + 22);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_98;
  }

LABEL_72:
  v38 = *(this + 23);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_99;
  }

LABEL_75:
  v40 = *(this + 24);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_100;
  }

LABEL_78:
  v42 = *(this + 25);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  v44 = *(this + 26);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_84:
  v46 = *(this + 27);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_87:
    v48 = *(this + 11);
    v49 = LODWORD(v48);
    if (v48 == 0.0)
    {
      v49 = 0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_90;
    }

LABEL_104:
    v51 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51;
  }

LABEL_103:
  v49 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_104;
  }

LABEL_90:
  v50 = *(this + 4);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51;
}