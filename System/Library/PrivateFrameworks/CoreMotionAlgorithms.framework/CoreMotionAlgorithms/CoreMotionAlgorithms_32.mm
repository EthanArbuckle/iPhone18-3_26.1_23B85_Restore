uint64_t sub_245EACA20(uint64_t a1, PB::Reader *this)
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
        goto LABEL_177;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 84) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_147;
        case 2u:
          *(a1 + 84) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_147;
        case 3u:
          *(a1 + 84) |= 0x200u;
          v26 = *(this + 1);
          v2 = *(this + 2);
          v27 = *this;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v26;
            v79 = (v27 + v26);
            v80 = v26 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v30) = 0;
                *(this + 24) = 1;
                goto LABEL_156;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v30 |= (v82 & 0x7F) << v76;
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
                LODWORD(v30) = 0;
LABEL_155:
                v2 = v81;
                goto LABEL_156;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_155;
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
              goto LABEL_156;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_156:
          *(a1 + 68) = v30;
          goto LABEL_173;
        case 4u:
          *(a1 + 84) |= 0x400u;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(this + 1);
            }

            v92 = v2 - v42;
            v93 = (v43 + v42);
            v94 = v42 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_164;
              }

              v95 = v94;
              v96 = *v93;
              *(this + 1) = v95;
              v46 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
LABEL_163:
                v2 = v95;
                goto LABEL_164;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v46) = 0;
            }

            goto LABEL_163;
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
              goto LABEL_164;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          LODWORD(v46) = 0;
LABEL_164:
          *(a1 + 72) = v46;
          goto LABEL_173;
        case 5u:
          *(a1 + 84) |= 0x800u;
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

          *(a1 + 76) = v23;
          goto LABEL_173;
        case 6u:
          *(a1 + 84) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v61 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v60 = *(*this + v2++);
            *(this + 1) = v2;
            v61 = v60 != 0;
          }

          *(a1 + 81) = v61;
          goto LABEL_173;
        case 7u:
          *(a1 + 84) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 79) = v71;
          goto LABEL_173;
        case 8u:
          *(a1 + 84) |= 0x8000u;
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

          *(a1 + 80) = v51;
          goto LABEL_173;
        case 9u:
          *(a1 + 84) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v75 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v74 = *(*this + v2++);
            *(this + 1) = v2;
            v75 = v74 != 0;
          }

          *(a1 + 78) = v75;
          goto LABEL_173;
        case 0xAu:
          *(a1 + 84) |= 0x20000u;
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

          *(a1 + 82) = v25;
          goto LABEL_173;
        case 0xBu:
          *(a1 + 84) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v73 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v72 = *(*this + v2++);
            *(this + 1) = v2;
            v73 = v72 != 0;
          }

          *(a1 + 77) = v73;
          goto LABEL_173;
        case 0xCu:
          *(a1 + 84) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_147;
        case 0xDu:
          *(a1 + 84) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_147;
        case 0xEu:
          *(a1 + 84) |= 0x80u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v104 = 0;
            v105 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v106 = v2 - v62;
            v107 = (v63 + v62);
            v108 = v62 + 1;
            while (1)
            {
              if (!v106)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_172;
              }

              v109 = v108;
              v110 = *v107;
              *(this + 1) = v109;
              v66 |= (v110 & 0x7F) << v104;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              --v106;
              ++v107;
              v108 = v109 + 1;
              v14 = v105++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_171:
                v2 = v109;
                goto LABEL_172;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_171;
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
              goto LABEL_172;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_172:
          *(a1 + 60) = v66;
          goto LABEL_173;
        case 0xFu:
          *(a1 + 84) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_147;
        case 0x10u:
          *(a1 + 84) |= 0x100u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v85 = v2 - v34;
            v86 = (v35 + v34);
            v87 = v34 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_160;
              }

              v88 = v87;
              v89 = *v86;
              *(this + 1) = v88;
              v38 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              --v85;
              ++v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_159:
                v2 = v88;
                goto LABEL_160;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_159;
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
              goto LABEL_160;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_160:
          *(a1 + 64) = v38;
          goto LABEL_173;
        case 0x11u:
          *(a1 + 84) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_67:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_147:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_173;
        case 0x12u:
          *(a1 + 84) |= 0x40u;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v97 = 0;
            v98 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v99 = v2 - v52;
            v100 = (v53 + v52);
            v101 = v52 + 1;
            while (1)
            {
              if (!v99)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_168;
              }

              v102 = v101;
              v103 = *v100;
              *(this + 1) = v102;
              v56 |= (v103 & 0x7F) << v97;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              --v99;
              ++v100;
              v101 = v102 + 1;
              v14 = v98++ > 8;
              if (v14)
              {
                LODWORD(v56) = 0;
LABEL_167:
                v2 = v102;
                goto LABEL_168;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_167;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_168;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_168:
          *(a1 + 56) = v56;
          goto LABEL_173;
        default:
          if (!PB::Reader::skip(this))
          {
            v111 = 0;
            return v111 & 1;
          }

          v2 = *(this + 1);
LABEL_173:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_177;
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

LABEL_177:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t sub_245EAD454(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 84);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 84);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 84);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(v3 + 76);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(v3 + 81);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(v3 + 79);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(v3 + 80);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(v3 + 78);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(v3 + 82);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(v3 + 77);
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 84);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 84);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 84);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 84) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  v15 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 84);
  if ((v4 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_37:
  v16 = *(v3 + 56);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EAD684(uint64_t result)
{
  *result = &unk_2858D3290;
  *(result + 60) = 0;
  return result;
}

void sub_245EAD6AC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EAD6E4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3290;
  *(result + 60) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 8;
    *(result + 60) = 8;
    *(result + 24) = v4;
    v2 = *(a2 + 60);
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
    v5 = *(a2 + 28);
    v3 |= 0x10u;
    *(result + 60) = v3;
    *(result + 28) = v5;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 32);
    v3 |= 0x20u;
    *(result + 60) = v3;
    *(result + 32) = v6;
    v2 = *(a2 + 60);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 60) = v3;
  *(result + 36) = v7;
  v2 = *(a2 + 60);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a2 + 48);
  v3 |= 0x200u;
  *(result + 60) = v3;
  *(result + 48) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 60) = v3;
  *(result + 44) = v9;
  v2 = *(a2 + 60);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 52);
  v3 |= 0x400u;
  *(result + 60) = v3;
  *(result + 52) = v10;
  v2 = *(a2 + 60);
  if ((v2 & 0x4000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a2 + 59);
  v3 |= 0x4000u;
  *(result + 60) = v3;
  *(result + 59) = v11;
  v2 = *(a2 + 60);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(a2 + 58);
  v3 |= 0x2000u;
  *(result + 60) = v3;
  *(result + 58) = v12;
  v2 = *(a2 + 60);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = *(a2 + 57);
  v3 |= 0x1000u;
  *(result + 60) = v3;
  *(result + 57) = v13;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(a2 + 8);
  v3 |= 1u;
  *(result + 60) = v3;
  *(result + 8) = v14;
  v2 = *(a2 + 60);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(a2 + 56);
  v3 |= 0x800u;
  *(result + 60) = v3;
  *(result + 56) = v15;
  v2 = *(a2 + 60);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(a2 + 16);
  v3 |= 2u;
  *(result + 60) = v3;
  *(result + 16) = v16;
  v2 = *(a2 + 60);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_32:
    v18 = *(a2 + 40);
    *(result + 60) = v3 | 0x80;
    *(result + 40) = v18;
    return result;
  }

LABEL_31:
  v17 = *(a2 + 20);
  v3 |= 4u;
  *(result + 60) = v3;
  *(result + 20) = v17;
  if ((*(a2 + 60) & 0x80) != 0)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_245EAD8B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dataRate", *(a1 + 16));
    v5 = *(a1 + 60);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a1 + 60) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "isInterpolated");
  v5 = *(a1 + 60);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a1 + 57);
  PB::TextFormatter::format(this, "isMissingSamples");
  v5 = *(a1 + 60);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a1 + 58);
  PB::TextFormatter::format(this, "isWalkingFiltered");
  v5 = *(a1 + 60);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 59);
  PB::TextFormatter::format(this, "isWalkingRaw");
  v5 = *(a1 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "maxSampleDeltaInSecond", *(a1 + 20));
  v5 = *(a1 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "pedEnergyPlane", *(a1 + 24));
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "pedEnergyZ", *(a1 + 28));
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "pedEnergyZByPlane", *(a1 + 32));
  v5 = *(a1 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "pedEnergyZPeak", *(a1 + 36));
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "reversedTimestampCounts");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "thetaPitchFaceDeg", *(a1 + 44));
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "thetaRollFaceDeg", *(a1 + 48));
  v5 = *(a1 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  PB::TextFormatter::format(this, "thetaYawFaceDeg", *(a1 + 52));
  if (*(a1 + 60))
  {
LABEL_16:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_17:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EADAD8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_114;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 60) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_99;
        case 2u:
          *(a1 + 60) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_99;
        case 3u:
          *(a1 + 60) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_99;
        case 4u:
          *(a1 + 60) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_99;
        case 5u:
          *(a1 + 60) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_99;
        case 6u:
          *(a1 + 60) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_99;
        case 7u:
          *(a1 + 60) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_99;
        case 8u:
          *(a1 + 60) |= 0x4000u;
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

          *(a1 + 59) = v35;
          goto LABEL_110;
        case 9u:
          *(a1 + 60) |= 0x2000u;
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

          *(a1 + 58) = v45;
          goto LABEL_110;
        case 0xAu:
          *(a1 + 60) |= 0x1000u;
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

          *(a1 + 57) = v33;
          goto LABEL_110;
        case 0xBu:
          *(a1 + 60) |= 1u;
          v36 = *(this + 1);
          v2 = *(this + 2);
          v37 = *this;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(this + 1);
            }

            v55 = v2 - v36;
            v56 = (v37 + v36);
            v57 = v36 + 1;
            while (1)
            {
              if (!v55)
              {
                v40 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v58 = v57;
              v59 = *v56;
              *(this + 1) = v58;
              v40 |= (v59 & 0x7F) << v53;
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
                v40 = 0;
LABEL_108:
                v2 = v58;
                goto LABEL_109;
              }
            }

            if (*(this + 24))
            {
              v40 = 0;
            }

            goto LABEL_108;
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
              goto LABEL_109;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          v40 = 0;
LABEL_109:
          *(a1 + 8) = v40;
          goto LABEL_110;
        case 0xCu:
          *(a1 + 60) |= 0x800u;
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

          *(a1 + 56) = v31;
          goto LABEL_110;
        case 0xDu:
          *(a1 + 60) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_99;
        case 0xEu:
          *(a1 + 60) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_64:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 20) = *(*this + v2);
LABEL_99:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_110;
        case 0xFu:
          *(a1 + 60) |= 0x80u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v48 = v2 - v22;
            v49 = (v23 + v22);
            v50 = v22 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_105;
              }

              v51 = v50;
              v52 = *v49;
              *(this + 1) = v51;
              v26 |= (v52 & 0x7F) << v46;
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
                LODWORD(v26) = 0;
LABEL_104:
                v2 = v51;
                goto LABEL_105;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_104;
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
              goto LABEL_105;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_105:
          *(a1 + 40) = v26;
          goto LABEL_110;
        default:
          if (!PB::Reader::skip(this))
          {
            v60 = 0;
            return v60 & 1;
          }

          v2 = *(this + 1);
LABEL_110:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_114;
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

LABEL_114:
  v60 = v4 ^ 1;
  return v60 & 1;
}

uint64_t sub_245EAE1D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = *(v3 + 59);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 58);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(v3 + 57);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(v3 + 56);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 60) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_31:
  v10 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

double sub_245EAE3AC(uint64_t a1)
{
  *a1 = &unk_2858D32C8;
  *(a1 + 64) = 0;
  *(a1 + 244) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

void sub_245EAE3F0(PB::Base *this)
{
  *this = &unk_2858D32C8;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  PB::Base::~Base(this);
}

void sub_245EAE684(PB::Base *a1)
{
  sub_245EAE3F0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EAE6BC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D32C8;
  *(result + 64) = 0;
  *(result + 88) = 0u;
  *(result + 244) = 0;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0;
  v2 = *(a2 + 244);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 80);
    v3 = 256;
    *(result + 244) = 256;
    *(result + 80) = v4;
    v2 = *(a2 + 244);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 72);
    v3 |= 0x80u;
    *(result + 244) = v3;
    *(result + 72) = v5;
    v2 = *(a2 + 244);
  }

LABEL_6:
  if ((v2 & 0x10000) != 0)
  {
    v12 = *(a2 + 220);
    v3 |= 0x10000u;
    *(result + 244) = v3;
    *(result + 220) = v12;
    v2 = *(a2 + 244);
    if ((v2 & 0x8000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 216);
  v3 |= 0x8000u;
  *(result + 244) = v3;
  *(result + 216) = v13;
  v2 = *(a2 + 244);
  if ((v2 & 0x40000) == 0)
  {
LABEL_9:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  v14 = *(a2 + 228);
  v3 |= 0x40000u;
  *(result + 244) = v3;
  *(result + 228) = v14;
  v2 = *(a2 + 244);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  v15 = *(a2 + 241);
  v3 |= 0x2000000u;
  *(result + 244) = v3;
  *(result + 241) = v15;
  v2 = *(a2 + 244);
  if ((v2 & 0x80000) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = *(a2 + 232);
  v3 |= 0x80000u;
  *(result + 244) = v3;
  *(result + 232) = v16;
  v2 = *(a2 + 244);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = *(a2 + 242);
  v3 |= 0x4000000u;
  *(result + 244) = v3;
  *(result + 242) = v17;
  v2 = *(a2 + 244);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_66:
  v18 = *(a2 + 176);
  v3 |= 0x200u;
  *(result + 244) = v3;
  *(result + 176) = v18;
  if ((*(a2 + 244) & 0x400000) != 0)
  {
LABEL_14:
    v6 = *(a2 + 238);
    *(result + 244) = v3 | 0x400000;
    *(result + 238) = v6;
  }

LABEL_15:
  if (*(a2 + 64))
  {
    operator new();
  }

  v7 = *(a2 + 244);
  if ((v7 & 0x800) != 0)
  {
    v19 = *(a2 + 192);
    *(result + 244) |= 0x800u;
    *(result + 192) = v19;
    v7 = *(a2 + 244);
    if ((v7 & 0x800000) == 0)
    {
LABEL_19:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_19;
  }

  v20 = *(a2 + 239);
  *(result + 244) |= 0x800000u;
  *(result + 239) = v20;
  v7 = *(a2 + 244);
  if ((v7 & 0x400) == 0)
  {
LABEL_20:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_70:
  v21 = *(a2 + 184);
  *(result + 244) |= 0x400u;
  *(result + 184) = v21;
  if ((*(a2 + 244) & 0x200000) != 0)
  {
LABEL_21:
    v8 = *(a2 + 237);
    *(result + 244) |= 0x200000u;
    *(result + 237) = v8;
  }

LABEL_22:
  if (*(a2 + 120))
  {
    operator new();
  }

  if (*(a2 + 112))
  {
    operator new();
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  if (*(a2 + 96))
  {
    operator new();
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 144))
  {
    operator new();
  }

  if (*(a2 + 168))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    operator new();
  }

  if ((*(a2 + 246) & 0x10) != 0)
  {
    v9 = *(a2 + 236);
    *(result + 244) |= 0x100000u;
    *(result + 236) = v9;
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  v10 = *(a2 + 244);
  if (v10)
  {
    v22 = *(a2 + 8);
    *(result + 244) |= 1u;
    *(result + 8) = v22;
    v10 = *(a2 + 244);
    if ((v10 & 8) == 0)
    {
LABEL_44:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_74;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_44;
  }

  v23 = *(a2 + 32);
  *(result + 244) |= 8u;
  *(result + 32) = v23;
  v10 = *(a2 + 244);
  if ((v10 & 0x20000) == 0)
  {
LABEL_45:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_74:
  v24 = *(a2 + 224);
  *(result + 244) |= 0x20000u;
  *(result + 224) = v24;
  v10 = *(a2 + 244);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

LABEL_75:
  v25 = *(a2 + 240);
  *(result + 244) |= 0x1000000u;
  *(result + 240) = v25;
  v10 = *(a2 + 244);
  if ((v10 & 0x1000) == 0)
  {
LABEL_47:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_77;
  }

LABEL_76:
  v26 = *(a2 + 200);
  *(result + 244) |= 0x1000u;
  *(result + 200) = v26;
  v10 = *(a2 + 244);
  if ((v10 & 0x40) == 0)
  {
LABEL_48:
    if ((v10 & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_77:
  v27 = *(a2 + 56);
  *(result + 244) |= 0x40u;
  *(result + 56) = v27;
  v10 = *(a2 + 244);
  if ((v10 & 2) == 0)
  {
LABEL_49:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_79;
  }

LABEL_78:
  v28 = *(a2 + 16);
  *(result + 244) |= 2u;
  *(result + 16) = v28;
  v10 = *(a2 + 244);
  if ((v10 & 0x10) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_80;
  }

LABEL_79:
  v29 = *(a2 + 40);
  *(result + 244) |= 0x10u;
  *(result + 40) = v29;
  v10 = *(a2 + 244);
  if ((v10 & 0x4000) == 0)
  {
LABEL_51:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

LABEL_80:
  v30 = *(a2 + 212);
  *(result + 244) |= 0x4000u;
  *(result + 212) = v30;
  v10 = *(a2 + 244);
  if ((v10 & 0x2000) == 0)
  {
LABEL_52:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_82;
  }

LABEL_81:
  v31 = *(a2 + 208);
  *(result + 244) |= 0x2000u;
  *(result + 208) = v31;
  v10 = *(a2 + 244);
  if ((v10 & 0x20) == 0)
  {
LABEL_53:
    if ((v10 & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_82:
  v32 = *(a2 + 48);
  *(result + 244) |= 0x20u;
  *(result + 48) = v32;
  if ((*(a2 + 244) & 4) != 0)
  {
LABEL_54:
    v11 = *(a2 + 24);
    *(result + 244) |= 4u;
    *(result + 24) = v11;
  }

LABEL_55:
  if (*(a2 + 136))
  {
    operator new();
  }

  if (*(a2 + 128))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EAEEC0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 244);
  if ((v5 & 0x100000) != 0)
  {
    v22 = *(a1 + 236);
    PB::TextFormatter::format(this, "appliedBoutMetricCorrections");
    v5 = *(a1 + 244);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "dailyFlights30daysMax", *(a1 + 8));
  v5 = *(a1 + 244);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "dailyFlights30daysMean", *(a1 + 16));
  v5 = *(a1 + 244);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "dailySteps30DaysTotal", *(a1 + 24));
  v5 = *(a1 + 244);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "dailySteps30daysMax", *(a1 + 32));
  v5 = *(a1 + 244);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "dailySteps30daysMean", *(a1 + 40));
  v5 = *(a1 + 244);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "dailySteps7DaysTotal", *(a1 + 48));
  v5 = *(a1 + 244);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "dailySteps7daysMean", *(a1 + 56));
  v5 = *(a1 + 244);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v23 = *(a1 + 208);
  PB::TextFormatter::format(this, "daysWithSteps30Days");
  v5 = *(a1 + 244);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_67:
  v24 = *(a1 + 212);
  PB::TextFormatter::format(this, "daysWithSteps7Days");
  if ((*(a1 + 244) & 0x8000) != 0)
  {
LABEL_12:
    v6 = *(a1 + 216);
    PB::TextFormatter::format(this, "errorStatus");
  }

LABEL_13:
  v7 = *(a1 + 64);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "eventResult");
  }

  v8 = *(a1 + 244);
  if ((v8 & 0x200000) != 0)
  {
    v25 = *(a1 + 237);
    PB::TextFormatter::format(this, "fusionSuccess");
    v8 = *(a1 + 244);
    if ((v8 & 0x80) == 0)
    {
LABEL_17:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_71;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(this, "hkEndTime", *(a1 + 72));
  v8 = *(a1 + 244);
  if ((v8 & 0x100) == 0)
  {
LABEL_18:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_71:
  PB::TextFormatter::format(this, "hkStartTime", *(a1 + 80));
  if ((*(a1 + 244) & 0x400000) != 0)
  {
LABEL_19:
    v9 = *(a1 + 238);
    PB::TextFormatter::format(this, "isHistoricalCompute");
  }

LABEL_20:
  v10 = *(a1 + 88);
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "modelBalanceFeatures");
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "modelContinuousWalkingFeatures");
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    (*(*v12 + 32))(v12, this, "modelContinuousWalkingResult");
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    (*(*v13 + 32))(v13, this, "modelGaitBaselineFeatures");
  }

  v14 = *(a1 + 120);
  if (v14)
  {
    (*(*v14 + 32))(v14, this, "modelGaitBaselineResult");
  }

  v15 = *(a1 + 128);
  if (v15)
  {
    (*(*v15 + 32))(v15, this, "modelHarmonicFeatures");
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    (*(*v16 + 32))(v16, this, "modelHarmonicResult");
  }

  v17 = *(a1 + 144);
  if (v17)
  {
    (*(*v17 + 32))(v17, this, "modelTemporalDispersionFeatures");
  }

  v18 = *(a1 + 152);
  if (v18)
  {
    (*(*v18 + 32))(v18, this, "modelTemporalDispersionResult");
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    (*(*v19 + 32))(v19, this, "modelTemporalEntropyFeatures");
  }

  v20 = *(a1 + 168);
  if (v20)
  {
    (*(*v20 + 32))(v20, this, "modelTemporalEntropyResult");
  }

  v21 = *(a1 + 244);
  if ((v21 & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "nextClassificationTime", *(a1 + 176));
    v21 = *(a1 + 244);
    if ((v21 & 0x400) == 0)
    {
LABEL_44:
      if ((v21 & 0x10000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_75;
    }
  }

  else if ((v21 & 0x400) == 0)
  {
    goto LABEL_44;
  }

  PB::TextFormatter::format(this, "rawSteadiness", *(a1 + 184));
  v21 = *(a1 + 244);
  if ((v21 & 0x10000) == 0)
  {
LABEL_45:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_76;
  }

LABEL_75:
  v26 = *(a1 + 220);
  PB::TextFormatter::format(this, "rejectionStatus");
  v21 = *(a1 + 244);
  if ((v21 & 0x800) == 0)
  {
LABEL_46:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "steadinessScore", *(a1 + 192));
  v21 = *(a1 + 244);
  if ((v21 & 0x800000) == 0)
  {
LABEL_47:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  v27 = *(a1 + 239);
  PB::TextFormatter::format(this, "steadinessScoreIsValid");
  v21 = *(a1 + 244);
  if ((v21 & 0x1000) == 0)
  {
LABEL_48:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(this, "unadjustedScore", *(a1 + 200));
  v21 = *(a1 + 244);
  if ((v21 & 0x20000) == 0)
  {
LABEL_49:
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(this, "userAge", *(a1 + 224));
  v21 = *(a1 + 244);
  if ((v21 & 0x40000) == 0)
  {
LABEL_50:
    if ((v21 & 0x1000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "userHeight", *(a1 + 228));
  v21 = *(a1 + 244);
  if ((v21 & 0x1000000) == 0)
  {
LABEL_51:
    if ((v21 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_82;
  }

LABEL_81:
  v28 = *(a1 + 240);
  PB::TextFormatter::format(this, "userIsAgeSet");
  v21 = *(a1 + 244);
  if ((v21 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_82:
  v29 = *(a1 + 241);
  PB::TextFormatter::format(this, "userIsHeightSet");
  v21 = *(a1 + 244);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_53:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_83:
  v30 = *(a1 + 242);
  PB::TextFormatter::format(this, "userIsWeightSet");
  if ((*(a1 + 244) & 0x80000) != 0)
  {
LABEL_54:
    PB::TextFormatter::format(this, "userWeight", *(a1 + 232));
  }

LABEL_55:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EAF504(uint64_t a1, PB::Reader *this)
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
            goto LABEL_197;
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
          *(a1 + 244) |= 0x100u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 80) = *(*this + v22);
          goto LABEL_175;
        case 2u:
          *(a1 + 244) |= 0x80u;
          v51 = *(this + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 72) = *(*this + v51);
          goto LABEL_175;
        case 4u:
          *(a1 + 244) |= 0x10000u;
          v53 = *(this + 1);
          v52 = *(this + 2);
          v54 = *this;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(this + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_186;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_149:
            LODWORD(v57) = 0;
            goto LABEL_186;
          }

          v109 = 0;
          v110 = 0;
          v57 = 0;
          v17 = v52 >= v53;
          v111 = v52 - v53;
          if (!v17)
          {
            v111 = 0;
          }

          v112 = (v54 + v53);
          v113 = v53 + 1;
          while (2)
          {
            if (v111)
            {
              v114 = *v112;
              *(this + 1) = v113;
              v57 |= (v114 & 0x7F) << v109;
              if (v114 < 0)
              {
                v109 += 7;
                --v111;
                ++v112;
                ++v113;
                v14 = v110++ > 8;
                if (v14)
                {
                  goto LABEL_149;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_186:
          *(a1 + 220) = v57;
          goto LABEL_193;
        case 5u:
          *(a1 + 244) |= 0x8000u;
          v68 = *(this + 1);
          v67 = *(this + 2);
          v69 = *this;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(this + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_189;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v72) = 0;
            goto LABEL_189;
          }

          v115 = 0;
          v116 = 0;
          v72 = 0;
          v17 = v67 >= v68;
          v117 = v67 - v68;
          if (!v17)
          {
            v117 = 0;
          }

          v118 = (v69 + v68);
          v119 = v68 + 1;
          while (2)
          {
            if (v117)
            {
              v120 = *v118;
              *(this + 1) = v119;
              v72 |= (v120 & 0x7F) << v115;
              if (v120 < 0)
              {
                v115 += 7;
                --v117;
                ++v118;
                ++v119;
                v14 = v116++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              LODWORD(v72) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_189:
          *(a1 + 216) = v72;
          goto LABEL_193;
        case 6u:
          *(a1 + 244) |= 0x40000u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 228) = *(*this + v61);
          goto LABEL_121;
        case 7u:
          *(a1 + 244) |= 0x2000000u;
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

          *(a1 + 241) = v66;
          goto LABEL_193;
        case 8u:
          *(a1 + 244) |= 0x80000u;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 232) = *(*this + v80);
          goto LABEL_121;
        case 9u:
          *(a1 + 244) |= 0x4000000u;
          v81 = *(this + 1);
          if (v81 >= *(this + 2))
          {
            v84 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v82 = v81 + 1;
            v83 = *(*this + v81);
            *(this + 1) = v82;
            v84 = v83 != 0;
          }

          *(a1 + 242) = v84;
          goto LABEL_193;
        case 0xAu:
          *(a1 + 244) |= 0x200u;
          v36 = *(this + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 176) = *(*this + v36);
          goto LABEL_175;
        case 0xBu:
          *(a1 + 244) |= 0x400000u;
          v86 = *(this + 1);
          if (v86 >= *(this + 2))
          {
            v89 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v87 = v86 + 1;
            v88 = *(*this + v86);
            *(this + 1) = v87;
            v89 = v88 != 0;
          }

          *(a1 + 238) = v89;
          goto LABEL_193;
        case 0xCu:
          operator new();
        case 0xDu:
          *(a1 + 244) |= 0x800u;
          v62 = *(this + 1);
          if (v62 > 0xFFFFFFFFFFFFFFF7 || v62 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 192) = *(*this + v62);
          goto LABEL_175;
        case 0xEu:
          *(a1 + 244) |= 0x800000u;
          v45 = *(this + 1);
          if (v45 >= *(this + 2))
          {
            v48 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v46 = v45 + 1;
            v47 = *(*this + v45);
            *(this + 1) = v46;
            v48 = v47 != 0;
          }

          *(a1 + 239) = v48;
          goto LABEL_193;
        case 0xFu:
          *(a1 + 244) |= 0x400u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 184) = *(*this + v25);
          goto LABEL_175;
        case 0x10u:
          *(a1 + 244) |= 0x200000u;
          v76 = *(this + 1);
          if (v76 >= *(this + 2))
          {
            v79 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v77 = v76 + 1;
            v78 = *(*this + v76);
            *(this + 1) = v77;
            v79 = v78 != 0;
          }

          *(a1 + 237) = v79;
          goto LABEL_193;
        case 0x11u:
          operator new();
        case 0x12u:
          operator new();
        case 0x13u:
          operator new();
        case 0x14u:
          operator new();
        case 0x15u:
          operator new();
        case 0x16u:
          operator new();
        case 0x17u:
          operator new();
        case 0x18u:
          operator new();
        case 0x19u:
          *(a1 + 244) |= 0x100000u;
          v37 = *(this + 1);
          if (v37 >= *(this + 2))
          {
            v40 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = v37 + 1;
            v39 = *(*this + v37);
            *(this + 1) = v38;
            v40 = v39 != 0;
          }

          *(a1 + 236) = v40;
          goto LABEL_193;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(a1 + 244) |= 1u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 8) = *(*this + v26);
          goto LABEL_175;
        case 0x1Cu:
          *(a1 + 244) |= 8u;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFF7 || v101 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 32) = *(*this + v101);
          goto LABEL_175;
        case 0x1Du:
          *(a1 + 244) |= 0x20000u;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 224) = *(*this + v99);
LABEL_121:
          v100 = *(this + 1) + 4;
          goto LABEL_176;
        case 0x1Eu:
          *(a1 + 244) |= 0x1000000u;
          v41 = *(this + 1);
          if (v41 >= *(this + 2))
          {
            v44 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = v41 + 1;
            v43 = *(*this + v41);
            *(this + 1) = v42;
            v44 = v43 != 0;
          }

          *(a1 + 240) = v44;
          goto LABEL_193;
        case 0x1Fu:
          *(a1 + 244) |= 0x1000u;
          v49 = *(this + 1);
          if (v49 > 0xFFFFFFFFFFFFFFF7 || v49 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 200) = *(*this + v49);
          goto LABEL_175;
        case 0x20u:
          *(a1 + 244) |= 0x40u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 56) = *(*this + v85);
          goto LABEL_175;
        case 0x21u:
          *(a1 + 244) |= 2u;
          v50 = *(this + 1);
          if (v50 > 0xFFFFFFFFFFFFFFF7 || v50 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 16) = *(*this + v50);
          goto LABEL_175;
        case 0x22u:
          *(a1 + 244) |= 0x10u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 40) = *(*this + v23);
          goto LABEL_175;
        case 0x23u:
          *(a1 + 244) |= 0x4000u;
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = *this;
          if (v28 <= 0xFFFFFFFFFFFFFFF5 && v28 + 10 <= v27)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            do
            {
              *(this + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                goto LABEL_183;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
            }

            while (!v14);
LABEL_135:
            LODWORD(v32) = 0;
            goto LABEL_183;
          }

          v103 = 0;
          v104 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v105 = v27 - v28;
          if (!v17)
          {
            v105 = 0;
          }

          v106 = (v29 + v28);
          v107 = v28 + 1;
          while (2)
          {
            if (v105)
            {
              v108 = *v106;
              *(this + 1) = v107;
              v32 |= (v108 & 0x7F) << v103;
              if (v108 < 0)
              {
                v103 += 7;
                --v105;
                ++v106;
                ++v107;
                v14 = v104++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_183:
          *(a1 + 212) = v32;
          goto LABEL_193;
        case 0x24u:
          *(a1 + 244) |= 0x2000u;
          v91 = *(this + 1);
          v90 = *(this + 2);
          v92 = *this;
          if (v91 <= 0xFFFFFFFFFFFFFFF5 && v91 + 10 <= v90)
          {
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v96 = (v92 + v91);
            v97 = v91 + 1;
            do
            {
              *(this + 1) = v97;
              v98 = *v96++;
              v95 |= (v98 & 0x7F) << v93;
              if ((v98 & 0x80) == 0)
              {
                goto LABEL_192;
              }

              v93 += 7;
              ++v97;
              v14 = v94++ > 8;
            }

            while (!v14);
LABEL_173:
            LODWORD(v95) = 0;
            goto LABEL_192;
          }

          v121 = 0;
          v122 = 0;
          v95 = 0;
          v17 = v90 >= v91;
          v123 = v90 - v91;
          if (!v17)
          {
            v123 = 0;
          }

          v124 = (v92 + v91);
          v125 = v91 + 1;
          break;
        case 0x25u:
          *(a1 + 244) |= 0x20u;
          v102 = *(this + 1);
          if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(this + 2))
          {
            goto LABEL_127;
          }

          *(a1 + 48) = *(*this + v102);
          goto LABEL_175;
        case 0x26u:
          *(a1 + 244) |= 4u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
LABEL_127:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v24);
LABEL_175:
            v100 = *(this + 1) + 8;
LABEL_176:
            *(this + 1) = v100;
          }

          goto LABEL_193;
        case 0x27u:
          operator new();
        case 0x28u:
          operator new();
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_193;
          }

          v128 = 0;
          return v128 & 1;
      }

      while (1)
      {
        if (!v123)
        {
          LODWORD(v95) = 0;
          *(this + 24) = 1;
          goto LABEL_192;
        }

        v126 = *v124;
        *(this + 1) = v125;
        v95 |= (v126 & 0x7F) << v121;
        if ((v126 & 0x80) == 0)
        {
          break;
        }

        v121 += 7;
        --v123;
        ++v124;
        ++v125;
        v14 = v122++ > 8;
        if (v14)
        {
          goto LABEL_173;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v95) = 0;
      }

LABEL_192:
      *(a1 + 208) = v95;
LABEL_193:
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

LABEL_197:
  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t sub_245EB0660(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 244);
  if ((v4 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 244);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 244);
  if ((v4 & 0x10000) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(v3 + 220);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 244);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(v3 + 216);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 244);
  if ((v4 & 0x40000) == 0)
  {
LABEL_6:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 228));
  v4 = *(v3 + 244);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(v3 + 241);
  result = PB::Writer::write(this);
  v4 = *(v3 + 244);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 232));
  v4 = *(v3 + 244);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v25 = *(v3 + 242);
  result = PB::Writer::write(this);
  v4 = *(v3 + 244);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 176));
  if ((*(v3 + 244) & 0x400000) != 0)
  {
LABEL_11:
    v5 = *(v3 + 238);
    result = PB::Writer::write(this);
  }

LABEL_12:
  v6 = *(v3 + 64);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 244);
  if ((v7 & 0x800) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 192));
    v7 = *(v3 + 244);
    if ((v7 & 0x800000) == 0)
    {
LABEL_16:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_70;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_16;
  }

  v26 = *(v3 + 239);
  result = PB::Writer::write(this);
  v7 = *(v3 + 244);
  if ((v7 & 0x400) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 184));
  if ((*(v3 + 244) & 0x200000) != 0)
  {
LABEL_18:
    v8 = *(v3 + 237);
    result = PB::Writer::write(this);
  }

LABEL_19:
  v9 = *(v3 + 120);
  if (v9)
  {
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 112);
  if (v10)
  {
    result = PB::Writer::writeSubmessage(this, v10);
  }

  v11 = *(v3 + 104);
  if (v11)
  {
    result = PB::Writer::writeSubmessage(this, v11);
  }

  v12 = *(v3 + 96);
  if (v12)
  {
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = *(v3 + 152);
  if (v13)
  {
    result = PB::Writer::writeSubmessage(this, v13);
  }

  v14 = *(v3 + 144);
  if (v14)
  {
    result = PB::Writer::writeSubmessage(this, v14);
  }

  v15 = *(v3 + 168);
  if (v15)
  {
    result = PB::Writer::writeSubmessage(this, v15);
  }

  v16 = *(v3 + 160);
  if (v16)
  {
    result = PB::Writer::writeSubmessage(this, v16);
  }

  if ((*(v3 + 246) & 0x10) != 0)
  {
    v17 = *(v3 + 236);
    result = PB::Writer::write(this);
  }

  v18 = *(v3 + 88);
  if (v18)
  {
    result = PB::Writer::writeSubmessage(this, v18);
  }

  v19 = *(v3 + 244);
  if (v19)
  {
    result = PB::Writer::write(this, *(v3 + 8));
    v19 = *(v3 + 244);
    if ((v19 & 8) == 0)
    {
LABEL_41:
      if ((v19 & 0x20000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_74;
    }
  }

  else if ((v19 & 8) == 0)
  {
    goto LABEL_41;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v19 = *(v3 + 244);
  if ((v19 & 0x20000) == 0)
  {
LABEL_42:
    if ((v19 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 224));
  v19 = *(v3 + 244);
  if ((v19 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  v27 = *(v3 + 240);
  result = PB::Writer::write(this);
  v19 = *(v3 + 244);
  if ((v19 & 0x1000) == 0)
  {
LABEL_44:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = PB::Writer::write(this, *(v3 + 200));
  v19 = *(v3 + 244);
  if ((v19 & 0x40) == 0)
  {
LABEL_45:
    if ((v19 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = PB::Writer::write(this, *(v3 + 56));
  v19 = *(v3 + 244);
  if ((v19 & 2) == 0)
  {
LABEL_46:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = PB::Writer::write(this, *(v3 + 16));
  v19 = *(v3 + 244);
  if ((v19 & 0x10) == 0)
  {
LABEL_47:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = PB::Writer::write(this, *(v3 + 40));
  v19 = *(v3 + 244);
  if ((v19 & 0x4000) == 0)
  {
LABEL_48:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = *(v3 + 212);
  result = PB::Writer::writeVarInt(this);
  v19 = *(v3 + 244);
  if ((v19 & 0x2000) == 0)
  {
LABEL_49:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  v29 = *(v3 + 208);
  result = PB::Writer::writeVarInt(this);
  v19 = *(v3 + 244);
  if ((v19 & 0x20) == 0)
  {
LABEL_50:
    if ((v19 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 48));
  if ((*(v3 + 244) & 4) != 0)
  {
LABEL_51:
    result = PB::Writer::write(this, *(v3 + 24));
  }

LABEL_52:
  v20 = *(v3 + 136);
  if (v20)
  {
    result = PB::Writer::writeSubmessage(this, v20);
  }

  v21 = *(v3 + 128);
  if (v21)
  {

    return PB::Writer::writeSubmessage(this, v21);
  }

  return result;
}

uint64_t sub_245EB0A7C(uint64_t result)
{
  *result = &unk_2858D3300;
  *(result + 28) = 0;
  return result;
}

void sub_245EB0AA4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EB0ADC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3300;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 24);
    v3 = 4;
    *(a1 + 28) = 4;
    *(a1 + 24) = LODWORD(result);
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
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 28) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    *(a1 + 28) = v3 | 1;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245EB0B5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "calories_kCal", *(a1 + 24));
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

  PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB0C00(uint64_t a1, PB::Reader *this)
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
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 24) = *(*this + v2);
        v2 = *(this + 1) + 4;
        goto LABEL_38;
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

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_33:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EB0E48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EB0ED4(uint64_t result)
{
  *result = &unk_2858D3338;
  *(result + 28) = 0;
  return result;
}

void sub_245EB0EFC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EB0F34(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D3338;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 24);
    v3 = 4;
    *(a1 + 28) = 4;
    *(a1 + 24) = LODWORD(result);
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
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 28) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    *(a1 + 28) = v3 | 1;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245EB0FB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "calories_kCal", *(a1 + 24));
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

  PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB1058(uint64_t a1, PB::Reader *this)
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
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 24) = *(*this + v2);
        v2 = *(this + 1) + 4;
        goto LABEL_38;
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

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_33:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EB12A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EB132C(uint64_t result)
{
  *result = &unk_2858D3370;
  *(result + 24) = 0;
  return result;
}

void sub_245EB1354(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB138C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3370;
  *(result + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    v3 = *(a2 + 16);
    *(result + 24) = 2;
    *(result + 16) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    v4 = *(a2 + 8);
    *(result + 24) = v2;
    *(result + 8) = v4;
  }

  return result;
}

uint64_t sub_245EB13F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "enclosureMaterial");
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB146C(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 1u;
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
              v26 = 0;
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
              v26 = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            v26 = 0;
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
              v26 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 8) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
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

uint64_t sub_245EB1738(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EB17A4(uint64_t result)
{
  *result = &unk_2858D33A8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245EB17CC(PB::Base *this)
{
  *this = &unk_2858D33A8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EB1850(PB::Base *a1)
{
  sub_245EB17CC(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB1888(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D33A8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
    v3 = *(a2 + 16);
    *(result + 32) = 2;
    *(result + 16) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 32))
  {
LABEL_5:
    v4 = *(a2 + 8);
    *(result + 32) = v2;
    *(result + 8) = v4;
  }

LABEL_6:
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EB1974(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
    v5 = *(a1 + 32);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB1A28(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 32) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 32) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_245EB1CE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 8));
  }

  v5 = *(v3 + 24);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_245EB1D64(uint64_t result)
{
  *result = &unk_2858D33E0;
  *(result + 40) = 0;
  return result;
}

void sub_245EB1D8C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB1DC4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D33E0;
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 40) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(result + 40) = v3;
    *(result + 24) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 32);
    v3 |= 0x10u;
    *(result + 40) = v3;
    *(result + 32) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 28);
  v3 |= 8u;
  *(result + 40) = v3;
  *(result + 28) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 37);
  v3 |= 0x40u;
  *(result + 40) = v3;
  *(result + 37) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 40) = v3;
  *(result + 36) = v9;
  v2 = *(a2 + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_18:
    v11 = *(a2 + 16);
    *(result + 40) = v3 | 2;
    *(result + 16) = v11;
    return result;
  }

LABEL_17:
  v10 = *(a2 + 38);
  v3 |= 0x80u;
  *(result + 40) = v3;
  *(result + 38) = v10;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_245EB1ED0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "date", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "isForcedOnWristEnabled");
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a1 + 37);
  PB::TextFormatter::format(this, "isOnCharger");
  v5 = *(a1 + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a1 + 38);
  PB::TextFormatter::format(this, "isWristDetectionEnabled");
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "onWrist");
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(a1 + 28);
  PB::TextFormatter::format(this, "onWristConfidence");
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "onWristSensor");
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB2014(uint64_t a1, PB::Reader *this)
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
            goto LABEL_135;
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
            *(a1 + 40) |= 0x80u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v60 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v59 = *(*this + v2++);
              *(this + 1) = v2;
              v60 = v59 != 0;
            }

            *(a1 + 38) = v60;
            goto LABEL_131;
          }

          if (v22 == 8)
          {
            *(a1 + 40) |= 2u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v82 = 0;
              v83 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v84 = v2 - v41;
              v85 = (v42 + v41);
              v86 = v41 + 1;
              while (1)
              {
                if (!v84)
                {
                  v45 = 0;
                  *(this + 24) = 1;
                  goto LABEL_130;
                }

                v87 = v86;
                v88 = *v85;
                *(this + 1) = v87;
                v45 |= (v88 & 0x7F) << v82;
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
                  v45 = 0;
                  goto LABEL_129;
                }
              }

              if (*(this + 24))
              {
                v45 = 0;
              }

LABEL_129:
              v2 = v87;
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
                  v45 = 0;
                  break;
                }
              }
            }

LABEL_130:
            *(a1 + 16) = v45;
            goto LABEL_131;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 40) |= 0x40u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v50 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v49 = *(*this + v2++);
              *(this + 1) = v2;
              v50 = v49 != 0;
            }

            *(a1 + 37) = v50;
            goto LABEL_131;
          }

          if (v22 == 6)
          {
            *(a1 + 40) |= 0x20u;
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

            *(a1 + 36) = v32;
            goto LABEL_131;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 40) |= 0x10u;
          v51 = *(this + 1);
          v2 = *(this + 2);
          v52 = *this;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v55 = 0;
            if (v2 <= v51)
            {
              v2 = *(this + 1);
            }

            v63 = v2 - v51;
            v64 = (v52 + v51);
            v65 = v51 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v55) = 0;
                *(this + 24) = 1;
                goto LABEL_118;
              }

              v66 = v65;
              v67 = *v64;
              *(this + 1) = v66;
              v55 |= (v67 & 0x7F) << v61;
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
                LODWORD(v55) = 0;
                goto LABEL_117;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v55) = 0;
            }

LABEL_117:
            v2 = v66;
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
              v2 = v57;
              *(this + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v55) = 0;
                break;
              }
            }
          }

LABEL_118:
          *(a1 + 32) = v55;
          goto LABEL_131;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v33 = *(this + 1);
          v2 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(this + 1);
            }

            v77 = v2 - v33;
            v78 = (v34 + v33);
            v79 = v33 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_126;
              }

              v80 = v79;
              v81 = *v78;
              *(this + 1) = v80;
              v37 |= (v81 & 0x7F) << v75;
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
                LODWORD(v37) = 0;
                goto LABEL_125;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_125:
            v2 = v80;
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
                LODWORD(v37) = 0;
                break;
              }
            }
          }

LABEL_126:
          *(a1 + 28) = v37;
          goto LABEL_131;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 1u;
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

          goto LABEL_131;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 4u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v70 = v2 - v23;
            v71 = (v24 + v23);
            v72 = v23 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_122;
              }

              v73 = v72;
              v74 = *v71;
              *(this + 1) = v73;
              v27 |= (v74 & 0x7F) << v68;
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
                LODWORD(v27) = 0;
                goto LABEL_121;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_121:
            v2 = v73;
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

LABEL_122:
          *(a1 + 24) = v27;
          goto LABEL_131;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v89 = 0;
        return v89 & 1;
      }

      v2 = *(this + 1);
LABEL_131:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_135:
  v89 = v4 ^ 1;
  return v89 & 1;
}

uint64_t sub_245EB2700(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(v3 + 37);
  result = PB::Writer::write(this);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = *(v3 + 38);
    result = PB::Writer::write(this);
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(v3 + 36);
  result = PB::Writer::write(this);
  v4 = *(v3 + 40);
  if (v4 < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_17:
  v11 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EB2818(uint64_t result)
{
  *result = &unk_2858D3418;
  *(result + 16) = 0;
  return result;
}

void sub_245EB2840(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB2878(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3418;
  *(result + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 12);
    *(result + 16) = 2;
    *(result + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 8);
    *(result + 16) = v2;
    *(result + 8) = v4;
  }

  return result;
}

uint64_t sub_245EB28DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "crown");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 12);
    PB::TextFormatter::format(this, "wrist");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB2958(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 16) |= 1u;
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
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v48 = v3 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_68;
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
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_67:
          v3 = v51;
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

LABEL_68:
        *(a1 + 8) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 2u;
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
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v41 = v3 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_64;
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
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_63:
          v3 = v44;
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

LABEL_64:
        *(a1 + 12) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245EB2CD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 12);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void sub_245EB2D48(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB2D80(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3450;
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(result + 32) = v3;
    *(result + 24) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 28);
    *(result + 32) = v3 | 8;
    *(result + 28) = v7;
    return result;
  }

  v6 = *(a2 + 16);
  v3 |= 2u;
  *(result + 32) = v3;
  *(result + 16) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EB2E18(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "entryId");
    v5 = *(a1 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
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
  PB::TextFormatter::format(this, "isMoving");
  v5 = *(a1 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "rssi");
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB2EDC(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 16) = *(*this + v2);
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 8u;
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

          *(a1 + 28) = v32;
          goto LABEL_77;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
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
                goto LABEL_76;
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
                goto LABEL_75;
              }
            }

            if (*(this + 24))
            {
              v37 = 0;
            }

LABEL_75:
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

LABEL_76:
          *(a1 + 8) = v37;
          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
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
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_72;
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
                LODWORD(v27) = 0;
                goto LABEL_71;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
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
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_72:
          *(a1 + 24) = -(v27 & 1) ^ (v27 >> 1);
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(this + 1);
LABEL_77:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_81:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_245EB3314(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 24);
  result = PB::Writer::writeSInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v3 + 28);

  return PB::Writer::write(this);
}

void *sub_245EB33BC(void *result)
{
  *result = &unk_2858D3488;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_245EB33E0(void **a1)
{
  *a1 = &unk_2858D3488;
  v2 = a1 + 1;
  sub_245DF837C(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_245EB343C(void **a1)
{
  *a1 = &unk_2858D3488;
  v3 = a1 + 1;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x24C194490]();
}

void *sub_245EB34AC(void *result, uint64_t a2)
{
  result[1] = 0;
  *result = &unk_2858D3488;
  result[2] = 0;
  result[3] = 0;
  v2 = *(a2 + 8);
  if (v2 != *(a2 + 16))
  {
    v3 = *v2;
    sub_245EB3524();
  }

  return result;
}

uint64_t sub_245EB367C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "entries");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB3714(int a1, PB::Reader *this)
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
        sub_245EB38E8();
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

uint64_t sub_245EB3A50(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_245EB3A9C(uint64_t result)
{
  *result = &unk_2858D34C0;
  *(result + 16) = 0;
  return result;
}

void sub_245EB3AC4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB3AFC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D34C0;
  *(result + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 12);
    *(result + 16) = 2;
    *(result + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 8);
    *(result + 16) = v2;
    *(result + 8) = v4;
  }

  return result;
}

uint64_t sub_245EB3B60(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 12);
    PB::TextFormatter::format(this, "motionNotification");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB3BDC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 16) |= 1u;
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
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v48 = v3 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_68;
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
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_67:
          v3 = v51;
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

LABEL_68:
        *(a1 + 8) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 2u;
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
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v41 = v3 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_64;
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
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_63:
          v3 = v44;
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

LABEL_64:
        *(a1 + 12) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245EB3F5C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 12);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EB3FC8(uint64_t result)
{
  *result = &unk_2858D34F8;
  *(result + 64) = 0;
  return result;
}

void sub_245EB3FF0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB4028(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D34F8;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 60);
    v3 = 512;
    *(result + 64) = 512;
    *(result + 60) = v4;
    v2 = *(a2 + 64);
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
    v5 = *(a2 + 40);
    v3 |= 0x10u;
    *(result + 64) = v3;
    *(result + 40) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 64) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 64) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 64);
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
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 64) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 52);
  v3 |= 0x80u;
  *(result + 64) = v3;
  *(result + 52) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 56);
  v3 |= 0x100u;
  *(result + 64) = v3;
  *(result + 56) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 48);
  v3 |= 0x40u;
  *(result + 64) = v3;
  *(result + 48) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_22:
    v13 = *(a2 + 44);
    *(result + 64) = v3 | 0x20;
    *(result + 44) = v13;
    return result;
  }

LABEL_21:
  v12 = *(a2 + 24);
  v3 |= 4u;
  *(result + 64) = v3;
  *(result + 24) = v12;
  if ((*(a2 + 64) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245EB416C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "endTime", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "eventTime", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 40);
  PB::TextFormatter::format(this, "eventType");
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 44);
  PB::TextFormatter::format(this, "genericWorkoutLabel");
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "poolLength", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "swimLocation");
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 52);
  PB::TextFormatter::format(this, "workoutLocationType");
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v11 = *(a1 + 56);
  PB::TextFormatter::format(this, "workoutMode");
  if ((*(a1 + 64) & 0x200) != 0)
  {
LABEL_11:
    v6 = *(a1 + 60);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB42F0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_175;
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
            *(a1 + 64) |= 0x80u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v92 = 0;
              v93 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v94 = v2 - v55;
              v95 = (v56 + v55);
              v96 = v55 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_162;
                }

                v97 = v96;
                v98 = *v95;
                *(this + 1) = v97;
                v59 |= (v98 & 0x7F) << v92;
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
                  LODWORD(v59) = 0;
                  goto LABEL_161;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_161:
              v2 = v97;
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

LABEL_162:
            *(a1 + 52) = v59;
            goto LABEL_171;
          }

          if (v22 == 7)
          {
            *(a1 + 64) |= 0x100u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v39;
              v81 = (v40 + v39);
              v82 = v39 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_154;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v43 |= (v84 & 0x7F) << v78;
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
                  LODWORD(v43) = 0;
                  goto LABEL_153;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_153:
              v2 = v83;
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

LABEL_154:
            *(a1 + 56) = v43;
            goto LABEL_171;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 64) |= 0x40u;
              v63 = *(this + 1);
              v2 = *(this + 2);
              v64 = *this;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v99 = 0;
                v100 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(this + 1);
                }

                v101 = v2 - v63;
                v102 = (v64 + v63);
                v103 = v63 + 1;
                while (1)
                {
                  if (!v101)
                  {
                    LODWORD(v67) = 0;
                    *(this + 24) = 1;
                    goto LABEL_166;
                  }

                  v104 = v103;
                  v105 = *v102;
                  *(this + 1) = v104;
                  v67 |= (v105 & 0x7F) << v99;
                  if ((v105 & 0x80) == 0)
                  {
                    break;
                  }

                  v99 += 7;
                  --v101;
                  ++v102;
                  v103 = v104 + 1;
                  v14 = v100++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_165;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_165:
                v2 = v104;
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
                  v2 = v69;
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
                    LODWORD(v67) = 0;
                    break;
                  }
                }
              }

LABEL_166:
              *(a1 + 48) = v67;
              goto LABEL_171;
            case 9:
              *(a1 + 64) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
LABEL_88:
                *(this + 24) = 1;
                goto LABEL_171;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_140;
            case 0xA:
              *(a1 + 64) |= 0x20u;
              v23 = *(this + 1);
              v2 = *(this + 2);
              v24 = *this;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v106 = 0;
                v107 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(this + 1);
                }

                v108 = v2 - v23;
                v109 = (v24 + v23);
                v110 = v23 + 1;
                while (1)
                {
                  if (!v108)
                  {
                    LODWORD(v27) = 0;
                    *(this + 24) = 1;
                    goto LABEL_170;
                  }

                  v111 = v110;
                  v112 = *v109;
                  *(this + 1) = v111;
                  v27 |= (v112 & 0x7F) << v106;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  --v108;
                  ++v109;
                  v110 = v111 + 1;
                  v14 = v107++ > 8;
                  if (v14)
                  {
                    LODWORD(v27) = 0;
                    goto LABEL_169;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

LABEL_169:
                v2 = v111;
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

LABEL_170:
              *(a1 + 44) = v27;
              goto LABEL_171;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 64) |= 0x200u;
          v47 = *(this + 1);
          v2 = *(this + 2);
          v48 = *this;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(this + 1);
            }

            v87 = v2 - v47;
            v88 = (v48 + v47);
            v89 = v47 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v51) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v90 = v89;
              v91 = *v88;
              *(this + 1) = v90;
              v51 |= (v91 & 0x7F) << v85;
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
                LODWORD(v51) = 0;
                goto LABEL_157;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_157:
            v2 = v90;
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

LABEL_158:
          *(a1 + 60) = v51;
          goto LABEL_171;
        }

        if (v22 == 2)
        {
          *(a1 + 64) |= 0x10u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v31;
            v74 = (v32 + v31);
            v75 = v31 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_150;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v35 |= (v77 & 0x7F) << v71;
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
                LODWORD(v35) = 0;
                goto LABEL_149;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_149:
            v2 = v76;
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

LABEL_150:
          *(a1 + 40) = v35;
          goto LABEL_171;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_88;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_140;
          case 4:
            *(a1 + 64) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_88;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_140;
          case 5:
            *(a1 + 64) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_88;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_140:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_171;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(this + 1);
LABEL_171:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_175:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_245EB4BD0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x200) != 0)
  {
    v5 = *(result + 60);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  v6 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
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
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 64) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v3 + 44);

  return PB::Writer::writeVarInt(this);
}

void sub_245EB4D24(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EB4D5C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D3530;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 28);
    v3 = 16;
    *(result + 32) = 16;
    *(result + 28) = v4;
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
    if ((v2 & 1) == 0)
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

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 32) = v3;
  *(result + 8) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245EB4E10(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "genericWorkoutLabel");
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

  PB::TextFormatter::format(this, "poolLength", *(a1 + 8));
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
  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "swimLocation");
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
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "workoutLocationType");
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EB4EF4(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 0x10u;
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
          *(a1 + 28) = v51;
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
          case 5:
            *(a1 + 32) |= 2u;
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
            *(a1 + 16) = v27;
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

uint64_t sub_245EB54EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(result + 28);
    result = PB::Writer::writeVarInt(this);
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

  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}