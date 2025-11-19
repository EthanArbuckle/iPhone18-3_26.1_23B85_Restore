void sub_225A61F2C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 120) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = ((((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_225A62224(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_225CCEFC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_225A62270()
{
  sub_225A62724();
  if (v0 <= 0x3F)
  {
    sub_225A62788();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_225A62330(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 144) & ~v6) + v7;
  v11 = 8 * (((v6 - 112) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((((a1 + 5) & 0xFFFFFFFFFFFFFFF8) + 135) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_225A624C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 144) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 112) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 112) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 135) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_225A62724()
{
  if (!qword_27D73B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B4A0);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73B670);
    }
  }
}

void sub_225A62788()
{
  if (!qword_27D73B678)
  {
    v0 = sub_225CCE324();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73B678);
    }
  }
}

uint64_t sub_225A62808()
{
  result = sub_225CCEFC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A628A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 120) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v18 = (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 2)
        {
          return v17 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_225A62A64(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 120) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *(a1 + v13) = v19;
              }

              else
              {
                *(a1 + v13) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      *(a1 + v13) = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v13) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_225A62D84(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[120])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A62DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared12HPKEEnvelopeVySDySSAA7AEADKeyVGGSg(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_225A62EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 232))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_225A62F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 1;
    }
  }

  return result;
}

void sub_225A62FF8()
{
  type metadata accessor for SecKey(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SESKeyForHPKE();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_225A63074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225A630C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225A63160()
{
  result = sub_225CCEFC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A631E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_225A633A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_225A636CC()
{
  sub_225A63790();
  if (v0 <= 0x3F)
  {
    sub_225CCDDB4();
    if (v1 <= 0x3F)
    {
      sub_225A62224(319, &qword_28105B790);
      if (v2 <= 0x3F)
      {
        sub_225A637E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_225A63790()
{
  result = qword_27D73B7A0;
  if (!qword_27D73B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B7A8);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D73B7A0);
  }

  return result;
}

void sub_225A637E4()
{
  if (!qword_27D73B7B0[0])
  {
    type metadata accessor for HPKEPrivateKey(255);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, qword_27D73B7B0);
    }
  }
}

unint64_t sub_225A638D8()
{
  result = qword_27D73B9B8;
  if (!qword_27D73B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9B8);
  }

  return result;
}

unint64_t sub_225A6394C()
{
  result = qword_27D73B9C0;
  if (!qword_27D73B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9C0);
  }

  return result;
}

unint64_t sub_225A639A4()
{
  result = qword_27D73B9C8;
  if (!qword_27D73B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9C8);
  }

  return result;
}

unint64_t sub_225A639FC()
{
  result = qword_27D73B9D0;
  if (!qword_27D73B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9D0);
  }

  return result;
}

unint64_t sub_225A63A54()
{
  result = qword_27D73B9D8;
  if (!qword_27D73B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9D8);
  }

  return result;
}

unint64_t sub_225A63B00()
{
  result = qword_27D73B9E0;
  if (!qword_27D73B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9E0);
  }

  return result;
}

unint64_t sub_225A63B58()
{
  result = qword_27D73B9E8;
  if (!qword_27D73B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9E8);
  }

  return result;
}

unint64_t sub_225A63BB0()
{
  result = qword_27D73B9F0;
  if (!qword_27D73B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9F0);
  }

  return result;
}

unint64_t sub_225A63C08()
{
  result = qword_27D73B9F8;
  if (!qword_27D73B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9F8);
  }

  return result;
}

unint64_t sub_225A63C60()
{
  result = qword_27D73BA00;
  if (!qword_27D73BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA00);
  }

  return result;
}

unint64_t sub_225A63CB8()
{
  result = qword_27D73BA08;
  if (!qword_27D73BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA08);
  }

  return result;
}

unint64_t sub_225A63D10()
{
  result = qword_27D73BA10;
  if (!qword_27D73BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA10);
  }

  return result;
}

unint64_t sub_225A63D68()
{
  result = qword_27D73BA18;
  if (!qword_27D73BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA18);
  }

  return result;
}

unint64_t sub_225A63DF8()
{
  result = qword_27D73BA20;
  if (!qword_27D73BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA20);
  }

  return result;
}

unint64_t sub_225A63E50()
{
  result = qword_27D73BA28;
  if (!qword_27D73BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA28);
  }

  return result;
}

unint64_t sub_225A63F14()
{
  result = qword_27D73BA30;
  if (!qword_27D73BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA30);
  }

  return result;
}

unint64_t sub_225A63F68()
{
  result = qword_27D73BA38;
  if (!qword_27D73BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA38);
  }

  return result;
}

uint64_t dispatch thunk of HPKESuite.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 24))();
}

{
  return (*(a8 + 32))();
}

uint64_t sub_225A640BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC9E4();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONEncoder;
  v16[0] = sub_225CCC9D4();
  (*(a5 + 24))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_225A6419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC994();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONDecoder;
  v16[0] = sub_225CCC984();
  (*(a5 + 40))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_225A6427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC9E4();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONEncoder;
  v16[0] = sub_225CCC9D4();
  (*(a5 + 32))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter()
{
  v0 = sub_225CCE214();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v37 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_225CCDB34();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE0F4();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCE014();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCDF14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v41, v23, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = v40;
      (*(v40 + 32))(v14, v23, v11);
      v27 = sub_225CCDFE4();
      (*(v32 + 8))(v14, v11);
    }

    else
    {
      (*(v16 + 32))(v19, v23, v15);
      v27 = sub_225CCDEE4();
      (*(v16 + 8))(v19, v15);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v28 = v34;
    (*(v34 + 32))(v10, v23, v7);
    v27 = sub_225CCE0C4();
    (*(v28 + 8))(v10, v7);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v35;
    v25 = v36;
    (*(v35 + 32))(v6, v23, v36);
    v27 = sub_225CCDB04();
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    v29 = v37;
    v30 = v38;
    v31 = v39;
    (*(v38 + 32))(v37, v23, v39);
    v27 = sub_225CCE1E4();
    (*(v30 + 8))(v29, v31);
  }

  return v27;
}

uint64_t sub_225A64868(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = sub_225CCE4D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCE4C4();
  v13 = sub_225CCE484();
  v15 = v14;
  result = (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
    *a4 = v15;
    *a5 = 32;
  }

  return result;
}

uint64_t sub_225A649A8(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = sub_225CCE4D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCE4C4();
  v13 = sub_225CCE484();
  v15 = v14;
  result = (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
    *a4 = v15;
    *a5 = 16;
  }

  return result;
}

uint64_t sub_225A64AE8()
{
  result = sub_2259D8490(&unk_2838FBBC8);
  qword_27D73BAA8 = result;
  unk_27D73BAB0 = v1;
  return result;
}

uint64_t sub_225A64B14()
{
  result = sub_2259D8490(&unk_2838FBBF0);
  qword_27D73BAB8 = result;
  unk_27D73BAC0 = v1;
  return result;
}

uint64_t ISO18013SessionCryptarch.Role.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

CoreIDVShared::ISO18013SessionCryptarch::Curve_optional __swiftcall ISO18013SessionCryptarch.Curve.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ISO18013SessionCryptarch.Curve.rawValue.getter()
{
  v1 = *v0;
  v2 = 909455952;
  v3 = 825374032;
  v4 = 0x393135353258;
  if (v1 != 3)
  {
    v4 = 942945368;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 876098384;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225A64CB8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A64D78()
{
  sub_225CCE5B4();
}

uint64_t sub_225A64E24()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A64EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 909455952;
  v5 = 0xE400000000000000;
  v6 = 825374032;
  v7 = 0xE600000000000000;
  v8 = 0x393135353258;
  if (v2 != 3)
  {
    v8 = 942945368;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 876098384;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ISO18013SessionCryptarch.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t ISO18013SessionCryptarch.PublicKey.init(curve:data:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v8 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v30 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v30 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v30 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v30 - v26;
  v28 = *a1;
  if (v28 <= 1)
  {
    if (*a1)
    {
      v30 = a2;
      v31 = a3;
      result = sub_225CCDFA4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
      v27 = v24;
    }

    else
    {
      v30 = a2;
      v31 = a3;
      result = sub_225CCDE74();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else if (v28 == 2)
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCE084();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v20;
  }

  else if (v28 == 3)
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCDAC4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v16;
  }

  else
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCE1A4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v12;
  }

  return sub_225A66304(v27, v32, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
}

uint64_t ISO18013SessionCryptarch.PublicKey.publicKeyData.getter()
{
  v0 = sub_225CCE1B4();
  v41 = *(v0 - 8);
  v42 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_225CCDAD4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE094();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDFB4();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCDEA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v44, v23, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v34 = v43;
      v35 = (*(v43 + 32))(v14, v23, v11);
      v27 = MEMORY[0x22AA6C7D0](v35);
      (*(v34 + 8))(v14, v11);
    }

    else
    {
      v28 = (*(v16 + 32))(v19, v23, v15);
      v27 = MEMORY[0x22AA6C6A0](v28);
      (*(v16 + 8))(v19, v15);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = v37;
    v30 = (*(v37 + 32))(v10, v23, v7);
    v27 = MEMORY[0x22AA6C8B0](v30);
    (*(v29 + 8))(v10, v7);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v38;
    v25 = v39;
    (*(v38 + 32))(v6, v23, v39);
    v27 = sub_225CCDAB4();
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    v31 = v40;
    v32 = v41;
    v33 = v42;
    (*(v41 + 32))(v40, v23, v42);
    v27 = sub_225CCE194();
    (*(v32 + 8))(v31, v33);
  }

  return v27;
}

uint64_t sub_225A6577C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter()
{
  v0 = sub_225CCE1B4();
  v67 = *(v0 - 8);
  v68 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_225CCE214();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v3);
  v63 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCDAD4();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_225CCDB34();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCE094();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_225CCE0F4();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v13);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_225CCDFB4();
  v50 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCE014();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_225CCDEA4();
  v49 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_225CCDF14();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v71, v34, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v71 = v22;
    v43 = v69;
    if (EnumCaseMultiPayload)
    {
      v46 = v70;
      (*(v70 + 32))(v21, v34, v18);
      v47 = sub_225CCDFD4();
      v40 = MEMORY[0x22AA6C7D0](v47);
      (*(v50 + 8))(v17, v43);
      (*(v46 + 8))(v21, v18);
    }

    else
    {
      (*(v27 + 32))(v30, v34, v26);
      v44 = sub_225CCDEC4();
      v40 = MEMORY[0x22AA6C6A0](v44);
      (*(v49 + 8))(v25, v71);
      (*(v27 + 8))(v30, v26);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v51;
      v36 = v52;
      v38 = v54;
      (*(v52 + 32))(v51, v34, v54);
      v39 = v53;
      v45 = sub_225CCE0B4();
      v40 = MEMORY[0x22AA6C8B0](v45);
      v42 = v55;
      v41 = v56;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v37 = v57;
      v36 = v58;
      v38 = v60;
      (*(v58 + 32))(v57, v34, v60);
      v39 = v59;
      sub_225CCDAF4();
      v40 = sub_225CCDAB4();
      v42 = v61;
      v41 = v62;
    }

    else
    {
      v37 = v63;
      v36 = v64;
      v38 = v66;
      (*(v64 + 32))(v63, v34, v66);
      v39 = v65;
      sub_225CCE1D4();
      v40 = sub_225CCE194();
      v42 = v67;
      v41 = v68;
    }

    (*(v42 + 8))(v39, v41);
    (*(v36 + 8))(v37, v38);
  }

  return v40;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.init(curve:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      sub_225CCE004();
    }

    else
    {
      sub_225CCDF04();
    }
  }

  else if (v1 == 2)
  {
    sub_225CCE0E4();
  }

  else if (v1 == 3)
  {
    sub_225CCDB24();
  }

  else
  {
    sub_225CCE204();
  }

  type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ISO18013SessionCryptarch.PrivateKey.init(curve:data:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v8 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v30 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v30 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v30 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v30 - v26;
  v28 = *a1;
  if (v28 <= 1)
  {
    if (*a1)
    {
      v30 = a2;
      v31 = a3;
      result = sub_225CCDFF4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
      v27 = v24;
    }

    else
    {
      v30 = a2;
      v31 = a3;
      result = sub_225CCDEF4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else if (v28 == 2)
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCE0D4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v20;
  }

  else if (v28 == 3)
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCDB14();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v16;
  }

  else
  {
    v30 = a2;
    v31 = a3;
    result = sub_225CCE1F4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v27 = v12;
  }

  return sub_225A66304(v27, v32, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
}

uint64_t sub_225A66304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v109 = a2;
  v90 = sub_225CCE1B4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v2);
  v88 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCE214();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v100 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_225CCDAD4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v7);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCDB34();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_225CCE094();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v12);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCE0F4();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v94 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCDFB4();
  v107 = *(v17 - 8);
  v108 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v106 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCE014();
  v104 = *(v20 - 8);
  v105 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v103 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  v24 = MEMORY[0x28223BE20](v111, v23);
  v93 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v92 = &v81 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v91 = &v81 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v81 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v81 - v37;
  v39 = sub_225CCDEA4();
  v81 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_225CCDF14();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v81 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v81 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v110, v51, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v53 = v94;
      v54 = v95;
      v55 = v96;
      (*(v95 + 32))(v94, v51, v96);
      v66 = v91;
      sub_225A6577C(v112, v91, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v57 = v83;
        v58 = v82;
        v59 = v84;
        (*(v83 + 32))(v82, v66, v84);
        sub_225CCE0A4();
        goto LABEL_11;
      }

      sub_225A678AC(v66, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v115 = 4;
      v74 = 0x8000000225D19FC0;
      v75 = &v115;
      v76 = 0xD00000000000001CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v53 = v97;
      v54 = v98;
      v55 = v99;
      (*(v98 + 32))(v97, v51, v99);
      v56 = v92;
      sub_225A6577C(v112, v92, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v57 = v86;
        v58 = v85;
        v59 = v87;
        (*(v86 + 32))(v85, v56, v87);
        sub_225CCDAE4();
LABEL_11:
        (*(v57 + 8))(v58, v59);
        return (*(v54 + 8))(v53, v55);
      }

      sub_225A678AC(v56, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v116 = 4;
      v76 = 0xD00000000000001FLL;
      v74 = 0x8000000225D19FA0;
      v75 = &v116;
    }

    else
    {
      v53 = v100;
      v54 = v101;
      v55 = v102;
      (*(v101 + 32))(v100, v51, v102);
      v67 = v93;
      sub_225A6577C(v112, v93, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v68 = v89;
        v69 = v88;
        v70 = v90;
        (*(v89 + 32))(v88, v67, v90);
        sub_225CCE1C4();
        (*(v68 + 8))(v69, v70);
        return (*(v54 + 8))(v53, v55);
      }

      sub_225A678AC(v67, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v117 = 4;
      v76 = 0xD00000000000001DLL;
      v74 = 0x8000000225D19F80;
      v75 = &v117;
    }

    ISO18013SessionError(_:code:fromError:)(v76, v74, v75, 0);
    swift_willThrow();
    return (*(v54 + 8))(v53, v55);
  }

  v102 = v42;
  v110 = v39;
  v60 = v44;
  v61 = v106;
  v62 = v107;
  v63 = v108;
  if (EnumCaseMultiPayload)
  {
    v71 = v104;
    v72 = v103;
    v73 = v105;
    (*(v104 + 32))(v103, v51, v105);
    sub_225A6577C(v112, v35, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v62 + 32))(v61, v35, v63);
      sub_225CCDFC4();
      (*(v62 + 8))(v61, v63);
    }

    else
    {
      sub_225A678AC(v35, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v114 = 4;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001CLL, 0x8000000225D19FE0, &v114, 0);
      swift_willThrow();
    }

    return (*(v71 + 8))(v72, v73);
  }

  else
  {
    v64 = v60;
    v65 = v47;
    (*(v60 + 32))(v47, v51, v43);
    sub_225A6577C(v112, v38, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_225A678AC(v38, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v113 = 4;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001CLL, 0x8000000225D1A000, &v113, 0);
      swift_willThrow();
    }

    else
    {
      v78 = v81;
      v79 = v102;
      v80 = v110;
      (*(v81 + 32))(v102, v38, v110);
      sub_225CCDEB4();
      (*(v78 + 8))(v79, v80);
    }

    return (*(v64 + 8))(v65, v43);
  }
}

uint64_t sub_225A66FF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-v6];
  sub_225A0DE54(a1, &v12[-v6], &qword_27D73BAD8);
  v8 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
  v13 = v7;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_225A6F704(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));
  return sub_2259CB640(v7, &qword_27D73BAD8);
}

void sub_225A67184(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + *a1);
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_225A0DE54(v6 + v7, a3, a2);

  os_unfair_lock_unlock((v6 + v8));
}

void sub_225A67238(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *(*a1 + *a2);
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_225A0DE54(v6 + v7, a4, a3);

  os_unfair_lock_unlock((v6 + v8));
}

uint64_t sub_225A672F0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-v6];
  sub_225A0DE54(a1, &v12[-v6], &qword_27D73BAE8);
  v8 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  v13 = v7;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_225A6F6EC(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));
  return sub_2259CB640(v7, &qword_27D73BAE8);
}

uint64_t sub_225A67440(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-v6];
  sub_225A0DE54(a1, &v12[-v6], &qword_27D73BAE8);
  v8 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
  v13 = v7;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_225A6F5F8(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));
  return sub_2259CB640(v7, &qword_27D73BAE8);
}

uint64_t sub_225A6758C(void *a1)
{
  v2 = *(v1 + *a1);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 5);
  return os_unfair_lock_opaque;
}

BOOL sub_225A675F0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v2 + *v9);
  v11 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  sub_225A0DE54(v10 + v11, v8, &qword_27D73BAE8);
  os_unfair_lock_unlock((v10 + v12));
  v13 = sub_225CCDC44();
  v14 = (*(*(v13 - 8) + 48))(v8, 1, v13) != 1;
  sub_2259CB640(v8, &qword_27D73BAE8);
  return v14;
}

uint64_t ISO18013SessionCryptarch.publicKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  sub_225A0DE54(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &v8 - v3, &qword_27D73BAC8);
  v5 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_2259CB640(v4, &qword_27D73BAC8);
    return 0;
  }

  else
  {
    v7 = ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter();
    sub_225A678AC(v4, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    return v7;
  }
}

uint64_t sub_225A678AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013SessionCryptarch.__allocating_init(role:curve:variant:localKey:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  ISO18013SessionCryptarch.init(role:curve:variant:localKey:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ISO18013SessionCryptarch.init(role:curve:variant:localKey:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v55 = a5;
  v56 = a4;
  v48[2] = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v49 = v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v48 - v18;
  v20 = *a1;
  v51 = *a2;
  v52 = *a3;
  v53 = v20;
  v21 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey;
  v22 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB08);
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v24 = MEMORY[0x277D841D0];
  sub_2259D88EC(v19, v23 + *(*v23 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAD8);
  v48[3] = v21;
  *(v5 + v21) = v23;
  v25 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  v26 = sub_225CCDC44();
  v27 = *(*(v26 - 8) + 56);
  v27(v15, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB10);
  v28 = swift_allocObject();
  *(v28 + ((*(*v28 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v15, v28 + *(*v28 + *v24 + 16), &qword_27D73BAE8);
  v29 = v25;
  v48[1] = v25;
  v30 = v50;
  *(v50 + v29) = v28;
  v31 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  v27(v15, 1, 1, v26);
  v32 = swift_allocObject();
  *(v32 + ((*(*v32 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v15, v32 + *(*v32 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAE8);
  *(v30 + v31) = v32;
  v33 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB18);
  v34 = swift_allocObject();
  *(v34 + 16) = 1;
  *(v30 + v33) = v34;
  v35 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter;
  v36 = swift_allocObject();
  v37 = v51;
  *(v36 + 16) = 1;
  *(v30 + v35) = v36;
  *(v30 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve) = v37;
  v38 = v52;
  *(v30 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role) = v53;
  *(v30 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) = v38;
  if (v38)
  {
    sub_2259BEF00(v56, v55);
    v39 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey;
    v40 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
    (*(*(v40 - 8) + 56))(v30 + v39, 1, 1, v40);
  }

  else
  {
    v58 = v37;
    v42 = v55;
    v41 = v56;
    sub_2259CB710(v56, v55);
    v43 = v49;
    v44 = v54;
    ISO18013SessionCryptarch.PrivateKey.init(curve:data:)(&v58, v41, v42, v49);
    if (v44)
    {
      v57 = 3;
      v45 = v44;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000024, 0x8000000225D1A020, &v57, v44);

      swift_willThrow();
      sub_2259BEF00(v56, v42);

      swift_deallocPartialClassInstance();
    }

    else
    {
      sub_2259BEF00(v56, v42);
      v46 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
      (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
      sub_2259D88EC(v43, v30 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8);
    }
  }

  return v30;
}

uint64_t ISO18013SessionCryptarch.__allocating_init(role:variant:curve:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = swift_allocObject();
  ISO18013SessionCryptarch.init(role:variant:curve:)(a1, a2, a3);
  return v6;
}

uint64_t ISO18013SessionCryptarch.init(role:variant:curve:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v43 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v43 - v19;
  v21 = *a1;
  v46 = *a2;
  v47 = v21;
  v45 = *a3;
  v22 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey;
  v23 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB08);
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v25 = MEMORY[0x277D841D0];
  sub_2259D88EC(v20, v24 + *(*v24 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAD8);
  *(v3 + v22) = v24;
  v26 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  v27 = sub_225CCDC44();
  v28 = *(*(v27 - 8) + 56);
  v28(v16, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB10);
  v29 = swift_allocObject();
  *(v29 + ((*(*v29 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v16, v29 + *(*v29 + *v25 + 16), &qword_27D73BAE8);
  *(v3 + v26) = v29;
  v30 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  v28(v16, 1, 1, v27);
  v31 = swift_allocObject();
  *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v16, v31 + *(*v31 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAE8);
  *(v3 + v30) = v31;
  v32 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB18);
  v33 = swift_allocObject();
  *(v33 + 16) = 1;
  *(v3 + v32) = v33;
  v34 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter;
  v35 = swift_allocObject();
  v36 = v45;
  *(v35 + 16) = 1;
  *(v3 + v34) = v35;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve) = v36;
  v37 = v46;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role) = v47;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) = v37;
  if (v37)
  {
    (*(v48 + 56))(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, 1, 1, v49);
  }

  else
  {
    v38 = v43;
    v39 = v44;
    v41 = v48;
    v40 = v49;
    if (v36 <= 1)
    {
      if (v36)
      {
        sub_225CCE004();
      }

      else
      {
        sub_225CCDF04();
      }
    }

    else if (v36 == 2)
    {
      sub_225CCE0E4();
    }

    else if (v36 == 3)
    {
      sub_225CCDB24();
    }

    else
    {
      sub_225CCE204();
    }

    type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
    swift_storeEnumTagMultiPayload();
    sub_225A66304(v39, v38, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    (*(v41 + 56))(v38, 0, 1, v40);
    sub_2259D88EC(v38, v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8);
  }

  return v3;
}

void ISO18013SessionCryptarch.setRemoteKey(_:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v24 - v13;
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant))
  {
    v28 = 1;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000021, 0x8000000225D1A050, &v28, 0);
    swift_willThrow();
    return;
  }

  sub_2259CB710(a1, a2);
  sub_225A6D1FC();
  sub_2259BEF00(a1, a2);
  sub_225A0DE54(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, v14, &qword_27D73BAC8);
  v15 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_2259CB640(v14, &qword_27D73BAC8);
  if (v16 == 1)
  {
    v27 = 4;
    v4 = ISO18013SessionError(_:code:fromError:)(0xD000000000000023, 0x8000000225D1A080, &v27, 0);
    swift_willThrow();
LABEL_6:
    v26 = 4;
    v17 = v4;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000023, 0x8000000225D1A0B0, &v26, v4);

    swift_willThrow();
    return;
  }

  v25 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve);
  sub_2259CB710(a1, a2);
  ISO18013SessionCryptarch.PublicKey.init(curve:data:)(&v25, a1, a2, v10);
  if (v3)
  {
    goto LABEL_6;
  }

  v18 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  v19 = (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  v20 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
  MEMORY[0x28223BE20](v19, v21);
  *(&v24 - 2) = v10;
  v22 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v23));
  sub_225A6D5AC(v20 + v22);
  os_unfair_lock_unlock((v20 + v23));
  sub_2259CB640(v10, &qword_27D73BAD8);
}

void ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v46 = a3;
  v49 = a2;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v48 = v4;
  if (*(v4 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant))
  {
    if (*(v4 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) == 1)
    {
      v23 = v49;
      if (v49 >> 60 == 15)
      {
        v54 = 2;
        v24 = 0xD000000000000031;
        v25 = 0x8000000225D1A100;
        v26 = &v54;
LABEL_14:
        ISO18013SessionError(_:code:fromError:)(v24, v25, v26, 0);
        swift_willThrow();
        return;
      }

      v29 = v47;
      sub_2259CB710(v47, v49);
      sub_225A6D618();
      if (a4 >> 60 == 15)
      {
        v53 = 2;
        ISO18013SessionError(_:code:fromError:)(0xD000000000000022, 0x8000000225D1A140, &v53, 0);
        swift_willThrow();
      }

      else
      {
        v34 = v46;
        sub_2259CB6FC(v46, a4);
        sub_225A6D9C0(v34, a4, 0x203A4D4B49, 0xE500000000000000);
        sub_2259B97A8(v34, a4);
        sub_225A69BEC(v29, v23, v34, a4);
      }

      sub_2259B97A8(v29, v23);
    }

    else
    {
      if (a4 >> 60 == 15)
      {
        v55 = 2;
        v25 = 0x8000000225D1A0E0;
        v26 = &v55;
        v24 = 0xD000000000000018;
        goto LABEL_14;
      }

      v33 = v46;
      sub_2259CB6FC(v46, a4);
      sub_225A6D9C0(v33, a4, 0x203A4D4B49, 0xE500000000000000);
      sub_2259B97A8(v33, a4);
      sub_225A6A40C(v33, a4);
    }
  }

  else
  {
    v45 = v10;
    v46 = v11;
    v27 = v9;
    v44 = v14;
    v28 = v49;
    if (v49 >> 60 == 15)
    {
      v52 = 2;
      v24 = 0xD000000000000037;
      v25 = 0x8000000225D1A170;
      v26 = &v52;
      goto LABEL_14;
    }

    v30 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v47;
    sub_2259CB6FC(v47, v49);
    sub_225A6D618();
    sub_2259B97A8(v31, v28);
    v32 = v48;
    sub_225A0DE54(v48 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, v18, &qword_27D73BAC8);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_2259CB640(v18, &qword_27D73BAC8);
      v51 = 4;
      v24 = 0xD000000000000023;
      v25 = 0x8000000225D1A080;
      v26 = &v51;
      goto LABEL_14;
    }

    v35 = sub_225A66304(v18, v30, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    MEMORY[0x28223BE20](v35, v36);
    *(&v43 - 2) = v30;
    sub_225A6E8B8(sub_225A6DDC0);
    v37 = *(v32 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
    v38 = *(*v37 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v37 + v39));
    sub_225A0DE54(v37 + v38, v27, &qword_27D73BAD8);
    os_unfair_lock_unlock((v37 + v39));
    if ((*(v46 + 48))(v27, 1, v45) == 1)
    {
      sub_2259CB640(v27, &qword_27D73BAD8);
      v50 = 1;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000038, 0x8000000225D1A1B0, &v50, 0);
      swift_willThrow();
    }

    else
    {
      v40 = v44;
      v41 = sub_225A66304(v27, v44, type metadata accessor for ISO18013SessionCryptarch.PublicKey);
      MEMORY[0x28223BE20](v41, v42);
      *(&v43 - 2) = v40;
      sub_225A6E8B8(sub_225A6EC18);
      sub_225A69404(v47, v49, v30, v40);
      sub_225A678AC(v40, type metadata accessor for ISO18013SessionCryptarch.PublicKey);
    }

    sub_225A678AC(v30, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
  }
}

unint64_t sub_225A691B4()
{
  sub_225CCF204();

  v0 = ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter();
  v2 = v1;
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v3 = sub_225CCE384();
  v5 = v4;
  sub_2259BEF00(v0, v2);

  MEMORY[0x22AA6CE70](v3, v5);

  return 0xD000000000000012;
}

unint64_t sub_225A692DC()
{
  sub_225CCF204();

  v0 = ISO18013SessionCryptarch.PublicKey.publicKeyData.getter();
  v2 = v1;
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v3 = sub_225CCE384();
  v5 = v4;
  sub_2259BEF00(v0, v2);

  MEMORY[0x22AA6CE70](v3, v5);

  return 0xD000000000000013;
}

void sub_225A69404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v64 = a1;
  v60 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v56 - v12;
  v67 = sub_225CCE164();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_225CCDBA4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v17);
  v62 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCDC04();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v72;
  v25 = ISO18013SessionCryptarch.PrivateKey.sharedSecretFromKeyAgreement(with:)(a4, v23);
  if (v24)
  {
    LOBYTE(v70) = 5;
    v27 = v24;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000015, 0x8000000225D1A560, &v70, v24);

    swift_willThrow();
  }

  else
  {
    v56 = v13;
    v57 = v20;
    v58 = v19;
    v59 = v10;
    v72 = v4;
    MEMORY[0x28223BE20](v25, v26);
    sub_225A6E8B8(sub_225A6F664);
    v28 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
    v29 = v67;
    sub_225CCDB94();
    v30 = v64;
    v31 = v66;
    sub_2259CB710(v64, v66);
    sub_2259DB138(v30, v31);
    v60 = 0;
    sub_2259BEF00(v30, v31);
    v32 = v62;
    sub_225CCDB84();
    (*(v61 + 8))(v16, v29);
    sub_2259DB380(&qword_27D73AE58, MEMORY[0x277CC5290]);
    v33 = v65;
    v34 = sub_225CCE154();
    v36 = sub_2259D732C(v34, v35);

    v37 = sub_2259D8490(v36);
    v39 = v38;

    v63[1](v32, v33);
    sub_2259CB710(v37, v39);
    sub_225A6D9C0(v37, v39, 0x203A746C6153, 0xE600000000000000);
    sub_2259BEF00(v37, v39);
    v70 = v37;
    v71 = v39;
    v66 = v39;
    if (qword_27D739F00 != -1)
    {
      swift_once();
    }

    v68 = qword_27D73BA48;
    v69 = qword_27D73BA50;
    sub_2259CB710(qword_27D73BA48, qword_27D73BA50);
    sub_2259DB42C();
    v40 = v56;
    v64 = v28;
    v65 = v23;
    sub_225CCDBF4();
    sub_2259BEF00(v68, v69);
    v41 = sub_225CCDC44();
    v42 = *(v41 - 8);
    v43 = *(v42 + 56);
    v62 = (v42 + 56);
    v63 = v43;
    v44 = (v43)(v40, 0, 1, v41);
    v45 = *(v72 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
    MEMORY[0x28223BE20](v44, v46);
    v47 = *(*v45 + *MEMORY[0x277D841D0] + 16);
    v48 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v45 + v48));
    v49 = v60;
    sub_225A6F6EC(v45 + v47);
    if (v49)
    {
      goto LABEL_10;
    }

    v61 = 0;
    os_unfair_lock_unlock((v45 + v48));
    sub_2259CB640(v40, &qword_27D73BAE8);
    v70 = v37;
    v71 = v66;
    v50 = v59;
    if (qword_27D739F08 != -1)
    {
      swift_once();
    }

    v68 = qword_27D73BA60;
    v69 = *algn_27D73BA68;
    sub_2259CB710(qword_27D73BA60, *algn_27D73BA68);
    v51 = v65;
    sub_225CCDBF4();
    sub_2259BEF00(v68, v69);
    v52 = (v63)(v50, 0, 1, v41);
    v45 = *(v72 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
    MEMORY[0x28223BE20](v52, v53);
    v54 = *(*v45 + *MEMORY[0x277D841D0] + 16);
    v48 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v45 + v48));
    v55 = v61;
    sub_225A6F6EC(v45 + v54);
    if (v55)
    {
LABEL_10:
      os_unfair_lock_unlock((v45 + v48));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v45 + v48));
      sub_2259BEF00(v37, v66);
      sub_2259CB640(v50, &qword_27D73BAE8);
      (*(v57 + 8))(v51, v58);
    }
  }
}

uint64_t sub_225A69BEC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v78 = *v4;
  v79 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v77 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v74 = v70 - v13;
  v14 = sub_225CCE164();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_225CCDBA4();
  v19 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v20);
  v22 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_225CCDC44();
  v83 = *(v73 - 8);
  v24 = MEMORY[0x28223BE20](v73, v23);
  v76 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v70 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = v70 - v31;
  v86 = a3;
  v87 = a4;
  sub_2259CB710(a3, a4);
  v81 = v32;
  sub_225CCDC24();
  v33 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
  sub_225CCDB94();
  v34 = v79;
  sub_2259CB710(a1, v79);
  sub_2259DB138(a1, v34);
  v35 = a1;
  v36 = v33;
  v37 = v14;
  sub_2259BEF00(v35, v34);
  sub_225CCDB84();
  (*(v15 + 8))(v18, v14);
  sub_2259DB380(&qword_27D73AE58, MEMORY[0x277CC5290]);
  v38 = v80;
  v39 = sub_225CCE154();
  v41 = sub_2259D732C(v39, v40);

  v42 = sub_2259D8490(v41);
  v44 = v43;

  (*(v19 + 8))(v22, v38);
  v79 = v44;
  v80 = v42;
  v86 = v42;
  v87 = v44;
  if (qword_27D739F10 != -1)
  {
    swift_once();
  }

  v84 = qword_27D73BA78;
  v85 = qword_27D73BA80;
  sub_2259CB710(qword_27D73BA78, qword_27D73BA80);
  sub_2259DB42C();
  sub_225CCDD84();
  sub_2259BEF00(v84, v85);
  v45 = v83;
  v46 = *(v83 + 16);
  v47 = v74;
  v75 = v29;
  v70[2] = v36;
  v48 = v73;
  v72 = v46;
  v46(v74, v29, v73);
  v70[1] = v37;
  v71 = *(v45 + 56);
  v49 = v71(v47, 0, 1, v48);
  v70[0] = v70;
  v50 = *(v82 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  MEMORY[0x28223BE20](v49, v51);
  v52 = *(*v50 + *MEMORY[0x277D841D0] + 16);
  v53 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v50 + v53));
  sub_225A6F6EC(v50 + v52);
  os_unfair_lock_unlock((v50 + v53));
  sub_2259CB640(v47, &qword_27D73BAE8);
  v86 = v80;
  v87 = v79;
  v54 = v48;
  if (qword_27D739F18 != -1)
  {
    swift_once();
  }

  v84 = qword_27D73BA90;
  v85 = *algn_27D73BA98;
  sub_2259CB710(qword_27D73BA90, *algn_27D73BA98);
  v55 = v76;
  v56 = v81;
  sub_225CCDD84();
  sub_2259BEF00(v84, v85);
  v57 = v77;
  v72(v77, v55, v54);
  v58 = v71(v57, 0, 1, v54);
  v59 = *(v82 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
  MEMORY[0x28223BE20](v58, v60);
  v61 = *(*v59 + *MEMORY[0x277D841D0] + 16);
  v62 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v59 + v62));
  sub_225A6F6EC(v59 + v61);
  os_unfair_lock_unlock((v59 + v62));
  v63 = sub_2259CB640(v57, &qword_27D73BAE8);
  MEMORY[0x28223BE20](v63, v64);
  v65 = v75;
  sub_225A6E8B8(sub_225A6F66C);
  MEMORY[0x28223BE20](v66, v67);
  sub_225A6E8B8(sub_225A6F698);
  sub_2259BEF00(v80, v79);
  v68 = *(v83 + 8);
  v68(v56, v54);
  v68(v55, v54);
  return (v68)(v65, v54);
}

void sub_225A6A40C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v60 - v12;
  v14 = sub_225CCDC44();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v60 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v26 = &v60 - v25;
  v27 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_19;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (!v30)
    {
      if (v31 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v27)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

LABEL_19:
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v75 = 0xD000000000000019;
      *(&v75 + 1) = 0x8000000225D1A5E0;
      if (v27 > 1)
      {
        v55 = 0;
        if (v27 != 2)
        {
          goto LABEL_28;
        }

        v57 = *(a1 + 16);
        v56 = *(a1 + 24);
        v30 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (!v30)
        {
          goto LABEL_28;
        }

        __break(1u);
      }

      else if (!v27)
      {
        v55 = BYTE6(a2);
LABEL_28:
        v73 = v55;
        v58 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v58);

        v59 = v75;
        LOBYTE(v75) = 5;
        ISO18013SessionError(_:code:fromError:)(v59, *(&v75 + 1), &v75, 0);

        swift_willThrow();
        return;
      }

      LODWORD(v55) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v55 = v55;
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_19;
  }

LABEL_8:
  v65 = v10;
  v68 = v24;
  v32 = v23;
  v71 = v5;
  *&v75 = a1;
  *(&v75 + 1) = a2;
  sub_2259CB710(a1, a2);
  sub_225CCDC24();
  v60 = xmmword_225CD4150;
  v75 = xmmword_225CD4150;
  if (qword_27D739F00 != -1)
  {
    swift_once();
  }

  v73 = qword_27D73BA48;
  v74 = qword_27D73BA50;
  sub_2259CB710(qword_27D73BA48, qword_27D73BA50);
  v33 = sub_225CCE164();
  v34 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
  sub_2259DB42C();
  v66 = v26;
  v63 = v34;
  v64 = v33;
  sub_225CCDD84();
  sub_2259BEF00(v73, v74);
  v35 = *(v15 + 16);
  v67 = v21;
  v62 = v35;
  v35(v13, v21, v32);
  v69 = v15;
  v70 = v32;
  v36 = *(v15 + 56);
  v15 += 56;
  v61 = v36;
  v37 = v36(v13, 0, 1, v32);
  a2 = *(v76 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  MEMORY[0x28223BE20](v37, v38);
  v39 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v26 = ((*(*a2 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock(&v26[a2]);
  v40 = v72;
  sub_225A6F6EC(a2 + v39);
  if (!v40)
  {
    os_unfair_lock_unlock(&v26[a2]);
    sub_2259CB640(v13, &qword_27D73BAE8);
    v75 = v60;
    v41 = v65;
    if (qword_27D739F18 != -1)
    {
      swift_once();
    }

    v72 = 0;
    v73 = qword_27D73BA90;
    v74 = *algn_27D73BA98;
    sub_2259CB710(qword_27D73BA90, *algn_27D73BA98);
    v42 = v70;
    v43 = v68;
    if (qword_27D739F08 != -1)
    {
      swift_once();
    }

    v44 = v66;
    sub_225CCDD84();
    sub_2259BEF00(v73, v74);
    v62(v41, v43, v42);
    v45 = v61(v41, 0, 1, v42);
    a2 = *(v76 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
    MEMORY[0x28223BE20](v45, v46);
    v47 = *(*a2 + *MEMORY[0x277D841D0] + 16);
    v15 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((a2 + v15));
    v48 = v72;
    sub_225A6F6EC(a2 + v47);
    if (!v48)
    {
      os_unfair_lock_unlock((a2 + v15));
      v49 = sub_2259CB640(v41, &qword_27D73BAE8);
      MEMORY[0x28223BE20](v49, v50);
      v51 = v67;
      sub_225A6E8B8(sub_225A6F6E0);
      MEMORY[0x28223BE20](v52, v53);
      sub_225A6E8B8(sub_225A6F6E4);
      v54 = *(v69 + 8);
      v54(v44, v42);
      v54(v43, v42);
      v54(v51, v42);
      return;
    }

    goto LABEL_33;
  }

LABEL_32:
  os_unfair_lock_unlock(&v26[a2]);
  __break(1u);
LABEL_33:
  os_unfair_lock_unlock((a2 + v15));
  __break(1u);
}

uint64_t sub_225A6ABCC()
{
  sub_225CCF204();

  sub_225CCDBE4();
  MEMORY[0x22AA6CE70]();

  return 0x7320646572616853;
}

uint64_t sub_225A6ACE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_225CCDC14();
  MEMORY[0x22AA6CE70]();

  return a3;
}

void ISO18013SessionCryptarch.decrypt(data:)(unint64_t a1, unint64_t a2)
{
  v61 = a1;
  v65 = a2;
  v55 = *v2;
  v3 = sub_225CCDD74();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCDD34();
  v58 = *(v6 - 8);
  v59 = v6;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v52 - v15;
  v17 = sub_225CCDC44();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v22 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  }

  else
  {
    v22 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  }

  v23 = *(v2 + *v22);
  v24 = *(*v23 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_225A0DE54(v23 + v24, v16, &qword_27D73BAE8);
  v26 = (v23 + v25);
  v27 = v17;
  v28 = v18;
  os_unfair_lock_unlock(v26);
  if ((v18[6])(v16, 1, v27) == 1)
  {
    sub_2259CB640(v16, &qword_27D73BAE8);
    LOBYTE(v64[0]) = 1;
    ISO18013SessionError(_:code:fromError:)(0xD00000000000002ALL, 0x8000000225D1A1F0, v64, 0);
    swift_willThrow();
  }

  else
  {
    (v18[4])(v21, v16, v27);
    v29 = v61;
    v30 = v65;
    sub_2259CB710(v61, v65);
    sub_225A6E550(v29, v30, sub_225A6B4F4);
    sub_2259BEF00(v29, v30);
    v31 = v60;
    sub_225A6B604();
    if (v31)
    {
      v28[1](v21, v27);
    }

    else
    {
      v32 = sub_225A6EC20(v29, v30);
      v65 = v21;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      sub_225A6DDC8(v39, sub_225A6B8A8);

      v52 = v12;
      MEMORY[0x28223BE20](v40, v41);
      v42 = v55;
      *(&v52 - 2) = v43;
      *(&v52 - 1) = v42;
      sub_225A6E8B8(sub_225A6EDF4);
      sub_2259CB710(v32, v36);
      sub_225A6E550(v32, v36, sub_225A6BA94);
      sub_2259BEF00(v32, v36);
      sub_2259CB710(v34, v38);
      sub_225A6E128(v34, v38, 0x6974707972636544);
      sub_2259BEF00(v34, v38);
      (*(v58 + 16))(v56, v52, v59);
      v64[0] = v32;
      v64[1] = v36;
      v62 = v34;
      v63 = v38;
      v60 = v32;
      v61 = v36;
      sub_2259CB710(v32, v36);
      v44 = v34;
      v55 = v38;
      sub_2259CB710(v34, v38);
      sub_2259DB42C();
      v45 = v57;
      sub_225CCDD64();
      v56 = v28;
      v46 = sub_225CCDCC4();
      v48 = v47;
      (*(v53 + 8))(v45, v54);
      sub_2259CB710(v46, v48);
      sub_225A6E550(v46, v48, sub_225A6BBA4);
      sub_2259BEF00(v46, v48);
      v49 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
      os_unfair_lock_lock(v49 + 5);
      LODWORD(v34) = v49[4];
      os_unfair_lock_unlock(v49 + 5);
      v50 = __CFADD__(v34, 1);
      v51 = v34 + 1;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        os_unfair_lock_lock(v49 + 5);
        v49[4]._os_unfair_lock_opaque = v51;
        os_unfair_lock_unlock(v49 + 5);
        sub_2259BEF00(v44, v55);
        sub_2259BEF00(v60, v61);
        (*(v56 + 1))(v65, v27);
        (*(v58 + 8))(v52, v59);
      }
    }
  }
}

unint64_t sub_225A6B4F4(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000010;
}

uint64_t sub_225A6B604()
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    if (qword_27D739F20 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAA8;
  }

  else
  {
    if (qword_27D739F28 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAB8;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
  sub_2259CB710(*v2, v3);
  os_unfair_lock_lock(v5 + 5);
  os_unfair_lock_opaque = v5[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque == -1)
  {
    LOBYTE(v15) = 7;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000026, 0x8000000225D1A510, &v15, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock(v5 + 5);
    v7 = v5[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 5);
    v13 = bswap32(v7);
    v8 = sub_225A6D08C(&v13, &v14);
    v10 = v9;
    v15 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    v11 = v15;
    v14 = v15;
    sub_2259CB710(v15, *(&v15 + 1));
    sub_2259DB42C();
    sub_225CCDD14();
    if (v1)
    {
      LOBYTE(v14) = 7;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000020, 0x8000000225D1A450, &v14, 0);
      swift_willThrow();
      sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
      sub_2259BEF00(v4, v3);

      return sub_2259BEF00(v11, *(&v11 + 1));
    }

    sub_2259BEF00(v11, *(&v11 + 1));
    sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
  }

  return sub_2259BEF00(v4, v3);
}

unint64_t sub_225A6B8A8(uint64_t a1)
{
  sub_225CCF204();

  v2 = *(a1 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_unlock(v2 + 5);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  return 0xD000000000000024;
}

unint64_t sub_225A6B95C()
{
  sub_225CCF204();

  sub_225CCDD04();
  MEMORY[0x22AA6CE70]();

  return 0xD000000000000011;
}

unint64_t sub_225A6BA94(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A6BBA4(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000015;
}

char *ISO18013SessionCryptarch.encrypt(data:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v75 = a1;
  v76 = a2;
  v73 = *v2;
  v4 = sub_225CCD954();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BA40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v77 = &v67 - v9;
  v10 = sub_225CCDD74();
  v71 = *(v10 - 8);
  v72 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v70 = &v67 - v15;
  v16 = sub_225CCDD34();
  v17 = *(v16 - 8);
  v78 = v16;
  v79 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v67 - v23;
  v25 = sub_225CCDC44();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v30 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  }

  else
  {
    v30 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  }

  v31 = *v30;
  v82 = v3;
  v32 = *(v3 + v31);
  v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  sub_225A0DE54(v32 + v33, v24, &qword_27D73BAE8);
  os_unfair_lock_unlock((v32 + v34));
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v29, v24, v25);
    v24 = v82;
    v35 = v80;
    sub_225A6C688();
    if (v35)
    {
      (*(v26 + 8))(v29, v25);
      return v24;
    }

    v37 = v20;

    sub_225A6DDC8(v38, sub_225A6C92C);

    MEMORY[0x28223BE20](v39, v40);
    v41 = v73;
    *(&v67 - 2) = v20;
    *(&v67 - 1) = v41;
    sub_225A6E8B8(sub_225A6EDFC);
    v43 = v75;
    v42 = v76;
    sub_2259CB710(v75, v76);
    sub_225A6E550(v43, v42, sub_225A6CA94);
    sub_2259BEF00(v43, v42);
    v81[0] = v43;
    v81[1] = v42;
    v45 = v78;
    v44 = v79;
    v46 = v77;
    (*(v79 + 16))(v77, v37, v78);
    (*(v44 + 56))(v46, 0, 1, v45);
    sub_2259DB42C();
    v47 = v74;
    sub_225CCDCF4();
    v73 = v29;
    v75 = v26;
    v76 = v25;
    v80 = v37;
    sub_2259CB640(v46, &qword_27D73BA40);
    (*(v71 + 32))(v70, v47, v72);
    v48 = sub_225CCDD44();
    v50 = v49;
    v51 = sub_225CCDD54();
    v53 = v52;
    v54 = sub_225A6EE04(v48, v50, v51, v52);
    v56 = v55;
    sub_2259CB710(v48, v50);
    sub_225A6E550(v48, v50, sub_225A6CBA4);
    sub_2259BEF00(v48, v50);
    sub_2259CB710(v51, v53);
    sub_225A6E128(v51, v53, 0x6974707972636E45);
    sub_2259BEF00(v51, v53);
    sub_2259CB710(v54, v56);
    sub_225A6E550(v54, v56, sub_225A6CCB4);
    v74 = v54;
    v77 = v56;
    sub_2259BEF00(v54, v56);
    v57 = *&v82[OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter];
    os_unfair_lock_lock(v57 + 5);
    LODWORD(v54) = v57[4];
    os_unfair_lock_unlock(v57 + 5);
    v58 = __CFADD__(v54, 1);
    v59 = v54 + 1;
    if (v58)
    {
      __break(1u);
    }

    else
    {
      os_unfair_lock_lock(v57 + 5);
      v57[4]._os_unfair_lock_opaque = v59;
      os_unfair_lock_unlock(v57 + 5);
      if ((_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000002DLL, 0x8000000225D15710) & 1) == 0)
      {
        sub_2259BEF00(v48, v50);
        sub_2259BEF00(v51, v53);
        v24 = v74;
LABEL_16:
        (*(v71 + 8))(v70, v72);
        (*(v75 + 8))(v73, v76);
        (*(v44 + 8))(v80, v45);
        return v24;
      }

      if (qword_28105B910 == -1)
      {
LABEL_12:
        v60 = off_28105B918;
        v61 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v62));
        (*(v68 + 16))(v67, &v60[v61], v69);
        os_unfair_lock_unlock(&v60[v62]);
        v63 = sub_225CCD934();
        v64 = sub_225CCED04();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_2259A7000, v63, v64, "Returning random data due to user defaults setting: force improperly encrypted mdoc request", v65, 2u);
          v66 = v65;
          v45 = v78;
          MEMORY[0x22AA6F950](v66, -1, -1);
        }

        (*(v68 + 8))(v67, v69);
        v24 = randomData(numBytes:)(0x32uLL);
        sub_2259BEF00(v48, v50);
        sub_2259BEF00(v51, v53);
        sub_2259BEF00(v74, v77);
        v44 = v79;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  sub_2259CB640(v24, &qword_27D73BAE8);
  LOBYTE(v81[0]) = 1;
  ISO18013SessionError(_:code:fromError:)(0xD00000000000002ALL, 0x8000000225D1A240, v81, 0);
  swift_willThrow();
  return v24;
}

uint64_t sub_225A6C688()
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    if (qword_27D739F28 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAB8;
  }

  else
  {
    if (qword_27D739F20 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAA8;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter);
  sub_2259CB710(*v2, v3);
  os_unfair_lock_lock(v5 + 5);
  os_unfair_lock_opaque = v5[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque == -1)
  {
    LOBYTE(v15) = 6;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000022, 0x8000000225D1A420, &v15, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock(v5 + 5);
    v7 = v5[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 5);
    v13 = bswap32(v7);
    v8 = sub_225A6D08C(&v13, &v14);
    v10 = v9;
    v15 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    v11 = v15;
    v14 = v15;
    sub_2259CB710(v15, *(&v15 + 1));
    sub_2259DB42C();
    sub_225CCDD14();
    if (v1)
    {
      LOBYTE(v14) = 6;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000020, 0x8000000225D1A450, &v14, 0);
      swift_willThrow();
      sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
      sub_2259BEF00(v4, v3);

      return sub_2259BEF00(v11, *(&v11 + 1));
    }

    sub_2259BEF00(v11, *(&v11 + 1));
    sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
  }

  return sub_2259BEF00(v4, v3);
}

unint64_t sub_225A6C92C(uint64_t a1)
{
  sub_225CCF204();

  v2 = *(a1 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_unlock(v2 + 5);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  return 0xD000000000000020;
}

unint64_t sub_225A6C9E0()
{
  sub_225CCF204();

  sub_225CCDD04();
  MEMORY[0x22AA6CE70]();

  return 0xD000000000000011;
}

unint64_t sub_225A6CA94(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000015;
}

unint64_t sub_225A6CBA4(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A6CCB4(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000012;
}

uint64_t sub_225A6CDC4@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_225A6D010(a1, a2);
  v5 = sub_2259D8490(v4);
  v7 = v6;

  sub_225B34448(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v8 = sub_225CCE384();
  v10 = v9;
  sub_2259BEF00(v5, v7);

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t ISO18013SessionCryptarch.deinit()
{
  sub_2259CB640(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8);

  return v0;
}

uint64_t ISO18013SessionCryptarch.__deallocating_deinit()
{
  sub_2259CB640(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8);

  return swift_deallocClassInstance();
}

void *sub_225A6D010(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_225C0060C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_225A6D08C(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_225C0217C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_225A6D14C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_225A6D08C(a1, &a1[a2]);
  }

  sub_225CCCA94();
  swift_allocObject();
  sub_225CCCA34();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_225CCCF14();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_225A6D1FC()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v5;
    swift_once();
    v5 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v20 = v5;
    v6 = sub_225CCE444();
    v7 = [v20 BOOLForKey_];

    if (v7)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_225CCF204();

      v21 = 0xD000000000000018;
      v22 = 0x8000000225D1A600;
      v8 = sub_225CCCF84();
      MEMORY[0x22AA6CE70](v8);

      v10 = v21;
      v9 = v22;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v11 = off_28105B918;
      v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v13));
      (*(v1 + 16))(v4, &v11[v12], v0);
      os_unfair_lock_unlock(&v11[v13]);

      v14 = sub_225CCD934();
      v15 = sub_225CCED04();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        v18 = sub_2259BE198(v10, v9, &v21);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_2259A7000, v14, v15, "ISO18013SessionCryptarch: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AA6F950](v17, -1, -1);
        MEMORY[0x22AA6F950](v16, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
  }
}

uint64_t sub_225A6D5AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2259CB640(a1, &qword_27D73BAD8);
  return sub_225A0DE54(v3, a1, &qword_27D73BAD8);
}

void sub_225A6D618()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v5;
    swift_once();
    v5 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v20 = v5;
    v6 = sub_225CCE444();
    v7 = [v20 BOOLForKey_];

    if (v7)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_225CCF204();

      v21 = 0xD000000000000014;
      v22 = 0x8000000225D1A5C0;
      v8 = sub_225CCCF84();
      MEMORY[0x22AA6CE70](v8);

      v10 = v21;
      v9 = v22;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v11 = off_28105B918;
      v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v13));
      (*(v1 + 16))(v4, &v11[v12], v0);
      os_unfair_lock_unlock(&v11[v13]);

      v14 = sub_225CCD934();
      v15 = sub_225CCED04();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        v18 = sub_2259BE198(v10, v9, &v21);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_2259A7000, v14, v15, "ISO18013SessionCryptarch: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AA6F950](v17, -1, -1);
        MEMORY[0x22AA6F950](v16, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
  }
}

void sub_225A6D9C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v30 = v13;
    swift_once();
    v13 = v30;
  }

  if (byte_28105B9F8 == 1)
  {
    v30 = v13;
    v14 = sub_225CCE444();
    v15 = [v30 BOOLForKey_];

    if (v15)
    {
      v32 = a3;
      v33 = a4;
      v31 = sub_225B34448(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
      v16 = sub_225CCE384();
      v18 = v17;

      MEMORY[0x22AA6CE70](v16, v18);

      v20 = v32;
      v19 = v33;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v21 = off_28105B918;
      v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v23));
      (*(v9 + 16))(v12, &v21[v22], v8);
      os_unfair_lock_unlock(&v21[v23]);

      v24 = sub_225CCD934();
      v25 = sub_225CCED04();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        v28 = sub_2259BE198(v20, v19, &v32);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_2259A7000, v24, v25, "ISO18013SessionCryptarch: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA6F950](v27, -1, -1);
        MEMORY[0x22AA6F950](v26, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
  }
}

void sub_225A6DDC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v23 = v9;
    swift_once();
    v9 = v23;
  }

  if (byte_28105B9F8 == 1)
  {
    v23 = v9;
    v10 = sub_225CCE444();
    v11 = [v23 BOOLForKey_];

    if (v11)
    {
      v12 = a2(a1);
      v14 = v13;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v15 = off_28105B918;
      v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v17));
      (*(v5 + 16))(v8, &v15[v16], v4);
      os_unfair_lock_unlock(&v15[v17]);

      v18 = sub_225CCD934();
      v19 = sub_225CCED04();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v20 = 136315138;
        v22 = sub_2259BE198(v12, v14, &v24);

        *(v20 + 4) = v22;
        _os_log_impl(&dword_2259A7000, v18, v19, "ISO18013SessionCryptarch: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AA6F950](v21, -1, -1);
        MEMORY[0x22AA6F950](v20, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
  }
}

void sub_225A6E128(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v28 = v11;
    swift_once();
    v11 = v28;
  }

  if (byte_28105B9F8 == 1)
  {
    v28 = v11;
    v12 = sub_225CCE444();
    v13 = [v28 BOOLForKey_];

    if (v13)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_225CCF204();

      v30 = a3;
      v31 = 0xEF20676174206E6FLL;
      v29 = sub_225B34448(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
      v14 = sub_225CCE384();
      v16 = v15;

      MEMORY[0x22AA6CE70](v14, v16);

      v18 = v30;
      v17 = v31;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v19 = off_28105B918;
      v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v21));
      (*(v7 + 16))(v10, &v19[v20], v6);
      os_unfair_lock_unlock(&v19[v21]);

      v22 = sub_225CCD934();
      v23 = sub_225CCED04();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        v26 = sub_2259BE198(v18, v17, &v30);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_2259A7000, v22, v23, "ISO18013SessionCryptarch: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x22AA6F950](v25, -1, -1);
        MEMORY[0x22AA6F950](v24, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
  }
}

void sub_225A6E550(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v25 = v11;
    swift_once();
    v11 = v25;
  }

  if (byte_28105B9F8 == 1)
  {
    v25 = v11;
    v12 = sub_225CCE444();
    v13 = [v25 BOOLForKey_];

    if (v13)
    {
      v14 = a3(a1, a2);
      v16 = v15;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v17 = off_28105B918;
      v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v19));
      (*(v7 + 16))(v10, &v17[v18], v6);
      os_unfair_lock_unlock(&v17[v19]);

      v20 = sub_225CCD934();
      v21 = sub_225CCED04();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v26 = v23;
        *v22 = 136315138;
        v24 = sub_2259BE198(v14, v16, &v26);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_2259A7000, v20, v21, "ISO18013SessionCryptarch: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA6F950](v23, -1, -1);
        MEMORY[0x22AA6F950](v22, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
  }
}

void sub_225A6E8B8(uint64_t (*a1)(void))
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v21 = v7;
    swift_once();
    v7 = v21;
  }

  if (byte_28105B9F8 == 1)
  {
    v21 = v7;
    v8 = sub_225CCE444();
    v9 = [v21 BOOLForKey_];

    if (v9)
    {
      v10 = a1();
      v12 = v11;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v13 = off_28105B918;
      v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v15));
      (*(v3 + 16))(v6, &v13[v14], v2);
      os_unfair_lock_unlock(&v13[v15]);

      v16 = sub_225CCD934();
      v17 = sub_225CCED04();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v18 = 136315138;
        v20 = sub_2259BE198(v10, v12, &v22);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_2259A7000, v16, v17, "ISO18013SessionCryptarch: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x22AA6F950](v19, -1, -1);
        MEMORY[0x22AA6F950](v18, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
  }
}

uint64_t sub_225A6EC20(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < 16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      v15 = 7;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001ELL, 0x8000000225D19DB0, &v15, 0);
      swift_willThrow();
      return v2;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (HIDWORD(result) - result < 16)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v3 == 2)
  {
    v10 = *(result + 16);
    v9 = *(result + 24);
    v6 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v6)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v8 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v8) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v8;
LABEL_19:
  v6 = __OFSUB__(v8, 16);
  v11 = v8 - 16;
  if (v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v11 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v3)
  {
    goto LABEL_29;
  }

  if (v3 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
LABEL_29:
      v2 = sub_225CCCFD4();
      sub_225CCCFD4();
      return v2;
    }

    goto LABEL_38;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!__OFSUB__(v14, 16))
  {
    if (v14 >= v14 - 16)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_225A6EE04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_21;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v8 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v8)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
LABEL_21:
    result = v5 + v10;
    if (!__OFADD__(v5, v10))
    {
      v13 = sub_2259D856C(result);
      sub_225CCCFC4();
      sub_225CCCFC4();
      return v13;
    }

    __break(1u);
    goto LABEL_24;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v10 = v10;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_225A6EF1C()
{
  result = qword_27D73BB20;
  if (!qword_27D73BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB20);
  }

  return result;
}

unint64_t sub_225A6EF74()
{
  result = qword_27D73BB28;
  if (!qword_27D73BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB28);
  }

  return result;
}

unint64_t sub_225A6F010()
{
  result = qword_27D73BB40;
  if (!qword_27D73BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB40);
  }

  return result;
}

void keypath_get_6Tm(void *a1@<X0>, void *a2@<X3>, uint32_t *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  os_unfair_lock_lock(v4 + 5);
  os_unfair_lock_opaque = v4[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v4 + 5);
  *a3 = os_unfair_lock_opaque;
}

void keypath_set_7Tm(uint32_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(*a2 + *a5);
  os_unfair_lock_lock(v6 + 5);
  v6[4]._os_unfair_lock_opaque = v5;

  os_unfair_lock_unlock(v6 + 5);
}

void sub_225A6F124()
{
  sub_225A6F23C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_225A6F23C()
{
  if (!qword_27D73BB58)
  {
    type metadata accessor for ISO18013SessionCryptarch.PrivateKey(255);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73BB58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_225A6F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A6F498()
{
  result = sub_225CCDEA4();
  if (v1 <= 0x3F)
  {
    result = sub_225CCDFB4();
    if (v2 <= 0x3F)
    {
      result = sub_225CCE094();
      if (v3 <= 0x3F)
      {
        result = sub_225CCDAD4();
        if (v4 <= 0x3F)
        {
          result = sub_225CCE1B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_225A6F548()
{
  result = sub_225CCDF14();
  if (v1 <= 0x3F)
  {
    result = sub_225CCE014();
    if (v2 <= 0x3F)
    {
      result = sub_225CCE0F4();
      if (v3 <= 0x3F)
      {
        result = sub_225CCDB34();
        if (v4 <= 0x3F)
        {
          result = sub_225CCE214();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_225A6F5F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2259CB640(a1, &qword_27D73BAE8);
  return sub_225A0DE54(v3, a1, &qword_27D73BAE8);
}

id ISO18013SessionError(_:code:fromError:)(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v7 = *a3;
  sub_225B2C92C(MEMORY[0x277D84F90]);
  if (a2)
  {
    v8 = sub_225CCE474();
    v10 = v9;
    v30 = MEMORY[0x277D837D0];
    *&v29 = a1;
    *(&v29 + 1) = a2;
    sub_2259B9624(&v29, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v26, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v12 = sub_225CCE474();
    v14 = v13;
    swift_getErrorValue();
    v15 = v27;
    v16 = v28;
    v30 = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    sub_2259B9624(&v29, v26);
    v18 = a4;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v26, v12, v14, v19);
  }

  v20 = qword_225CDBD10[v7];
  v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v22 = sub_225CCE444();
  v23 = sub_225CCE2B4();

  v24 = [v21 initWithDomain:v22 code:v20 userInfo:v23];

  return v24;
}

CoreIDVShared::ISO18013SessionErrorCode_optional __swiftcall ISO18013SessionErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > -2002)
  {
    if (rawValue > -1002)
    {
      if (rawValue == -1001)
      {
        *v1 = 1;
        return rawValue;
      }

      if (rawValue == -1000)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -2001)
      {
        *v1 = 3;
        return rawValue;
      }

      if (rawValue == -1002)
      {
        *v1 = 2;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > -3001)
  {
    if (rawValue == -3000)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == -2002)
    {
      *v1 = 4;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (rawValue == -6000)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != -5000)
  {
    goto LABEL_20;
  }

  *v1 = 6;
  return rawValue;
}

uint64_t sub_225A6FA64()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDBD10[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225A6FAEC()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDBD10[v1]);
  return sub_225CCFC24();
}

unint64_t sub_225A6FB5C()
{
  result = qword_27D73BBA0;
  if (!qword_27D73BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBA0);
  }

  return result;
}

CoreIDVShared::KeyAuthorizationCOSE_Sign1Payload::KeyPurpose_optional __swiftcall KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.rawValue.getter()
{
  v1 = 0x4954505952434E45;
  v2 = 0x4D544E4553455250;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A6FCC8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A6FDB0()
{
  sub_225CCE5B4();
}

uint64_t sub_225A6FE84()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A6FF74(unint64_t *a1@<X8>)
{
  v2 = 0xEE0059454B5F4E4FLL;
  v3 = 0x4954505952434E45;
  v4 = 0xEF59454B5F544E45;
  v5 = 0x4D544E4553455250;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001DLL;
    v4 = 0x8000000225D0AB70;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000225D0AB30;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

CoreIDVShared::KeyAuthorizationCOSE_Sign1Payload::AuthorizerType_optional __swiftcall KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x595449544E454449;
  }
}

uint64_t sub_225A7018C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = 0x8000000225D0AB30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000225D0AB30;
  }

  else
  {
    v6 = 0x8000000225D0AB70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x595449544E454449;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000059454B5FLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001DLL;
    v4 = 0x8000000225D0AB70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x595449544E454449;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000059454B5FLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A70270()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A70320()
{
  sub_225CCE5B4();
}

uint64_t sub_225A703BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A70474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000059454B5FLL;
  v4 = 0xD000000000000015;
  v5 = 0x8000000225D0AB30;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v5 = 0x8000000225D0AB70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x595449544E454449;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD494();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.keyPurpose.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for KeyAuthorizationCOSE_Sign1Payload()
{
  result = qword_27D73BC00;
  if (!qword_27D73BC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.authorizerType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_225CCD494();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_225A70734()
{
  v1 = 0x6F7072755079656BLL;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_225A707A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A71348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A707CC(uint64_t a1)
{
  v2 = sub_225A70A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A70808(uint64_t a1)
{
  v2 = sub_225A70A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BBA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A70A48();
  sub_225CCFCE4();
  v12[15] = 0;
  sub_225CCD494();
  sub_225A70ED8(&qword_27D73BBB8);
  sub_225CCF7E4();
  if (!v2)
  {
    v10 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
    v12[14] = *(v3 + *(v10 + 20));
    v12[13] = 1;
    sub_225A70A9C();
    sub_225CCF7E4();
    v12[12] = *(v3 + *(v10 + 24));
    v12[11] = 2;
    sub_225A70AF0();
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225A70A48()
{
  result = qword_27D73BBB0;
  if (!qword_27D73BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBB0);
  }

  return result;
}

unint64_t sub_225A70A9C()
{
  result = qword_27D73BBC0;
  if (!qword_27D73BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBC0);
  }

  return result;
}

unint64_t sub_225A70AF0()
{
  result = qword_27D73BBC8;
  if (!qword_27D73BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBC8);
  }

  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_225CCD494();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BBD0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A70A48();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v14;
  v16 = v23;
  v31 = 0;
  sub_225A70ED8(&qword_27D73BBD8);
  v17 = v25;
  sub_225CCF6E4();
  v18 = *(v16 + 32);
  v19 = v26;
  v26 = v4;
  v18(v15, v19, v4);
  v29 = 1;
  sub_225A70F1C();
  sub_225CCF6E4();
  *(v15 + *(v11 + 20)) = v30;
  v27 = 2;
  sub_225A70F70();
  sub_225CCF6E4();
  (*(v24 + 8))(v10, v17);
  *(v15 + *(v11 + 24)) = v28;
  sub_225A70FC4(v15, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A71028(v15);
}

uint64_t sub_225A70ED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_225CCD494();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A70F1C()
{
  result = qword_27D73BBE0;
  if (!qword_27D73BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBE0);
  }

  return result;
}

unint64_t sub_225A70F70()
{
  result = qword_27D73BBE8;
  if (!qword_27D73BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBE8);
  }

  return result;
}

uint64_t sub_225A70FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A71028(uint64_t a1)
{
  v2 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225A71088()
{
  result = qword_27D73BBF0;
  if (!qword_27D73BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBF0);
  }

  return result;
}

unint64_t sub_225A710E0()
{
  result = qword_27D73BBF8;
  if (!qword_27D73BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBF8);
  }

  return result;
}

uint64_t sub_225A7118C()
{
  result = sub_225CCD494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225A71244()
{
  result = qword_27D73BC10;
  if (!qword_27D73BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC10);
  }

  return result;
}

unint64_t sub_225A7129C()
{
  result = qword_27D73BC18;
  if (!qword_27D73BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC18);
  }

  return result;
}

unint64_t sub_225A712F4()
{
  result = qword_27D73BC20;
  if (!qword_27D73BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC20);
  }

  return result;
}

uint64_t sub_225A71348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7072755079656BLL && a2 == 0xEA00000000006573 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00657079547265)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_225A71478()
{
  result = qword_27D73BC28;
  if (!qword_27D73BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC28);
  }

  return result;
}

unint64_t sub_225A714CC()
{
  result = qword_27D73BC30;
  if (!qword_27D73BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC30);
  }

  return result;
}

uint64_t static KeystoreKeychainProtocol.queryKeychainCertificate(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v53 - v12;
  v59[0] = 0;
  v14 = sub_225CCE474();
  (*(a4 + 32))(a1, a2, v14, v15, v59, a3, a4);
  if (v5)
  {
  }

  else
  {

    if (v59[0])
    {
      v17 = swift_unknownObjectRetain();
      v18 = CFGetTypeID(v17);
      if (v18 == SecCertificateGetTypeID())
      {
        type metadata accessor for SecCertificate(0);
        v4 = swift_dynamicCastUnknownClassUnconditional();
        swift_unknownObjectRelease();
        return v4;
      }

      v56 = 0;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000026, 0x8000000225D1A620);
      MEMORY[0x22AA6CE70](a1, a2);
      MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D1A6B0);
      v36 = v57;
      v4 = v58;
      v54 = 0x8000000225D1A680;
      v55 = 0x8000000225D1A650;
      v37 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v39 = v38;
      v40 = sub_225CCE954();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v13, 1, 1, v40);
      LODWORD(v40) = (*(v41 + 48))(v13, 1, v40);
      sub_2259DB318(v13);
      if (v40)
      {
        v42 = 243;
      }

      else
      {
        v42 = 23;
      }

      v43 = MEMORY[0x277D84F90];
      v44 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v44;
      sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v57);

      v46 = v57;
      v47 = sub_225B29AA0(0, 1, 1, v43);
      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      if (v49 >= v48 >> 1)
      {
        v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v49 + 1;
      v50 = &v47[56 * v49];
      *(v50 + 4) = v36;
      *(v50 + 5) = v4;
      v51 = v55;
      *(v50 + 6) = 0xD00000000000002CLL;
      *(v50 + 7) = v51;
      v52 = v54;
      *(v50 + 8) = 0xD000000000000020;
      *(v50 + 9) = v52;
      *(v50 + 10) = 39;
      *v39 = v42;
      *(v39 + 8) = v47;
      *(v39 + 16) = v36;
      *(v39 + 24) = v4;
      *(v39 + 32) = v46;
      *(v39 + 40) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_225CCF204();

      v57 = 0xD000000000000026;
      v58 = 0x8000000225D1A620;
      MEMORY[0x22AA6CE70](a1, a2);
      v19 = v57;
      v4 = v58;
      v55 = 0x8000000225D1A680;
      v56 = 0x8000000225D1A650;
      v20 = MEMORY[0x277D84F90];
      v21 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v23 = v22;
      v24 = sub_225CCE954();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v13, 1, 1, v24);
      LODWORD(v24) = (*(v25 + 48))(v13, 1, v24);
      sub_2259DB318(v13);
      if (v24)
      {
        v26 = 243;
      }

      else
      {
        v26 = 23;
      }

      v27 = sub_225B2C374(v20);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v27;
      sub_225B2C4A0(v21, sub_225B2AC40, 0, v28, &v57);

      v29 = v57;
      v30 = sub_225B29AA0(0, 1, 1, v20);
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_225B29AA0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[56 * v32];
      *(v33 + 4) = v19;
      *(v33 + 5) = v4;
      v34 = v56;
      *(v33 + 6) = 0xD00000000000002CLL;
      *(v33 + 7) = v34;
      v35 = v55;
      *(v33 + 8) = 0xD000000000000020;
      *(v33 + 9) = v35;
      *(v33 + 10) = 34;
      *v23 = v26;
      *(v23 + 8) = v30;
      *(v23 + 16) = v19;
      *(v23 + 24) = v4;
      *(v23 + 32) = v29;
      *(v23 + 40) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t SESKeyForHPKE.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SESKeyForHPKE() + 28);
  v4 = sub_225CCDEA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SESKeyForHPKE()
{
  result = qword_27D73BC40;
  if (!qword_27D73BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SESKeyForHPKE.init(keyBlob:sesKeystore:externalizedLAContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v62 = &v59 - v15;
  v16 = sub_225CCDEA4();
  v66 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = a3;
  a6[1] = a1;
  a6[2] = a2;
  a6[3] = a4;
  v67 = a6;
  a6[4] = a5;
  v20 = *(*a3 + 104);

  sub_2259CB710(a1, a2);
  v21 = v20(a1, a2);
  if (v6)
  {

    sub_2259BEF00(a1, a2);
    v65 = 0;
    v64 = "e returned from keychain.";
    v63 = "CoreIDVShared/SESKey+HPKE.swift";
    v26 = v6;
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v28 = swift_allocError();
    v30 = v29;
    swift_getErrorValue();
    v31 = v75;
    v32 = v6;
    sub_225B21FAC(v31, &v69);

    v33 = v70;
    v66 = v28;
    if (v70)
    {
      v62 = v69;
      v60 = v71;
      v61 = v72;
      v34 = v73;
      v59 = v74;
    }

    else
    {
      v69 = v6;
      v35 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v36 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v38 = [v36 code];
        v39 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v39;
        *(inited + 40) = v38;
        v34 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v40 = v6;
        v61 = 0;
        v60 = 0;
        v62 = 0;
        v33 = MEMORY[0x277D84F90];
      }

      else
      {
        v69 = v6;
        v41 = v6;
        v42 = sub_225CCE954();
        v43 = v62;
        v44 = swift_dynamicCast();
        v45 = *(v42 - 8);
        (*(v45 + 56))(v43, v44 ^ 1u, 1, v42);
        LODWORD(v45) = (*(v45 + 48))(v43, 1, v42);
        sub_2259CB640(v43, &unk_27D73B050);
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = 23;
        }

        v62 = v46;
        v33 = MEMORY[0x277D84F90];
        v34 = sub_225B2C374(MEMORY[0x277D84F90]);
        v47 = v6;
        v61 = 0;
        v60 = 0;
      }

      v59 = v6;
    }

    v48 = v64 | 0x8000000000000000;
    v64 = v63 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v34;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v69);

    v50 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
    }

    v52 = *(v33 + 2);
    v51 = *(v33 + 3);
    if (v52 >= v51 >> 1)
    {
      v33 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v33);
    }

    *(v33 + 2) = v52 + 1;
    v53 = &v33[56 * v52];
    *(v53 + 4) = 0;
    *(v53 + 5) = 0;
    *(v53 + 6) = 0xD00000000000001FLL;
    *(v53 + 7) = v48;
    v54 = v64;
    *(v53 + 8) = 0xD000000000000030;
    *(v53 + 9) = v54;
    *(v53 + 10) = 37;
    *v30 = v62;
    v55 = v60;
    *(v30 + 8) = v33;
    *(v30 + 16) = v55;
    *(v30 + 24) = v61;
    *(v30 + 32) = v50;
    *(v30 + 40) = v59;
    swift_willThrow();

    v56 = v67;
    sub_2259BEF00(v67[1], v67[2]);
    return sub_2259BEF00(v56[3], v56[4]);
  }

  else
  {
    v23 = v21;
    v24 = v22;
    v25 = v66;

    sub_2259BEF00(a1, a2);
    v69 = v23;
    v70 = v24;
    sub_225CCDE94();
    v57 = type metadata accessor for SESKeyForHPKE();
    return (*(v25 + 32))(v67 + *(v57 + 28), v19, v16);
  }
}

void SESKeyForHPKE.sharedSecretFromKeyAgreement(with:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v47 = &v45 - v5;
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = MEMORY[0x22AA6C6C0](v4);
  v11 = v10;
  v12 = (*(*v6 + 184))(v7, v8, v9, v10, v0[3], v0[4]);
  if (v1)
  {
    sub_2259BEF00(v9, v11);
    v48 = "lizedLAContext:)";
    v14 = v1;
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v49 = swift_allocError();
    v17 = v16;
    swift_getErrorValue();
    v18 = v57;
    v19 = v1;
    sub_225B21FAC(v18, &v51);

    v20 = v52;
    if (v52)
    {
      v47 = v51;
      v45 = v53;
      v46 = v54;
      v22 = v55;
      v21 = v56;
    }

    else
    {
      v51 = v1;
      v25 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v26 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v28 = [v26 code];
        v29 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v29;
        *(inited + 40) = v28;
        v22 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v30 = v1;
        v46 = 0;
        v45 = 0;
        v47 = 0;
        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        v51 = v1;
        v31 = v1;
        v32 = sub_225CCE954();
        v33 = v47;
        v34 = swift_dynamicCast();
        v35 = *(v32 - 8);
        (*(v35 + 56))(v33, v34 ^ 1u, 1, v32);
        LODWORD(v35) = (*(v35 + 48))(v33, 1, v32);
        sub_2259CB640(v33, &unk_27D73B050);
        if (v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = 23;
        }

        v47 = v36;
        v20 = MEMORY[0x277D84F90];
        v22 = sub_225B2C374(MEMORY[0x277D84F90]);
        v37 = v1;
        v46 = 0;
        v45 = 0;
      }

      v21 = v1;
    }

    v38 = v48 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v22;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v51);

    v40 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_225B29AA0(0, *(v20 + 2) + 1, 1, v20);
    }

    v42 = *(v20 + 2);
    v41 = *(v20 + 3);
    if (v42 >= v41 >> 1)
    {
      v20 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v20);
    }

    *(v20 + 2) = v42 + 1;
    v43 = &v20[56 * v42];
    *(v43 + 4) = 0;
    *(v43 + 5) = 0;
    *(v43 + 6) = 0xD00000000000001FLL;
    *(v43 + 7) = 0x8000000225D1A6E0;
    *(v43 + 8) = 0xD000000000000023;
    *(v43 + 9) = v38;
    *(v43 + 10) = 52;
    *v17 = v47;
    v44 = v45;
    *(v17 + 8) = v20;
    *(v17 + 16) = v44;
    *(v17 + 24) = v46;
    *(v17 + 32) = v40;
    *(v17 + 40) = v21;
    swift_willThrow();
  }

  else
  {
    v23 = v12;
    v24 = v13;
    sub_2259BEF00(v9, v11);
    v51 = v23;
    v52 = v24;
    sub_225CCDBD4();
  }
}

uint64_t sub_225A72998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_225CCDEA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_225A72A28()
{
  result = qword_27D73BC38;
  if (!qword_27D73BC38)
  {
    type metadata accessor for SESKeyForHPKE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC38);
  }

  return result;
}

uint64_t sub_225A72AB4()
{
  result = type metadata accessor for SESKeystore();
  if (v1 <= 0x3F)
  {
    result = sub_225CCDEA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SESKeystore.SignatureOutputFormat.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

char *sub_225A72BEC(unint64_t a1)
{
  v145 = a1;
  v159 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v137 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v138 = &v135 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v136 = &v135 - v9;
  v144 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v144, v10);
  v143 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v135 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v146 = &v135 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v135 - v25;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v139 = *(v17 + 16);
  v140 = v28;
  v148 = v16;
  v139(v26, &v27[v28], v16);
  os_unfair_lock_unlock(&v27[v29]);
  v30 = sub_225CCD934();
  v31 = sub_225CCED04();
  v32 = os_log_type_enabled(v30, v31);
  v147 = v15;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2259A7000, v30, v31, "SESKeystore createKey", v33, 2u);
    v34 = v33;
    v15 = v147;
    MEMORY[0x22AA6F950](v34, -1, -1);
  }

  v141 = *(v17 + 8);
  v142 = v17 + 8;
  (v141)(v26, v148);
  if (qword_27D73A718 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v144, qword_27D7417A8);
  v36 = v143;
  sub_2259CB588(v35, v143);
  DIPSignpost.init(_:)(v36, v15);
  v153 = 0;
  v37 = SESKeyCreate();
  v38 = v153;
  v39 = v153;
  v40 = v39;
  if (!v37)
  {
    v44 = v146;
    if (v39)
    {
      v145 = v38;
      v41 = 0;
      v43 = 0xF000000000000000;
      goto LABEL_12;
    }

LABEL_18:
    v148 = 0x8000000225D1A7B0;
    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v69 = swift_allocError();
    v71 = v70;
    v72 = sub_225CCE954();
    v73 = *(v72 - 8);
    v74 = v138;
    (*(v73 + 56))(v138, 1, 1, v72);
    LODWORD(v72) = (*(v73 + 48))(v74, 1, v72);
    sub_2259CB640(v74, &unk_27D73B050);
    if (v72)
    {
      v75 = 199;
    }

    else
    {
      v75 = 23;
    }

    v76 = sub_225B2C374(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v76;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

    v78 = v153;
    v79 = sub_225B29AA0(0, 1, 1, v67);
    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[56 * v81];
    *(v82 + 4) = 0xD000000000000032;
    *(v82 + 5) = 0x8000000225D1A770;
    *(v82 + 6) = 0xD00000000000001FLL;
    *(v82 + 7) = v148;
    *(v82 + 8) = 0x654B657461657263;
    *(v82 + 9) = 0xEF293A6C63612879;
    *(v82 + 10) = 70;
    *v71 = v75;
    *(v71 + 8) = v79;
    *(v71 + 16) = 0xD000000000000032;
    *(v71 + 24) = 0x8000000225D1A770;
    *(v71 + 32) = v78;
    *(v71 + 40) = 0;
    swift_willThrow();
    goto LABEL_36;
  }

  v145 = v38;
  v41 = sub_225CCCFA4();
  v43 = v42;

  if (!v40)
  {
    if (v43 >> 60 != 15)
    {
      os_unfair_lock_lock(&v27[v29]);
      v89 = v135;
      v90 = v148;
      v139(v135, &v27[v140], v148);
      os_unfair_lock_unlock(&v27[v29]);
      sub_2259CB6FC(v41, v43);
      sub_225B431A4(v89, v41, v43);
      sub_2259B97A8(v41, v43);
      (v141)(v89, v90);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v15);
      return v41;
    }

    goto LABEL_18;
  }

  v44 = v146;
LABEL_12:
  os_unfair_lock_lock(&v27[v29]);
  v139(v44, &v27[v140], v148);
  os_unfair_lock_unlock(&v27[v29]);
  v45 = v40;
  v46 = sub_225CCD934();
  v47 = sub_225CCED14();

  v48 = os_log_type_enabled(v46, v47);
  v143 = v41;
  v138 = v43;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v153 = v50;
    *v49 = 136446210;
    v51 = [v45 debugDescription];
    v52 = sub_225CCE474();
    v54 = v53;

    v55 = sub_2259BE198(v52, v54, &v153);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_2259A7000, v46, v47, "Error from SESKeyCreate: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA6F950](v50, -1, -1);
    MEMORY[0x22AA6F950](v49, -1, -1);

    v56 = v146;
  }

  else
  {

    v56 = v44;
  }

  (v141)(v56, v148);
  v57 = 0x8000000225D1A7D0;
  v148 = "sponse or an error";
  v58 = v45;
  v142 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v59 = swift_allocError();
  v61 = v60;
  swift_getErrorValue();
  v62 = v150;
  v63 = v58;
  sub_225B21FAC(v62, &v153);

  v64 = v154;
  v144 = v59;
  v146 = 0x8000000225D1A7D0;
  if (v154)
  {
    v141 = v153;
    v65 = v155;
    v57 = v156;
    v66 = v157;
    v145 = v158;
  }

  else
  {
    v153 = v63;
    v83 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v84 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v86 = [v84 code];
      v87 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v87;
      *(inited + 40) = v86;
      v66 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v88 = v83;
      v57 = 0;
      v65 = 0;
      v64 = MEMORY[0x277D84F90];
      v141 = 199;
    }

    else
    {
      v153 = v83;
      v91 = sub_225CCE954();
      v92 = v83;
      v93 = v136;
      v94 = swift_dynamicCast();
      v95 = *(v91 - 8);
      (*(v95 + 56))(v93, v94 ^ 1u, 1, v91);
      LODWORD(v95) = (*(v95 + 48))(v93, 1, v91);
      sub_2259CB640(v93, &unk_27D73B050);
      if (v95)
      {
        v96 = 199;
      }

      else
      {
        v96 = 23;
      }

      v141 = v96;
      v64 = MEMORY[0x277D84F90];
      v66 = sub_225B2C374(MEMORY[0x277D84F90]);
      v97 = v92;
      v65 = 0xD000000000000017;
    }
  }

  v148 |= 0x8000000000000000;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v66;
  sub_225B2C4A0(v142, sub_225B2AC40, 0, v98, &v153);

  v99 = v153;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v64 = sub_225B29AA0(0, *(v64 + 2) + 1, 1, v64);
  }

  v101 = *(v64 + 2);
  v100 = *(v64 + 3);
  if (v101 >= v100 >> 1)
  {
    v64 = sub_225B29AA0((v100 > 1), v101 + 1, 1, v64);
  }

  *(v64 + 2) = v101 + 1;
  v102 = &v64[56 * v101];
  v103 = v146;
  *(v102 + 4) = 0xD000000000000017;
  *(v102 + 5) = v103;
  v104 = v148;
  *(v102 + 6) = 0xD00000000000001FLL;
  *(v102 + 7) = v104;
  *(v102 + 8) = 0x654B657461657263;
  *(v102 + 9) = 0xEF293A6C63612879;
  *(v102 + 10) = 67;
  *v61 = v141;
  *(v61 + 8) = v64;
  *(v61 + 16) = v65;
  *(v61 + 24) = v57;
  *(v61 + 32) = v99;
  v69 = v144;
  *(v61 + 40) = v145;
  swift_willThrow();

  sub_2259B97A8(v143, v138);
LABEL_36:
  v146 = 0;
  v105 = v147;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v105);
  v106 = v69;
  v107 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v149 = swift_allocError();
  v109 = v108;
  swift_getErrorValue();
  v110 = v152;
  v111 = v69;
  sub_225B21FAC(v110, &v153);

  v112 = v154;
  if (v154)
  {
    v147 = v153;
    v113 = v156;
    v145 = v155;
    v115 = v157;
    v114 = v158;
  }

  else
  {
    v153 = v69;
    v116 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v117 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v118 = swift_initStackObject();
      *(v118 + 16) = xmmword_225CD30F0;
      v114 = v69;
      *(v118 + 32) = 20;
      v119 = [v117 code];
      v120 = MEMORY[0x277D83BF8];
      *(v118 + 64) = MEMORY[0x277D83B88];
      *(v118 + 72) = v120;
      *(v118 + 40) = v119;
      v115 = sub_225B2C374(v118);
      swift_setDeallocating();
      sub_2259CB640(v118 + 32, &qword_27D73B060);

      v121 = v69;
      v145 = 0;
      v147 = 0;
      v113 = 0;
      v112 = MEMORY[0x277D84F90];
    }

    else
    {
      v153 = v69;
      v122 = v69;
      v123 = sub_225CCE954();
      v124 = v137;
      v125 = swift_dynamicCast();
      v126 = *(v123 - 8);
      (*(v126 + 56))(v124, v125 ^ 1u, 1, v123);
      LODWORD(v126) = (*(v126 + 48))(v124, 1, v123);
      sub_2259CB640(v124, &unk_27D73B050);
      if (v126)
      {
        v127 = 0;
      }

      else
      {
        v127 = 23;
      }

      v147 = v127;
      v112 = MEMORY[0x277D84F90];
      v115 = sub_225B2C374(MEMORY[0x277D84F90]);
      v128 = v69;
      v114 = v69;
      v145 = 0;
      v113 = 0;
    }
  }

  v129 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v115;
  sub_225B2C4A0(v107, sub_225B2AC40, 0, v129, &v153);

  v41 = v153;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_225B29AA0(0, *(v112 + 2) + 1, 1, v112);
  }

  v131 = *(v112 + 2);
  v130 = *(v112 + 3);
  if (v131 >= v130 >> 1)
  {
    v112 = sub_225B29AA0((v130 > 1), v131 + 1, 1, v112);
  }

  *(v112 + 2) = v131 + 1;
  v132 = &v112[56 * v131];
  *(v132 + 4) = 0;
  *(v132 + 5) = 0;
  *(v132 + 6) = 0xD00000000000001FLL;
  *(v132 + 7) = v148;
  *(v132 + 8) = 0x654B657461657263;
  *(v132 + 9) = 0xEF293A6C63612879;
  *(v132 + 10) = 76;
  *v109 = v147;
  v133 = v145;
  *(v109 + 8) = v112;
  *(v109 + 16) = v133;
  *(v109 + 24) = v113;
  *(v109 + 32) = v41;
  *(v109 + 40) = v114;
  swift_willThrow();

  return v41;
}

unint64_t sub_225A73C30(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A73D14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 *a7, void *a8)
{
  v196 = a8;
  v197 = a6;
  v194 = a5;
  v199 = a1;
  v211 = *MEMORY[0x277D85DE8];
  v175 = sub_225CCDF54();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v12);
  v176 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v180 = v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v177 = v173 - v19;
  v190 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v190, v20);
  v189 = v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v200 = v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCD954();
  v26 = *(v25 - 1);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v179 = v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v192 = v173 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v195 = v173 - v34;
  v178 = *a7;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v35 = off_28105B918;
  v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v37 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v37));
  v38 = *(v26 + 16);
  v184 = v36;
  v201 = v26;
  v185 = v26 + 16;
  v183 = v38;
  v38(v195, &v35[v36], v25);
  v187 = v35;
  v186 = v37;
  os_unfair_lock_unlock(&v35[v37]);
  v39 = v199;
  sub_2259CB710(v199, a2);
  sub_2259CB710(a3, a4);
  v40 = a3;
  v198 = a4;
  v41 = v194;
  v42 = v197;
  sub_2259CB710(v194, v197);
  v43 = v196;
  v44 = sub_225CCD934();
  v193 = v25;
  v45 = v44;
  v46 = sub_225CCED04();
  sub_2259BEF00(v39, a2);
  v47 = v198;
  sub_2259BEF00(v40, v198);
  sub_2259BEF00(v41, v42);
  v182 = v43;

  v181 = v46;
  v188 = v45;
  v48 = os_log_type_enabled(v45, v46);
  v49 = v201;
  v191 = v40;
  if (v48)
  {
    v50 = v47;
    v51 = v40;
    v52 = swift_slowAlloc();
    v173[0] = swift_slowAlloc();
    v205 = v173[0];
    *v52 = 136315906;
    v53 = v202;
    v204 = sub_225B34448(v39, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_2259CB764();
    v54 = sub_225CCE384();
    v173[1] = a2;
    v56 = v55;

    v57 = sub_2259BE198(v54, v56, &v205);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v204 = sub_225B34448(v51, v50);
    v58 = sub_225CCE384();
    v60 = v59;

    v61 = sub_2259BE198(v58, v60, &v205);

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    v62 = sub_225B34448(v194, v197);
    v202 = v53;
    v204 = v62;
    v63 = v200;
    v64 = sub_225CCE384();
    v66 = v65;

    v67 = sub_2259BE198(v64, v66, &v205);

    *(v52 + 24) = v67;
    *(v52 + 32) = 2080;
    v68 = v196;
    v204 = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC50);
    v69 = sub_225CCEFB4();
    v71 = sub_2259BE198(v69, v70, &v205);

    *(v52 + 34) = v71;
    v72 = v188;
    _os_log_impl(&dword_2259A7000, v188, v181, "SESKeystore signDigest digest = %s, keyBlob = %s, externalizedLAContext = %s, seAccessEndpoint = %s", v52, 0x2Au);
    v73 = v173[0];
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v73, -1, -1);
    MEMORY[0x22AA6F950](v52, -1, -1);

    v74 = v195;
    v75 = v193;
    v195 = *(v201 + 8);
    (v195)(v74, v193);
    v76 = v68;
  }

  else
  {

    v77 = v195;
    v75 = v193;
    v195 = *(v49 + 8);
    (v195)(v77, v193);
    v63 = v200;
    v76 = v196;
  }

  if (qword_27D73A720 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v190, qword_27D7417C0);
  v79 = v189;
  sub_2259CB588(v78, v189);
  DIPSignpost.init(_:)(v79, v63);
  v80 = *MEMORY[0x277CDC2B8];
  if (v76)
  {
    v81 = v182;
    v82 = v80;
    v83 = sub_225CCCF74();
    v84 = sub_225CCCF74();
    v85 = sub_225CCCF74();
    v205 = 0;
    v86 = SESKeySignPrecomputedDigestWithListenerEndpoint();

    if (v86)
    {
      v87 = v205;
      v88 = sub_225CCCFA4();
      v90 = v89;

      goto LABEL_16;
    }

    v87 = v205;
  }

  else
  {
    v91 = v80;
    v92 = sub_225CCCF74();
    v93 = sub_225CCCF74();
    v86 = sub_225CCCF74();
    v205 = 0;
    v94 = SESKeySignPrecomputedDigest();

    if (v94)
    {
      v87 = v205;
      v88 = sub_225CCCFA4();
      v90 = v95;

      goto LABEL_16;
    }

    v87 = v205;
  }

  v88 = 0;
  v90 = 0xF000000000000000;
LABEL_16:
  v96 = v192;
  v97 = v202;
  if (v87)
  {
    v198 = v88;
    v98 = v187;
    v99 = v186;
    os_unfair_lock_lock(&v187[v186]);
    v183(v96, &v98[v184], v75);
    os_unfair_lock_unlock(&v98[v99]);
    v100 = v87;
    v101 = sub_225CCD934();
    v102 = sub_225CCED14();

    v103 = os_log_type_enabled(v101, v102);
    v202 = v97;
    v197 = v90;
    v199 = v87;
    if (v103)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v205 = v105;
      *v104 = 136446210;
      v106 = [v100 debugDescription];
      v107 = sub_225CCE474();
      v108 = v96;
      v110 = v109;

      v111 = sub_2259BE198(v107, v110, &v205);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_2259A7000, v101, v102, "Error from SESKeySignPrecomputedDigest: %{public}s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x22AA6F950](v105, -1, -1);
      MEMORY[0x22AA6F950](v104, -1, -1);

      v112 = v108;
      v113 = v193;
    }

    else
    {

      v112 = v96;
      v113 = v75;
    }

    (v195)(v112, v113);
    v201 = 0x8000000225D1A890;
    v195 = "nature or an error";
    v130 = v100;
    v131 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v196 = swift_allocError();
    v133 = v132;
    swift_getErrorValue();
    v134 = v203;
    v86 = v130;
    sub_225B21FAC(v134, &v205);

    v135 = v206;
    if (v206)
    {
      v194 = v205;
      v136 = v208;
      v193 = v207;
      v138 = v209;
      v137 = v210;
      v139 = &v213;
    }

    else
    {
      v205 = v86;
      v140 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (!swift_dynamicCast())
      {
        v205 = v140;
        v160 = sub_225CCE954();
        v193 = v140;
        v161 = v177;
        v162 = swift_dynamicCast();
        v163 = *(v160 - 8);
        (*(v163 + 56))(v161, v162 ^ 1u, 1, v160);
        v164 = (*(v163 + 48))(v161, 1, v160);
        sub_2259CB640(v161, &unk_27D73B050);
        if (v164)
        {
          v165 = 200;
        }

        else
        {
          v165 = 23;
        }

        v194 = v165;
        v135 = MEMORY[0x277D84F90];
        v138 = sub_225B2C374(MEMORY[0x277D84F90]);
        v166 = v193;
        v193 = 0xD000000000000026;
        v136 = v201;
        goto LABEL_32;
      }

      v141 = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v143 = [v141 code];
      v144 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v144;
      *(inited + 40) = v143;
      v138 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v145 = v140;
      v193 = 0;
      v136 = 0;
      v135 = MEMORY[0x277D84F90];
      v137 = 200;
      v139 = &v212;
    }

    *(v139 - 32) = v137;
LABEL_32:
    v146 = v195 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v205 = v138;
    sub_225B2C4A0(v131, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v205);

    v148 = v205;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v135 = sub_225B29AA0(0, *(v135 + 2) + 1, 1, v135);
    }

    v150 = *(v135 + 2);
    v149 = *(v135 + 3);
    if (v150 >= v149 >> 1)
    {
      v135 = sub_225B29AA0((v149 > 1), v150 + 1, 1, v135);
    }

    *(v135 + 2) = v150 + 1;
    v151 = &v135[56 * v150];
    v152 = v201;
    *(v151 + 4) = 0xD000000000000026;
    *(v151 + 5) = v152;
    *(v151 + 6) = 0xD00000000000001FLL;
    *(v151 + 7) = 0x8000000225D1A7B0;
    *(v151 + 8) = 0xD00000000000004ALL;
    *(v151 + 9) = v146;
    *(v151 + 10) = 111;
    *v133 = v194;
    v153 = v193;
    *(v133 + 8) = v135;
    *(v133 + 16) = v153;
    *(v133 + 24) = v136;
    *(v133 + 32) = v148;
    *(v133 + 40) = v199;
    swift_willThrow();
    sub_2259B97A8(v198, v197);

    goto LABEL_37;
  }

  if (v90 >> 60 == 15)
  {
    v201 = 0x8000000225D1A7B0;
    v199 = 0x8000000225D1A840;
    v114 = MEMORY[0x277D84F90];
    v115 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v117 = v116;
    v118 = sub_225CCE954();
    v119 = *(v118 - 8);
    v120 = v180;
    (*(v119 + 56))(v180, 1, 1, v118);
    LODWORD(v118) = (*(v119 + 48))(v120, 1, v118);
    sub_2259CB640(v120, &unk_27D73B050);
    if (v118)
    {
      v121 = 200;
    }

    else
    {
      v121 = 23;
    }

    v122 = sub_225B2C374(v114);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v122;
    sub_225B2C4A0(v115, sub_225B2AC40, 0, v123, &v205);

    v124 = v205;
    v125 = sub_225B29AA0(0, 1, 1, v114);
    v86 = *(v125 + 2);
    v126 = *(v125 + 3);
    if (v86 >= v126 >> 1)
    {
      v125 = sub_225B29AA0((v126 > 1), v86 + 1, 1, v125);
    }

    *(v125 + 2) = v86 + 1;
    v127 = &v125[56 * v86];
    *(v127 + 4) = 0xD000000000000042;
    *(v127 + 5) = 0x8000000225D1A7F0;
    v128 = v201;
    *(v127 + 6) = 0xD00000000000001FLL;
    *(v127 + 7) = v128;
    v129 = v199;
    *(v127 + 8) = 0xD00000000000004ALL;
    *(v127 + 9) = v129;
    *(v127 + 10) = 114;
    *v117 = v121;
    *(v117 + 8) = v125;
    *(v117 + 16) = 0xD000000000000042;
    *(v117 + 24) = 0x8000000225D1A7F0;
    *(v117 + 32) = v124;
    *(v117 + 40) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  if (v178)
  {
    v156 = v187;
    v157 = v186;
    os_unfair_lock_lock(&v187[v186]);
    v158 = v179;
    v183(v179, &v156[v184], v75);
    os_unfair_lock_unlock(&v156[v157]);
    sub_2259CB6FC(v88, v90);
    sub_225B431D4(v158, v88, v90);
    v159 = v75;
    v86 = v88;
LABEL_48:
    sub_2259B97A8(v88, v90);
    (v195)(v158, v159);
    v172 = v200;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v172);
    return v86;
  }

  v205 = v88;
  v206 = v90;
  sub_2259CB710(v88, v90);
  sub_2259DB42C();
  v167 = v176;
  sub_225CCDF24();
  v158 = v179;
  if (!v97)
  {
    v159 = v75;
    v86 = sub_225CCDF34();
    v169 = v168;
    (*(v174 + 8))(v167, v175);
    v170 = v187;
    v171 = v186;
    os_unfair_lock_lock(&v187[v186]);
    v183(v158, &v170[v184], v159);
    os_unfair_lock_unlock(&v170[v171]);
    sub_2259CB710(v86, v169);
    sub_225B431BC(v158, v86, v169);
    sub_2259BEF00(v86, v169);
    goto LABEL_48;
  }

  sub_2259B97A8(v88, v90);
LABEL_37:
  v154 = v200;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v154);
  return v86;
}

unint64_t sub_225A7517C(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000002ALL;
}

unint64_t sub_225A75260(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000002ALL;
}

unint64_t sub_225A75344(uint64_t a1, void *a2)
{
  v112 = a2;
  v111 = a1;
  v124 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v105 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v104 = &v104 - v7;
  v110 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v110, v8);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v113 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v104 - v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v26 = *(v16 + 16);
  v107 = v24;
  v115 = v15;
  v106 = v26;
  v26(v22, &v24[v23], v15);
  os_unfair_lock_unlock((v23 + v25));
  v27 = sub_225CCD934();
  v28 = sub_225CCED04();
  v29 = os_log_type_enabled(v27, v28);
  v114 = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "SESKeystore getPublicKey", v30, 2u);
    v31 = v30;
    v14 = v114;
    MEMORY[0x22AA6F950](v31, -1, -1);
  }

  v32 = *(v16 + 8);
  v33 = v115;
  v109 = v16 + 8;
  v108 = v32;
  (v32)(v22, v115);
  if (qword_27D73A728 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v110, qword_27D7417D8);
  sub_2259CB588(v34, v10);
  DIPSignpost.init(_:)(v10, v14);
  v35 = sub_225CCCF74();
  v118 = 0;
  v36 = SESKeyPublicKey();

  v37 = v118;
  v38 = v118;
  v39 = v38;
  if (v36)
  {
    v40 = sub_225CCCFA4();
    v42 = v41;

    if (v39)
    {
      v111 = v40;
      v33 = v115;
      v43 = v113;
      goto LABEL_12;
    }

    if (v42 >> 60 != 15)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v14);
      return v40;
    }

LABEL_18:
    v115 = 0x8000000225D1A7B0;
    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v70 = v69;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    v73 = v105;
    (*(v72 + 56))(v105, 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v73, 1, v71);
    sub_2259CB640(v73, &unk_27D73B050);
    if (v71)
    {
      v74 = 202;
    }

    else
    {
      v74 = 23;
    }

    v75 = sub_225B2C374(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v75;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v118);

    v40 = v118;
    v77 = sub_225B29AA0(0, 1, 1, v67);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v77);
    }

    *(v77 + 2) = v79 + 1;
    v80 = &v77[56 * v79];
    *(v80 + 4) = 0xD000000000000029;
    *(v80 + 5) = 0x8000000225D1A8C0;
    *(v80 + 6) = 0xD00000000000001FLL;
    *(v80 + 7) = v115;
    *(v80 + 8) = 0xD000000000000011;
    *(v80 + 9) = 0x8000000225D1A8F0;
    *(v80 + 10) = 150;
    *v70 = v74;
    *(v70 + 8) = v77;
    *(v70 + 16) = 0xD000000000000029;
    *(v70 + 24) = 0x8000000225D1A8C0;
    *(v70 + 32) = v40;
    *(v70 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  v43 = v113;
  if (!v38)
  {
    goto LABEL_18;
  }

  v111 = 0;
  v42 = 0xF000000000000000;
LABEL_12:
  os_unfair_lock_lock((v23 + v25));
  v106(v43, &v107[v23], v33);
  os_unfair_lock_unlock((v23 + v25));
  v44 = v39;
  v45 = sub_225CCD934();
  v46 = v33;
  v47 = sub_225CCED14();

  v48 = os_log_type_enabled(v45, v47);
  v110 = v42;
  v112 = v37;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v118 = v50;
    *v49 = 136315138;
    v51 = [v44 localizedDescription];
    v52 = sub_225CCE474();
    v54 = v53;

    v55 = sub_2259BE198(v52, v54, &v118);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_2259A7000, v45, v47, "Error from SESKeyPublicKey: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA6F950](v50, -1, -1);
    MEMORY[0x22AA6F950](v49, -1, -1);

    v56 = v113;
  }

  else
  {

    v56 = v43;
  }

  (v108)(v56, v46);
  v115 = 0x8000000225D1A910;
  v108 = "returned a nil public key";
  v57 = v44;
  v109 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v113 = swift_allocError();
  v59 = v58;
  swift_getErrorValue();
  v60 = v117;
  v61 = v57;
  sub_225B21FAC(v60, &v118);

  v62 = v119;
  if (v119)
  {
    v107 = v118;
    v63 = v121;
    v106 = v120;
    v65 = v122;
    v64 = v123;
    v66 = &v126;
  }

  else
  {
    v118 = v61;
    v81 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (!swift_dynamicCast())
    {
      v118 = v81;
      v97 = sub_225CCE954();
      v98 = v81;
      v99 = v104;
      v100 = swift_dynamicCast();
      v101 = *(v97 - 8);
      (*(v101 + 56))(v99, v100 ^ 1u, 1, v97);
      LODWORD(v101) = (*(v101 + 48))(v99, 1, v97);
      sub_2259CB640(v99, &unk_27D73B050);
      if (v101)
      {
        v102 = 202;
      }

      else
      {
        v102 = 23;
      }

      v107 = v102;
      v62 = MEMORY[0x277D84F90];
      v65 = sub_225B2C374(MEMORY[0x277D84F90]);
      v103 = v98;
      v106 = 0xD00000000000001ALL;
      v63 = v115;
      goto LABEL_27;
    }

    v82 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v84 = [v82 code];
    v85 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v85;
    *(inited + 40) = v84;
    v65 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);

    v86 = v81;
    v63 = 0;
    v106 = 0;
    v62 = MEMORY[0x277D84F90];
    v64 = 202;
    v66 = &v125;
  }

  *(v66 - 32) = v64;
LABEL_27:
  v40 = 0x8000000225D1A7B0;
  v87 = v108 | 0x8000000000000000;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v65;
  sub_225B2C4A0(v109, sub_225B2AC40, 0, v88, &v118);

  v89 = v118;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v62 = sub_225B29AA0(0, *(v62 + 2) + 1, 1, v62);
  }

  v91 = *(v62 + 2);
  v90 = *(v62 + 3);
  if (v91 >= v90 >> 1)
  {
    v62 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v62);
  }

  *(v62 + 2) = v91 + 1;
  v92 = &v62[56 * v91];
  v93 = v115;
  *(v92 + 4) = 0xD00000000000001ALL;
  *(v92 + 5) = v93;
  *(v92 + 6) = 0xD00000000000001FLL;
  *(v92 + 7) = 0x8000000225D1A7B0;
  *(v92 + 8) = 0xD000000000000011;
  *(v92 + 9) = v87;
  *(v92 + 10) = 147;
  *v59 = v107;
  v94 = v106;
  *(v59 + 8) = v62;
  *(v59 + 16) = v94;
  *(v59 + 24) = v63;
  *(v59 + 32) = v89;
  *(v59 + 40) = v112;
  swift_willThrow();

  sub_2259B97A8(v111, v110);
LABEL_32:
  v95 = v114;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v95);
  return v40;
}

uint64_t sub_225A7600C()
{
  v131 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v4);
  v112 = &v111 - v5;
  v122 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v122, v6);
  v121 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v111 - v19;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v13 + 16);
  v119 = v22;
  v118 = v13 + 16;
  v117 = v24;
  (v24)(v20, &v21[v22], v12);
  v120 = v23;
  os_unfair_lock_unlock(&v21[v23]);
  v25 = sub_225CCD934();
  v26 = sub_225CCED04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v17;
    v28 = v13;
    v29 = v12;
    v30 = v11;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2259A7000, v25, v26, "SESKeystore getCASDCertificate", v31, 2u);
    v32 = v31;
    v11 = v30;
    v12 = v29;
    v13 = v28;
    v17 = v27;
    MEMORY[0x22AA6F950](v32, -1, -1);
  }

  v35 = *(v13 + 8);
  v33 = v13 + 8;
  v34 = v35;
  v35(v20, v12);
  if (qword_27D73A730 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v122, qword_27D7417F0);
  v37 = v121;
  sub_2259CB588(v36, v121);
  v122 = v11;
  DIPSignpost.init(_:)(v37, v11);
  v125 = 0;
  v38 = SESKeyGetPTAttestationCASD();
  v39 = v125;
  v40 = v125;
  v41 = v40;
  if (v38)
  {
    v116 = v33;
    v42 = sub_225CCCFA4();
    v44 = v43;

    if (v41)
    {
      v113 = v34;
      goto LABEL_12;
    }

    if (v44 >> 60 != 15)
    {
      v103 = v122;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v103);
      return v42;
    }

LABEL_18:
    v121 = 0x8000000225D1A7B0;
    v72 = MEMORY[0x277D84F90];
    v73 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v75 = v74;
    v76 = sub_225CCE954();
    v77 = *(v76 - 8);
    v78 = v115;
    (*(v77 + 56))(v115, 1, 1, v76);
    LODWORD(v76) = (*(v77 + 48))(v78, 1, v76);
    sub_2259CB640(v78, &unk_27D73B050);
    if (v76)
    {
      v79 = 204;
    }

    else
    {
      v79 = 23;
    }

    v80 = sub_225B2C374(v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v80;
    sub_225B2C4A0(v73, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v125);

    v82 = v125;
    v83 = sub_225B29AA0(0, 1, 1, v72);
    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
    }

    v42 = v122;
    *(v83 + 2) = v85 + 1;
    v86 = &v83[56 * v85];
    *(v86 + 4) = 0xD000000000000029;
    *(v86 + 5) = 0x8000000225D1A8C0;
    *(v86 + 6) = 0xD00000000000001FLL;
    *(v86 + 7) = v121;
    *(v86 + 8) = 0xD000000000000014;
    *(v86 + 9) = 0x8000000225D1A930;
    *(v86 + 10) = 174;
    *v75 = v79;
    *(v75 + 8) = v83;
    *(v75 + 16) = 0xD000000000000029;
    *(v75 + 24) = 0x8000000225D1A8C0;
    *(v75 + 32) = v82;
    *(v75 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  if (!v40)
  {
    goto LABEL_18;
  }

  v113 = v34;
  v116 = v33;
  v42 = 0;
  v44 = 0xF000000000000000;
LABEL_12:
  v45 = v120;
  os_unfair_lock_lock(&v21[v120]);
  (v117)(v17, &v21[v119], v12);
  os_unfair_lock_unlock(&v21[v45]);
  v46 = v41;
  v47 = sub_225CCD934();
  v48 = sub_225CCED14();

  v49 = os_log_type_enabled(v47, v48);
  v115 = v42;
  v114 = v44;
  v121 = v39;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v120 = v12;
    v51 = v50;
    v52 = swift_slowAlloc();
    v125 = v52;
    *v51 = 136315138;
    v53 = [v46 localizedDescription];
    v54 = sub_225CCE474();
    v55 = v17;
    v57 = v56;

    v58 = sub_2259BE198(v54, v57, &v125);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_2259A7000, v47, v48, "Error from getCASDCertificate: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AA6F950](v52, -1, -1);
    MEMORY[0x22AA6F950](v51, -1, -1);

    v59 = v55;
    v60 = v120;
  }

  else
  {

    v59 = v17;
    v60 = v12;
  }

  v113(v59, v60);
  v120 = 0x8000000225D1A950;
  v118 = "sponse or an error";
  v117 = "error from SESKeyPublicKey";
  v61 = v46;
  v62 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v119 = swift_allocError();
  v64 = v63;
  swift_getErrorValue();
  v65 = v124;
  v66 = v61;
  sub_225B21FAC(v65, &v125);

  v67 = v126;
  if (v126)
  {
    v116 = v125;
    v68 = v128;
    v113 = v127;
    v70 = v129;
    v69 = v130;
    v71 = &v133;
  }

  else
  {
    v125 = v66;
    v87 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (!swift_dynamicCast())
    {
      v125 = v87;
      v104 = sub_225CCE954();
      v105 = v87;
      v106 = v112;
      v107 = swift_dynamicCast();
      v108 = *(v104 - 8);
      (*(v108 + 56))(v106, v107 ^ 1u, 1, v104);
      LODWORD(v104) = (*(v108 + 48))(v106, 1, v104);
      sub_2259CB640(v106, &unk_27D73B050);
      if (v104)
      {
        v109 = 204;
      }

      else
      {
        v109 = 23;
      }

      v116 = v109;
      v67 = MEMORY[0x277D84F90];
      v70 = sub_225B2C374(MEMORY[0x277D84F90]);
      v110 = v105;
      v113 = 0xD00000000000001DLL;
      v68 = v120;
      goto LABEL_27;
    }

    v88 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v90 = [v88 code];
    v91 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v91;
    *(inited + 40) = v90;
    v70 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);

    v92 = v87;
    v68 = 0;
    v113 = 0;
    v67 = MEMORY[0x277D84F90];
    v69 = 204;
    v71 = &v132;
  }

  *(v71 - 32) = v69;
LABEL_27:
  v93 = v118 | 0x8000000000000000;
  v94 = v117 | 0x8000000000000000;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v70;
  sub_225B2C4A0(v62, sub_225B2AC40, 0, v95, &v125);

  v96 = v125;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_225B29AA0(0, *(v67 + 2) + 1, 1, v67);
  }

  v98 = *(v67 + 2);
  v97 = *(v67 + 3);
  if (v98 >= v97 >> 1)
  {
    v67 = sub_225B29AA0((v97 > 1), v98 + 1, 1, v67);
  }

  *(v67 + 2) = v98 + 1;
  v99 = &v67[56 * v98];
  v100 = v120;
  *(v99 + 4) = 0xD00000000000001DLL;
  *(v99 + 5) = v100;
  *(v99 + 6) = 0xD00000000000001FLL;
  *(v99 + 7) = v93;
  *(v99 + 8) = 0xD000000000000014;
  *(v99 + 9) = v94;
  *(v99 + 10) = 171;
  *v64 = v116;
  v101 = v113;
  *(v64 + 8) = v67;
  *(v64 + 16) = v101;
  *(v64 + 24) = v68;
  *(v64 + 32) = v96;
  *(v64 + 40) = v121;
  swift_willThrow();

  sub_2259B97A8(v115, v114);
  v42 = v122;
LABEL_32:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v42);
  return v42;
}

unint64_t sub_225A76CE4(uint64_t a1, void *a2)
{
  v112 = a2;
  v111 = a1;
  v124 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v105 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v104 = &v104 - v7;
  v110 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v110, v8);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v113 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v104 - v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v26 = *(v16 + 16);
  v107 = v24;
  v115 = v15;
  v106 = v26;
  v26(v22, &v24[v23], v15);
  os_unfair_lock_unlock((v23 + v25));
  v27 = sub_225CCD934();
  v28 = sub_225CCED04();
  v29 = os_log_type_enabled(v27, v28);
  v114 = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "SESKeystore getACLConstraints", v30, 2u);
    v31 = v30;
    v14 = v114;
    MEMORY[0x22AA6F950](v31, -1, -1);
  }

  v32 = *(v16 + 8);
  v33 = v115;
  v109 = v16 + 8;
  v108 = v32;
  (v32)(v22, v115);
  if (qword_27D73A738 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v110, qword_27D741808);
  sub_2259CB588(v34, v10);
  DIPSignpost.init(_:)(v10, v14);
  v35 = sub_225CCCF74();
  v118 = 0;
  v36 = SESKeyGetAccessControlConstraints();

  v37 = v118;
  v38 = v118;
  v39 = v38;
  if (v36)
  {
    v40 = sub_225CCCFA4();
    v42 = v41;

    if (v39)
    {
      v111 = v40;
      v33 = v115;
      v43 = v113;
      goto LABEL_12;
    }

    if (v42 >> 60 != 15)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v14);
      return v40;
    }

LABEL_18:
    v115 = 0x8000000225D1A7B0;
    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v70 = v69;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    v73 = v105;
    (*(v72 + 56))(v105, 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v73, 1, v71);
    sub_2259CB640(v73, &unk_27D73B050);
    if (v71)
    {
      v74 = 205;
    }

    else
    {
      v74 = 23;
    }

    v75 = sub_225B2C374(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v75;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v118);

    v40 = v118;
    v77 = sub_225B29AA0(0, 1, 1, v67);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v77);
    }

    *(v77 + 2) = v79 + 1;
    v80 = &v77[56 * v79];
    *(v80 + 4) = 0xD000000000000029;
    *(v80 + 5) = 0x8000000225D1A970;
    *(v80 + 6) = 0xD00000000000001FLL;
    *(v80 + 7) = v115;
    *(v80 + 8) = 0xD000000000000016;
    *(v80 + 9) = 0x8000000225D1A9A0;
    *(v80 + 10) = 199;
    *v70 = v74;
    *(v70 + 8) = v77;
    *(v70 + 16) = 0xD000000000000029;
    *(v70 + 24) = 0x8000000225D1A970;
    *(v70 + 32) = v40;
    *(v70 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  v43 = v113;
  if (!v38)
  {
    goto LABEL_18;
  }

  v111 = 0;
  v42 = 0xF000000000000000;
LABEL_12:
  os_unfair_lock_lock((v23 + v25));
  v106(v43, &v107[v23], v33);
  os_unfair_lock_unlock((v23 + v25));
  v44 = v39;
  v45 = sub_225CCD934();
  v46 = v33;
  v47 = sub_225CCED14();

  v48 = os_log_type_enabled(v45, v47);
  v110 = v42;
  v112 = v37;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v118 = v50;
    *v49 = 136315138;
    v51 = [v44 localizedDescription];
    v52 = sub_225CCE474();
    v54 = v53;

    v55 = sub_2259BE198(v52, v54, &v118);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_2259A7000, v45, v47, "Error form SESKeyGetAccessControlConstraints: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA6F950](v50, -1, -1);
    MEMORY[0x22AA6F950](v49, -1, -1);

    v56 = v113;
  }

  else
  {

    v56 = v43;
  }

  (v108)(v56, v46);
  v115 = 0x8000000225D1A9C0;
  v108 = "ontrol returned a nil ACL";
  v57 = v44;
  v109 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v113 = swift_allocError();
  v59 = v58;
  swift_getErrorValue();
  v60 = v117;
  v61 = v57;
  sub_225B21FAC(v60, &v118);

  v62 = v119;
  if (v119)
  {
    v107 = v118;
    v63 = v121;
    v106 = v120;
    v65 = v122;
    v64 = v123;
    v66 = &v126;
  }

  else
  {
    v118 = v61;
    v81 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (!swift_dynamicCast())
    {
      v118 = v81;
      v97 = sub_225CCE954();
      v98 = v81;
      v99 = v104;
      v100 = swift_dynamicCast();
      v101 = *(v97 - 8);
      (*(v101 + 56))(v99, v100 ^ 1u, 1, v97);
      LODWORD(v101) = (*(v101 + 48))(v99, 1, v97);
      sub_2259CB640(v99, &unk_27D73B050);
      if (v101)
      {
        v102 = 205;
      }

      else
      {
        v102 = 23;
      }

      v107 = v102;
      v62 = MEMORY[0x277D84F90];
      v65 = sub_225B2C374(MEMORY[0x277D84F90]);
      v103 = v98;
      v106 = 0xD00000000000002CLL;
      v63 = v115;
      goto LABEL_27;
    }

    v82 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v84 = [v82 code];
    v85 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v85;
    *(inited + 40) = v84;
    v65 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);

    v86 = v81;
    v63 = 0;
    v106 = 0;
    v62 = MEMORY[0x277D84F90];
    v64 = 205;
    v66 = &v125;
  }

  *(v66 - 32) = v64;
LABEL_27:
  v40 = 0x8000000225D1A7B0;
  v87 = v108 | 0x8000000000000000;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v65;
  sub_225B2C4A0(v109, sub_225B2AC40, 0, v88, &v118);

  v89 = v118;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v62 = sub_225B29AA0(0, *(v62 + 2) + 1, 1, v62);
  }

  v91 = *(v62 + 2);
  v90 = *(v62 + 3);
  if (v91 >= v90 >> 1)
  {
    v62 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v62);
  }

  *(v62 + 2) = v91 + 1;
  v92 = &v62[56 * v91];
  v93 = v115;
  *(v92 + 4) = 0xD00000000000002CLL;
  *(v92 + 5) = v93;
  *(v92 + 6) = 0xD00000000000001FLL;
  *(v92 + 7) = 0x8000000225D1A7B0;
  *(v92 + 8) = 0xD000000000000016;
  *(v92 + 9) = v87;
  *(v92 + 10) = 196;
  *v59 = v107;
  v94 = v106;
  *(v59 + 8) = v62;
  *(v59 + 16) = v94;
  *(v59 + 24) = v63;
  *(v59 + 32) = v89;
  *(v59 + 40) = v112;
  swift_willThrow();

  sub_2259B97A8(v111, v110);
LABEL_32:
  v95 = v114;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v95);
  return v40;
}

unint64_t sub_225A779B0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v133 = a5;
  v137 = a4;
  v136 = a3;
  v135 = a2;
  v134 = a1;
  v148 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v126 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v124 = &v122 - v10;
  v11 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v139 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD954();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v138 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v122 - v24;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v26 = off_28105B918;
  v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v28));
  v29 = *(v19 + 16);
  v129 = v27;
  v128 = v19 + 16;
  v127 = v29;
  v29(v25, &v26[v27], v18);
  v130 = v28;
  os_unfair_lock_unlock(&v26[v28]);
  v30 = sub_225CCD934();
  v31 = sub_225CCED04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v19;
    v33 = v18;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2259A7000, v30, v31, "SESKeystore getAttestation", v34, 2u);
    v35 = v34;
    v18 = v33;
    v19 = v32;
    MEMORY[0x22AA6F950](v35, -1, -1);
  }

  v37 = *(v19 + 8);
  v36 = (v19 + 8);
  v131 = v37;
  v37(v25, v18);
  if (qword_27D73A740 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v11, qword_27D741820);
  sub_2259CB588(v38, v14);
  DIPSignpost.init(_:)(v14, v139);
  v39 = v133;
  v40 = *(v133 + 16);
  v132 = v36;
  if (v40)
  {
    v125 = v18;
    v142 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v40, 0);
    v41 = v142;
    v42 = v39 + 32;
    do
    {
      ++v42;
      v43 = sub_225CCE474();
      v142 = v41;
      v46 = v41[2];
      v45 = v41[3];
      if (v46 >= v45 >> 1)
      {
        v133 = v43;
        v123 = v44;
        sub_2259D52A4((v45 > 1), v46 + 1, 1);
        v43 = v133;
        v44 = v123;
        v41 = v142;
      }

      v41[2] = v46 + 1;
      v47 = &v41[2 * v46];
      v47[4] = v43;
      v47[5] = v44;
      --v40;
    }

    while (v40);
    v18 = v125;
  }

  v48 = sub_225CCCF74();
  v49 = sub_225CCE444();
  v50 = sub_225CCE7F4();
  v142 = 0;
  v51 = SESKeyCreatePTAttestation();

  v52 = v142;
  v53 = v142;
  v54 = v53;
  if (v51)
  {
    v55 = sub_225CCCFA4();
    v57 = v56;

    if (v54)
    {
      v137 = v52;
      v58 = v138;
      goto LABEL_18;
    }

    if (v57 >> 60 != 15)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v58 = v138;
    if (v53)
    {
      v137 = v52;
      v55 = 0;
      v57 = 0xF000000000000000;
LABEL_18:
      v59 = v130;
      os_unfair_lock_lock(&v26[v130]);
      v127(v58, &v26[v129], v18);
      os_unfair_lock_unlock(&v26[v59]);

      v60 = v54;
      v61 = sub_225CCD934();
      v62 = sub_225CCED14();

      v63 = os_log_type_enabled(v61, v62);
      v136 = v55;
      v135 = v57;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v142 = v65;
        *v64 = 136315138;
        v66 = v18;
        v67 = [v60 localizedDescription];
        v68 = sub_225CCE474();
        v70 = v69;

        v71 = sub_2259BE198(v68, v70, &v142);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_2259A7000, v61, v62, "Error from SESKeyCreatePTAttestation: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA6F950](v65, -1, -1);
        MEMORY[0x22AA6F950](v64, -1, -1);

        v131(v138, v66);
      }

      else
      {

        v131(v58, v18);
      }

      v138 = 0x8000000225D1AA50;
      v133 = "sponse or an error";
      v132 = "tesation returned a nil result";
      v72 = v60;
      v73 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v134 = swift_allocError();
      v75 = v74;
      swift_getErrorValue();
      v76 = v141;
      v77 = v72;
      sub_225B21FAC(v76, &v142);

      v78 = v143;
      if (v143)
      {
        v131 = v142;
        v79 = v145;
        v130 = v144;
        v81 = v146;
        v80 = v147;
        v82 = &v150;
      }

      else
      {
        v142 = v77;
        v83 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (!swift_dynamicCast())
        {
          v142 = v83;
          v115 = sub_225CCE954();
          v116 = v83;
          v117 = v124;
          v118 = swift_dynamicCast();
          v119 = *(v115 - 8);
          (*(v119 + 56))(v117, v118 ^ 1u, 1, v115);
          LODWORD(v119) = (*(v119 + 48))(v117, 1, v115);
          sub_2259CB640(v117, &unk_27D73B050);
          if (v119)
          {
            v120 = 202;
          }

          else
          {
            v120 = 23;
          }

          v131 = v120;
          v78 = MEMORY[0x277D84F90];
          v81 = sub_225B2C374(MEMORY[0x277D84F90]);
          v121 = v116;
          v130 = 0xD000000000000024;
          v79 = v138;
          goto LABEL_28;
        }

        v84 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v86 = [v84 code];
        v87 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v87;
        *(inited + 40) = v86;
        v81 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v88 = v83;
        v79 = 0;
        v130 = 0;
        v78 = MEMORY[0x277D84F90];
        v80 = 202;
        v82 = &v149;
      }

      *(v82 - 32) = v80;
LABEL_28:
      v55 = v133 | 0x8000000000000000;
      v89 = v132 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = v81;
      sub_225B2C4A0(v73, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v142);

      v91 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_225B29AA0(0, *(v78 + 2) + 1, 1, v78);
      }

      v93 = *(v78 + 2);
      v92 = *(v78 + 3);
      if (v93 >= v92 >> 1)
      {
        v78 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v78);
      }

      *(v78 + 2) = v93 + 1;
      v94 = &v78[56 * v93];
      v95 = v138;
      *(v94 + 4) = 0xD000000000000024;
      *(v94 + 5) = v95;
      *(v94 + 6) = 0xD00000000000001FLL;
      *(v94 + 7) = v55;
      *(v94 + 8) = 0xD00000000000002BLL;
      *(v94 + 9) = v89;
      *(v94 + 10) = 222;
      *v75 = v131;
      v96 = v130;
      *(v75 + 8) = v78;
      *(v75 + 16) = v96;
      *(v75 + 24) = v79;
      *(v75 + 32) = v91;
      *(v75 + 40) = v137;
      swift_willThrow();

      sub_2259B97A8(v136, v135);
      goto LABEL_40;
    }
  }

  v55 = 0x8000000225D1A9F0;
  v138 = 0x8000000225D1A7B0;
  v97 = MEMORY[0x277D84F90];
  v98 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v100 = v99;
  v101 = sub_225CCE954();
  v102 = *(v101 - 8);
  v103 = v126;
  (*(v102 + 56))(v126, 1, 1, v101);
  LODWORD(v101) = (*(v102 + 48))(v103, 1, v101);
  sub_2259CB640(v103, &unk_27D73B050);
  if (v101)
  {
    v104 = 202;
  }

  else
  {
    v104 = 23;
  }

  v105 = sub_225B2C374(v97);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v105;
  sub_225B2C4A0(v98, sub_225B2AC40, 0, v106, &v142);

  v107 = v142;
  v108 = sub_225B29AA0(0, 1, 1, v97);
  v110 = *(v108 + 2);
  v109 = *(v108 + 3);
  if (v110 >= v109 >> 1)
  {
    v108 = sub_225B29AA0((v109 > 1), v110 + 1, 1, v108);
  }

  *(v108 + 2) = v110 + 1;
  v111 = &v108[56 * v110];
  *(v111 + 4) = 0xD00000000000002ELL;
  *(v111 + 5) = 0x8000000225D1A9F0;
  v112 = v138;
  *(v111 + 6) = 0xD00000000000001FLL;
  *(v111 + 7) = v112;
  *(v111 + 8) = 0xD00000000000002BLL;
  *(v111 + 9) = 0x8000000225D1AA20;
  *(v111 + 10) = 225;
  *v100 = v104;
  *(v100 + 8) = v108;
  *(v100 + 16) = 0xD00000000000002ELL;
  *(v100 + 24) = 0x8000000225D1A9F0;
  *(v100 + 32) = v107;
  *(v100 + 40) = 0;
  swift_willThrow();
LABEL_40:
  v113 = v139;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v113);
  return v55;
}

uint64_t sub_225A78810(unint64_t a1, void *a2)
{
  v95 = a2;
  v94 = a1;
  v105 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v85 = &v84 - v4;
  v93 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v93, v5);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v96 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v84 - v17;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  v22 = *(v12 + 16);
  v88 = v20;
  v87 = v22;
  v22(v18, &v19[v20], v11);
  v89 = v21;
  os_unfair_lock_unlock(&v19[v21]);
  v23 = sub_225CCD934();
  v24 = sub_225CCED04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v91 = v12;
    v26 = v10;
    v27 = v25;
    *v25 = 0;
    _os_log_impl(&dword_2259A7000, v23, v24, "SESKeystore deleteKey", v25, 2u);
    v28 = v27;
    v10 = v26;
    v12 = v91;
    MEMORY[0x22AA6F950](v28, -1, -1);
  }

  v30 = *(v12 + 8);
  v29 = v12 + 8;
  v90 = v30;
  v30(v18, v11);
  if (qword_27D73A748 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v93, qword_27D741838);
  v32 = v92;
  sub_2259CB588(v31, v92);
  DIPSignpost.init(_:)(v32, v10);
  v33 = sub_225CCCF74();
  v99 = 0;
  SESKeyDelete();

  v34 = v96;
  if (!v99)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v51 = v10;
    return sub_2259CB6A0(v51);
  }

  v95 = v99;
  v35 = v99;
  v36 = v89;
  os_unfair_lock_lock(&v19[v89]);
  v87(v34, &v19[v88], v11);
  os_unfair_lock_unlock(&v19[v36]);
  v37 = v35;
  v38 = v11;
  v39 = v37;
  v40 = sub_225CCD934();
  v41 = sub_225CCED14();

  v42 = os_log_type_enabled(v40, v41);
  v86 = v10;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v99 = v44;
    *v43 = 136315138;
    v45 = [v39 localizedDescription];
    v94 = v38;
    v46 = v45;
    v47 = sub_225CCE474();
    v91 = v29;
    v49 = v48;

    v50 = sub_2259BE198(v47, v49, &v99);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_2259A7000, v40, v41, "Error from SESKeyDelete: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AA6F950](v44, -1, -1);
    MEMORY[0x22AA6F950](v43, -1, -1);

    v90(v96, v94);
  }

  else
  {

    v90(v34, v38);
  }

  v52 = v39;
  v93 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v96 = swift_allocError();
  v54 = v53;
  swift_getErrorValue();
  v55 = v98;
  v56 = v52;
  sub_225B21FAC(v55, &v99);

  v57 = v100;
  v94 = 0x8000000225D1AA80;
  if (v100)
  {
    v92 = v99;
    v59 = v101;
    v58 = v102;
    v61 = v103;
    v60 = v104;
    v62 = &v107;
  }

  else
  {
    v99 = v56;
    v63 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (!swift_dynamicCast())
    {
      v99 = v63;
      v77 = sub_225CCE954();
      v78 = v63;
      v79 = v85;
      v80 = swift_dynamicCast();
      v81 = *(v77 - 8);
      (*(v81 + 56))(v79, v80 ^ 1u, 1, v77);
      LODWORD(v81) = (*(v81 + 48))(v79, 1, v77);
      sub_2259CB640(v79, &unk_27D73B050);
      if (v81)
      {
        v82 = 201;
      }

      else
      {
        v82 = 23;
      }

      v92 = v82;
      v57 = MEMORY[0x277D84F90];
      v61 = sub_225B2C374(MEMORY[0x277D84F90]);
      v83 = v78;
      v58 = 0x8000000225D1AA80;
      v59 = 0xD000000000000017;
      goto LABEL_17;
    }

    v64 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v66 = [v64 code];
    v67 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v67;
    *(inited + 40) = v66;
    v61 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);

    v68 = v63;
    v58 = 0;
    v59 = 0;
    v57 = MEMORY[0x277D84F90];
    v60 = 201;
    v62 = &v106;
  }

  *(v62 - 32) = v60;
LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = v61;
  sub_225B2C4A0(v93, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v99);

  v70 = v99;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_225B29AA0(0, *(v57 + 2) + 1, 1, v57);
  }

  v72 = *(v57 + 2);
  v71 = *(v57 + 3);
  if (v72 >= v71 >> 1)
  {
    v57 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v57);
  }

  *(v57 + 2) = v72 + 1;
  v73 = &v57[56 * v72];
  v74 = v94;
  *(v73 + 4) = 0xD000000000000017;
  *(v73 + 5) = v74;
  *(v73 + 6) = 0xD00000000000001FLL;
  *(v73 + 7) = 0x8000000225D1A7B0;
  strcpy(v73 + 64, "deleteKey(_:)");
  *(v73 + 39) = -4864;
  *(v73 + 10) = 245;
  *v54 = v92;
  *(v54 + 8) = v57;
  *(v54 + 16) = v59;
  *(v54 + 24) = v58;
  *(v54 + 32) = v70;
  *(v54 + 40) = v95;
  swift_willThrow();

  v75 = v86;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v51 = v75;
  return sub_2259CB6A0(v51);
}

unint64_t sub_225A79248(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4)
{
  v125 = a3;
  v124 = a2;
  v123 = a1;
  v135 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v115 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v114 = &v113 - v10;
  v122 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v122, v11);
  v121 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v126 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v113 - v23;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  v28 = *(v17 + 16);
  v118 = v26;
  v117 = v17 + 16;
  v116 = v28;
  v28(v24, &v25[v26], v16);
  v119 = v27;
  os_unfair_lock_unlock(&v25[v27]);
  v29 = sub_225CCD934();
  v30 = sub_225CCED04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v113 = a4;
    v32 = v21;
    v33 = v17;
    v34 = v16;
    v35 = v31;
    *v31 = 0;
    _os_log_impl(&dword_2259A7000, v29, v30, "SESKeystore changeACL", v31, 2u);
    v36 = v35;
    v16 = v34;
    v17 = v33;
    v21 = v32;
    MEMORY[0x22AA6F950](v36, -1, -1);
  }

  v39 = *(v17 + 8);
  v38 = v17 + 8;
  v37 = v39;
  v120 = v16;
  v39(v24, v16);
  if (qword_27D73A750 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v122, qword_27D741850);
  v41 = v121;
  sub_2259CB588(v40, v121);
  DIPSignpost.init(_:)(v41, v126);
  v42 = sub_225CCCF74();
  v43 = sub_225CCCF74();
  v129 = 0;
  v44 = SESKeyUpdateACL();

  v45 = v129;
  v46 = v129;
  v47 = v46;
  if (v44)
  {
    v124 = v37;
    v48 = sub_225CCCFA4();
    v50 = v49;

    if (!v47)
    {
      if (v50 >> 60 != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v46)
    {
LABEL_18:
      v125 = 0x8000000225D1A7B0;
      v75 = MEMORY[0x277D84F90];
      v76 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v78 = v77;
      v79 = sub_225CCE954();
      v80 = *(v79 - 8);
      v81 = v115;
      (*(v80 + 56))(v115, 1, 1, v79);
      LODWORD(v79) = (*(v80 + 48))(v81, 1, v79);
      sub_2259CB640(v81, &unk_27D73B050);
      if (v79)
      {
        v82 = 206;
      }

      else
      {
        v82 = 23;
      }

      v83 = sub_225B2C374(v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v83;
      sub_225B2C4A0(v76, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v129);

      v85 = v129;
      v86 = sub_225B29AA0(0, 1, 1, v75);
      v48 = *(v86 + 2);
      v87 = *(v86 + 3);
      if (v48 >= v87 >> 1)
      {
        v86 = sub_225B29AA0((v87 > 1), v48 + 1, 1, v86);
      }

      *(v86 + 2) = v48 + 1;
      v88 = &v86[56 * v48];
      *(v88 + 4) = 0xD000000000000025;
      *(v88 + 5) = 0x8000000225D1AAA0;
      *(v88 + 6) = 0xD00000000000001FLL;
      *(v88 + 7) = v125;
      *(v88 + 8) = 0xD000000000000026;
      *(v88 + 9) = 0x8000000225D1AAD0;
      *(v88 + 10) = 271;
      *v78 = v82;
      *(v78 + 8) = v86;
      *(v78 + 16) = 0xD000000000000025;
      *(v78 + 24) = 0x8000000225D1AAA0;
      *(v78 + 32) = v85;
      *(v78 + 40) = 0;
      swift_willThrow();
      goto LABEL_36;
    }

    v124 = v37;
    v48 = 0;
    v50 = 0xF000000000000000;
  }

  v51 = v119;
  os_unfair_lock_lock(&v119[v25]);
  v52 = v120;
  v116(v21, &v25[v118], v120);
  os_unfair_lock_unlock(&v51[v25]);
  v53 = v47;
  v54 = sub_225CCD934();
  v55 = sub_225CCED14();

  v56 = os_log_type_enabled(v54, v55);
  v123 = v48;
  v122 = v50;
  v125 = v45;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v121 = v38;
    v59 = v58;
    v129 = v58;
    *v57 = 136315138;
    v60 = [v53 localizedDescription];
    v61 = sub_225CCE474();
    v62 = v21;
    v64 = v63;

    v65 = sub_2259BE198(v61, v64, &v129);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_2259A7000, v54, v55, "Error from SESKeyUpdateACL: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x22AA6F950](v59, -1, -1);
    MEMORY[0x22AA6F950](v57, -1, -1);

    v124(v62, v120);
  }

  else
  {

    v124(v21, v52);
  }

  v120 = "returned a nil result";
  v66 = v53;
  v67 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v124 = swift_allocError();
  v69 = v68;
  swift_getErrorValue();
  v70 = v128;
  v71 = v66;
  sub_225B21FAC(v70, &v129);

  v72 = v130;
  v121 = 0x8000000225D1AB00;
  if (v130)
  {
    v119 = v129;
    v73 = v132;
    v118 = v131;
    v74 = v133;
    v125 = v134;
  }

  else
  {
    v117 = v67;
    v129 = v71;
    v89 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v90 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v92 = [v90 code];
      v93 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v93;
      *(inited + 40) = v92;
      v74 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v94 = v89;
      v73 = 0;
      v118 = 0;
      v72 = MEMORY[0x277D84F90];
      v95 = 206;
      v96 = &v137;
    }

    else
    {
      v129 = v89;
      v97 = sub_225CCE954();
      v98 = v89;
      v99 = v114;
      v100 = swift_dynamicCast();
      v101 = *(v97 - 8);
      (*(v101 + 56))(v99, v100 ^ 1u, 1, v97);
      LODWORD(v101) = (*(v101 + 48))(v99, 1, v97);
      sub_2259CB640(v99, &unk_27D73B050);
      if (v101)
      {
        v102 = 206;
      }

      else
      {
        v102 = 23;
      }

      v119 = v102;
      v72 = MEMORY[0x277D84F90];
      v74 = sub_225B2C374(MEMORY[0x277D84F90]);
      v103 = v98;
      v73 = 0x8000000225D1AB00;
      v95 = 0xD00000000000001ALL;
      v96 = &v136;
    }

    *(v96 - 32) = v95;
    v67 = v117;
  }

  v104 = v120 | 0x8000000000000000;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v129 = v74;
  sub_225B2C4A0(v67, sub_225B2AC40, 0, v105, &v129);

  v48 = v129;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_225B29AA0(0, *(v72 + 2) + 1, 1, v72);
  }

  v107 = *(v72 + 2);
  v106 = *(v72 + 3);
  if (v107 >= v106 >> 1)
  {
    v72 = sub_225B29AA0((v106 > 1), v107 + 1, 1, v72);
  }

  *(v72 + 2) = v107 + 1;
  v108 = &v72[56 * v107];
  v109 = v121;
  *(v108 + 4) = 0xD00000000000001ALL;
  *(v108 + 5) = v109;
  *(v108 + 6) = 0xD00000000000001FLL;
  *(v108 + 7) = 0x8000000225D1A7B0;
  *(v108 + 8) = 0xD000000000000026;
  *(v108 + 9) = v104;
  *(v108 + 10) = 268;
  *v69 = v119;
  v110 = v118;
  *(v69 + 8) = v72;
  *(v69 + 16) = v110;
  *(v69 + 24) = v73;
  *(v69 + 32) = v48;
  *(v69 + 40) = v125;
  swift_willThrow();

  sub_2259B97A8(v123, v122);
LABEL_36:
  v111 = v126;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v111);
  return v48;
}