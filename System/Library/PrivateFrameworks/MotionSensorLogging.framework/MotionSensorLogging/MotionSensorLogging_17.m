uint64_t CMMsl::FallSnippet::makeMeta(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeAccel100(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeAccel800(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeGyro100(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeGyro200(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeDm(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makePressure(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeHeartRate(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeWristState(uint64_t this)
{
  if (!*(this + 120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeFallState(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeFallStats(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeSuppressionFeatures(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeDmAlwaysOn(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FallSnippet::makeOdometerEntry(uint64_t this)
{
  if (!*(this + 96))
  {
    operator new();
  }

  return this;
}

void CMMsl::FallState::~FallState(CMMsl::FallState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FallState::FallState(uint64_t this, const CMMsl::FallState *a2)
{
  *this = &unk_286C1FEE8;
  *(this + 48) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 48) = 2;
    *(this + 16) = v4;
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
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 48) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 4u;
    *(this + 48) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 48);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 48) = v3;
  *(this + 40) = v7;
  v2 = *(a2 + 48);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 48) = v3;
  *(this + 36) = v8;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 44);
    *(this + 48) = v3 | 0x80;
    *(this + 44) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 7);
  v3 |= 8u;
  *(this + 48) = v3;
  *(this + 28) = v10;
  if ((*(a2 + 48) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::FallState::operator=(uint64_t a1, const CMMsl::FallState *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallState::FallState(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    v11 = v7;
    LOBYTE(v6) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FallState *a2, CMMsl::FallState *a3)
{
  v3 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v5;
  LODWORD(v5) = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v5) = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v5;
  LODWORD(v5) = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v5;
  LOBYTE(v5) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v5;
  return this;
}

uint64_t CMMsl::FallState::FallState(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1FEE8;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 40);
  *(result + 36) = *(a2 + 36);
  *(result + 32) = *(a2 + 32);
  *(result + 28) = *(a2 + 28);
  *(result + 44) = *(a2 + 44);
  return result;
}

{
  *result = &unk_286C1FEE8;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 40);
  *(result + 36) = *(a2 + 36);
  *(result + 32) = *(a2 + 32);
  *(result + 28) = *(a2 + 28);
  *(result + 44) = *(a2 + 44);
  return result;
}

uint64_t CMMsl::FallState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C1FEE8;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v4 = *(a2 + 40);
    v5 = *(a2 + 44);
    v15 = *(a1 + 48);
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v13 = *(a1 + 40);
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    *(a1 + 48) = v3;
    *(a1 + 40) = v4;
    *(a1 + 24) = v8;
    v11 = v6;
    v12 = v7;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v5;
    v14 = v3;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::FallState::formatText(CMMsl::FallState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "aopTsNow");
    v5 = *(this + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "aopTsSensor");
  v5 = *(this + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(this + 44);
  PB::TextFormatter::format(a2, "fallAlertSentFromReferee");
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(this + 6);
  PB::TextFormatter::format(a2, "isFall");
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(this + 7);
  PB::TextFormatter::format(a2, "operatingMode");
  v5 = *(this + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(this + 8);
  PB::TextFormatter::format(a2, "resolution");
  v5 = *(this + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v13 = *(this + 9);
  PB::TextFormatter::format(a2, "response");
  if ((*(this + 48) & 0x40) != 0)
  {
LABEL_9:
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "state");
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FallState::readFrom(CMMsl::FallState *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 48) |= 8u;
          v73 = *(a2 + 1);
          v2 = *(a2 + 2);
          v74 = *a2;
          if (v73 > 0xFFFFFFFFFFFFFFF5 || v73 + 10 > v2)
          {
            v102 = 0;
            v103 = 0;
            v77 = 0;
            if (v2 <= v73)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v104 = (v74 + v73);
            v105 = v3 - v73;
            v106 = v73 + 1;
            while (1)
            {
              if (!v105)
              {
                LODWORD(v77) = 0;
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              v107 = v106;
              v108 = *v104;
              *(a2 + 1) = v107;
              v77 |= (v108 & 0x7F) << v102;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              ++v104;
              --v105;
              v106 = v107 + 1;
              v14 = v103++ > 8;
              if (v14)
              {
                LODWORD(v77) = 0;
                goto LABEL_171;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v77) = 0;
            }

LABEL_171:
            v3 = v107;
          }

          else
          {
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v78 = (v74 + v73);
            v79 = v73 + 1;
            while (1)
            {
              v3 = v79;
              *(a2 + 1) = v79;
              v80 = *v78++;
              v77 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
                LODWORD(v77) = 0;
                break;
              }
            }
          }

LABEL_172:
          *(this + 7) = v77;
          goto LABEL_19;
        }

        if (v22 == 8)
        {
          *(this + 48) |= 0x80u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v48 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v47 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v48 = v47 != 0;
          }

          *(this + 44) = v48;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 48) |= 0x20u;
          v57 = *(a2 + 1);
          v2 = *(a2 + 2);
          v58 = *a2;
          if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
          {
            v88 = 0;
            v89 = 0;
            v61 = 0;
            if (v2 <= v57)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v90 = (v58 + v57);
            v91 = v3 - v57;
            v92 = v57 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v61) = 0;
                *(a2 + 24) = 1;
                goto LABEL_164;
              }

              v93 = v92;
              v94 = *v90;
              *(a2 + 1) = v93;
              v61 |= (v94 & 0x7F) << v88;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              ++v90;
              --v91;
              v92 = v93 + 1;
              v14 = v89++ > 8;
              if (v14)
              {
                LODWORD(v61) = 0;
                goto LABEL_163;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v61) = 0;
            }

LABEL_163:
            v3 = v93;
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
              v3 = v63;
              *(a2 + 1) = v63;
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
                LODWORD(v61) = 0;
                break;
              }
            }
          }

LABEL_164:
          *(this + 9) = v61;
          goto LABEL_19;
        }

        if (v22 == 6)
        {
          *(this + 48) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v116 = 0;
            v117 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v118 = (v32 + v31);
            v119 = v3 - v31;
            v120 = v31 + 1;
            while (1)
            {
              if (!v119)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_180;
              }

              v121 = v120;
              v122 = *v118;
              *(a2 + 1) = v121;
              v35 |= (v122 & 0x7F) << v116;
              if ((v122 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              ++v118;
              --v119;
              v120 = v121 + 1;
              v14 = v117++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_179;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_179:
            v3 = v121;
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
              v3 = v37;
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

LABEL_180:
          *(this + 8) = v35;
          goto LABEL_19;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 48) |= 4u;
        v65 = *(a2 + 1);
        v2 = *(a2 + 2);
        v66 = *a2;
        if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
        {
          v95 = 0;
          v96 = 0;
          v69 = 0;
          if (v2 <= v65)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v97 = (v66 + v65);
          v98 = v3 - v65;
          v99 = v65 + 1;
          while (1)
          {
            if (!v98)
            {
              LODWORD(v69) = 0;
              *(a2 + 24) = 1;
              goto LABEL_168;
            }

            v100 = v99;
            v101 = *v97;
            *(a2 + 1) = v100;
            v69 |= (v101 & 0x7F) << v95;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            ++v97;
            --v98;
            v99 = v100 + 1;
            v14 = v96++ > 8;
            if (v14)
            {
              LODWORD(v69) = 0;
              goto LABEL_167;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v69) = 0;
          }

LABEL_167:
          v3 = v100;
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
            v3 = v71;
            *(a2 + 1) = v71;
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

LABEL_168:
        *(this + 6) = v69;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 48) |= 0x40u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v123 = 0;
          v124 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v125 = (v40 + v39);
          v126 = v3 - v39;
          v127 = v39 + 1;
          while (1)
          {
            if (!v126)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_184;
            }

            v128 = v127;
            v129 = *v125;
            *(a2 + 1) = v128;
            v43 |= (v129 & 0x7F) << v123;
            if ((v129 & 0x80) == 0)
            {
              break;
            }

            v123 += 7;
            ++v125;
            --v126;
            v127 = v128 + 1;
            v14 = v124++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_183;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_183:
          v3 = v128;
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
            v3 = v45;
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

LABEL_184:
        *(this + 10) = v43;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 48) |= 2u;
        v49 = *(a2 + 1);
        v2 = *(a2 + 2);
        v50 = *a2;
        if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
        {
          v81 = 0;
          v82 = 0;
          v53 = 0;
          if (v2 <= v49)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v83 = (v50 + v49);
          v84 = v3 - v49;
          v85 = v49 + 1;
          while (1)
          {
            if (!v84)
            {
              v53 = 0;
              *(a2 + 24) = 1;
              goto LABEL_160;
            }

            v86 = v85;
            v87 = *v83;
            *(a2 + 1) = v86;
            v53 |= (v87 & 0x7F) << v81;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            ++v83;
            --v84;
            v85 = v86 + 1;
            v14 = v82++ > 8;
            if (v14)
            {
              v53 = 0;
              goto LABEL_159;
            }
          }

          if (*(a2 + 24))
          {
            v53 = 0;
          }

LABEL_159:
          v3 = v86;
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
            v3 = v55;
            *(a2 + 1) = v55;
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
              v53 = 0;
              break;
            }
          }
        }

LABEL_160:
        *(this + 2) = v53;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v109 = 0;
          v110 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v111 = (v24 + v23);
          v112 = v3 - v23;
          v113 = v23 + 1;
          while (1)
          {
            if (!v112)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_176;
            }

            v114 = v113;
            v115 = *v111;
            *(a2 + 1) = v114;
            v27 |= (v115 & 0x7F) << v109;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            ++v111;
            --v112;
            v113 = v114 + 1;
            v14 = v110++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_175;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_175:
          v3 = v114;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_176:
        *(this + 1) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v130 = 0;
      return v130 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v130 = v4 ^ 1;
  return v130 & 1;
}

uint64_t CMMsl::FallState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v11 = *(v3 + 28);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  v10 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v12 = *(v3 + 44);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::FallState::hash_value(CMMsl::FallState *this)
{
  if ((*(this + 48) & 2) != 0)
  {
    v1 = *(this + 2);
    if (*(this + 48))
    {
LABEL_3:
      v2 = *(this + 1);
      if ((*(this + 48) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 48))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 48) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if ((*(this + 48) & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 48) & 0x40) != 0)
  {
LABEL_5:
    v4 = *(this + 10);
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((*(this + 48) & 0x20) != 0)
  {
LABEL_6:
    v5 = *(this + 9);
    if ((*(this + 48) & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_7:
    v6 = *(this + 8);
    if ((*(this + 48) & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    if ((*(this + 48) & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v8 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_15:
  v6 = 0;
  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = *(this + 7);
  if ((*(this + 48) & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v8 = *(this + 44);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

void CMMsl::FallStats::~FallStats(CMMsl::FallStats *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FallStats::FallStats(CMMsl::FallStats *this, const CMMsl::FallStats *a2)
{
  *this = &unk_286C1FF20;
  *(this + 27) = 0;
  v2 = *(a2 + 27);
  if ((v2 & 0x80000000) != 0)
  {
    v4 = *(a2 + 36);
    v3 = 0x80000000;
    *(this + 27) = 0x80000000;
    *(this + 36) = v4;
    v2 = *(a2 + 27);
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
    v5 = *(a2 + 1);
    v3 |= 1uLL;
    *(this + 27) = v3;
    *(this + 1) = v5;
    v2 = *(a2 + 27);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 27) = v3;
    *(this + 2) = v6;
    v2 = *(a2 + 27);
    if ((v2 & 0x20000) == 0)
    {
LABEL_8:
      if ((v2 & 0x8000000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 22);
  v3 |= 0x20000uLL;
  *(this + 27) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 44);
  v3 |= 0x8000000000uLL;
  *(this + 27) = v3;
  *(this + 44) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 43);
  v3 |= 0x4000000000uLL;
  *(this + 27) = v3;
  *(this + 43) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 48);
  v3 |= 0x80000000000uLL;
  *(this + 27) = v3;
  *(this + 48) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 47);
  v3 |= 0x40000000000uLL;
  *(this + 27) = v3;
  *(this + 47) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x800000000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 52);
  v3 |= 0x800000000000uLL;
  *(this + 27) = v3;
  *(this + 52) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400000000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = *(a2 + 51);
  v3 |= 0x400000000000uLL;
  *(this + 27) = v3;
  *(this + 51) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = *(a2 + 45);
  v3 |= 0x10000000000uLL;
  *(this + 27) = v3;
  *(this + 45) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 49);
  v3 |= 0x100000000000uLL;
  *(this + 27) = v3;
  *(this + 49) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000000000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 53);
  v3 |= 0x1000000000000uLL;
  *(this + 27) = v3;
  *(this + 53) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x10000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 21);
  v3 |= 0x10000uLL;
  *(this + 27) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 42);
  v3 |= 0x2000000000uLL;
  *(this + 27) = v3;
  *(this + 42) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = *(a2 + 46);
  v3 |= 0x20000000000uLL;
  *(this + 27) = v3;
  *(this + 46) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x200000000000) == 0)
  {
LABEL_21:
    if ((v2 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = *(a2 + 50);
  v3 |= 0x200000000000uLL;
  *(this + 27) = v3;
  *(this + 50) = result;
  v2 = *(a2 + 27);
  if ((v2 & 4) == 0)
  {
LABEL_22:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v8 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 27) = v3;
  *(this + 3) = v8;
  v2 = *(a2 + 27);
  if ((v2 & 0x10) == 0)
  {
LABEL_23:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = *(a2 + 9);
  v3 |= 0x10uLL;
  *(this + 27) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x800000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = *(a2 + 28);
  v3 |= 0x800000uLL;
  *(this + 27) = v3;
  *(this + 28) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = *(a2 + 12);
  v3 |= 0x80uLL;
  *(this + 27) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x40) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = *(a2 + 11);
  v3 |= 0x40uLL;
  *(this + 27) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = *(a2 + 25);
  v3 |= 0x100000uLL;
  *(this + 27) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x80000) == 0)
  {
LABEL_28:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = *(a2 + 24);
  v3 |= 0x80000uLL;
  *(this + 27) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = *(a2 + 35);
  v3 |= 0x40000000uLL;
  *(this + 27) = v3;
  *(this + 35) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000) == 0)
  {
LABEL_30:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = *(a2 + 17);
  v3 |= 0x1000uLL;
  *(this + 27) = v3;
  *(this + 17) = v9;
  v2 = *(a2 + 27);
  if ((v2 & 0x4000) == 0)
  {
LABEL_31:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  v10 = *(a2 + 19);
  v3 |= 0x4000uLL;
  *(this + 27) = v3;
  *(this + 19) = v10;
  v2 = *(a2 + 27);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  v11 = *(a2 + 37);
  v3 |= 0x100000000uLL;
  *(this + 27) = v3;
  *(this + 37) = v11;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  v12 = *(a2 + 41);
  v3 |= 0x1000000000uLL;
  *(this + 27) = v3;
  *(this + 41) = v12;
  v2 = *(a2 + 27);
  if ((v2 & 0x100) == 0)
  {
LABEL_34:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  v13 = *(a2 + 13);
  v3 |= 0x100uLL;
  *(this + 27) = v3;
  *(this + 13) = v13;
  v2 = *(a2 + 27);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = *(a2 + 38);
  v3 |= 0x200000000uLL;
  *(this + 27) = v3;
  *(this + 38) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x800) == 0)
  {
LABEL_36:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = *(a2 + 16);
  v3 |= 0x800uLL;
  *(this + 27) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = *(a2 + 15);
  v3 |= 0x400uLL;
  *(this + 27) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x200000) == 0)
  {
LABEL_38:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 26);
  v3 |= 0x200000uLL;
  *(this + 27) = v3;
  *(this + 26) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x40000) == 0)
  {
LABEL_39:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 23);
  v3 |= 0x40000uLL;
  *(this + 27) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 34);
  v3 |= 0x20000000uLL;
  *(this + 27) = v3;
  *(this + 34) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 40);
  v3 |= 0x800000000uLL;
  *(this + 27) = v3;
  *(this + 40) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = *(a2 + 39);
  v3 |= 0x400000000uLL;
  *(this + 27) = v3;
  *(this + 39) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x8000) == 0)
  {
LABEL_43:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  v14 = *(a2 + 20);
  v3 |= 0x8000uLL;
  *(this + 27) = v3;
  *(this + 20) = v14;
  v2 = *(a2 + 27);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_44:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 33);
  v3 |= 0x10000000uLL;
  *(this + 27) = v3;
  *(this + 33) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_45:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 31);
  v3 |= 0x4000000uLL;
  *(this + 27) = v3;
  *(this + 31) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_46:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 32);
  v3 |= 0x8000000uLL;
  *(this + 27) = v3;
  *(this + 32) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x20) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 10);
  v3 |= 0x20uLL;
  *(this + 27) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = *(a2 + 29);
  v3 |= 0x1000000uLL;
  *(this + 27) = v3;
  *(this + 29) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_49:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_97;
  }

LABEL_96:
  v15 = *(a2 + 30);
  v3 |= 0x2000000uLL;
  *(this + 27) = v3;
  *(this + 30) = v15;
  v2 = *(a2 + 27);
  if ((v2 & 0x2000) == 0)
  {
LABEL_50:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = *(a2 + 18);
  v3 |= 0x2000uLL;
  *(this + 27) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x200) == 0)
  {
LABEL_51:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = *(a2 + 14);
  v3 |= 0x200uLL;
  *(this + 27) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400000) == 0)
  {
LABEL_52:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_100:
    result = *(a2 + 8);
    *(this + 27) = v3 | 8;
    *(this + 8) = result;
    return result;
  }

LABEL_99:
  result = *(a2 + 27);
  v3 |= 0x400000uLL;
  *(this + 27) = v3;
  *(this + 27) = result;
  if ((*(a2 + 27) & 8) != 0)
  {
    goto LABEL_100;
  }

  return result;
}

CMMsl *CMMsl::FallStats::operator=(CMMsl *a1, const CMMsl::FallStats *a2)
{
  if (a1 != a2)
  {
    CMMsl::FallStats::FallStats(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FallStats *a2, CMMsl::FallStats *a3)
{
  v3 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  LODWORD(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v6;
  v7 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v7;
  v8 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v8;
  v9 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v10;
  v11 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v11;
  v12 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v12;
  v13 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v13;
  v14 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v14;
  v15 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v15;
  v16 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v16;
  v17 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v17;
  v18 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v18;
  v19 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v19;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v21;
  v22 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v22;
  v23 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v23;
  v24 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v24;
  v25 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v25;
  v26 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v26;
  v27 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v27;
  LODWORD(v20) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v20;
  LODWORD(v20) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v20;
  LODWORD(v20) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v20;
  LODWORD(v20) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v20;
  LODWORD(v20) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v20;
  v28 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v28;
  v29 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v29;
  v30 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v30;
  v31 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v31;
  v32 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v32;
  v33 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v33;
  v34 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v34;
  v35 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v35;
  LODWORD(v20) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v20;
  v36 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v36;
  v37 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v37;
  v38 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v38;
  v39 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v39;
  v40 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v40;
  LODWORD(v20) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v20;
  v41 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v41;
  v42 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v42;
  v43 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v43;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

float CMMsl::FallStats::FallStats(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FF20;
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 108) = *(a2 + 108);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

CMMsl *CMMsl::FallStats::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FallStats::FallStats(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FallStats::formatText(CMMsl::FallStats *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 27);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "abruptGravityChangeAngle", *(this + 8));
    v5 = *(this + 27);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelPathLength", *(this + 9));
  v5 = *(this + 27);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "accelPathLengthWithPeak", *(this + 10));
  v5 = *(this + 27);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "angleChangePostImpact", *(this + 11));
  v5 = *(this + 27);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "angleChangePreImpact", *(this + 12));
  v5 = *(this + 27);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v6 = *(this + 1);
  PB::TextFormatter::format(a2, "aopTsNow");
  v5 = *(this + 27);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v7 = *(this + 2);
  PB::TextFormatter::format(a2, "aopTsSensor");
  v5 = *(this + 27);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v8 = *(this + 13);
  PB::TextFormatter::format(a2, "crown");
  v5 = *(this + 27);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "crownVariance", *(this + 14));
  v5 = *(this + 27);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "extrapolatedMaxAccelNorm", *(this + 15));
  v5 = *(this + 27);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "extrapolatedMaxMinusMin", *(this + 16));
  v5 = *(this + 27);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  v9 = *(this + 17);
  PB::TextFormatter::format(a2, "fallType");
  v5 = *(this + 27);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "gravityVariance", *(this + 18));
  v5 = *(this + 27);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(this + 19);
  PB::TextFormatter::format(a2, "isFall");
  v5 = *(this + 27);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(this + 20);
  PB::TextFormatter::format(a2, "isNearFall");
  v5 = *(this + 27);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "jerkVectorMagMax", *(this + 21));
  v5 = *(this + 27);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "magMax", *(this + 22));
  v5 = *(this + 27);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "maxAccelNorm", *(this + 23));
  v5 = *(this + 27);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "maxAngleChangePostImpact", *(this + 24));
  v5 = *(this + 27);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "maxAngleChangePreImpact", *(this + 25));
  v5 = *(this + 27);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "maxMinusMin", *(this + 26));
  v5 = *(this + 27);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "medianAbsGravityY", *(this + 27));
  v5 = *(this + 27);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "minInertialZ", *(this + 28));
  v5 = *(this + 27);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "minInertialZHighFreq", *(this + 29));
  v5 = *(this + 27);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  v12 = *(this + 30);
  PB::TextFormatter::format(a2, "operatingMode");
  v5 = *(this + 27);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "pathLengthDecorrelation", *(this + 31));
  v5 = *(this + 27);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "pathLengthDelaySpread", *(this + 32));
  v5 = *(this + 27);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v5 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "pathLengthHarmonicMean", *(this + 33));
  v5 = *(this + 27);
  if ((v5 & 4) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  v13 = *(this + 3);
  PB::TextFormatter::format(a2, "peakTimestamp");
  v5 = *(this + 27);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "poseAtImpact", *(this + 34));
  v5 = *(this + 27);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "posteriorRatio", *(this + 35));
  v5 = *(this + 27);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  v14 = *(this + 36);
  PB::TextFormatter::format(a2, "seq");
  v5 = *(this + 27);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  v15 = *(this + 37);
  PB::TextFormatter::format(a2, "simulated");
  v5 = *(this + 27);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "sumDeltaAngles", *(this + 38));
  v5 = *(this + 27);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "swingAngle", *(this + 39));
  v5 = *(this + 27);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "tiltAngle", *(this + 40));
  v5 = *(this + 27);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  v16 = *(this + 41);
  PB::TextFormatter::format(a2, "trialCount");
  v5 = *(this + 27);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "xJerkScalarMagMax", *(this + 42));
  v5 = *(this + 27);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "xMax", *(this + 43));
  v5 = *(this + 27);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "xMin", *(this + 44));
  v5 = *(this + 27);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(a2, "xZCTime", *(this + 45));
  v5 = *(this + 27);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(a2, "yJerkScalarMagMax", *(this + 46));
  v5 = *(this + 27);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(a2, "yMax", *(this + 47));
  v5 = *(this + 27);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(a2, "yMin", *(this + 48));
  v5 = *(this + 27);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(a2, "yZCTime", *(this + 49));
  v5 = *(this + 27);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(a2, "zJerkScalarMagMax", *(this + 50));
  v5 = *(this + 27);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(a2, "zMax", *(this + 51));
  v5 = *(this + 27);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_101:
  PB::TextFormatter::format(a2, "zMin", *(this + 52));
  if ((*(this + 27) & 0x1000000000000) != 0)
  {
LABEL_50:
    PB::TextFormatter::format(a2, "zZCTime", *(this + 53));
  }

LABEL_51:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FallStats::readFrom(CMMsl::FallStats *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_350:
    v226 = v4 ^ 1;
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
        goto LABEL_350;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 27) |= 0x80000000uLL;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_330;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_251:
            LODWORD(v27) = 0;
            goto LABEL_330;
          }

          v183 = 0;
          v184 = 0;
          v27 = 0;
          v185 = (v24 + v23);
          v18 = v22 >= v23;
          v186 = v22 - v23;
          if (!v18)
          {
            v186 = 0;
          }

          v187 = v23 + 1;
          while (2)
          {
            if (v186)
            {
              v188 = *v185;
              *(a2 + 1) = v187;
              v27 |= (v188 & 0x7F) << v183;
              if (v188 < 0)
              {
                v183 += 7;
                ++v185;
                --v186;
                ++v187;
                v14 = v184++ > 8;
                if (v14)
                {
                  goto LABEL_251;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_330:
          *(this + 36) = v27;
          goto LABEL_302;
        case 2u:
          *(this + 27) |= 1uLL;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_333;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_259:
            v91 = 0;
            goto LABEL_333;
          }

          v189 = 0;
          v190 = 0;
          v91 = 0;
          v191 = (v88 + v87);
          v18 = v86 >= v87;
          v192 = v86 - v87;
          if (!v18)
          {
            v192 = 0;
          }

          v193 = v87 + 1;
          while (2)
          {
            if (v192)
            {
              v194 = *v191;
              *(a2 + 1) = v193;
              v91 |= (v194 & 0x7F) << v189;
              if (v194 < 0)
              {
                v189 += 7;
                ++v191;
                --v192;
                ++v193;
                v14 = v190++ > 8;
                if (v14)
                {
                  goto LABEL_259;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v91 = 0;
              }
            }

            else
            {
              v91 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_333:
          *(this + 1) = v91;
          goto LABEL_302;
        case 3u:
          *(this + 27) |= 2uLL;
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
                goto LABEL_327;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_243:
            v79 = 0;
            goto LABEL_327;
          }

          v177 = 0;
          v178 = 0;
          v79 = 0;
          v179 = (v76 + v75);
          v18 = v74 >= v75;
          v180 = v74 - v75;
          if (!v18)
          {
            v180 = 0;
          }

          v181 = v75 + 1;
          while (2)
          {
            if (v180)
            {
              v182 = *v179;
              *(a2 + 1) = v181;
              v79 |= (v182 & 0x7F) << v177;
              if (v182 < 0)
              {
                v177 += 7;
                ++v179;
                --v180;
                ++v181;
                v14 = v178++ > 8;
                if (v14)
                {
                  goto LABEL_243;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v79 = 0;
              }
            }

            else
            {
              v79 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_327:
          *(this + 2) = v79;
          goto LABEL_302;
        case 4u:
          *(this + 27) |= 0x20000uLL;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 22) = *(*a2 + v84);
          goto LABEL_301;
        case 5u:
          *(this + 27) |= 0x8000000000uLL;
          v60 = *(a2 + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 44) = *(*a2 + v60);
          goto LABEL_301;
        case 6u:
          *(this + 27) |= 0x4000000000uLL;
          v107 = *(a2 + 1);
          if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 43) = *(*a2 + v107);
          goto LABEL_301;
        case 7u:
          *(this + 27) |= 0x80000000000uLL;
          v110 = *(a2 + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 48) = *(*a2 + v110);
          goto LABEL_301;
        case 8u:
          *(this + 27) |= 0x40000000000uLL;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 47) = *(*a2 + v85);
          goto LABEL_301;
        case 9u:
          *(this + 27) |= 0x800000000000uLL;
          v113 = *(a2 + 1);
          if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 52) = *(*a2 + v113);
          goto LABEL_301;
        case 0xAu:
          *(this + 27) |= 0x400000000000uLL;
          v63 = *(a2 + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 51) = *(*a2 + v63);
          goto LABEL_301;
        case 0xBu:
          *(this + 27) |= 0x10000000000uLL;
          v112 = *(a2 + 1);
          if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 45) = *(*a2 + v112);
          goto LABEL_301;
        case 0xCu:
          *(this + 27) |= 0x100000000000uLL;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 49) = *(*a2 + v59);
          goto LABEL_301;
        case 0xDu:
          *(this + 27) |= 0x1000000000000uLL;
          v62 = *(a2 + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 53) = *(*a2 + v62);
          goto LABEL_301;
        case 0xEu:
          *(this + 27) |= 0x10000uLL;
          v109 = *(a2 + 1);
          if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 21) = *(*a2 + v109);
          goto LABEL_301;
        case 0xFu:
          *(this + 27) |= 0x2000000000uLL;
          v56 = *(a2 + 1);
          if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 42) = *(*a2 + v56);
          goto LABEL_301;
        case 0x10u:
          *(this + 27) |= 0x20000000000uLL;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 46) = *(*a2 + v83);
          goto LABEL_301;
        case 0x11u:
          *(this + 27) |= 0x200000000000uLL;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 50) = *(*a2 + v46);
          goto LABEL_301;
        case 0x12u:
          *(this + 27) |= 4uLL;
          v97 = *(a2 + 1);
          v96 = *(a2 + 2);
          v98 = *a2;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(a2 + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_336;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_267:
            v101 = 0;
            goto LABEL_336;
          }

          v195 = 0;
          v196 = 0;
          v101 = 0;
          v197 = (v98 + v97);
          v18 = v96 >= v97;
          v198 = v96 - v97;
          if (!v18)
          {
            v198 = 0;
          }

          v199 = v97 + 1;
          while (2)
          {
            if (v198)
            {
              v200 = *v197;
              *(a2 + 1) = v199;
              v101 |= (v200 & 0x7F) << v195;
              if (v200 < 0)
              {
                v195 += 7;
                ++v197;
                --v198;
                ++v199;
                v14 = v196++ > 8;
                if (v14)
                {
                  goto LABEL_267;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v101 = 0;
              }
            }

            else
            {
              v101 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_336:
          *(this + 3) = v101;
          goto LABEL_302;
        case 0x13u:
          *(this + 27) |= 0x10uLL;
          v111 = *(a2 + 1);
          if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 9) = *(*a2 + v111);
          goto LABEL_301;
        case 0x14u:
          *(this + 27) |= 0x800000uLL;
          v119 = *(a2 + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 28) = *(*a2 + v119);
          goto LABEL_301;
        case 0x15u:
          *(this + 27) |= 0x80uLL;
          v106 = *(a2 + 1);
          if (v106 > 0xFFFFFFFFFFFFFFFBLL || v106 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 12) = *(*a2 + v106);
          goto LABEL_301;
        case 0x16u:
          *(this + 27) |= 0x40uLL;
          v108 = *(a2 + 1);
          if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 11) = *(*a2 + v108);
          goto LABEL_301;
        case 0x17u:
          *(this + 27) |= 0x100000uLL;
          v117 = *(a2 + 1);
          if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 25) = *(*a2 + v117);
          goto LABEL_301;
        case 0x18u:
          *(this + 27) |= 0x80000uLL;
          v121 = *(a2 + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 24) = *(*a2 + v121);
          goto LABEL_301;
        case 0x19u:
          *(this + 27) |= 0x40000000uLL;
          v73 = *(a2 + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 35) = *(*a2 + v73);
          goto LABEL_301;
        case 0x1Au:
          *(this + 27) |= 0x1000uLL;
          v65 = *(a2 + 1);
          v64 = *(a2 + 2);
          v66 = *a2;
          if (v65 <= 0xFFFFFFFFFFFFFFF5 && v65 + 10 <= v64)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            do
            {
              *(a2 + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_324;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
            }

            while (!v14);
LABEL_235:
            LODWORD(v69) = 0;
            goto LABEL_324;
          }

          v171 = 0;
          v172 = 0;
          v69 = 0;
          v173 = (v66 + v65);
          v18 = v64 >= v65;
          v174 = v64 - v65;
          if (!v18)
          {
            v174 = 0;
          }

          v175 = v65 + 1;
          while (2)
          {
            if (v174)
            {
              v176 = *v173;
              *(a2 + 1) = v175;
              v69 |= (v176 & 0x7F) << v171;
              if (v176 < 0)
              {
                v171 += 7;
                ++v173;
                --v174;
                ++v175;
                v14 = v172++ > 8;
                if (v14)
                {
                  goto LABEL_235;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v69) = 0;
              }
            }

            else
            {
              LODWORD(v69) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_324:
          *(this + 17) = v69;
          goto LABEL_302;
        case 0x1Bu:
          *(this + 27) |= 0x4000uLL;
          v150 = *(a2 + 1);
          v149 = *(a2 + 2);
          v151 = *a2;
          if (v150 <= 0xFFFFFFFFFFFFFFF5 && v150 + 10 <= v149)
          {
            v152 = 0;
            v153 = 0;
            v154 = 0;
            v155 = (v151 + v150);
            v156 = v150 + 1;
            do
            {
              *(a2 + 1) = v156;
              v157 = *v155++;
              v154 |= (v157 & 0x7F) << v152;
              if ((v157 & 0x80) == 0)
              {
                goto LABEL_348;
              }

              v152 += 7;
              ++v156;
              v14 = v153++ > 8;
            }

            while (!v14);
LABEL_299:
            LODWORD(v154) = 0;
            goto LABEL_348;
          }

          v219 = 0;
          v220 = 0;
          v154 = 0;
          v221 = (v151 + v150);
          v18 = v149 >= v150;
          v222 = v149 - v150;
          if (!v18)
          {
            v222 = 0;
          }

          v223 = v150 + 1;
          while (2)
          {
            if (v222)
            {
              v224 = *v221;
              *(a2 + 1) = v223;
              v154 |= (v224 & 0x7F) << v219;
              if (v224 < 0)
              {
                v219 += 7;
                ++v221;
                --v222;
                ++v223;
                v14 = v220++ > 8;
                if (v14)
                {
                  goto LABEL_299;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v154) = 0;
              }
            }

            else
            {
              LODWORD(v154) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_348:
          *(this + 19) = v154;
          goto LABEL_302;
        case 0x1Cu:
          *(this + 27) |= 0x100000000uLL;
          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
          v38 = *a2;
          if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            do
            {
              *(a2 + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                goto LABEL_318;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v41) = 0;
            goto LABEL_318;
          }

          v159 = 0;
          v160 = 0;
          v41 = 0;
          v161 = (v38 + v37);
          v18 = v36 >= v37;
          v162 = v36 - v37;
          if (!v18)
          {
            v162 = 0;
          }

          v163 = v37 + 1;
          while (2)
          {
            if (v162)
            {
              v164 = *v161;
              *(a2 + 1) = v163;
              v41 |= (v164 & 0x7F) << v159;
              if (v164 < 0)
              {
                v159 += 7;
                ++v161;
                --v162;
                ++v163;
                v14 = v160++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_318:
          *(this + 37) = v41;
          goto LABEL_302;
        case 0x1Du:
          *(this + 27) |= 0x1000000000uLL;
          v123 = *(a2 + 1);
          v122 = *(a2 + 2);
          v124 = *a2;
          if (v123 <= 0xFFFFFFFFFFFFFFF5 && v123 + 10 <= v122)
          {
            v125 = 0;
            v126 = 0;
            v127 = 0;
            v128 = (v124 + v123);
            v129 = v123 + 1;
            do
            {
              *(a2 + 1) = v129;
              v130 = *v128++;
              v127 |= (v130 & 0x7F) << v125;
              if ((v130 & 0x80) == 0)
              {
                goto LABEL_339;
              }

              v125 += 7;
              ++v129;
              v14 = v126++ > 8;
            }

            while (!v14);
LABEL_275:
            LODWORD(v127) = 0;
            goto LABEL_339;
          }

          v201 = 0;
          v202 = 0;
          v127 = 0;
          v203 = (v124 + v123);
          v18 = v122 >= v123;
          v204 = v122 - v123;
          if (!v18)
          {
            v204 = 0;
          }

          v205 = v123 + 1;
          while (2)
          {
            if (v204)
            {
              v206 = *v203;
              *(a2 + 1) = v205;
              v127 |= (v206 & 0x7F) << v201;
              if (v206 < 0)
              {
                v201 += 7;
                ++v203;
                --v204;
                ++v205;
                v14 = v202++ > 8;
                if (v14)
                {
                  goto LABEL_275;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v127) = 0;
              }
            }

            else
            {
              LODWORD(v127) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_339:
          *(this + 41) = v127;
          goto LABEL_302;
        case 0x1Eu:
          *(this + 27) |= 0x100uLL;
          v132 = *(a2 + 1);
          v131 = *(a2 + 2);
          v133 = *a2;
          if (v132 <= 0xFFFFFFFFFFFFFFF5 && v132 + 10 <= v131)
          {
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v137 = (v133 + v132);
            v138 = v132 + 1;
            do
            {
              *(a2 + 1) = v138;
              v139 = *v137++;
              v136 |= (v139 & 0x7F) << v134;
              if ((v139 & 0x80) == 0)
              {
                goto LABEL_342;
              }

              v134 += 7;
              ++v138;
              v14 = v135++ > 8;
            }

            while (!v14);
LABEL_283:
            LODWORD(v136) = 0;
            goto LABEL_342;
          }

          v207 = 0;
          v208 = 0;
          v136 = 0;
          v209 = (v133 + v132);
          v18 = v131 >= v132;
          v210 = v131 - v132;
          if (!v18)
          {
            v210 = 0;
          }

          v211 = v132 + 1;
          while (2)
          {
            if (v210)
            {
              v212 = *v209;
              *(a2 + 1) = v211;
              v136 |= (v212 & 0x7F) << v207;
              if (v212 < 0)
              {
                v207 += 7;
                ++v209;
                --v210;
                ++v211;
                v14 = v208++ > 8;
                if (v14)
                {
                  goto LABEL_283;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v136) = 0;
              }
            }

            else
            {
              LODWORD(v136) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_342:
          *(this + 13) = v136;
          goto LABEL_302;
        case 0x1Fu:
          *(this + 27) |= 0x200000000uLL;
          v114 = *(a2 + 1);
          if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 38) = *(*a2 + v114);
          goto LABEL_301;
        case 0x20u:
          *(this + 27) |= 0x800uLL;
          v95 = *(a2 + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 16) = *(*a2 + v95);
          goto LABEL_301;
        case 0x21u:
          *(this + 27) |= 0x400uLL;
          v115 = *(a2 + 1);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL || v115 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 15) = *(*a2 + v115);
          goto LABEL_301;
        case 0x22u:
          *(this + 27) |= 0x200000uLL;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 26) = *(*a2 + v57);
          goto LABEL_301;
        case 0x23u:
          *(this + 27) |= 0x40000uLL;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 23) = *(*a2 + v45);
          goto LABEL_301;
        case 0x24u:
          *(this + 27) |= 0x20000000uLL;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 34) = *(*a2 + v34);
          goto LABEL_301;
        case 0x25u:
          *(this + 27) |= 0x800000000uLL;
          v35 = *(a2 + 1);
          if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 40) = *(*a2 + v35);
          goto LABEL_301;
        case 0x26u:
          *(this + 27) |= 0x400000000uLL;
          v32 = *(a2 + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 39) = *(*a2 + v32);
          goto LABEL_301;
        case 0x27u:
          *(this + 27) |= 0x8000uLL;
          v141 = *(a2 + 1);
          v140 = *(a2 + 2);
          v142 = *a2;
          if (v141 <= 0xFFFFFFFFFFFFFFF5 && v141 + 10 <= v140)
          {
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = (v142 + v141);
            v147 = v141 + 1;
            do
            {
              *(a2 + 1) = v147;
              v148 = *v146++;
              v145 |= (v148 & 0x7F) << v143;
              if ((v148 & 0x80) == 0)
              {
                goto LABEL_345;
              }

              v143 += 7;
              ++v147;
              v14 = v144++ > 8;
            }

            while (!v14);
LABEL_291:
            LODWORD(v145) = 0;
            goto LABEL_345;
          }

          v213 = 0;
          v214 = 0;
          v145 = 0;
          v215 = (v142 + v141);
          v18 = v140 >= v141;
          v216 = v140 - v141;
          if (!v18)
          {
            v216 = 0;
          }

          v217 = v141 + 1;
          while (2)
          {
            if (v216)
            {
              v218 = *v215;
              *(a2 + 1) = v217;
              v145 |= (v218 & 0x7F) << v213;
              if (v218 < 0)
              {
                v213 += 7;
                ++v215;
                --v216;
                ++v217;
                v14 = v214++ > 8;
                if (v14)
                {
                  goto LABEL_291;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v145) = 0;
              }
            }

            else
            {
              LODWORD(v145) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_345:
          *(this + 20) = v145;
          goto LABEL_302;
        case 0x28u:
          *(this + 27) |= 0x10000000uLL;
          v118 = *(a2 + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 33) = *(*a2 + v118);
          goto LABEL_301;
        case 0x29u:
          *(this + 27) |= 0x4000000uLL;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 31) = *(*a2 + v61);
          goto LABEL_301;
        case 0x2Au:
          *(this + 27) |= 0x8000000uLL;
          v105 = *(a2 + 1);
          if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 32) = *(*a2 + v105);
          goto LABEL_301;
        case 0x2Bu:
          *(this + 27) |= 0x20uLL;
          v120 = *(a2 + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 10) = *(*a2 + v120);
          goto LABEL_301;
        case 0x2Cu:
          *(this + 27) |= 0x1000000uLL;
          v31 = *(a2 + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 29) = *(*a2 + v31);
          goto LABEL_301;
        case 0x2Du:
          *(this + 27) |= 0x2000000uLL;
          v48 = *(a2 + 1);
          v47 = *(a2 + 2);
          v49 = *a2;
          if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = (v49 + v48);
            v54 = v48 + 1;
            do
            {
              *(a2 + 1) = v54;
              v55 = *v53++;
              v52 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                goto LABEL_321;
              }

              v50 += 7;
              ++v54;
              v14 = v51++ > 8;
            }

            while (!v14);
LABEL_227:
            LODWORD(v52) = 0;
            goto LABEL_321;
          }

          v165 = 0;
          v166 = 0;
          v52 = 0;
          v167 = (v49 + v48);
          v18 = v47 >= v48;
          v168 = v47 - v48;
          if (!v18)
          {
            v168 = 0;
          }

          v169 = v48 + 1;
          break;
        case 0x2Eu:
          *(this + 27) |= 0x2000uLL;
          v116 = *(a2 + 1);
          if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 18) = *(*a2 + v116);
          goto LABEL_301;
        case 0x2Fu:
          *(this + 27) |= 0x200uLL;
          v158 = *(a2 + 1);
          if (v158 > 0xFFFFFFFFFFFFFFFBLL || v158 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 14) = *(*a2 + v158);
          goto LABEL_301;
        case 0x30u:
          *(this + 27) |= 0x400000uLL;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 27) = *(*a2 + v33);
          goto LABEL_301;
        case 0x31u:
          *(this + 27) |= 8uLL;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
LABEL_211:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 8) = *(*a2 + v58);
LABEL_301:
            *(a2 + 1) += 4;
          }

          goto LABEL_302;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v168)
        {
          LODWORD(v52) = 0;
          *(a2 + 24) = 1;
          goto LABEL_321;
        }

        v170 = *v167;
        *(a2 + 1) = v169;
        v52 |= (v170 & 0x7F) << v165;
        if ((v170 & 0x80) == 0)
        {
          break;
        }

        v165 += 7;
        ++v167;
        --v168;
        ++v169;
        v14 = v166++ > 8;
        if (v14)
        {
          goto LABEL_227;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v52) = 0;
      }

LABEL_321:
      *(this + 30) = v52;
LABEL_302:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_350;
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
        goto LABEL_350;
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
      goto LABEL_302;
    }

    v226 = 0;
  }

  return v226 & 1;
}

uint64_t CMMsl::FallStats::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 216);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(this + 144);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 216);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x20000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 172));
  v4 = *(v3 + 216);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 188));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 208));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 204));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 180));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 196));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 212));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_18:
    if ((v4 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 216);
  if ((v4 & 4) == 0)
  {
LABEL_19:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v8 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 216);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 216);
  if ((v4 & 0x40) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 216);
  if ((v4 & 0x80000) == 0)
  {
LABEL_25:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  v9 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  v10 = *(v3 + 76);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  v11 = *(v3 + 148);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12 = *(v3 + 164);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x100) == 0)
  {
LABEL_31:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  v13 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 216);
  if ((v4 & 0x800) == 0)
  {
LABEL_33:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 216);
  if ((v4 & 0x400) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000) == 0)
  {
LABEL_35:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000) == 0)
  {
LABEL_36:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::write(a2, *(v3 + 156));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000) == 0)
  {
LABEL_40:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  v14 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 216);
  if ((v4 & 0x20) == 0)
  {
LABEL_44:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  v15 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 216);
  if ((v4 & 0x2000) == 0)
  {
LABEL_47:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 216);
  if ((v4 & 0x200) == 0)
  {
LABEL_48:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

LABEL_98:
    this = PB::Writer::write(a2, *(v3 + 108));
    if ((*(v3 + 216) & 8) == 0)
    {
      return this;
    }

    goto LABEL_99;
  }

LABEL_97:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_98;
  }

LABEL_49:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_99:
  v16 = *(v3 + 32);

  return PB::Writer::write(a2, v16);
}

uint64_t CMMsl::FallStats::hash_value(CMMsl::FallStats *this)
{
  v1 = *(this + 27);
  if ((v1 & 0x80000000) != 0)
  {
    v2 = *(this + 36);
    if (v1)
    {
LABEL_3:
      v108 = *(this + 1);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_131;
    }
  }

  else
  {
    v2 = 0;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v108 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_4:
    v107 = *(this + 2);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_5;
    }

LABEL_132:
    v106 = 0;
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_133:
    v105 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_134:
    v104 = 0;
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_135:
    v103 = 0;
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_136:
    v102 = 0;
    if ((v1 & 0x800000000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_137:
    v101 = 0;
    if ((v1 & 0x400000000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_138:
    v100 = 0;
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_26;
    }

LABEL_139:
    v99 = 0;
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_140:
    v98 = 0;
    if ((v1 & 0x1000000000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_141:
    v97 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_35;
    }

LABEL_142:
    v96 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_143:
    v95 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_144:
    v94 = 0;
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_145:
    v93 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_146;
  }

LABEL_131:
  v107 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_132;
  }

LABEL_5:
  v3 = *(this + 22);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v106 = v4;
  if ((v1 & 0x8000000000) == 0)
  {
    goto LABEL_133;
  }

LABEL_8:
  v5 = *(this + 44);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v105 = v6;
  if ((v1 & 0x4000000000) == 0)
  {
    goto LABEL_134;
  }

LABEL_11:
  v7 = *(this + 43);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v104 = v8;
  if ((v1 & 0x80000000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_14:
  v9 = *(this + 48);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v103 = v10;
  if ((v1 & 0x40000000000) == 0)
  {
    goto LABEL_136;
  }

LABEL_17:
  v11 = *(this + 47);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v102 = v12;
  if ((v1 & 0x800000000000) == 0)
  {
    goto LABEL_137;
  }

LABEL_20:
  v13 = *(this + 52);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v101 = v14;
  if ((v1 & 0x400000000000) == 0)
  {
    goto LABEL_138;
  }

LABEL_23:
  v15 = *(this + 51);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v100 = v16;
  if ((v1 & 0x10000000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_26:
  v17 = *(this + 45);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v99 = v18;
  if ((v1 & 0x100000000000) == 0)
  {
    goto LABEL_140;
  }

LABEL_29:
  v19 = *(this + 49);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v98 = v20;
  if ((v1 & 0x1000000000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_32:
  v21 = *(this + 53);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  v97 = v22;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_142;
  }

LABEL_35:
  v23 = *(this + 21);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  v96 = v24;
  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_143;
  }

LABEL_38:
  v25 = *(this + 42);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  v95 = v26;
  if ((v1 & 0x20000000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_41:
  v27 = *(this + 46);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  v94 = v28;
  if ((v1 & 0x200000000000) == 0)
  {
    goto LABEL_145;
  }

LABEL_44:
  v29 = *(this + 50);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  v93 = v30;
  if ((v1 & 4) != 0)
  {
LABEL_47:
    v92 = *(this + 3);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_48;
    }

LABEL_147:
    v91 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_51;
    }

LABEL_148:
    v90 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_54;
    }

LABEL_149:
    v89 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_57;
    }

LABEL_150:
    v88 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_60;
    }

LABEL_151:
    v87 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_63;
    }

LABEL_152:
    v42 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_153:
    v44 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_154;
  }

LABEL_146:
  v92 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_147;
  }

LABEL_48:
  v31 = *(this + 9);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  v91 = v32;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_148;
  }

LABEL_51:
  v33 = *(this + 28);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  v90 = v34;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_149;
  }

LABEL_54:
  v35 = *(this + 12);
  v36 = LODWORD(v35);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  v89 = v36;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_150;
  }

LABEL_57:
  v37 = *(this + 11);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  v88 = v38;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_151;
  }

LABEL_60:
  v39 = *(this + 25);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  v87 = v40;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_152;
  }

LABEL_63:
  v41 = *(this + 24);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  else
  {
    v42 = LODWORD(v41);
  }

  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_153;
  }

LABEL_67:
  v43 = *(this + 35);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = LODWORD(v43);
  }

  if ((v1 & 0x1000) != 0)
  {
LABEL_71:
    v45 = *(this + 17);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_155;
  }

LABEL_154:
  v45 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_72:
    v46 = *(this + 19);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_156;
  }

LABEL_155:
  v46 = 0;
  if ((v1 & 0x100000000) != 0)
  {
LABEL_73:
    v47 = *(this + 37);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_157;
  }

LABEL_156:
  v47 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_74:
    v48 = *(this + 41);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_158;
  }

LABEL_157:
  v48 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_75:
    v49 = *(this + 13);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_159:
    v51 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_79;
    }

LABEL_160:
    v53 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_82;
    }

LABEL_161:
    v55 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_85;
    }

LABEL_162:
    v57 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_88;
    }

LABEL_163:
    v59 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_91;
    }

LABEL_164:
    v61 = 0;
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_165:
    v63 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_97;
    }

LABEL_166:
    v65 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_100;
    }

    goto LABEL_167;
  }

LABEL_158:
  v49 = 0;
  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_76:
  v50 = *(this + 38);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_160;
  }

LABEL_79:
  v52 = *(this + 16);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_161;
  }

LABEL_82:
  v54 = *(this + 15);
  v55 = LODWORD(v54);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_162;
  }

LABEL_85:
  v56 = *(this + 26);
  v57 = LODWORD(v56);
  if (v56 == 0.0)
  {
    v57 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_163;
  }

LABEL_88:
  v58 = *(this + 23);
  v59 = LODWORD(v58);
  if (v58 == 0.0)
  {
    v59 = 0;
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_164;
  }

LABEL_91:
  v60 = *(this + 34);
  v61 = LODWORD(v60);
  if (v60 == 0.0)
  {
    v61 = 0;
  }

  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_165;
  }

LABEL_94:
  v62 = *(this + 40);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_166;
  }

LABEL_97:
  v64 = *(this + 39);
  v65 = LODWORD(v64);
  if (v64 == 0.0)
  {
    v65 = 0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_100:
    v66 = *(this + 20);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_168:
    v68 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_104;
    }

LABEL_169:
    v70 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_107;
    }

LABEL_170:
    v72 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_110;
    }

LABEL_171:
    v74 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_113;
    }

LABEL_172:
    v76 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_116;
    }

    goto LABEL_173;
  }

LABEL_167:
  v66 = 0;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_168;
  }

LABEL_101:
  v67 = *(this + 33);
  v68 = LODWORD(v67);
  if (v67 == 0.0)
  {
    v68 = 0;
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_169;
  }

LABEL_104:
  v69 = *(this + 31);
  v70 = LODWORD(v69);
  if (v69 == 0.0)
  {
    v70 = 0;
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_170;
  }

LABEL_107:
  v71 = *(this + 32);
  v72 = LODWORD(v71);
  if (v71 == 0.0)
  {
    v72 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_171;
  }

LABEL_110:
  v73 = *(this + 10);
  v74 = LODWORD(v73);
  if (v73 == 0.0)
  {
    v74 = 0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_172;
  }

LABEL_113:
  v75 = *(this + 29);
  v76 = LODWORD(v75);
  if (v75 == 0.0)
  {
    v76 = 0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_116:
    v77 = *(this + 30);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_117;
    }

LABEL_174:
    v79 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_120;
    }

LABEL_175:
    v81 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_123;
    }

    goto LABEL_176;
  }

LABEL_173:
  v77 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_174;
  }

LABEL_117:
  v78 = *(this + 18);
  v79 = LODWORD(v78);
  if (v78 == 0.0)
  {
    v79 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_175;
  }

LABEL_120:
  v80 = *(this + 14);
  v81 = LODWORD(v80);
  if (v80 == 0.0)
  {
    v81 = 0;
  }

  if ((v1 & 0x400000) != 0)
  {
LABEL_123:
    v82 = *(this + 27);
    v83 = LODWORD(v82);
    if (v82 == 0.0)
    {
      v83 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_126;
    }

LABEL_177:
    v85 = 0;
    return v108 ^ v2 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v42 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v51 ^ v53 ^ v55 ^ v57 ^ v59 ^ v61 ^ v63 ^ v65 ^ v66 ^ v68 ^ v70 ^ v72 ^ v74 ^ v76 ^ v77 ^ v79 ^ v81 ^ v83 ^ v85;
  }

LABEL_176:
  v83 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_177;
  }

LABEL_126:
  v84 = *(this + 8);
  v85 = LODWORD(v84);
  if (v84 == 0.0)
  {
    v85 = 0;
  }

  return v108 ^ v2 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v42 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v51 ^ v53 ^ v55 ^ v57 ^ v59 ^ v61 ^ v63 ^ v65 ^ v66 ^ v68 ^ v70 ^ v72 ^ v74 ^ v76 ^ v77 ^ v79 ^ v81 ^ v83 ^ v85;
}

void CMMsl::FirstStepFeatures::~FirstStepFeatures(CMMsl::FirstStepFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FirstStepFeatures::FirstStepFeatures(uint64_t this, const CMMsl::FirstStepFeatures *a2)
{
  *this = &unk_286C1FF58;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 44) = 2;
    *(this + 16) = v4;
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
    v5 = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 8u;
    *(this + 44) = v3;
    *(this + 32) = v6;
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

uint64_t CMMsl::FirstStepFeatures::operator=(uint64_t a1, const CMMsl::FirstStepFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::FirstStepFeatures::FirstStepFeatures(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::FirstStepFeatures *a2, CMMsl::FirstStepFeatures *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  return result;
}

double CMMsl::FirstStepFeatures::FirstStepFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FF58;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

{
  *a1 = &unk_286C1FF58;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t CMMsl::FirstStepFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1FF58;
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

uint64_t CMMsl::FirstStepFeatures::formatText(CMMsl::FirstStepFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "aggAccelZDelta", *(this + 1));
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

  PB::TextFormatter::format(a2, "arcLength", *(this + 2));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "curveDistance", *(this + 3));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "firstLoftAngleDeg", *(this + 4));
  if ((*(this + 44) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "stepResult");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FirstStepFeatures::readFrom(CMMsl::FirstStepFeatures *this, PB::Reader *a2)
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
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_44:
          *(a2 + 24) = 1;
          goto LABEL_60;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_54;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_44;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_54;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
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

uint64_t CMMsl::FirstStepFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 44);
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

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
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
  this = PB::Writer::write(a2, *(v3 + 32));
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

uint64_t CMMsl::FirstStepFeatures::hash_value(CMMsl::FirstStepFeatures *this)
{
  if ((*(this + 44) & 2) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v2 = 0.0;
    if ((*(this + 44) & 8) != 0)
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

  v1 = *(this + 2);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 4);
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

uint64_t CMMsl::FitnessMachineData::FitnessMachineData(uint64_t this)
{
  *this = &unk_286C1FF90;
  *(this + 176) = 0;
  return this;
}

{
  *this = &unk_286C1FF90;
  *(this + 176) = 0;
  return this;
}

void CMMsl::FitnessMachineData::~FitnessMachineData(CMMsl::FitnessMachineData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::FitnessMachineData::FitnessMachineData(CMMsl::FitnessMachineData *this, const CMMsl::FitnessMachineData *a2)
{
  *this = &unk_286C1FF90;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 44);
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
    result = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 44) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 44) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x8000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 44) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 44) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 44) = v3;
  *(this + 17) = v5;
  v2 = *(a2 + 44);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 44) = v3;
  *(this + 18) = v6;
  v2 = *(a2 + 44);
  if ((v2 & 0x40000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = *(a2 + 19);
  v3 |= 0x40000u;
  *(this + 44) = v3;
  *(this + 19) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 44) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100000) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = *(a2 + 42);
  v3 |= 0x100000u;
  *(this + 44) = v3;
  *(this + 42) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_20:
    if ((v2 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 44);
  if ((v2 & 4) == 0)
  {
LABEL_21:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x200000) == 0)
  {
LABEL_22:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v3 |= 0x200000u;
  *(this + 43) = *(a2 + 43);
  *(this + 44) = v3;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) == 0)
  {
LABEL_23:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_24:
    if ((v2 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 44) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_25:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_46:
    result = *(a2 + 12);
    *(this + 44) = v3 | 0x800;
    *(this + 12) = result;
    return result;
  }

LABEL_45:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 1) = result;
  if ((*(a2 + 44) & 0x800) != 0)
  {
    goto LABEL_46;
  }

  return result;
}

CMMsl *CMMsl::FitnessMachineData::operator=(CMMsl *a1, const CMMsl::FitnessMachineData *a2)
{
  if (a1 != a2)
  {
    CMMsl::FitnessMachineData::FitnessMachineData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::FitnessMachineData *a2, CMMsl::FitnessMachineData *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v13;
  v14 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v14;
  v15 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v15;
  v16 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v16;
  LODWORD(v15) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v15;
  v17 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v18;
  v19 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v19;
  LODWORD(v15) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v15;
  v20 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v20;
  v21 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v21;
  v22 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v22;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

double CMMsl::FitnessMachineData::FitnessMachineData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FF90;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

CMMsl *CMMsl::FitnessMachineData::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FitnessMachineData::FitnessMachineData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FitnessMachineData::formatText(CMMsl::FitnessMachineData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "cadenceDeviceIdentification", *(this + 1));
    v5 = *(this + 44);
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

  PB::TextFormatter::format(a2, "cadenceUpdateTime", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "elapsedTime", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 0x100000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v6 = *(this + 42);
  PB::TextFormatter::format(a2, "externalMachineType");
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "inclination", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "instantaneousCadence", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "instantaneousPower", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "instantaneousSpeed", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = *(this + 43);
  PB::TextFormatter::format(a2, "powerMeterIdentification");
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "powerUpdateTime", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "resistanceLevel", *(this + 9));
  v5 = *(this + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "speedDeviceIdentification", *(this + 10));
  v5 = *(this + 44);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "speedUpdateTime", *(this + 11));
  v5 = *(this + 44);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "startTime", *(this + 12));
  v5 = *(this + 44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "timestamp", *(this + 13));
  v5 = *(this + 44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "totalDistance", *(this + 14));
  v5 = *(this + 44);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "totalElevationAscended", *(this + 15));
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "totalEnergy", *(this + 16));
  v5 = *(this + 44);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(this + 17);
  PB::TextFormatter::format(a2, "totalFloorsClimbed");
  v5 = *(this + 44);
  if ((v5 & 0x20000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(this + 18);
  PB::TextFormatter::format(a2, "totalStrideCount");
  v5 = *(this + 44);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  v10 = *(this + 19);
  PB::TextFormatter::format(a2, "totalStrokeCount");
  if ((*(this + 44) & 0x80000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(a2, "verticalSpeed", *(this + 20));
  }

LABEL_24:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FitnessMachineData::readFrom(CMMsl::FitnessMachineData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_178:
    v97 = v4 ^ 1;
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
        goto LABEL_178;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_148;
        case 2u:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_148;
        case 3u:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_148;
        case 4u:
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_148;
        case 5u:
          *(this + 44) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_148;
        case 6u:
          *(this + 44) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_148;
        case 7u:
          *(this + 44) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_148;
        case 8u:
          *(this + 44) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_148;
        case 9u:
          *(this + 44) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_148;
        case 0xAu:
          *(this + 44) |= 0x10000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v71 = (v31 + v30);
            v72 = v2 - v30;
            v73 = v30 + 1;
            while (1)
            {
              if (!v72)
              {
                v34 = 0;
                *(a2 + 24) = 1;
                goto LABEL_164;
              }

              v74 = v73;
              v75 = *v71;
              *(a2 + 1) = v74;
              v34 |= (v75 & 0x7F) << v69;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              ++v71;
              --v72;
              v73 = v74 + 1;
              v14 = v70++ > 8;
              if (v14)
              {
                v34 = 0;
LABEL_163:
                v2 = v74;
                goto LABEL_164;
              }
            }

            if (*(a2 + 24))
            {
              v34 = 0;
            }

            goto LABEL_163;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_164;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_164:
          *(this + 17) = v34;
          break;
        case 0xBu:
          *(this + 44) |= 0x20000u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v92 = (v55 + v54);
            v93 = v2 - v54;
            v94 = v54 + 1;
            while (1)
            {
              if (!v93)
              {
                v58 = 0;
                *(a2 + 24) = 1;
                goto LABEL_176;
              }

              v95 = v94;
              v96 = *v92;
              *(a2 + 1) = v95;
              v58 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              ++v92;
              --v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_175:
                v2 = v95;
                goto LABEL_176;
              }
            }

            if (*(a2 + 24))
            {
              v58 = 0;
            }

            goto LABEL_175;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(a2 + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_176;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_176:
          *(this + 18) = v58;
          break;
        case 0xCu:
          *(this + 44) |= 0x40000u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v64 = (v23 + v22);
            v65 = v2 - v22;
            v66 = v22 + 1;
            while (1)
            {
              if (!v65)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_160;
              }

              v67 = v66;
              v68 = *v64;
              *(a2 + 1) = v67;
              v26 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v64;
              --v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_159:
                v2 = v67;
                goto LABEL_160;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_159;
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
              goto LABEL_160;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_160:
          *(this + 19) = v26;
          break;
        case 0xDu:
          *(this + 44) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_148;
        case 0xEu:
          *(this + 44) |= 0x100000u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v85 = (v47 + v46);
            v86 = v2 - v46;
            v87 = v46 + 1;
            while (1)
            {
              if (!v86)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              v88 = v87;
              v89 = *v85;
              *(a2 + 1) = v88;
              v50 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              ++v85;
              --v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_171:
                v2 = v88;
                goto LABEL_172;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_171;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_172;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_172:
          *(this + 42) = v50;
          break;
        case 0xFu:
          *(this + 44) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_148;
        case 0x10u:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_148;
        case 0x11u:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_148;
        case 0x12u:
          *(this + 44) |= 0x200000u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v78 = (v39 + v38);
            v79 = v2 - v38;
            v80 = v38 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_168;
              }

              v81 = v80;
              v82 = *v78;
              *(a2 + 1) = v81;
              v42 |= (v82 & 0x7F) << v76;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              ++v78;
              --v79;
              v80 = v81 + 1;
              v14 = v77++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_167:
                v2 = v81;
                goto LABEL_168;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_167;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_168;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_168:
          *(this + 43) = v42;
          break;
        case 0x13u:
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_148;
        case 0x14u:
          *(this + 44) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_148;
        case 0x15u:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_106;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_148;
        case 0x16u:
          *(this + 44) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_106:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 12) = *(*a2 + v2);
LABEL_148:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_149:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_178;
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
        goto LABEL_178;
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
      goto LABEL_149;
    }

    v97 = 0;
  }

  return v97 & 1;
}

uint64_t CMMsl::FitnessMachineData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 176);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 176);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 176);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 176);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 176);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 176);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 176);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 176);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 176);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 176);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(v3 + 136);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 176);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(v3 + 144);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 176);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = *(v3 + 152);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 176);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 176);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = *(v3 + 168);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 176);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 176);
  if ((v4 & 2) == 0)
  {
LABEL_17:
    if ((v4 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 176);
  if ((v4 & 4) == 0)
  {
LABEL_18:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 176);
  if ((v4 & 0x200000) == 0)
  {
LABEL_19:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(v3 + 172);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 176);
  if ((v4 & 0x80) == 0)
  {
LABEL_20:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 176);
  if ((v4 & 0x200) == 0)
  {
LABEL_21:
    if ((v4 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 176) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 176);
  if (v4)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x800) == 0)
  {
    return this;
  }

LABEL_45:
  v10 = *(v3 + 96);

  return PB::Writer::write(a2, v10);
}

BOOL CMMsl::FitnessMachineData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v3 = *(a2 + 176);
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

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
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

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
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

  v4 = (*(a2 + 176) & 0x800) == 0;
  if ((v2 & 0x800) != 0)
  {
    return (v3 & 0x800) != 0 && *(a1 + 96) == *(a2 + 96);
  }

  return v4;
}

uint64_t CMMsl::FitnessMachineData::hash_value(CMMsl::FitnessMachineData *this)
{
  v1 = *(this + 44);
  if ((v1 & 8) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_43:
    v3 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_44:
    v4 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_45:
    v5 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_12;
    }

LABEL_46:
    v6 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_15;
    }

LABEL_47:
    v7 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    v8 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_21;
    }

LABEL_49:
    v9 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

LABEL_50:
    v10 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_45;
  }

LABEL_9:
  v5 = *(this + 7);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_12:
  v6 = *(this + 9);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_47;
  }

LABEL_15:
  v7 = *(this + 13);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  v8 = *(this + 15);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_49;
  }

LABEL_21:
  v9 = *(this + 16);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  v10 = *(this + 14);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_27:
    v11 = *(this + 17);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v11 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_28:
    v12 = *(this + 18);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_29:
    v13 = *(this + 19);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

LABEL_54:
    v14 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

LABEL_53:
  v13 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_54;
  }

LABEL_30:
  v14 = *(this + 20);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x100000) != 0)
  {
LABEL_33:
    v15 = *(this + 42);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  v15 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_34:
    v16 = *(this + 11);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_57:
    v17 = 0.0;
    goto LABEL_58;
  }

LABEL_56:
  v16 = 0.0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_57;
  }

LABEL_37:
  v17 = *(this + 2);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_58:
  if ((v1 & 4) != 0)
  {
    v18 = *(this + 3);
    if (v18 == 0.0)
    {
      v18 = 0.0;
    }

    if ((v1 & 0x200000) != 0)
    {
LABEL_60:
      v19 = *(this + 43);
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_61;
      }

LABEL_77:
      v20 = 0.0;
      if ((v1 & 0x200) != 0)
      {
        goto LABEL_64;
      }

LABEL_78:
      v21 = 0.0;
      if (v1)
      {
        goto LABEL_67;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v18 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_60;
    }
  }

  v19 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_77;
  }

LABEL_61:
  v20 = *(this + 8);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_78;
  }

LABEL_64:
  v21 = *(this + 10);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if (v1)
  {
LABEL_67:
    v22 = *(this + 1);
    if (v22 == 0.0)
    {
      v22 = 0.0;
    }

    if ((v1 & 0x800) != 0)
    {
      goto LABEL_70;
    }

LABEL_80:
    v23 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ *&v14 ^ v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23;
  }

LABEL_79:
  v22 = 0.0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_80;
  }

LABEL_70:
  v23 = *(this + 12);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ *&v14 ^ v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23;
}

uint64_t CMMsl::FitnessMachineSample::FitnessMachineSample(uint64_t this)
{
  *this = &unk_286C1FFC8;
  *(this + 112) = 0;
  return this;
}

{
  *this = &unk_286C1FFC8;
  *(this + 112) = 0;
  return this;
}

void CMMsl::FitnessMachineSample::~FitnessMachineSample(CMMsl::FitnessMachineSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FitnessMachineSample::FitnessMachineSample(CMMsl::FitnessMachineSample *this, const CMMsl::FitnessMachineSample *a2)
{
  *this = &unk_286C1FFC8;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 3) = v4;
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
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x400000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x400u;
  *(this + 28) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000) == 0)
  {
LABEL_9:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v4) = *(a2 + 27);
  v3 |= 0x400000u;
  *(this + 28) = v3;
  *(this + 27) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x2000u;
  *(this + 28) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 28) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(a2 + 16);
  v3 |= 0x800u;
  *(this + 28) = v3;
  *(this + 16) = v5;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000) == 0)
  {
LABEL_13:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(a2 + 25);
  v3 |= 0x100000u;
  *(this + 28) = v3;
  *(this + 25) = v6;
  v2 = *(a2 + 28);
  if ((v2 & 0x200000) == 0)
  {
LABEL_14:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 26);
  v3 |= 0x200000u;
  *(this + 28) = v3;
  *(this + 26) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 23);
  v3 |= 0x40000u;
  *(this + 28) = v3;
  *(this + 23) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x80) == 0)
  {
LABEL_16:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x80u;
  *(this + 28) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 21);
  v3 |= 0x10000u;
  *(this + 28) = v3;
  *(this + 21) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x20u;
  *(this + 28) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 28) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x1000u;
  *(this + 28) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 0x80000u;
  *(this + 28) = v3;
  *(this + 24) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 22);
  v3 |= 0x20000u;
  *(this + 28) = v3;
  *(this + 22) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 28) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 19);
  v3 |= 0x4000u;
  *(this + 28) = v3;
  *(this + 19) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 8u;
  *(this + 28) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x10) == 0)
    {
      return *&v4;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x8000u;
  *(this + 28) = v3;
  *(this + 20) = v4;
  if ((*(a2 + 28) & 0x10) == 0)
  {
    return *&v4;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 9);
  *(this + 28) = v3 | 0x10;
  *(this + 9) = v4;
  return *&v4;
}