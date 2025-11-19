uint64_t CMMsl::GaitEventsModelOutput::readFrom(CMMsl::GaitEventsModelOutput *this, PB::Reader *a2)
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
          *(this + 44) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
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

          *(this + 84) = v23;
          break;
        case 2u:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_103;
        case 3u:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_103;
        case 4u:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_103;
        case 5u:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_103;
        case 6u:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_103;
        case 7u:
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_103;
        case 8u:
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_103;
        case 9u:
          *(this + 44) |= 0x200u;
          v44 = *(a2 + 1);
          v2 = *(a2 + 2);
          v45 = *a2;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(a2 + 1);
            }

            v68 = (v45 + v44);
            v69 = v2 - v44;
            v70 = v44 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v48) = 0;
                *(a2 + 24) = 1;
                goto LABEL_118;
              }

              v71 = v70;
              v72 = *v68;
              *(a2 + 1) = v71;
              v48 |= (v72 & 0x7F) << v66;
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
                LODWORD(v48) = 0;
LABEL_117:
                v2 = v71;
                goto LABEL_118;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_117;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(a2 + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_118:
          *(this + 19) = v48;
          break;
        case 0xAu:
          *(this + 44) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v41 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v40 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v41 = v40 != 0;
          }

          *(this + 85) = v41;
          break;
        case 0xBu:
          *(this + 44) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v43 = v42 != 0;
          }

          *(this + 86) = v43;
          break;
        case 0xCu:
          *(this + 44) |= 0x400u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v54 = (v25 + v24);
            v55 = v2 - v24;
            v56 = v24 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_110;
              }

              v57 = v56;
              v58 = *v54;
              *(a2 + 1) = v57;
              v28 |= (v58 & 0x7F) << v52;
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
                LODWORD(v28) = 0;
LABEL_109:
                v2 = v57;
                goto LABEL_110;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_109;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_110;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_110:
          *(this + 20) = v28;
          break;
        case 0xDu:
          *(this + 44) |= 0x100u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v59 = 0;
            v60 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v61 = (v33 + v32);
            v62 = v2 - v32;
            v63 = v32 + 1;
            while (1)
            {
              if (!v62)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v64 = v63;
              v65 = *v61;
              *(a2 + 1) = v64;
              v36 |= (v65 & 0x7F) << v59;
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
                LODWORD(v36) = 0;
LABEL_113:
                v2 = v64;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_113;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_114:
          *(this + 18) = v36;
          break;
        case 0xEu:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 3) = *(*a2 + v2);
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

uint64_t CMMsl::GaitEventsModelOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(this + 84);
    this = PB::Writer::write(a2);
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

  this = PB::Writer::write(a2, *(v3 + 8));
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
  this = PB::Writer::write(a2, *(v3 + 16));
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
  this = PB::Writer::write(a2, *(v3 + 48));
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
  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 88) & 4) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  v9 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_29:
  v11 = *(v3 + 24);

  return PB::Writer::write(a2, v11);
}

BOOL CMMsl::GaitEventsModelOutput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
  if ((v2 & 0x800) != 0)
  {
    if ((*(a2 + 88) & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x800) != 0)
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

  if ((*(a1 + 88) & 0x200) != 0)
  {
    if ((*(a2 + 88) & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x1000) != 0)
  {
    if ((*(a2 + 88) & 0x1000) == 0 || *(a1 + 85) != *(a2 + 85))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x2000) != 0)
  {
    if ((*(a2 + 88) & 0x2000) == 0 || *(a1 + 86) != *(a2 + 86))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x2000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x400) != 0)
  {
    if ((*(a2 + 88) & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x100) != 0)
  {
    if ((*(a2 + 88) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

uint64_t CMMsl::GaitEventsModelOutput::hash_value(CMMsl::GaitEventsModelOutput *this)
{
  v1 = *(this + 44);
  if ((v1 & 0x800) == 0)
  {
    v2 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_33:
    v3 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v4 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v6 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_37:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v8 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    v9 = 0.0;
    if ((*(this + 44) & 0x200) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

  v2 = *(this + 84);
  if ((v1 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v5 = *(this + 6);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  v8 = *(this + 8);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 44) & 0x200) != 0)
  {
LABEL_24:
    v10 = *(this + 19);
    if ((*(this + 44) & 0x1000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((*(this + 44) & 0x1000) != 0)
  {
LABEL_25:
    v11 = *(this + 85);
    if ((*(this + 44) & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*(this + 44) & 0x2000) != 0)
  {
LABEL_26:
    v12 = *(this + 86);
    if ((*(this + 44) & 0x400) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_27:
    v13 = *(this + 20);
    if ((*(this + 44) & 0x100) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*(this + 44) & 0x100) != 0)
  {
LABEL_28:
    v14 = *(this + 18);
    if ((v1 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_45:
    v15 = 0.0;
    return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
  }

LABEL_44:
  v14 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  v15 = *(this + 3);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
}

uint64_t CMMsl::GaitEventsStrideAggregation::GaitEventsStrideAggregation(uint64_t this)
{
  *this = &unk_286C20348;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C20348;
  *(this + 48) = 0;
  return this;
}

void CMMsl::GaitEventsStrideAggregation::~GaitEventsStrideAggregation(CMMsl::GaitEventsStrideAggregation *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::GaitEventsStrideAggregation::GaitEventsStrideAggregation(CMMsl::GaitEventsStrideAggregation *this, const CMMsl::GaitEventsStrideAggregation *a2)
{
  *this = &unk_286C20348;
  *(this + 12) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 44);
    v3 = 32;
    *(this + 48) = 32;
    *(this + 44) = v4;
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
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 48) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 48) = v3;
    *(this + 2) = result;
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

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 48) = v3 | 8;
    *(this + 4) = result;
    return result;
  }

LABEL_13:
  v6 = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 10) = v6;
  if ((*(a2 + 48) & 8) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::GaitEventsStrideAggregation::operator=(uint64_t a1, const CMMsl::GaitEventsStrideAggregation *a2)
{
  if (a1 != a2)
  {
    CMMsl::GaitEventsStrideAggregation::GaitEventsStrideAggregation(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
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
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GaitEventsStrideAggregation *a2, CMMsl::GaitEventsStrideAggregation *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LOBYTE(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

double CMMsl::GaitEventsStrideAggregation::GaitEventsStrideAggregation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20348;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = &unk_286C20348;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::GaitEventsStrideAggregation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13 = &unk_286C20348;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v4 = *(a2 + 44);
    v5 = *(a2 + 40);
    v18 = *(a1 + 48);
    v6 = *(a1 + 44);
    *(a1 + 44) = v4;
    v17 = v6;
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 40);
    *(a1 + 40) = v5;
    v16 = v9;
    v10 = *(a1 + 24);
    v11 = *(a2 + 24);
    *(a1 + 48) = v3;
    *(a1 + 8) = v8;
    *(a1 + 24) = v11;
    v14 = v7;
    v15 = v10;
    PB::Base::~Base(&v13);
  }

  return a1;
}

uint64_t CMMsl::GaitEventsStrideAggregation::formatText(CMMsl::GaitEventsStrideAggregation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "groundContactTime", *(this + 1));
    v5 = *(this + 48);
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

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "initialContactTime", *(this + 2));
  v5 = *(this + 48);
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
  v6 = *(this + 44);
  PB::TextFormatter::format(a2, "isSuccessful");
  v5 = *(this + 48);
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
  v7 = *(this + 10);
  PB::TextFormatter::format(a2, "stepSide");
  v5 = *(this + 48);
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
  PB::TextFormatter::format(a2, "toeOffTime", *(this + 3));
  if ((*(this + 48) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "windowStartTime", *(this + 4));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GaitEventsStrideAggregation::readFrom(CMMsl::GaitEventsStrideAggregation *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 48) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_65;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_59;
        case 5:
          *(this + 48) |= 0x10u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v35 = (v26 + v25);
            v36 = v2 - v25;
            v37 = v25 + 1;
            while (1)
            {
              if (!v36)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_64;
              }

              v38 = v37;
              v39 = *v35;
              *(a2 + 1) = v38;
              v29 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v35;
              --v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_63;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_63:
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

LABEL_64:
          *(this + 10) = v29;
          goto LABEL_65;
        case 6:
          *(this + 48) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_59;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 48) |= 0x20u;
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

          *(this + 44) = v24;
          goto LABEL_65;
        case 2:
          *(this + 48) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_59;
        case 3:
          *(this + 48) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_59:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_65;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_65:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::GaitEventsStrideAggregation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(this + 44);
    this = PB::Writer::write(a2);
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

  else if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
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
  this = PB::Writer::write(a2, *(v3 + 16));
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
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 48) & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v3 + 32);

  return PB::Writer::write(a2, v7);
}

BOOL CMMsl::GaitEventsStrideAggregation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x20) != 0)
  {
    if ((*(a2 + 48) & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x20) != 0)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 4) != 0)
  {
    if ((*(a2 + 48) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x10) != 0)
  {
    if ((*(a2 + 48) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 48) & 8) == 0;
  if ((*(a1 + 48) & 8) != 0)
  {
    return (*(a2 + 48) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::GaitEventsStrideAggregation::hash_value(CMMsl::GaitEventsStrideAggregation *this)
{
  if ((*(this + 48) & 0x20) == 0)
  {
    v1 = 0;
    if (*(this + 48))
    {
      goto LABEL_3;
    }

LABEL_17:
    v2 = 0.0;
    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = 0.0;
    if ((*(this + 48) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v4 = 0.0;
    if ((*(this + 48) & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v1 = *(this + 44);
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 48) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_12:
    v5 = *(this + 10);
    if ((*(this + 48) & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v6 = 0.0;
    return *&v2 ^ v1 ^ *&v3 ^ *&v4 ^ v5 ^ *&v6;
  }

LABEL_20:
  v5 = 0;
  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3 ^ *&v4 ^ v5 ^ *&v6;
}

uint64_t CMMsl::GeomagneticData::GeomagneticData(uint64_t this)
{
  *this = &unk_286C20380;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C20380;
  *(this + 52) = 0;
  return this;
}

void CMMsl::GeomagneticData::~GeomagneticData(CMMsl::GeomagneticData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GeomagneticData::GeomagneticData(CMMsl::GeomagneticData *this, const CMMsl::GeomagneticData *a2)
{
  *this = &unk_286C20380;
  *(this + 13) = 0;
  v2 = *(a2 + 26);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 7);
    v3 = 32;
    *(this + 26) = 32;
    *(this + 7) = result;
    v2 = *(a2 + 26);
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
    result = *(a2 + 8);
    v3 |= 0x40u;
    *(this + 26) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 26);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 2);
    v3 |= 1u;
    *(this + 26) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 26);
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

  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 26) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 26);
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
  result = *(a2 + 10);
  v3 |= 0x100u;
  *(this + 26) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 26);
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
  result = *(a2 + 11);
  v3 |= 0x200u;
  *(this + 26) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 26);
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
  result = *(a2 + 12);
  v3 |= 0x400u;
  *(this + 26) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 26);
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
  result = *(a2 + 9);
  v3 |= 0x80u;
  *(this + 26) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 26);
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
  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 26) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 26);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 6);
    *(this + 26) = v3 | 0x10;
    *(this + 6) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 4);
  v3 |= 4u;
  *(this + 26) = v3;
  *(this + 4) = result;
  if ((*(a2 + 26) & 0x10) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::GeomagneticData::operator=(CMMsl *a1, const CMMsl::GeomagneticData *a2)
{
  if (a1 != a2)
  {
    CMMsl::GeomagneticData::GeomagneticData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GeomagneticData *a2, CMMsl::GeomagneticData *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::GeomagneticData::GeomagneticData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20380;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

CMMsl *CMMsl::GeomagneticData::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GeomagneticData::GeomagneticData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::GeomagneticData::formatText(CMMsl::GeomagneticData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 26);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 2));
    v5 = *(this + 26);
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

  PB::TextFormatter::format(a2, "decimalYear", *(this + 3));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "declination", *(this + 4));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "horizontal", *(this + 5));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "inclination", *(this + 6));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "latitude", *(this + 7));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "longitude", *(this + 8));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "magnitude", *(this + 9));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "x", *(this + 10));
  v5 = *(this + 26);
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
  PB::TextFormatter::format(a2, "y", *(this + 11));
  if ((*(this + 26) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "z", *(this + 12));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GeomagneticData::readFrom(CMMsl::GeomagneticData *this, PB::Reader *a2)
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
          *(this + 26) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 2)
        {
          *(this + 26) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_68;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 26) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_68;
          case 4:
            *(this + 26) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_68;
          case 5:
            *(this + 26) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_68;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 26) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_68;
        case 0xA:
          *(this + 26) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_68;
        case 0xB:
          *(this + 26) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_68;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 26) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_68;
        case 7:
          *(this + 26) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_68;
        case 8:
          *(this + 26) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 9) = *(*a2 + v2);
LABEL_68:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_69;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_69:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::GeomagneticData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 28));
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

  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 8));
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
  this = PB::Writer::write(a2, *(v3 + 12));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
  this = PB::Writer::write(a2, *(v3 + 44));
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
  this = PB::Writer::write(a2, *(v3 + 48));
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
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::GeomagneticData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
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
    if ((v3 & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
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
    if ((v3 & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x100) != 0)
  {
    if ((*(a2 + 52) & 0x100) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x400) != 0)
  {
    if ((*(a2 + 52) & 0x400) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

uint64_t CMMsl::GeomagneticData::hash_value(CMMsl::GeomagneticData *this)
{
  v1 = *(this + 26);
  if ((v1 & 0x20) == 0)
  {
    v2 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_36:
    v4 = 0;
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_37:
    v6 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_38:
    v8 = 0;
    if ((*(this + 26) & 0x100) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v10 = 0;
    if ((*(this + 26) & 0x200) != 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v12 = 0;
    if ((*(this + 26) & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    v14 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v16 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_43:
    v18 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v23 = *(this + 7);
  v2 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v2 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = *(this + 8);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v5 = *(this + 2);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_9:
  v7 = *(this + 3);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((*(this + 26) & 0x100) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v9 = *(this + 10);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((*(this + 26) & 0x200) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v11 = *(this + 11);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 26) & 0x400) == 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  v13 = *(this + 12);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  v15 = *(this + 9);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  v17 = *(this + 5);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_27:
    v19 = *(this + 4);
    v20 = LODWORD(v19);
    if (v19 == 0.0)
    {
      v20 = 0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_30;
    }

LABEL_45:
    v22 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22;
  }

LABEL_44:
  v20 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  v21 = *(this + 6);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22;
}

uint64_t CMMsl::GestureLogSource::GestureLogSource(uint64_t this)
{
  *this = &unk_286C203B8;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C203B8;
  *(this + 12) = 0;
  return this;
}

void CMMsl::GestureLogSource::~GestureLogSource(CMMsl::GestureLogSource *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GestureLogSource::GestureLogSource(uint64_t this, const CMMsl::GestureLogSource *a2)
{
  *this = &unk_286C203B8;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C203B8;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::GestureLogSource::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C203B8;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C203B8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::GestureLogSource *a2, CMMsl::GestureLogSource *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::GestureLogSource::GestureLogSource(uint64_t result, uint64_t a2)
{
  *result = &unk_286C203B8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C203B8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::GestureLogSource::formatText(CMMsl::GestureLogSource *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "logSource");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GestureLogSource::readFrom(CMMsl::GestureLogSource *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
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
              LODWORD(v26) = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::GestureLogSource::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::GestureLogSource::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::GestureLogSource::hash_value(CMMsl::GestureLogSource *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::GestureQuaternion::GestureQuaternion(uint64_t this)
{
  *this = &unk_286C203F0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C203F0;
  *(this + 40) = 0;
  return this;
}

void CMMsl::GestureQuaternion::~GestureQuaternion(CMMsl::GestureQuaternion *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::GestureQuaternion::GestureQuaternion(CMMsl::GestureQuaternion *this, const CMMsl::GestureQuaternion *a2)
{
  *this = &unk_286C203F0;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 40) = 2;
    *(this + 2) = result;
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
    LODWORD(result) = *(a2 + 7);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 7) = LODWORD(result);
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    LODWORD(result) = *(a2 + 8);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 8) = LODWORD(result);
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

  LODWORD(result) = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 9) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 1);
    *(this + 40) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

LABEL_13:
  LODWORD(result) = *(a2 + 6);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 6) = LODWORD(result);
  if (*(a2 + 40))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::GestureQuaternion::operator=(uint64_t a1, const CMMsl::GestureQuaternion *a2)
{
  if (a1 != a2)
  {
    CMMsl::GestureQuaternion::GestureQuaternion(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
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

double CMMsl::swap(CMMsl *this, CMMsl::GestureQuaternion *a2, CMMsl::GestureQuaternion *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::GestureQuaternion::GestureQuaternion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C203F0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C203F0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::GestureQuaternion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C203F0;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 40) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::GestureQuaternion::formatText(CMMsl::GestureQuaternion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "dt", *(this + 1));
    v5 = *(this + 40);
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

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "quaternionW", *(this + 6));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "quaternionX", *(this + 7));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "quaternionY", *(this + 8));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 9));
  if ((*(this + 40) & 2) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GestureQuaternion::readFrom(CMMsl::GestureQuaternion *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_45:
            *(a2 + 24) = 1;
            goto LABEL_49;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_47;
        case 5:
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 6) = *(*a2 + v2);
LABEL_47:
          v2 = *(a2 + 1) + 4;
          goto LABEL_48;
        case 6:
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_36:
          v2 = *(a2 + 1) + 8;
LABEL_48:
          *(a2 + 1) = v2;
          goto LABEL_49;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_36;
        case 2:
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_47;
        case 3:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_45;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_49:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::GestureQuaternion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
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

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
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
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 40) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 40);
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
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::GestureQuaternion::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 1) == 0;
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::GestureQuaternion::hash_value(CMMsl::GestureQuaternion *this)
{
  if ((*(this + 40) & 2) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v5 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v1 = *(this + 2);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v6 = *(this + 9);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 4) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    v9 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    if (*(this + 40))
    {
      goto LABEL_15;
    }

LABEL_25:
    v10 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ *&v10;
  }

LABEL_24:
  v9 = 0;
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 1);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ *&v10;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::GnssAvailabilityPredictorData(uint64_t this)
{
  *this = &unk_286C20428;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C20428;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::GnssAvailabilityPredictorData::~GnssAvailabilityPredictorData(CMMsl::GnssAvailabilityPredictorData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::GnssAvailabilityPredictorData::GnssAvailabilityPredictorData(CMMsl::GnssAvailabilityPredictorData *this, const CMMsl::GnssAvailabilityPredictorData *a2)
{
  *this = &unk_286C20428;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 32) = 2;
    *(this + 2) = result;
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
    v5 = *(a2 + 7);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 7) = v5;
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
    result = *(a2 + 1);
    *(this + 32) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

  v6 = *(a2 + 6);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 6) = v6;
  if (*(a2 + 32))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::operator=(uint64_t a1, const CMMsl::GnssAvailabilityPredictorData *a2)
{
  if (a1 != a2)
  {
    CMMsl::GnssAvailabilityPredictorData::GnssAvailabilityPredictorData(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GnssAvailabilityPredictorData *a2, CMMsl::GnssAvailabilityPredictorData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::GnssAvailabilityPredictorData::GnssAvailabilityPredictorData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20428;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C20428;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C20428;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::formatText(CMMsl::GnssAvailabilityPredictorData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "measSource");
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 7);
  PB::TextFormatter::format(a2, "state");
  v5 = *(this + 32);
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
  PB::TextFormatter::format(a2, "stateProbability", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GnssAvailabilityPredictorData::readFrom(CMMsl::GnssAvailabilityPredictorData *this, PB::Reader *a2)
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
        *(this + 32) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v32 + v31);
          v49 = v2 - v31;
          v50 = v31 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_72;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
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
              LODWORD(v35) = 0;
              goto LABEL_71;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_71:
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

LABEL_72:
        *(this + 6) = v35;
        goto LABEL_73;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_37:
          *(a2 + 24) = 1;
          goto LABEL_73;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_62;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_62:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_73;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 8u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = (v24 + v23);
          v42 = v2 - v23;
          v43 = v23 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_68;
            }

            v44 = v43;
            v45 = *v41;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
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
              LODWORD(v27) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_67:
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

LABEL_68:
        *(this + 7) = v27;
        goto LABEL_73;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_73:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
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
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 32) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v3 + 8);

  return PB::Writer::write(a2, v7);
}

BOOL CMMsl::GnssAvailabilityPredictorData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::GnssAvailabilityPredictorData::hash_value(CMMsl::GnssAvailabilityPredictorData *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 32) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 7);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if (*(this + 32))
    {
      goto LABEL_5;
    }

LABEL_13:
    v4 = 0.0;
    return v2 ^ *&v1 ^ v3 ^ *&v4;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return v2 ^ *&v1 ^ v3 ^ *&v4;
}

double CMMsl::GnssLeechLocationData::GnssLeechLocationData(CMMsl::GnssLeechLocationData *this)
{
  *this = &unk_286C20460;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

{
  *this = &unk_286C20460;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

void CMMsl::GnssLeechLocationData::~GnssLeechLocationData(CMMsl::GnssLeechLocationData *this)
{
  *this = &unk_286C20460;
  v2 = (this + 24);
  v3 = (this + 120);
  sub_25AD28930(&v3);
  v3 = (this + 96);
  sub_25AD28930(&v3);
  v3 = (this + 72);
  sub_25AD28930(&v3);
  v3 = (this + 48);
  sub_25AD28930(&v3);
  v3 = v2;
  sub_25AD28930(&v3);

  PB::Base::~Base(this);
}

{
  CMMsl::GnssLeechLocationData::~GnssLeechLocationData(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GnssLeechLocationData::GnssLeechLocationData(uint64_t this, const CMMsl::GnssLeechLocationData *a2)
{
  *this = &unk_286C20460;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 120) = 0u;
  *(this + 152) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0;
  if ((*(a2 + 152) & 4) != 0)
  {
    v2 = *(a2 + 18);
    *(this + 152) = 4;
    *(this + 144) = v2;
  }

  v3 = *(a2 + 12);
  if (v3 != *(a2 + 13))
  {
    v4 = *v3;
    sub_25AB90BAC();
  }

  v5 = *(a2 + 9);
  if (v5 != *(a2 + 10))
  {
    v6 = *v5;
    sub_25AB90BAC();
  }

  v7 = *(a2 + 15);
  if (v7 != *(a2 + 16))
  {
    v8 = *v7;
    sub_25AB90BAC();
  }

  v9 = *(a2 + 6);
  if (v9 != *(a2 + 7))
  {
    v10 = *v9;
    sub_25AB90BAC();
  }

  v11 = *(a2 + 3);
  if (v11 != *(a2 + 4))
  {
    v12 = *v11;
    sub_25AB90BAC();
  }

  v13 = *(a2 + 152);
  if ((v13 & 2) != 0)
  {
    v14 = *(a2 + 2);
    *(this + 152) |= 2u;
    *(this + 16) = v14;
    v13 = *(a2 + 152);
  }

  if (v13)
  {
    v15 = *(a2 + 1);
    *(this + 152) |= 1u;
    *(this + 8) = v15;
  }

  return this;
}

CMMsl *CMMsl::GnssLeechLocationData::operator=(CMMsl *a1, const CMMsl::GnssLeechLocationData *a2)
{
  if (a1 != a2)
  {
    CMMsl::GnssLeechLocationData::GnssLeechLocationData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GnssLeechLocationData::~GnssLeechLocationData(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::GnssLeechLocationData *a2, CMMsl::GnssLeechLocationData *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  v4 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v13;
  v14 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  v15 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v15;
  v16 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v16;
  v17 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v20;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

uint64_t CMMsl::GnssLeechLocationData::GnssLeechLocationData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20460;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 120) = 0u;
  v5 = (a1 + 120);
  *(a1 + 72) = 0u;
  v6 = (a1 + 72);
  *(a1 + 136) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 144) = *(a2 + 144);
  sub_25AD289F0((a1 + 96));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  sub_25AD289F0(v6);
  *v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_25AD289F0(v5);
  *v5 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  sub_25AD289F0((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_25AD289F0(v4);
  *v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

CMMsl *CMMsl::GnssLeechLocationData::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GnssLeechLocationData::GnssLeechLocationData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GnssLeechLocationData::~GnssLeechLocationData(v5);
  }

  return a1;
}

uint64_t CMMsl::GnssLeechLocationData::formatText(CMMsl::GnssLeechLocationData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 152);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lifespan", *(this + 1));
    v5 = *(this + 152);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "machTime", *(this + 2));
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "satInfoBeidou");
  }

  v9 = *(this + 6);
  v10 = *(this + 7);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "satInfoGalileo");
  }

  v12 = *(this + 9);
  v13 = *(this + 10);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "satInfoGlonass");
  }

  v15 = *(this + 12);
  v16 = *(this + 13);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "satInfoGps");
  }

  v18 = *(this + 15);
  v19 = *(this + 16);
  while (v18 != v19)
  {
    v20 = *v18++;
    (*(*v20 + 32))(v20, a2, "satInfoQzss");
  }

  if ((*(this + 152) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 18));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GnssLeechLocationData::readFrom(CMMsl::GnssLeechLocationData *this, PB::Reader *a2)
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
          *(this + 152) |= 2u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 2) = *(*a2 + v25);
          goto LABEL_46;
        }

        if (v22 == 8)
        {
          *(this + 152) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 1) = *(*a2 + v23);
          goto LABEL_46;
        }
      }

      else
      {
        if (v22 == 5)
        {
          sub_25AB91558();
        }

        if (v22 == 6)
        {
          sub_25AB91558();
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        sub_25AB91558();
      }

      if (v22 == 4)
      {
        sub_25AB91558();
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 152) |= 4u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
        {
          goto LABEL_44;
        }

        *(this + 18) = *(*a2 + v24);
LABEL_46:
        *(a2 + 1) += 8;
        goto LABEL_47;
      }

      if (v22 == 2)
      {
        sub_25AB91558();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v27 = 0;
      return v27 & 1;
    }

LABEL_47:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::GnssLeechLocationData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 152) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 144));
  }

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 120);
  v11 = *(v3 + 128);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 48);
  v14 = *(v3 + 56);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  while (v16 != v17)
  {
    v18 = *v16++;
    this = PB::Writer::writeSubmessage(a2, v18);
  }

  v19 = *(v3 + 152);
  if ((v19 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 16));
    v19 = *(v3 + 152);
  }

  if (v19)
  {
    v20 = *(v3 + 8);

    return PB::Writer::write(a2, v20);
  }

  return this;
}

BOOL CMMsl::GnssLeechLocationData::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  v5 = *(a2 + 152);
  if ((v4 & 4) != 0)
  {
    if ((*(a2 + 152) & 4) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((*(a2 + 152) & 4) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a2 + 96);
  if (v7 - v6 != *(a2 + 104) - v8)
  {
    return 0;
  }

  while (v6 != v7)
  {
    result = CMMsl::SatelliteInfo::operator==(*v6, *v8);
    if (!result)
    {
      return result;
    }

    ++v6;
    ++v8;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 72);
  if (v11 - v10 != *(a2 + 80) - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    result = CMMsl::SatelliteInfo::operator==(*v10, *v12);
    if (!result)
    {
      return result;
    }

    ++v10;
    ++v12;
  }

  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a2 + 120);
  if (v14 - v13 != *(a2 + 128) - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    result = CMMsl::SatelliteInfo::operator==(*v13, *v15);
    if (!result)
    {
      return result;
    }

    ++v13;
    ++v15;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a2 + 48);
  if (v17 - v16 != *(a2 + 56) - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    result = CMMsl::SatelliteInfo::operator==(*v16, *v18);
    if (!result)
    {
      return result;
    }

    ++v16;
    ++v18;
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a2 + 24);
  if (v20 - v19 != *(a2 + 32) - v21)
  {
    return 0;
  }

  while (v19 != v20)
  {
    result = CMMsl::SatelliteInfo::operator==(*v19, *v21);
    if (!result)
    {
      return result;
    }

    ++v19;
    ++v21;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  result = (v5 & 1) == 0;
  if ((v4 & 1) == 0)
  {
    return result;
  }

  return (v5 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
}

uint64_t CMMsl::GnssLeechLocationData::hash_value(CMMsl::GnssLeechLocationData *this)
{
  v2 = *(this + 152);
  if ((v2 & 4) != 0)
  {
    if (*(this + 18) == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 18);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  v5 = *(this + 13);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= CMMsl::SatelliteInfo::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 9);
  v9 = *(this + 10);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= CMMsl::SatelliteInfo::hash_value(v11);
    }

    while (v8 != v9);
  }

  v12 = *(this + 15);
  v13 = *(this + 16);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 ^= CMMsl::SatelliteInfo::hash_value(v15);
    }

    while (v12 != v13);
  }

  v16 = *(this + 6);
  v17 = *(this + 7);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v16++;
      v18 ^= CMMsl::SatelliteInfo::hash_value(v19);
    }

    while (v16 != v17);
  }

  v20 = *(this + 3);
  v21 = *(this + 4);
  if (v20 == v21)
  {
    v22 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    v24 = *(this + 2);
    if (v24 == 0.0)
    {
      v24 = 0.0;
    }

    if (v2)
    {
      goto LABEL_31;
    }

LABEL_38:
    v25 = 0.0;
    return v6 ^ v3 ^ v10 ^ v14 ^ v18 ^ *&v24 ^ *&v25 ^ v22;
  }

  v22 = 0;
  do
  {
    v23 = *v20++;
    v22 ^= CMMsl::SatelliteInfo::hash_value(v23);
  }

  while (v20 != v21);
  if ((v2 & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  v24 = 0.0;
  if ((v2 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v25 = *(this + 1);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v18 ^ *&v24 ^ *&v25 ^ v22;
}

uint64_t CMMsl::GravityConstraints::GravityConstraints(uint64_t this)
{
  *this = &unk_286C20498;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C20498;
  *(this + 32) = 0;
  return this;
}

void CMMsl::GravityConstraints::~GravityConstraints(CMMsl::GravityConstraints *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::GravityConstraints::GravityConstraints(CMMsl::GravityConstraints *this, const CMMsl::GravityConstraints *a2)
{
  *this = &unk_286C20498;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = v4;
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
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 5) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return *&v4;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 4);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 4) = v4;
  if ((*(a2 + 32) & 8) == 0)
  {
    return *&v4;
  }

LABEL_12:
  LODWORD(v4) = *(a2 + 6);
  *(this + 32) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::GravityConstraints::operator=(uint64_t a1, const CMMsl::GravityConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::GravityConstraints::GravityConstraints(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GravityConstraints *a2, CMMsl::GravityConstraints *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::GravityConstraints::GravityConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20498;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C20498;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::GravityConstraints::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C20498;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::GravityConstraints::formatText(CMMsl::GravityConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "gyroMaxMean", *(this + 4));
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "magnitudeDiffUnity", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "magnitudeVar", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "maxAccelStdAxis", *(this + 7));
  if (*(this + 32))
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GravityConstraints::readFrom(CMMsl::GravityConstraints *this, PB::Reader *a2)
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
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_39;
        }

LABEL_42:
        *(a2 + 24) = 1;
        goto LABEL_43;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 7) = *(*a2 + v2);
          goto LABEL_38;
        }

        goto LABEL_42;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 5) = *(*a2 + v2);
            goto LABEL_38;
          }

          goto LABEL_42;
        case 4:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 4) = *(*a2 + v2);
            goto LABEL_38;
          }

          goto LABEL_42;
        case 5:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 6) = *(*a2 + v2);
LABEL_38:
            v2 = *(a2 + 1) + 4;
LABEL_39:
            *(a2 + 1) = v2;
            goto LABEL_43;
          }

          goto LABEL_42;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_43:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::GravityConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 32) & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::GravityConstraints::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::GravityConstraints::hash_value(CMMsl::GravityConstraints *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v3 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    v5 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4);
    v7 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v9 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9;
  }

LABEL_20:
  v7 = 0;
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9;
}

uint64_t CMMsl::GravityCorrection::GravityCorrection(uint64_t this)
{
  *this = &unk_286C204D0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C204D0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::GravityCorrection::~GravityCorrection(CMMsl::GravityCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C204D0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::GravityCorrection::~GravityCorrection(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GravityCorrection::GravityCorrection(uint64_t this, const CMMsl::GravityCorrection *a2)
{
  *this = &unk_286C204D0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::GravityCorrection::operator=(uint64_t a1, const CMMsl::GravityCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::GravityCorrection::GravityCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::GravityCorrection::~GravityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::GravityCorrection *a2, CMMsl::GravityCorrection *a3)
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

uint64_t CMMsl::GravityCorrection::GravityCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C204D0;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::GravityCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GravityCorrection::GravityCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::GravityCorrection::~GravityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::GravityCorrection::formatText(CMMsl::GravityCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  if (*(this + 20))
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "isAvgGrav");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GravityCorrection::readFrom(CMMsl::GravityCorrection *this, PB::Reader *a2)
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
        goto LABEL_32;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2))
        {
          v25 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*a2 + v22);
          *(a2 + 1) = v23;
          v25 = v24 != 0;
        }

        *(this + 16) = v25;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_32;
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

LABEL_32:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::GravityCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::GravityCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotionCorrection::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t CMMsl::GravityCorrection::hash_value(CMMsl::GravityCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::GravityCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::Gyro::~Gyro(CMMsl::Gyro *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Gyro::Gyro(uint64_t this, const CMMsl::Gyro *a2)
{
  *this = &unk_286C20508;
  *(this + 44) = 0;
  v2 = *(a2 + 22);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 22);
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
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 22);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 22);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 36) = v7;
  v2 = *(a2 + 22);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 22);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 5);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 22);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 40);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 40) = v10;
  v2 = *(a2 + 22);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 4);
    *(this + 44) = v3 | 2;
    *(this + 16) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 41);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 41) = v11;
  if ((*(a2 + 22) & 2) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::Gyro::operator=(uint64_t a1, const CMMsl::Gyro *a2)
{
  if (a1 != a2)
  {
    CMMsl::Gyro::Gyro(&v9, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v17;
    v17 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v5;
    LODWORD(v4) = *(a1 + 36);
    *(a1 + 36) = v14;
    v14 = v4;
    v6 = *(a1 + 20);
    *(a1 + 20) = v12;
    v12 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v3;
    LOBYTE(v3) = *(a1 + 41);
    *(a1 + 41) = v16;
    v16 = v3;
    v7 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::Gyro *a2, CMMsl::Gyro *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  LOBYTE(v7) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

float CMMsl::Gyro::Gyro(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20508;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Gyro::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Gyro::Gyro(&v9, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v17;
    v17 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v5;
    LODWORD(v4) = *(a1 + 36);
    *(a1 + 36) = v14;
    v14 = v4;
    v6 = *(a1 + 20);
    *(a1 + 20) = v12;
    v12 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v3;
    LOBYTE(v3) = *(a1 + 41);
    *(a1 + 41) = v16;
    v16 = v3;
    v7 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::Gyro::formatText(CMMsl::Gyro *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 22);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "location");
    v5 = *(this + 22);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 5);
  PB::TextFormatter::format(a2, "sampleNumMod3");
  v5 = *(this + 22);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(this + 6);
  PB::TextFormatter::format(a2, "subType");
  v5 = *(this + 22);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 22);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(this + 40);
  PB::TextFormatter::format(a2, "triggerEnabled");
  v5 = *(this + 22);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(this + 41);
  PB::TextFormatter::format(a2, "triggerOn");
  v5 = *(this + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "x", *(this + 7));
  v5 = *(this + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "y", *(this + 8));
  if ((*(this + 22) & 0x40) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "z", *(this + 9));
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Gyro::readFrom(CMMsl::Gyro *this, PB::Reader *a2)
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
          *(this + 22) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_57:
            *(a2 + 24) = 1;
            goto LABEL_115;
          }

          *(this + 8) = *(*a2 + v2);
LABEL_98:
          v2 = *(a2 + 1) + 4;
LABEL_99:
          *(a2 + 1) = v2;
          goto LABEL_115;
        }

        if (v22 == 4)
        {
          *(this + 22) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_98;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 22) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_99;
        }

        if (v22 == 2)
        {
          *(this + 22) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_98;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 22) |= 8u;
        v41 = *(a2 + 1);
        v2 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
        {
          v58 = 0;
          v59 = 0;
          v45 = 0;
          if (v2 <= v41)
          {
            v2 = *(a2 + 1);
          }

          v60 = (v42 + v41);
          v61 = v2 - v41;
          v62 = v41 + 1;
          while (1)
          {
            if (!v61)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_110;
            }

            v63 = v62;
            v64 = *v60;
            *(a2 + 1) = v63;
            v45 |= (v64 & 0x7F) << v58;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            ++v60;
            --v61;
            v62 = v63 + 1;
            v14 = v59++ > 8;
            if (v14)
            {
              LODWORD(v45) = 0;
              goto LABEL_109;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }

LABEL_109:
          v2 = v63;
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

LABEL_110:
        *(this + 6) = v45;
        goto LABEL_115;
      }

      if (v22 == 6)
      {
        *(this + 22) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v51 = 0;
          v52 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v53 = (v32 + v31);
          v54 = v2 - v31;
          v55 = v31 + 1;
          while (1)
          {
            if (!v54)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_106;
            }

            v56 = v55;
            v57 = *v53;
            *(a2 + 1) = v56;
            v35 |= (v57 & 0x7F) << v51;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            ++v53;
            --v54;
            v55 = v56 + 1;
            v14 = v52++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_105;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_105:
          v2 = v56;
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

LABEL_106:
        *(this + 5) = v35;
        goto LABEL_115;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 22) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v40 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v39 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v40 = v39 != 0;
          }

          *(this + 40) = v40;
          goto LABEL_115;
        case 8:
          *(this + 22) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v50 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v49 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v50 = v49 != 0;
          }

          *(this + 41) = v50;
          goto LABEL_115;
        case 9:
          *(this + 22) |= 2u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v67 = (v24 + v23);
            v68 = v2 - v23;
            v69 = v23 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v70 = v69;
              v71 = *v67;
              *(a2 + 1) = v70;
              v27 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v67;
              --v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_113;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_113:
            v2 = v70;
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

LABEL_114:
          *(this + 4) = v27;
          goto LABEL_115;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v72 = 0;
      return v72 & 1;
    }

    v2 = *(a2 + 1);
LABEL_115:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t CMMsl::Gyro::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v8 = *(v3 + 41);
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 2) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  v7 = *(v3 + 40);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_19:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::Gyro::hash_value(CMMsl::Gyro *this)
{
  v1 = *(this + 22);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    v4 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v6 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v8 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  v3 = *(this + 7);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v5 = *(this + 8);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v7 = *(this + 9);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_12:
    v9 = *(this + 6);
    if ((v1 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_13:
    v10 = *(this + 5);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v11 = *(this + 40);
    if ((*(this + 22) & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v12 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    v13 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_25:
  v11 = 0;
  if ((*(this + 22) & 0x100) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v12 = *(this + 41);
  if ((v1 & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = *(this + 4);
  return v4 ^ *&v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

uint64_t CMMsl::GyroBiasAndVariance::GyroBiasAndVariance(uint64_t this)
{
  *this = &unk_286C20540;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_286C20540;
  *(this + 36) = 0;
  return this;
}

void CMMsl::GyroBiasAndVariance::~GyroBiasAndVariance(CMMsl::GyroBiasAndVariance *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroBiasAndVariance::GyroBiasAndVariance(uint64_t this, const CMMsl::GyroBiasAndVariance *a2)
{
  *this = &unk_286C20540;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 36) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 36) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 2u;
    *(this + 36) = v3;
    *(this + 12) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 4u;
    *(this + 36) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 36) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 7);
  v3 |= 0x20u;
  *(this + 36) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 5);
    *(this + 36) = v3 | 8;
    *(this + 20) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 8);
  v3 |= 0x40u;
  *(this + 36) = v3;
  *(this + 32) = v9;
  if ((*(a2 + 36) & 8) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::GyroBiasAndVariance::operator=(uint64_t a1, const CMMsl::GyroBiasAndVariance *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasAndVariance::GyroBiasAndVariance(v10, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v16;
    v16 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v14;
    v14 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v15;
    v15 = v7;
    v8 = *(a1 + 20);
    *(a1 + 20) = v13;
    v13 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroBiasAndVariance *a2, CMMsl::GyroBiasAndVariance *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  return result;
}

float CMMsl::GyroBiasAndVariance::GyroBiasAndVariance(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20540;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = &unk_286C20540;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::GyroBiasAndVariance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13[0] = &unk_286C20540;
    v3 = *(a2 + 36);
    *(a2 + 36) = 0;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 20);
    v18 = *(a1 + 36);
    v7 = *(a2 + 8);
    v13[1] = *(a1 + 8);
    v14 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a2 + 24);
    *(a1 + 36) = v3;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v9;
    v16 = v8;
    v10 = *(a1 + 32);
    *(a1 + 32) = v5;
    v17 = v10;
    v11 = *(a1 + 20);
    *(a1 + 20) = v6;
    v15 = v11;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasAndVariance::formatText(CMMsl::GyroBiasAndVariance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "biasX", *(this + 2));
    v5 = *(this + 36);
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

  else if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "biasY", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "biasZ", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(this + 5);
  PB::TextFormatter::format(a2, "doingBiasEstimation");
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "varianceX", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "varianceY", *(this + 7));
  if ((*(this + 36) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "varianceZ", *(this + 8));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasAndVariance::readFrom(CMMsl::GyroBiasAndVariance *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_53:
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_63;
        case 2:
          *(this + 36) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_63;
        case 3:
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_63;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 36) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 8) = *(*a2 + v2);
        goto LABEL_63;
      }

      if (v22 == 7)
      {
        *(this + 36) |= 8u;
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
              goto LABEL_68;
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
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_67:
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

LABEL_68:
        *(this + 5) = v27;
        goto LABEL_69;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 36) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_63;
      }

      if (v22 == 5)
      {
        *(this + 36) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_63:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_69;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_69:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::GyroBiasAndVariance::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 36);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 36) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 36);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::GyroBiasAndVariance::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if ((*(a2 + 36) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x20) != 0)
  {
    if ((*(a2 + 36) & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if ((*(a2 + 36) & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x40) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 8) == 0;
  if ((*(a1 + 36) & 8) != 0)
  {
    return (*(a2 + 36) & 8) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::GyroBiasAndVariance::hash_value(CMMsl::GyroBiasAndVariance *this)
{
  if ((*(this + 36) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0;
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = 0;
    if ((*(this + 36) & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v7 = 0;
    if ((*(this + 36) & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v9 = 0;
    if ((*(this + 36) & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v13 = *(this + 2);
  v1 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 36) & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 36) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v8 = *(this + 7);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 36) & 0x40) != 0)
  {
LABEL_15:
    v10 = *(this + 8);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v12 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12;
  }

LABEL_26:
  v11 = 0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v12 = *(this + 5);
  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12;
}

double CMMsl::GyroBiasConstraints::GyroBiasConstraints(CMMsl::GyroBiasConstraints *this)
{
  *this = &unk_286C20578;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_286C20578;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::GyroBiasConstraints::~GyroBiasConstraints(CMMsl::GyroBiasConstraints *this)
{
  *this = &unk_286C20578;
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

{
  CMMsl::GyroBiasConstraints::~GyroBiasConstraints(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::GyroBiasConstraints *CMMsl::GyroBiasConstraints::GyroBiasConstraints(CMMsl::GyroBiasConstraints *this, const CMMsl::GyroBiasConstraints *a2)
{
  *this = &unk_286C20578;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 30) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v6 = *(a2 + 120);
  if (v6)
  {
    v8 = *(a2 + 13);
    v7 = 1;
    *(this + 120) = 1;
    *(this + 13) = v8;
    v6 = *(a2 + 120);
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if ((*(a2 + 120) & 8) != 0)
  {
LABEL_5:
    v9 = *(a2 + 117);
    v7 |= 8u;
    *(this + 120) = v7;
    *(this + 117) = v9;
    v6 = *(a2 + 120);
  }

LABEL_6:
  if ((v6 & 4) != 0)
  {
    v10 = *(a2 + 116);
    *(this + 120) = v7 | 4;
    *(this + 116) = v10;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_25AD287AC(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 120) & 2) != 0)
  {
    v11 = *(a2 + 28);
    *(this + 120) |= 2u;
    *(this + 28) = v11;
  }

  return this;
}

CMMsl *CMMsl::GyroBiasConstraints::operator=(CMMsl *a1, const CMMsl::GyroBiasConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasConstraints::GyroBiasConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GyroBiasConstraints::~GyroBiasConstraints(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroBiasConstraints *a2, CMMsl::GyroBiasConstraints *a3)
{
  v3 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LOBYTE(v3) = *(this + 117);
  *(this + 117) = *(a2 + 117);
  *(a2 + 117) = v3;
  LOBYTE(v3) = *(this + 116);
  *(this + 116) = *(a2 + 116);
  *(a2 + 116) = v3;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  result = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = result;
  return result;
}

uint64_t CMMsl::GyroBiasConstraints::GyroBiasConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20578;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 116) = *(a2 + 116);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v5, (a2 + 56));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

CMMsl *CMMsl::GyroBiasConstraints::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroBiasConstraints::GyroBiasConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::GyroBiasConstraints::~GyroBiasConstraints(v5);
  }

  return a1;
}

uint64_t CMMsl::GyroBiasConstraints::formatText(CMMsl::GyroBiasConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 120) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accelRotationRate", *(this + 28));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "accelVariance", v7);
  }

  if ((*(this + 120) & 4) != 0)
  {
    v8 = *(this + 116);
    PB::TextFormatter::format(a2, "allowRelaxedGyroMean");
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "gyroMean", v11);
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "gyroVariance", v14);
  }

  if ((*(this + 120) & 8) != 0)
  {
    v15 = *(this + 117);
    PB::TextFormatter::format(a2, "stillOnAll");
  }

  v16 = *(this + 10);
  v17 = *(this + 11);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(a2, "temperatureBias", v18);
  }

  if (*(this + 120))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 13));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroBiasConstraints::readFrom(CMMsl::GyroBiasConstraints *this, PB::Reader *a2)
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
        goto LABEL_189;
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
        goto LABEL_189;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        break;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          *(this + 120) |= 4u;
          v79 = *(a2 + 1);
          if (v79 >= *(a2 + 2))
          {
            v82 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v80 = v79 + 1;
            v81 = *(*a2 + v79);
            *(a2 + 1) = v80;
            v82 = v81 != 0;
          }

          *(this + 116) = v82;
          goto LABEL_185;
        }

        if (v23 != 4)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_191;
          }

          v44 = *(a2 + 1);
          v45 = *(a2 + 2);
          while (v44 < v45 && (*(a2 + 24) & 1) == 0)
          {
            v47 = *(this + 5);
            v46 = *(this + 6);
            if (v47 >= v46)
            {
              v49 = *(this + 4);
              v50 = v47 - v49;
              v51 = (v47 - v49) >> 2;
              v52 = v51 + 1;
              if ((v51 + 1) >> 62)
              {
                goto LABEL_193;
              }

              v53 = v46 - v49;
              if (v53 >> 1 > v52)
              {
                v52 = v53 >> 1;
              }

              if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v54 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v54 = v52;
              }

              if (v54)
              {
                sub_25AD288E8(v54);
              }

              v55 = (v47 - v49) >> 2;
              v56 = (4 * v51);
              v57 = (4 * v51 - 4 * v55);
              *v56 = 0;
              v48 = v56 + 1;
              memcpy(v57, v49, v50);
              v58 = *(this + 4);
              *(this + 4) = v57;
              *(this + 5) = v48;
              *(this + 6) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v47 = 0;
              v48 = v47 + 4;
            }

            *(this + 5) = v48;
            v59 = *(a2 + 1);
            if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
            {
              goto LABEL_121;
            }

            *(v48 - 1) = *(*a2 + v59);
            v45 = *(a2 + 2);
            v44 = *(a2 + 1) + 4;
            *(a2 + 1) = v44;
          }

          goto LABEL_122;
        }

        v107 = *(this + 5);
        v106 = *(this + 6);
        if (v107 >= v106)
        {
          v126 = *(this + 4);
          v127 = v107 - v126;
          v128 = (v107 - v126) >> 2;
          v129 = v128 + 1;
          if ((v128 + 1) >> 62)
          {
LABEL_193:
            sub_25AAE66B8();
          }

          v130 = v106 - v126;
          if (v130 >> 1 > v129)
          {
            v129 = v130 >> 1;
          }

          if (v130 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v131 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v131 = v129;
          }

          if (v131)
          {
            sub_25AD288E8(v131);
          }

          v144 = (v107 - v126) >> 2;
          v145 = (4 * v128);
          v146 = (4 * v128 - 4 * v144);
          *v145 = 0;
          v101 = v145 + 1;
          memcpy(v146, v126, v127);
          v147 = *(this + 4);
          *(this + 4) = v146;
          *(this + 5) = v101;
          *(this + 6) = 0;
          if (v147)
          {
            operator delete(v147);
          }
        }

        else
        {
          *v107 = 0;
          v101 = v107 + 4;
        }

        *(this + 5) = v101;
        goto LABEL_179;
      }

      if (v23 == 1)
      {
        *(this + 120) |= 1u;
        v61 = *(a2 + 1);
        if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
        {
          goto LABEL_181;
        }

        *(this + 13) = *(*a2 + v61);
        v62 = *(a2 + 1) + 8;
        goto LABEL_184;
      }

      if (v23 != 2)
      {
        goto LABEL_17;
      }

      *(this + 120) |= 8u;
      v24 = *(a2 + 1);
      if (v24 >= *(a2 + 2))
      {
        v27 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v25 = v24 + 1;
        v26 = *(*a2 + v24);
        *(a2 + 1) = v25;
        v27 = v26 != 0;
      }

      *(this + 117) = v27;
LABEL_185:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_189;
      }
    }

    if (v23 > 6)
    {
      if (v23 == 7)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_191:
            v149 = 0;
            return v149 & 1;
          }

          v83 = *(a2 + 1);
          v84 = *(a2 + 2);
          while (v83 < v84 && (*(a2 + 24) & 1) == 0)
          {
            v86 = *(this + 2);
            v85 = *(this + 3);
            if (v86 >= v85)
            {
              v88 = *(this + 1);
              v89 = v86 - v88;
              v90 = (v86 - v88) >> 2;
              v91 = v90 + 1;
              if ((v90 + 1) >> 62)
              {
                goto LABEL_193;
              }

              v92 = v85 - v88;
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
                sub_25AD288E8(v93);
              }

              v94 = (v86 - v88) >> 2;
              v95 = (4 * v90);
              v96 = (4 * v90 - 4 * v94);
              *v95 = 0;
              v87 = v95 + 1;
              memcpy(v96, v88, v89);
              v97 = *(this + 1);
              *(this + 1) = v96;
              *(this + 2) = v87;
              *(this + 3) = 0;
              if (v97)
              {
                operator delete(v97);
              }
            }

            else
            {
              *v86 = 0;
              v87 = v86 + 4;
            }

            *(this + 2) = v87;
            v98 = *(a2 + 1);
            if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
            {
LABEL_121:
              *(a2 + 24) = 1;
              goto LABEL_122;
            }

            *(v87 - 1) = *(*a2 + v98);
            v84 = *(a2 + 2);
            v83 = *(a2 + 1) + 4;
            *(a2 + 1) = v83;
          }

          goto LABEL_122;
        }

        v103 = *(this + 2);
        v102 = *(this + 3);
        if (v103 >= v102)
        {
          v114 = *(this + 1);
          v115 = v103 - v114;
          v116 = (v103 - v114) >> 2;
          v117 = v116 + 1;
          if ((v116 + 1) >> 62)
          {
            goto LABEL_193;
          }

          v118 = v102 - v114;
          if (v118 >> 1 > v117)
          {
            v117 = v118 >> 1;
          }

          if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v119 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v119 = v117;
          }

          if (v119)
          {
            sub_25AD288E8(v119);
          }

          v136 = (v103 - v114) >> 2;
          v137 = (4 * v116);
          v138 = (4 * v116 - 4 * v136);
          *v137 = 0;
          v101 = v137 + 1;
          memcpy(v138, v114, v115);
          v139 = *(this + 1);
          *(this + 1) = v138;
          *(this + 2) = v101;
          *(this + 3) = 0;
          if (v139)
          {
            operator delete(v139);
          }
        }

        else
        {
          *v103 = 0;
          v101 = v103 + 4;
        }

        *(this + 2) = v101;
        goto LABEL_179;
      }

      if (v23 != 8)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_191;
        }

        goto LABEL_185;
      }

      *(this + 120) |= 2u;
      v60 = *(a2 + 1);
      if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
      {
LABEL_181:
        *(a2 + 24) = 1;
        goto LABEL_185;
      }

      *(this + 28) = *(*a2 + v60);
    }

    else
    {
      if (v23 == 5)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_191;
          }

          v63 = *(a2 + 1);
          v64 = *(a2 + 2);
          while (v63 < v64 && (*(a2 + 24) & 1) == 0)
          {
            v66 = *(this + 8);
            v65 = *(this + 9);
            if (v66 >= v65)
            {
              v68 = *(this + 7);
              v69 = v66 - v68;
              v70 = (v66 - v68) >> 2;
              v71 = v70 + 1;
              if ((v70 + 1) >> 62)
              {
                goto LABEL_193;
              }

              v72 = v65 - v68;
              if (v72 >> 1 > v71)
              {
                v71 = v72 >> 1;
              }

              if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v73 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v73 = v71;
              }

              if (v73)
              {
                sub_25AD288E8(v73);
              }

              v74 = (v66 - v68) >> 2;
              v75 = (4 * v70);
              v76 = (4 * v70 - 4 * v74);
              *v75 = 0;
              v67 = v75 + 1;
              memcpy(v76, v68, v69);
              v77 = *(this + 7);
              *(this + 7) = v76;
              *(this + 8) = v67;
              *(this + 9) = 0;
              if (v77)
              {
                operator delete(v77);
              }
            }

            else
            {
              *v66 = 0;
              v67 = v66 + 4;
            }

            *(this + 8) = v67;
            v78 = *(a2 + 1);
            if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(a2 + 2))
            {
              goto LABEL_121;
            }

            *(v67 - 1) = *(*a2 + v78);
            v64 = *(a2 + 2);
            v63 = *(a2 + 1) + 4;
            *(a2 + 1) = v63;
          }

          goto LABEL_122;
        }

        v100 = *(this + 8);
        v99 = *(this + 9);
        if (v100 >= v99)
        {
          v108 = *(this + 7);
          v109 = v100 - v108;
          v110 = (v100 - v108) >> 2;
          v111 = v110 + 1;
          if ((v110 + 1) >> 62)
          {
            goto LABEL_193;
          }

          v112 = v99 - v108;
          if (v112 >> 1 > v111)
          {
            v111 = v112 >> 1;
          }

          if (v112 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v113 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v113 = v111;
          }

          if (v113)
          {
            sub_25AD288E8(v113);
          }

          v132 = (v100 - v108) >> 2;
          v133 = (4 * v110);
          v134 = (4 * v110 - 4 * v132);
          *v133 = 0;
          v101 = v133 + 1;
          memcpy(v134, v108, v109);
          v135 = *(this + 7);
          *(this + 7) = v134;
          *(this + 8) = v101;
          *(this + 9) = 0;
          if (v135)
          {
            operator delete(v135);
          }
        }

        else
        {
          *v100 = 0;
          v101 = v100 + 4;
        }

        *(this + 8) = v101;
      }

      else
      {
        if (v23 != 6)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_191;
          }

          v28 = *(a2 + 1);
          v29 = *(a2 + 2);
          while (v28 < v29 && (*(a2 + 24) & 1) == 0)
          {
            v31 = *(this + 11);
            v30 = *(this + 12);
            if (v31 >= v30)
            {
              v33 = *(this + 10);
              v34 = v31 - v33;
              v35 = (v31 - v33) >> 2;
              v36 = v35 + 1;
              if ((v35 + 1) >> 62)
              {
                goto LABEL_193;
              }

              v37 = v30 - v33;
              if (v37 >> 1 > v36)
              {
                v36 = v37 >> 1;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                sub_25AD288E8(v38);
              }

              v39 = (v31 - v33) >> 2;
              v40 = (4 * v35);
              v41 = (4 * v35 - 4 * v39);
              *v40 = 0;
              v32 = v40 + 1;
              memcpy(v41, v33, v34);
              v42 = *(this + 10);
              *(this + 10) = v41;
              *(this + 11) = v32;
              *(this + 12) = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            else
            {
              *v31 = 0;
              v32 = v31 + 4;
            }

            *(this + 11) = v32;
            v43 = *(a2 + 1);
            if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
            {
              goto LABEL_121;
            }

            *(v32 - 1) = *(*a2 + v43);
            v29 = *(a2 + 2);
            v28 = *(a2 + 1) + 4;
            *(a2 + 1) = v28;
          }

LABEL_122:
          PB::Reader::recallMark();
          goto LABEL_185;
        }

        v105 = *(this + 11);
        v104 = *(this + 12);
        if (v105 >= v104)
        {
          v120 = *(this + 10);
          v121 = v105 - v120;
          v122 = (v105 - v120) >> 2;
          v123 = v122 + 1;
          if ((v122 + 1) >> 62)
          {
            goto LABEL_193;
          }

          v124 = v104 - v120;
          if (v124 >> 1 > v123)
          {
            v123 = v124 >> 1;
          }

          if (v124 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v125 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v125 = v123;
          }

          if (v125)
          {
            sub_25AD288E8(v125);
          }

          v140 = (v105 - v120) >> 2;
          v141 = (4 * v122);
          v142 = (4 * v122 - 4 * v140);
          *v141 = 0;
          v101 = v141 + 1;
          memcpy(v142, v120, v121);
          v143 = *(this + 10);
          *(this + 10) = v142;
          *(this + 11) = v101;
          *(this + 12) = 0;
          if (v143)
          {
            operator delete(v143);
          }
        }

        else
        {
          *v105 = 0;
          v101 = v105 + 4;
        }

        *(this + 11) = v101;
      }

LABEL_179:
      v148 = *(a2 + 1);
      if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(a2 + 2))
      {
        goto LABEL_181;
      }

      *(v101 - 1) = *(*a2 + v148);
    }

    v62 = *(a2 + 1) + 4;
LABEL_184:
    *(a2 + 1) = v62;
    goto LABEL_185;
  }

LABEL_189:
  v149 = v4 ^ 1;
  return v149 & 1;
}