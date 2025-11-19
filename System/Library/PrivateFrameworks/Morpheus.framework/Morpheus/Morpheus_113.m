BOOL sub_25A8DE4D8(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v10 = sub_25A998C18();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25A998C08();
      v13 = v12 + __clz(__rbit32(v5 | 0x10000));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (v14 == -8)
          {
            goto LABEL_13;
          }

          v15 = LOBYTE(a2) >> (v13 - v11);
LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          v6 = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 17) < 0xFFFFFFFFFFFFFFDFLL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x10)
          {
LABEL_22:
            v15 = LODWORD(a2) << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 > 0xFFFFFFFFFFFFFFF0)
      {
        v15 = v5 >> (v13 - v11);
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
  result = 0;
  v6 = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25A8DE634(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (v3 | v4)
  {
    if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
    {
      v9 = sub_25A998C18();
      if (v9 <= 15)
      {
        v10 = v9;
        v11 = sub_25A998C08();
        v12 = v11 + __clz(__rbit32(v4 | 0x10000));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v12 > 15)
          {
            if (v13 < -16 || v13 > 16)
            {
              goto LABEL_16;
            }
          }

          else if (v13 < -16 || v13 > 16)
          {
            goto LABEL_16;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 != 16)
            {
              v14 = v4 << v13;
              if (v10 < 0)
              {
LABEL_21:
                LOWORD(v15) = 0;
                goto LABEL_27;
              }

LABEL_26:
              v15 = 1 << v10;
              goto LABEL_27;
            }

            goto LABEL_16;
          }
        }

        if (v13 != -16)
        {
          v14 = v4 >> (v12 - v10);
          if (v10 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }

LABEL_16:
        LOWORD(v14) = 0;
        LOWORD(v15) = 0;
        if (v10 < 0)
        {
LABEL_27:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    v7 = 0;
    result = 0;
    v5 = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_28:
  *a1 = v7;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25A8DE768(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25A998C18();
    if (v9 <= 31)
    {
      v10 = v9;
      v11 = sub_25A998C08();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_13:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v13 < 0)
          {
            if (v13 == -32)
            {
              goto LABEL_13;
            }

            v14 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            v14 = v4 << v13;
          }

LABEL_23:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v15 = 1 << v10;
            goto LABEL_26;
          }

          v15 = 0;
LABEL_26:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_27;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
LABEL_16:
          v14 = 0;
          goto LABEL_23;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            v14 = (v4 << v13);
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        v14 = (v4 >> (v12 - v10));
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_27:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25A8DE8CC(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | LOBYTE(a2);
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25A998C18();
    if (v9 <= 63)
    {
      v10 = v9;
      v11 = sub_25A998C08();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 63)
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_13:
            v13 = 0;
            v14 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v13 < 0)
          {
            if (v13 == -64)
            {
              goto LABEL_13;
            }

            v13 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 64)
            {
              goto LABEL_13;
            }

            v13 = v4 << v13;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v14 = 1 << v10;
            goto LABEL_24;
          }

          v14 = 0;
LABEL_24:
          v5 = 0;
          result = v10 >= v11;
          v7 = v13 | v14;
          goto LABEL_25;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
          goto LABEL_16;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            LODWORD(v13) = v4 << v13;
            goto LABEL_20;
          }

LABEL_16:
          LOWORD(v13) = 0;
LABEL_20:
          v13 = v13;
          goto LABEL_21;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        LODWORD(v13) = v4 >> (v12 - v10);
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_25:
  *a1 = v7;
  *(a1 + 8) = v5;
  return result;
}

BOOL sub_25A8DEA2C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    LOBYTE(v14) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v4 == 31 || (v7 = sub_25A998C18(), v7 > 7))
  {
LABEL_39:
    LOBYTE(v14) = 0;
    result = 0;
    v6 = 1;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_25A998C08();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5 | 0x10000));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v11 > 7)
  {
    if ((v12 - 17) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      if (v12 < 0)
      {
        if (v12 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v5 >> (v11 - v8);
LABEL_19:
          if (v8 != 7)
          {
            if (v8 < 0)
            {
              v13 = 0;
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_31:
          __asm { FCMP            H8, #0 }

          if (!_NF || v11)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }
      }

      else if (v12 < 0x10)
      {
LABEL_18:
        LODWORD(v11) = LODWORD(a2) << v12;
        goto LABEL_19;
      }
    }

    LODWORD(v11) = 0;
    goto LABEL_19;
  }

  if (v12 >= -8 && v12 <= 8)
  {
    if (v12 < 0)
    {
      if (v12 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v11) = LOBYTE(a2) >> (v11 - v8);
      goto LABEL_19;
    }

    if (v12 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 7)
  {
    goto LABEL_38;
  }

  v13 = 0;
  LODWORD(v11) = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v13 = 1 << v8;
  }

LABEL_23:
  v14 = v11 | v13;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v11 & 0x80) == 0)
    {
      v6 = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v11 & 0x80) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_39;
    }

LABEL_34:
    v6 = 0;
    LOBYTE(v14) = 0x80;
    goto LABEL_29;
  }

  v6 = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  a1[1] = v6;
  return result;
}

BOOL sub_25A8DEBDC(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    LOWORD(v11) = 0;
    result = 1;
    goto LABEL_26;
  }

  if (v3 == 31)
  {
    goto LABEL_29;
  }

  v6 = sub_25A998C18();
  if (v6 > 15)
  {
    goto LABEL_29;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit32(v4 | 0x10000));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
LABEL_28:
    __asm { FCMP            H8, #0 }

    if (_NF)
    {
LABEL_38:
      v5 = 0;
      LOWORD(v11) = 0x8000;
      goto LABEL_26;
    }

LABEL_29:
    LOWORD(v11) = 0;
    result = 0;
    v5 = 1;
    goto LABEL_26;
  }

  if (v10 > 15)
  {
    if (v11 < -16 || v11 > 16)
    {
      goto LABEL_11;
    }
  }

  else if (v11 < -16 || v11 > 16)
  {
    goto LABEL_11;
  }

  if (v11 < 0)
  {
    goto LABEL_33;
  }

  if (v11 != 16)
  {
    v13 = v4 << v11;
    if (v7 != 15)
    {
      goto LABEL_17;
    }

LABEL_35:
    __asm { FCMP            H8, #0 }

    if (_NF && !v13)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_11:
  if (v7 == 15)
  {
    goto LABEL_28;
  }

  v12 = 0;
  v13 = 0;
  if (v7 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v12 = 1 << v7;
LABEL_20:
  while (1)
  {
    v11 = v13 | v12;
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      break;
    }

    if ((v13 & 0x8000) == 0)
    {
      v5 = 0;
      LODWORD(v11) = -v11;
      goto LABEL_26;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (v11 == -16)
    {
      goto LABEL_11;
    }

    v13 = v4 >> -v11;
    if (v7 == 15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v12 = 0;
  }

  if ((v13 & 0x8000) != 0)
  {
    goto LABEL_32;
  }

  v5 = 0;
LABEL_26:
  *a1 = v11;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25A8DED68(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  LOBYTE(v5) = v3 | v4;
  if (!(v3 | v4))
  {
    v12 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v3 == 31)
  {
    goto LABEL_41;
  }

  v6 = sub_25A998C18();
  if (v6 > 31)
  {
    goto LABEL_41;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v5 = v8 + __clz(__rbit32(v4 | 0x10000));
  v10 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
    __break(1u);
LABEL_31:
    __asm { FCMP            H8, #0 }

    if (_NF && !v5)
    {
      v12 = 0x80000000;
      goto LABEL_29;
    }

LABEL_41:
    v12 = 0;
    result = 0;
    LOBYTE(v5) = 1;
    goto LABEL_29;
  }

  if (v5 > 31)
  {
    if ((v10 - 17) <= 0xFFFFFFFFFFFFFFDELL)
    {
LABEL_12:
      LODWORD(v5) = 0;
      goto LABEL_19;
    }

    if (v10 < 0)
    {
      if (v10 <= 0xFFFFFFFFFFFFFFF0)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = (v4 >> (v5 - v7));
    }

    else
    {
      if (v10 >= 0x10)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = (v4 << v10);
    }

LABEL_19:
    if (v7 != 31)
    {
      if (v7 < 0)
      {
        v11 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v10 >= -32 && v10 <= 32)
  {
    if (v10 < 0)
    {
      if (v10 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v5) = v4 >> (v5 - v7);
    }

    else
    {
      if (v10 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v5) = v4 << v10;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v7 == 31)
  {
    goto LABEL_38;
  }

  v11 = 0;
  LODWORD(v5) = 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v11 = 1 << v7;
  }

LABEL_23:
  v12 = v5 | v11;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v5 & 0x80000000) == 0)
    {
      LOBYTE(v5) = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (_NF)
    {
      LOBYTE(v5) = 0;
      v12 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_41;
  }

  LOBYTE(v5) = 0;
  v12 = -v12;
LABEL_29:
  *a1 = v12;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25A8DEF24(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | LOBYTE(a2);
  if (!(v3 | v4))
  {
    v11 = 0;
    result = 1;
    goto LABEL_33;
  }

  if (v3 == 31 || (v6 = sub_25A998C18(), v6 > 63))
  {
LABEL_46:
    v11 = 0;
    result = 0;
    v5 = 1;
    goto LABEL_33;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit32(v4 | 0x10000));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v10 > 63)
  {
    if ((v11 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v11 < 0)
      {
        if (v11 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v4 >> (v10 - v7);
          goto LABEL_17;
        }
      }

      else if (v11 < 0x10)
      {
        LODWORD(v11) = v4 << v11;
        goto LABEL_17;
      }
    }

    LOWORD(v11) = 0;
LABEL_17:
    v11 = v11;
LABEL_18:
    if (v7 != 63)
    {
      if (v7 > -65)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v17 = 1 << v7;
          goto LABEL_26;
        }

        if (v7 != -64)
        {
          v17 = 0;
LABEL_26:
          v11 |= v17;
        }
      }

      __asm { FCMP            H8, #0 }

      if (_NF)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      else if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_32:
        v5 = 0;
        goto LABEL_33;
      }

      __break(1u);
LABEL_45:
      __asm { FCMP            H8, #0 }

      if (!_NF)
      {
        goto LABEL_46;
      }

LABEL_41:
      v5 = 0;
      v11 = 0x8000000000000000;
      goto LABEL_33;
    }

LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF || v11)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  if (v11 >= -64 && v11 <= 64)
  {
    if (v11 < 0)
    {
      if (v11 == -64)
      {
        goto LABEL_8;
      }

      v11 = v4 >> (v10 - v7);
    }

    else
    {
      if (v11 == 64)
      {
        goto LABEL_8;
      }

      v11 = v4 << v11;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v7 == 63)
  {
    goto LABEL_45;
  }

  if (v7 < -64)
  {
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    goto LABEL_25;
  }

  if (v7 != -64)
  {
    v17 = 0;
    v11 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v11 = 0;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    goto LABEL_32;
  }

LABEL_30:
  v5 = 0;
  v11 = -v11;
LABEL_33:
  *a1 = v11;
  *(a1 + 8) = v5;
  return result;
}

void sub_25A8DF108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = mlx_array_new();
  v6 = Array<A>.asInt32.getter(a1);
  v7 = *(a1 + 16);
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = mlx_array_dtype(v8);
  v10 = sub_25A956420(v9);
  mlx_full(v11, v6 + 32, v7, v8, dword_25A9F95BC[v10], *(a3 + 16));
}

void sub_25A8DF1F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DF1FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DF214()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A8DF268(uint64_t a1)
{
  sub_25A8780B8(a1, &v7);
  if (v8)
  {
    sub_25A872D74(&v7, v9);
    v1 = sub_25A8F0FA0(v9, 13);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_25A878194(&v7, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v2 = sub_25A997BD8();
    __swift_project_value_buffer(v2, qword_27FA0FCE8);
    v3 = sub_25A997BB8();
    v1 = sub_25A9983A8();
    if (os_log_type_enabled(v3, v1))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25A232000, v3, v1, "Failed to convert to MLXArray", v4, 2u);
      MEMORY[0x25F852800](v4, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v5 = 37;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_25A8DF3E0(uint64_t a1)
{
  v2 = sub_25A9616CC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v4;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25A967754(0, v6[2] + 1, 1, v6);
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        v6 = sub_25A967754((v7 > 1), v8 + 1, 1, v6);
      }

      v6[2] = v8 + 1;
      v6[v8 + 4] = v4;
      --v5;
    }

    while (v5);
    *(v3 + 16) = v6;
  }

  v9 = MEMORY[0x277D84F90];
  sub_25A897F48(a1, MEMORY[0x277D84F90], v3, v2);

  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v17 = v9;
    sub_25A998748();
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;

      sub_25A955844(v14, 0);
      sub_25A998718();
      v15 = *(v17 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      --v11;
    }

    while (v11);

    return v17;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

char *sub_25A8DF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(a2, a3), (v5 & 1) == 0))
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_16;
  }

  v6 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
LABEL_16:
    sub_25A878194(&v23, &qword_27FA04728, &unk_25A9FD740);
    return 0;
  }

  v7 = v25;
  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  v9 = sub_25A92F774(v8);

  if (!v9)
  {
    return 0;
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v10 = sub_25A998848();
  if (!v10)
  {
LABEL_26:

    return MEMORY[0x277D84F90];
  }

LABEL_8:
  *&v23 = MEMORY[0x277D84F90];
  result = sub_25A937570(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v23;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = [MEMORY[0x25F8509C0](i v9)];
        swift_unknownObjectRelease();
        *&v23 = v12;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_25A937570((v15 > 1), v16 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v17 = (v9 + 32);
      do
      {
        v18 = [*v17 integerValue];
        *&v23 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v18;
          sub_25A937570((v19 > 1), v20 + 1, 1);
          v18 = v21;
          v12 = v23;
        }

        *(v12 + 16) = v20 + 1;
        *(v12 + 8 * v20 + 32) = v18;
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

id sub_25A8DF850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_25A8F3600(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v9);
  sub_25A873A9C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = [v8 integerValue];

  return v6;
}

unint64_t sub_25A8DF900()
{
  result = qword_27FA04958;
  if (!qword_27FA04958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04958);
  }

  return result;
}

unint64_t sub_25A8DF954()
{
  result = qword_27FA04960;
  if (!qword_27FA04960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04960);
  }

  return result;
}

unint64_t sub_25A8DF9A8()
{
  result = qword_27FA04968;
  if (!qword_27FA04968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04968);
  }

  return result;
}

unint64_t sub_25A8DF9FC()
{
  result = qword_27FA04970;
  if (!qword_27FA04970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04970);
  }

  return result;
}

unint64_t sub_25A8DFA50()
{
  result = qword_27FA04978;
  if (!qword_27FA04978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04978);
  }

  return result;
}

unint64_t sub_25A8DFAA4()
{
  result = qword_27FA04980;
  if (!qword_27FA04980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04980);
  }

  return result;
}

unint64_t sub_25A8DFAF8()
{
  result = qword_27FA04988;
  if (!qword_27FA04988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04988);
  }

  return result;
}

unint64_t sub_25A8DFB4C()
{
  result = qword_27FA04990;
  if (!qword_27FA04990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04990);
  }

  return result;
}

unint64_t sub_25A8DFBA0()
{
  result = qword_27FA04998;
  if (!qword_27FA04998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04998);
  }

  return result;
}

unint64_t sub_25A8DFBF4()
{
  result = qword_27FA049A0;
  if (!qword_27FA049A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049A0);
  }

  return result;
}

unint64_t sub_25A8DFC48()
{
  result = qword_27FA049A8;
  if (!qword_27FA049A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049A8);
  }

  return result;
}

unint64_t sub_25A8DFC9C()
{
  result = qword_27FA049B0;
  if (!qword_27FA049B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049B0);
  }

  return result;
}

unint64_t sub_25A8DFCF0()
{
  result = qword_27FA049B8;
  if (!qword_27FA049B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049B8);
  }

  return result;
}

unint64_t sub_25A8DFD44()
{
  result = qword_27FA049C0;
  if (!qword_27FA049C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049C0);
  }

  return result;
}

unint64_t sub_25A8DFD98()
{
  result = qword_27FA049C8;
  if (!qword_27FA049C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049C8);
  }

  return result;
}

unint64_t sub_25A8DFDEC()
{
  result = qword_27FA049D0;
  if (!qword_27FA049D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049D0);
  }

  return result;
}

unint64_t sub_25A8DFE40()
{
  result = qword_27FA049D8;
  if (!qword_27FA049D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049D8);
  }

  return result;
}

uint64_t sub_25A8DFE94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25A8DFECC()
{
  result = qword_27FA049F8;
  if (!qword_27FA049F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049F8);
  }

  return result;
}

unint64_t sub_25A8DFF20()
{
  result = qword_27FA04A00;
  if (!qword_27FA04A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A00);
  }

  return result;
}

uint64_t sub_25A8DFF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E7373616C63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656D614E7166;
    }

    else
    {
      v5 = 0x6D614E7373616C63;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x7365736162;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 2036625250;
    }

    else
    {
      v5 = 7303789;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7365736162;
  v9 = 0xE400000000000000;
  v10 = 2036625250;
  if (a2 != 3)
  {
    v10 = 7303789;
    v9 = 0xE300000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656D614E7166;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25A9989E8();
  }

  return v13 & 1;
}

uint64_t sub_25A8E00C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746567726174;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 7562857;
    }

    else
    {
      v4 = 0x636E7973417369;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1919251561;
    }

    else
    {
      v4 = 0x746567726174;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE300000000000000;
  v8 = 7562857;
  if (a2 != 2)
  {
    v8 = 0x636E7973417369;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1919251561;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8E01F4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E02C4()
{
  *v0;
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8E0380()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E044C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8E14C8();
  *a2 = result;
  return result;
}

void sub_25A8E047C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E7373616C63;
  v5 = 0xE500000000000000;
  v6 = 0x7365736162;
  v7 = 0xE400000000000000;
  v8 = 2036625250;
  if (v2 != 3)
  {
    v8 = 7303789;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D614E7166;
    v3 = 0xE600000000000000;
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

uint64_t sub_25A8E0508()
{
  v1 = *v0;
  v2 = 0x6D614E7373616C63;
  v3 = 0x7365736162;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 7303789;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E7166;
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

uint64_t sub_25A8E0590@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8E14C8();
  *a1 = result;
  return result;
}

uint64_t sub_25A8E05C4(uint64_t a1)
{
  v2 = sub_25A8E1148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E0600(uint64_t a1)
{
  v2 = sub_25A8E1148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8E0688(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A08, ".I\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E1148();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ClassDef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v12;
    LOBYTE(v16[0]) = 1;
    v1[7] = sub_25A9988F8();
    v1[8] = v13;
    v1[9] = sub_25A94B3A8(v9, 2);
    v17 = 3;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[10] = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    v17 = 4;
    sub_25A8E11F4();
    sub_25A998938();
    v1[11] = v16[0];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v1[12] = sub_25A8F4D24();
    sub_25A872F24(a1, v16);
    v3 = sub_25A8963D8(v16);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E0A84@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[10];
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = v4[4];
  swift_beginAccess();
  *(v6 + 32) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8 = v4[9];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v35 = v6;
    v37 = a1;
    v54 = MEMORY[0x277D84F90];
    v39 = v9;
    result = sub_25A9378A0(0, v9, 0);
    v12 = 0;
    v13 = (v8 + 40);
    v10 = v54;
    v41 = v8;
    v43 = v4;
    while (v12 < *(v8 + 16))
    {
      v44 = v12;
      v14 = v3;
      v15 = *(v13 - 1);
      v16 = *v13;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = v4[4];
      v20 = *(v16 + 48);
      swift_unknownObjectRetain();
      v20(Strong, v19, ObjectType, v16);
      (*(v16 + 64))(v47, ObjectType, v16);
      v3 = v14;
      if (v14)
      {
        goto LABEL_22;
      }

      sub_25A872C84(v47, v45);
      if (v46)
      {
        sub_25A872CE0(v45);
        v46 = v48;
        v45[0] = v47[0];
        v45[1] = v47[1];
        if (v48 != 1)
        {
          sub_25A872CE0(v45);
          v49 = 0u;
          v50 = 0u;
          v51 = 0;
LABEL_21:
          sub_25A8E10E0(&v49);
          sub_25A874F54();
          swift_allocError();
          *v34 = 118;
          swift_willThrow();
LABEL_22:

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_25A872CE0(v47);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
      }

      if (!*(&v50 + 1))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
      sub_25A87817C(&v49, &v52);
      v54 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25A9378A0((v21 > 1), v22 + 1, 1);
        v10 = v54;
      }

      v12 = v44 + 1;
      *(v10 + 16) = v22 + 1;
      result = sub_25A87817C(&v52, v10 + 40 * v22 + 32);
      v13 += 2;
      v8 = v41;
      v4 = v43;
      if (v39 == v44 + 1)
      {
        v6 = v35;
        a1 = v37;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_25A87A380(0, &v52);
    if (v3)
    {
    }

    else
    {
      v38 = a1;
      sub_25A872CE0(&v52);
      v23 = v4[5];
      v24 = v4[6];
      v25 = v4[8];
      v40 = v10;
      v42 = v4[7];
      v26 = v4;
      v27 = v4[11];
      v28 = v4[12];
      v36 = v27;
      v29 = type metadata accessor for PyCustomClass();
      v30 = swift_allocObject();
      v30[10] = v28;
      v30[2] = v23;
      v30[3] = v24;
      v30[4] = v42;
      v30[5] = v25;
      v30[6] = v40;
      v30[7] = v36;
      v30[8] = v6;
      v30[9] = &off_286C0F948;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = v26[4];
        v32 = swift_getObjectType();
        v53 = v29;
        *&v52 = v30;
        v33 = *(v31 + 64);

        v33(v23, v24, &v52, v32, v31);
        swift_unknownObjectRelease();

        result = __swift_destroy_boxed_opaque_existential_0Tm(&v52);
      }

      else
      {
      }

      *(v38 + 32) = 0;
      *v38 = 0u;
      *(v38 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_25A8E0F0C()
{
  sub_25A9985F8();

  MEMORY[0x25F850290](v0[5], v0[6]);
  MEMORY[0x25F850290](0x202020200A3ALL, 0xE600000000000000);
  v1 = v0[10];
  v2 = sub_25A87A5A4();
  v4 = sub_25A985514(v2, v3);
  v6 = v5;

  MEMORY[0x25F850290](v4, v6);

  MEMORY[0x25F850290](10, 0xE100000000000000);
  return 0x207373616C63;
}

uint64_t sub_25A8E0FE4()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];
}

uint64_t sub_25A8E1034()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E10E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047F8, L"D\a\t");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A8E1148()
{
  result = qword_27FA04A10;
  if (!qword_27FA04A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A10);
  }

  return result;
}

unint64_t sub_25A8E119C()
{
  result = qword_27FA04A18;
  if (!qword_27FA04A18)
  {
    type metadata accessor for LexicalBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A18);
  }

  return result;
}

unint64_t sub_25A8E11F4()
{
  result = qword_27FA04A20;
  if (!qword_27FA04A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04870, &qword_25A9F8EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassDef.StrideCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassDef.StrideCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8E13C4()
{
  result = qword_27FA04A28;
  if (!qword_27FA04A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A28);
  }

  return result;
}

unint64_t sub_25A8E141C()
{
  result = qword_27FA04A30;
  if (!qword_27FA04A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A30);
  }

  return result;
}

unint64_t sub_25A8E1474()
{
  result = qword_27FA04A38;
  if (!qword_27FA04A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A38);
  }

  return result;
}

uint64_t sub_25A8E14C8()
{
  v0 = sub_25A9988C8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8E1514(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7563378;
  }

  else
  {
    v4 = 0x746567726174;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7563378;
  }

  else
  {
    v6 = 0x746567726174;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A8E15B0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E1628()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8E168C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E1700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A8E1760(uint64_t *a1@<X8>)
{
  v2 = 7563378;
  if (!*v1)
  {
    v2 = 0x746567726174;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8E1794()
{
  if (*v0)
  {
    result = 7563378;
  }

  else
  {
    result = 0x746567726174;
  }

  *v0;
  return result;
}

uint64_t sub_25A8E17C4@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A8E1828(uint64_t a1)
{
  v2 = sub_25A8E1E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E1864(uint64_t a1)
{
  v2 = sub_25A8E1E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8E18EC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A40, &unk_25A9F97E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E1E8C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Assignment();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E58C(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A90E58C(v9, 1);
    v1[8] = v13;
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E1AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[7];
  v13 = v4[8];
  v14 = swift_getObjectType();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v4[4];
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);
  swift_unknownObjectRelease();
  v18 = v4[5];
  v19 = v4[6];
  v20 = swift_getObjectType();
  v21 = *(v19 + 64);
  swift_unknownObjectRetain();
  v21(v30, v20, v19);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A896580(v31);
    sub_25A872CE0(v30);
    v23 = v4[7];
    v24 = v4[8];
    v25 = swift_getObjectType();
    v26 = *(v24 + 64);
    swift_unknownObjectRetain();
    v26(v30, v25, v24);
    swift_unknownObjectRelease();
    sub_25A91185C(&v27);
    sub_25A872CE0(v30);
    if (v28)
    {
      sub_25A872D74(&v27, v29);
      sub_25A930C1C(v29, v31);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      result = sub_25A872D84(&v27);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A8E1D34()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];
  swift_getObjectType();
  v4 = *(v3 + 8);
  sub_25A9989B8();
  MEMORY[0x25F850290](2112800, 0xE300000000000000);
  v6 = v1[7];
  v5 = v1[8];
  swift_getObjectType();
  v7 = *(v5 + 8);
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A8E1DD0()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_unknownObjectRelease();
}

uint64_t sub_25A8E1E00()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8E1E8C()
{
  result = qword_27FA04A48;
  if (!qword_27FA04A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A48);
  }

  return result;
}

unint64_t sub_25A8E1EF4()
{
  result = qword_27FA04A50;
  if (!qword_27FA04A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A50);
  }

  return result;
}

unint64_t sub_25A8E1F4C()
{
  result = qword_27FA04A58;
  if (!qword_27FA04A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A58);
  }

  return result;
}

unint64_t sub_25A8E1FA4()
{
  result = qword_27FA04A60;
  if (!qword_27FA04A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A60);
  }

  return result;
}

uint64_t sub_25A8E2098@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v11 = static MorpheusUtils.isNil(_:)(a1);
  v12 = static MorpheusUtils.isNil(_:)(a3);
  if (v11 & 1) != 0 || (v12)
  {
    v29 = v11 & v12;
    v30 = sub_25A8E4760(a2);
    v32 = v31;
    if (v30 == 29029 && v31 == 0xE200000000000000)
    {
    }

    else
    {
      LODWORD(v77) = a2;
      v34 = v30;
      v35 = sub_25A9989E8();

      if ((v35 & 1) == 0)
      {
        if (v34 == 25966 && v32 == 0xE200000000000000)
        {
        }

        else
        {
          v36 = sub_25A9989E8();

          LOBYTE(a2) = v77;
          if ((v36 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        *(a4 + 24) = MEMORY[0x277D839B0];
        *a4 = (v29 & 1) == 0;
        return result;
      }
    }

    *(a4 + 24) = MEMORY[0x277D839B0];
    *a4 = v29 & 1;
    return result;
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_23;
  }

  sub_25A87500C(a1, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A90, &qword_25A9F9BA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_25A878194(&v72, &qword_27FA04A98, &qword_25A9F9BA8);
    goto LABEL_23;
  }

  sub_25A87817C(&v72, v75);
  sub_25A87500C(a3, v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_25A878194(&v69, &qword_27FA04A98, &qword_25A9F9BA8);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    goto LABEL_23;
  }

  v77 = v5;
  v64[1] = v4;
  v65 = a4;
  sub_25A87817C(&v69, &v72);
  v14 = v76;
  v15 = __swift_project_boxed_opaque_existential_1(v75, v76);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  sub_25A8E36E8(v18, v14, &v69);
  v20 = *(&v73 + 1);
  v21 = __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  sub_25A8E36E8(v24, v20, v66);
  if (a2 <= 2u)
  {
    v6 = v77;
    if (!a2)
    {
      v52 = *(&v70 + 1);
      v53 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      v28 = (*(v53 + 16))(v66, v52, v53);
      goto LABEL_71;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v26 = v67;
        v27 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v28 = (*(v27 + 24))(&v69, v26, v27);
LABEL_71:
        v58 = v65;
        *(v65 + 24) = MEMORY[0x277D839B0];
        v59 = v28 & 1;
        goto LABEL_72;
      }

      goto LABEL_67;
    }

    v56 = *(&v70 + 1);
    v57 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    v43 = (*(v57 + 16))(v66, v56, v57);
LABEL_69:
    v58 = v65;
    *(v65 + 24) = MEMORY[0x277D839B0];
    v59 = (v43 & 1) == 0;
LABEL_72:
    *v58 = v59;
    sub_25A8E6C6C(v66);
    sub_25A8E6C6C(&v69);
    goto LABEL_73;
  }

  v6 = v77;
  switch(a2)
  {
    case 3u:
      v54 = *(&v70 + 1);
      v55 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      v43 = (*(v55 + 24))(v66, v54, v55);
      goto LABEL_69;
    case 4u:
      v60 = *(&v70 + 1);
      v61 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      v28 = (*(v61 + 24))(v66, v60, v61);
      goto LABEL_71;
    case 5u:
      v41 = v67;
      v42 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v43 = (*(v42 + 24))(&v69, v41, v42);
      goto LABEL_69;
  }

LABEL_67:
  sub_25A8E6C6C(v66);
  sub_25A8E6C6C(&v69);
  __swift_destroy_boxed_opaque_existential_0Tm(&v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  a4 = v65;
LABEL_23:
  sub_25A87500C(a1, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_25A878194(&v72, &qword_27FA04750, "jN\a");
LABEL_34:
    sub_25A874F54();
    swift_allocError();
    *v38 = -123;
    return swift_willThrow();
  }

  sub_25A87817C(&v72, v75);
  sub_25A87500C(a3, v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_25A878194(&v69, &qword_27FA04750, "jN\a");
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    goto LABEL_34;
  }

  v37 = sub_25A87817C(&v69, &v72);
  if (a2 <= 2u)
  {
    if (!a2)
    {
      MEMORY[0x28223BE20](v37);
      sub_25A8E4BC4(sub_25A8E7310, v66);
      if (!v6)
      {
        if (!v67)
        {
          v44 = sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v44);
          sub_25A8E4BC4(sub_25A8E7334, v66);
          if (!v67)
          {
            sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
            v45 = v76;
            __swift_project_boxed_opaque_existential_1(v75, v76);
            *(&v70 + 1) = v45;
            __swift_allocate_boxed_opaque_existential_0(&v69);
            (*(*(v45 - 8) + 16))();
            v46 = *(&v73 + 1);
            __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
            v67 = v46;
            __swift_allocate_boxed_opaque_existential_0(v66);
            (*(*(v46 - 8) + 16))();
            if (static MorpheusUtils.isNil(_:)(&v69) & 1) != 0 && (static MorpheusUtils.isNil(_:)(v66))
            {
              v47 = 1;
            }

            else if (static MorpheusUtils.isNil(_:)(&v69) & 1) != 0 || (static MorpheusUtils.isNil(_:)(v66))
            {
              v47 = 0;
            }

            else
            {
              v62 = sub_25A9989D8();
              v63 = sub_25A9989D8();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v47 = v62 == v63;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v66);
            __swift_destroy_boxed_opaque_existential_0Tm(&v69);
            *(a4 + 24) = MEMORY[0x277D839B0];
            *a4 = v47;
            goto LABEL_73;
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (a2 == 1)
    {
      MEMORY[0x28223BE20](v37);
      sub_25A8E4BC4(sub_25A8E7310, v66);
      if (!v6)
      {
        if (v67)
        {
          goto LABEL_64;
        }

        v50 = sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
        MEMORY[0x28223BE20](v50);
        sub_25A8E4BC4(sub_25A8E7334, v66);
        if (v67)
        {
          goto LABEL_64;
        }

        sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A8E4DD0(a4);
      }

      goto LABEL_73;
    }

    if (a2 == 2)
    {
      MEMORY[0x28223BE20](v37);
      sub_25A8E4BC4(sub_25A8E7310, v66);
      if (!v6)
      {
        if (!v67)
        {
LABEL_62:
          v51 = sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v51);
          v40 = sub_25A8E7334;
          goto LABEL_63;
        }

LABEL_64:
        sub_25A872D74(v66, &v69);
        sub_25A872D74(&v69, a4);
        goto LABEL_73;
      }

      goto LABEL_73;
    }

LABEL_54:
    sub_25A874F54();
    swift_allocError();
    v49 = 16;
LABEL_55:
    *v48 = v49;
    swift_willThrow();
    goto LABEL_73;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      MEMORY[0x28223BE20](v37);
      sub_25A8E4BC4(sub_25A8E7310, v66);
      if (v6)
      {
        goto LABEL_73;
      }

      if (!v67)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (a2 == 5)
    {
      MEMORY[0x28223BE20](v37);
      sub_25A8E4BC4(sub_25A8E6C08, v66);
      if (!v6)
      {
        if (!v67)
        {
          v39 = sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v39);
          v40 = sub_25A8E6C2C;
LABEL_63:
          sub_25A8E4BC4(v40, v66);
          if (v67)
          {
            goto LABEL_64;
          }

          sub_25A878194(v66, &qword_27FA04458, &unk_25A9F7FB0);
          sub_25A874F54();
          swift_allocError();
          v49 = -123;
          goto LABEL_55;
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    goto LABEL_54;
  }

  MEMORY[0x28223BE20](v37);
  sub_25A8E4BC4(sub_25A8E7310, v66);
  if (!v6)
  {
    if (!v67)
    {
      goto LABEL_62;
    }

    goto LABEL_64;
  }

LABEL_73:
  __swift_destroy_boxed_opaque_existential_0Tm(&v72);
  return __swift_destroy_boxed_opaque_existential_0Tm(v75);
}

uint64_t sub_25A8E2F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_25A8E2FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _ConcreteComparableBox();
  v13 = sub_25A9983F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(v8 + 16))(v11, v4, a1);
  v18 = swift_dynamicCast();
  v19 = *(*(v12 - 8) + 56);
  if (v18)
  {
    v20 = *(v12 - 8);
    v19(v17, 0, 1, v12);
    v21 = *(a2 - 8);
    (*(v21 + 16))(a3, v17, a2);
    (*(v20 + 8))(v17, v12);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v19(v17, 1, 1, v12);
    (*(v14 + 8))(v17, v13);
    v21 = *(a2 - 8);
  }

  return (*(v21 + 56))(a3, v22, 1, a2);
}

uint64_t sub_25A8E3290(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_25A9983F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(a2 + 24);
  (*(v16 + 32))(v4, v17, v15, v16);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    (*(v6 + 8))(v10, v5);
    v18 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, v4);
    v19 = *(v17 + 8);
    v18 = sub_25A997DF8();
    (*(v11 + 8))(v14, v4);
  }

  return v18 & 1;
}

uint64_t sub_25A8E34AC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_25A9983F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 32))(v4, *(a2 + 24), v15, v16);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    (*(v6 + 8))(v10, v5);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, v4);
    v17 = sub_25A997D88();
    (*(v11 + 8))(v14, v4);
  }

  return v17 & 1;
}

uint64_t sub_25A8E36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for _ConcreteComparableBox();
  a3[4] = &off_286C10160;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_25A8E3770(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t sub_25A8E37CC(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(a2, v3, v4) & 1;
}

BOOL sub_25A8E3828(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return ((*(v4 + 24))(a1, v3, v4) & 1) == 0;
}

BOOL sub_25A8E388C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return ((*(v4 + 24))(a2, v3, v4) & 1) == 0;
}

uint64_t sub_25A8E38EC(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 24))(a1, v3, v4) & 1;
}

uint64_t sub_25A8E394C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A88, &qword_25A9F9B78);
  return sub_25A997EA8();
}

uint64_t static NSString.< infix(_:_:)()
{
  v0 = sub_25A997E28();
  v2 = v1;
  if (v0 == sub_25A997E28() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_25A9989E8();
  }

  return v4 & 1;
}

uint64_t sub_25A8E3A54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25A997E28();
  v6 = v5;
  if (v4 == sub_25A997E28() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t static Array<A>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_25A9983F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v32 - v17;
  v32[1] = a1;
  v32[2] = a2;
  v36 = a1;
  *&v40 = a2;
  v19 = sub_25A9981A8();
  WitnessTable = swift_getWitnessTable();
  sub_25A998A88();
  v40 = v41;
  v35 = v19;
  v36 = v19;
  v37 = v19;
  v38 = WitnessTable;
  v39 = WitnessTable;
  sub_25A998648();
  sub_25A998618();
  v34 = TupleTypeMetadata2 - 8;
  v21 = (v7 + 32);
  v22 = (v7 + 8);
  while (1)
  {
    v36 = v35;
    v37 = v35;
    v38 = WitnessTable;
    v39 = WitnessTable;
    sub_25A998638();
    sub_25A998628();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {

      v28 = _sSa8MorpheusE3lenSiyF_0();
      v29 = v28 < _sSa8MorpheusE3lenSiyF_0();
      return v29 & 1;
    }

    v23 = *(TupleTypeMetadata2 + 48);
    v24 = v11;
    v25 = *v21;
    (*v21)(v13, v18, a3);
    v25(v24, &v18[v23], a3);
    v11 = v24;
    v26 = *(v33 + 8);
    if ((sub_25A997DF8() & 1) == 0)
    {
      break;
    }

    v27 = *v22;
    (*v22)(v24, a3);
    v27(v13, a3);
  }

  v29 = sub_25A997D88();
  v30 = *v22;
  (*v22)(v24, a3);
  v30(v13, a3);
  return v29 & 1;
}

uint64_t static SharedMutableArray<A>.== infix(_:_:)()
{
  v1 = sub_25A9533D4();
  v2 = *(v0 + 80);
  v11 = sub_25A9981A8();
  v10[0] = v1;
  v9 = v11;
  v8[0] = sub_25A9533D4();

  v3 = static MorpheusUtils.isNil(_:)(v10);
  v4 = static MorpheusUtils.isNil(_:)(v8);
  v5 = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(v8, v9);
    if (DynamicType == swift_getDynamicType())
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v5 = sub_25A9390C4(v10, v8);
    }

    else
    {
      v5 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v5 & 1;
}

uint64_t sub_25A8E3FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static SharedMutableArray<A>.== infix(_:_:)();
}

uint64_t sub_25A8E3FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7565423;
  if (v2 != 1)
  {
    v4 = 0x74617261706D6F63;
    v3 = 0xEB0000000073726FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7565423;
  if (*a2 != 1)
  {
    v8 = 0x74617261706D6F63;
    v7 = 0xEB0000000073726FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8E40E0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E417C()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8E4204()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E429C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8E7294();
  *a2 = result;
  return result;
}

void sub_25A8E42CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7565423;
  if (v2 != 1)
  {
    v5 = 0x74617261706D6F63;
    v4 = 0xEB0000000073726FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8E4324()
{
  v1 = 7565423;
  if (*v0 != 1)
  {
    v1 = 0x74617261706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_25A8E4378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8E7294();
  *a1 = result;
  return result;
}

uint64_t sub_25A8E43A0(uint64_t a1)
{
  v2 = sub_25A8E6CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E43DC(uint64_t a1)
{
  v2 = sub_25A8E6CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8E4464(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA8, &qword_25A9F9BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E6CB4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Comparison();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E5B4(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A946CD4(v9, 1);
    v1[8] = sub_25A946CD4(v9, 2);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E4694(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 28265;
    v6 = 29545;
    if (a1 != 8)
    {
      v6 = 0x746F6E207369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 15676;
    if (a1 != 5)
    {
      v7 = 0x6E6920746F6ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 15677;
    v2 = 62;
    v3 = 15678;
    if (a1 != 3)
    {
      v3 = 60;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 15649;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8E4760(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 28265;
    v6 = 29545;
    if (a1 != 8)
    {
      v6 = 0x746F6E7369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6648940;
    if (a1 != 5)
    {
      v7 = 0x6E69746F6ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 29029;
    v2 = 29799;
    v3 = 6648935;
    if (a1 != 3)
    {
      v3 = 29804;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 25966;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8E4838(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 8))(v28, v9, v10);
  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(*(v12 + 8) + 8))(v31, a1, a2, v11);
  if (!v31[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    sub_25A878194(v31, &qword_27FA04458, &unk_25A9F7FB0);
    *v32 = 0u;
    v33 = 0u;
    v34 = 0;
LABEL_12:
    sub_25A878194(v32, &qword_27FA04760, &unk_25A9F9BB0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    *v32 = 0u;
    v33 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (!*(&v33 + 1))
  {
    goto LABEL_12;
  }

  sub_25A87817C(v32, v35);
  v13 = v36;
  v14 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25A9F8D80;
  v16 = a3[3];
  v17 = __swift_project_boxed_opaque_existential_1(a3, v16);
  *(v15 + 56) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
  v19 = a4[3];
  v20 = __swift_project_boxed_opaque_existential_1(a4, v19);
  *(v15 + 88) = v19;
  v21 = __swift_allocate_boxed_opaque_existential_0((v15 + 64));
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  v22 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v14 + 16))(v15, v22, v13, v14);

  if (!v4)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v32[0] = v4;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
  if (!swift_dynamicCast())
  {
LABEL_9:

    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v24 = v28[0];
  if (LOBYTE(v28[0]) < 0xA1u)
  {
    sub_25A874F54();
    swift_allocError();
    *v25 = v24;
    swift_willThrow();
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
LABEL_13:
  sub_25A874F54();
  swift_allocError();
  *v27 = -95;
  return swift_willThrow();
}

void sub_25A8E4BC4(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1();
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    if (v6 < 0xA1u)
    {
      sub_25A874F54();
      swift_allocError();
      *v5 = v6;
      swift_willThrow();
      goto LABEL_5;
    }

    *a2 = 0u;
    a2[1] = 0u;
  }
}

uint64_t sub_25A8E4CAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = PySpecialFunction.rawValue.getter();
  sub_25A8E4838(v6, v7, a3, a4);
}

uint64_t sub_25A8E4D2C(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v7 = PySpecialFunction.rawValue.getter();
    v9 = a4;
    v10 = a5;
  }

  else
  {
    v7 = PySpecialFunction.rawValue.getter();
    v9 = a5;
    v10 = a4;
  }

  sub_25A8E4838(v7, v8, v9, v10);
}

void sub_25A8E4DD0(uint64_t a1@<X8>)
{
  sub_25A8E4BC4(sub_25A8E7310, &v9);
  if (!v1)
  {
    if (v10)
    {
      sub_25A872D74(&v9, v7);
      sub_25A872D74(v7, &v11);
    }

    else
    {
      sub_25A878194(&v9, &qword_27FA04458, &unk_25A9F7FB0);
      v12 = MEMORY[0x277D839B0];
      LOBYTE(v11) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v7, v13);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = (*(v4 + 8))(v3, v4);
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = (v5 & 1) == 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_25A878194(v7, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v6 = 29;
      swift_willThrow();
    }
  }
}

uint64_t sub_25A8E4F80(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = v3;
  sub_25A87500C(a1, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  LOBYTE(v9) = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_25A878194(&v51, &qword_27FA04750, "jN\a");
    goto LABEL_20;
  }

  sub_25A87817C(&v51, v54);
  v10 = v55;
  v11 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  (*(v11 + 8))(&v44, v10, v11);
  v12 = *(&v45 + 1);
  v13 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  (*(*(v13 + 8) + 8))(v47, 0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, v12);
  if (v47[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    if (*(&v49 + 1))
    {
      v43 = a2;
      v57 = v3;
      sub_25A87817C(&v48, &v51);
      v14 = *(&v52 + 1);
      v15 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_25A9F8D80;
      sub_25A87500C(a3, v16 + 32);
      v17 = v55;
      v18 = __swift_project_boxed_opaque_existential_1(v54, v55);
      *(v16 + 88) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 64));
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
      v20 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      (*(v15 + 16))(v47, v16, v20, v14, v15);
      if (v4)
      {

        v44 = 0u;
        v45 = 0u;
        v46 = 0;
        v5 = v57;
LABEL_17:
        a2 = v43;
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      v21 = swift_dynamicCast();
      v5 = v57;
      if ((v21 & 1) == 0)
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        goto LABEL_17;
      }

      a2 = v43;
      if (!*(&v45 + 1))
      {
LABEL_18:
        sub_25A878194(&v44, &qword_27FA047E8, &unk_25A9FBF80);
        __swift_destroy_boxed_opaque_existential_0Tm(&v51);
        goto LABEL_19;
      }

      sub_25A87817C(&v44, &v48);
      if (sub_25A8E4760(v43) == 28265 && v22 == 0xE200000000000000)
      {
      }

      else
      {
        v40 = sub_25A9989E8();

        if ((v40 & 1) == 0)
        {
          v9 = *(&v49 + 1);
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          LOBYTE(v9) = (*(v42 + 8))(v9, v42) ^ 1;
          goto LABEL_42;
        }
      }

      v9 = *(&v49 + 1);
      v41 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      LOBYTE(v9) = (*(v41 + 8))(v9, v41);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(&v48);
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
      goto LABEL_31;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    sub_25A878194(v47, &qword_27FA04458, &unk_25A9F7FB0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
  }

  sub_25A878194(&v48, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
LABEL_20:
  sub_25A87500C(a3, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AB8, &qword_25A9F9BD8);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v51, v54);
    if (a2 == 6)
    {
      v9 = v55;
      v29 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v9) = (*(v29 + 8))(a1, v9, v29) ^ 1;
      goto LABEL_31;
    }

    if (a2 == 7)
    {
      v9 = v55;
      v23 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v9) = (*(v23 + 8))(a1, v9, v23);
LABEL_31:
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      return v9 & 1;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v30 = sub_25A997BD8();
    __swift_project_value_buffer(v30, qword_27FA0FCE8);
    swift_retain_n();
    v31 = sub_25A997BB8();
    v32 = sub_25A9983A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v51 = v34;
      *v33 = 136315394;
      v35 = sub_25A8E4694(a2);
      v37 = sub_25A98CC90(v35, v36, &v51);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v9 = *(v5 + 16);

      *(v33 + 14) = v9;

      _os_log_impl(&dword_25A232000, v31, v32, "Comparison> Op %s is neither in nor notin. line %ld", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x25F852800](v34, -1, -1);
      MEMORY[0x25F852800](v33, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v38 = 16;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_25A878194(&v51, qword_27FA04AC0, &qword_25A9F9BE0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v24 = sub_25A997BD8();
    __swift_project_value_buffer(v24, qword_27FA0FCE8);

    v25 = sub_25A997BB8();
    v26 = sub_25A9983A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v5 + 16);

      _os_log_impl(&dword_25A232000, v25, v26, "Comparison> Right operand is not MembershipTestable. line %ld", v27, 0xCu);
      MEMORY[0x25F852800](v27, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v28 = 18;
    swift_willThrow();
  }

  return v9 & 1;
}

uint64_t sub_25A8E57A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[5];
  v5 = v2[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v2[4];
  v9 = *(v5 + 48);
  swift_unknownObjectRetain();
  v9(Strong, v8, ObjectType, v5);
  swift_unknownObjectRelease();
  v130 = v2;
  v10 = v2[7];
  v11 = *(v10 + 16);

  v110 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 40);
    while (v12 < *(v10 + 16))
    {
      ++v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = swift_getObjectType();
      v17 = swift_unknownObjectWeakLoadStrong();
      v18 = v130[4];
      v19 = *(v14 + 48);
      swift_unknownObjectRetain();
      v19(v17, v18, v16, v14);
      swift_unknownObjectRelease();
      v13 += 2;
      if (v110 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

LABEL_5:

  v20 = v130[8];
  v21 = *(v20 + 16);

  v111 = v21;
  if (v21)
  {
    v22 = 0;
    v23 = (v20 + 40);
    while (v22 < *(v20 + 16))
    {
      ++v22;
      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = swift_getObjectType();
      v27 = swift_unknownObjectWeakLoadStrong();
      v28 = v130[4];
      v29 = *(v25 + 48);
      swift_unknownObjectRetain();
      v29(v27, v28, v26, v25);
      swift_unknownObjectRelease();
      v23 += 2;
      if (v111 == v22)
      {
        goto LABEL_9;
      }
    }

LABEL_102:
    __break(1u);

    __swift_destroy_boxed_opaque_existential_0Tm(v129);
    __swift_destroy_boxed_opaque_existential_0Tm(v123);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v127);
  }

LABEL_9:

  v30 = v130;
  if (*(v130[7] + 16) != *(v130[8] + 16))
  {
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v36 = sub_25A997BD8();
      __swift_project_value_buffer(v36, qword_27FA0FCE8);

      v37 = sub_25A997BB8();
      v38 = sub_25A9983A8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v30[2];

        _os_log_impl(&dword_25A232000, v37, v38, "Comparison> ops and comparators do not match. line %ld", v39, 0xCu);
        MEMORY[0x25F852800](v39, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v40 = 19;
      return swift_willThrow();
    }

LABEL_115:
    swift_once();
    goto LABEL_13;
  }

  v31 = v130[5];
  v32 = v130[6];
  v33 = swift_getObjectType();
  v34 = *(v32 + 64);
  swift_unknownObjectRetain();
  v34(v125, v33, v32);
  if (v109)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A896580(v129);
  sub_25A872CE0(v125);
  v41 = v30[7];
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v123[0] = MEMORY[0x277D84F90];

    sub_25A937550(0, v42, 0);
    v44 = 0;
    v112 = v123[0];
    v45 = (v41 + 40);
    v30 = 0;
    while (v44 < *(v41 + 16))
    {
      v46 = v42;
      v47 = *(v45 - 1);
      v48 = *v45;
      v49 = swift_getObjectType();
      v50 = *(v48 + 64);
      swift_unknownObjectRetain();
      v50(v125, v49, v48);
      v30 = 0;
      sub_25A872C84(v125, &v119);
      if (v121 && (sub_25A872CE0(&v119), sub_25A872C84(v125, &v119), v121 != 1))
      {
        sub_25A872CE0(&v119);
        *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v51 = swift_allocObject();
        *&v115 = v51;
        *(v51 + 16) = 0u;
        *(v51 + 32) = 0u;
        swift_unknownObjectRelease();
      }

      else
      {
        v127 = v119;
        v128 = v120;
        sub_25A92DE50(&v127, &v115);
        swift_unknownObjectRelease();
        sub_25A878194(&v127, &qword_27FA04458, &unk_25A9F7FB0);
      }

      sub_25A872CE0(v125);
      v52 = v112;
      v123[0] = v112;
      v54 = *(v112 + 16);
      v53 = *(v112 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_25A937550((v53 > 1), v54 + 1, 1);
        v52 = v123[0];
      }

      ++v44;
      *(v52 + 16) = v54 + 1;
      v112 = v52;
      sub_25A872D74(&v115, (v52 + 32 * v54 + 32));
      v45 += 2;
      v42 = v46;
      if (v46 == v44)
      {

        v30 = v130;
        v43 = v112;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_28:
  v113 = v43;
  v55 = v30[8];
  v56 = *(v55 + 16);
  v57 = MEMORY[0x277D84F90];
  if (v56)
  {
    v123[0] = MEMORY[0x277D84F90];

    sub_25A937550(0, v56, 0);
    v58 = 0;
    v57 = v123[0];
    v59 = (v55 + 40);
    v108 = v56;
    do
    {
      if (v58 >= *(v55 + 16))
      {
        goto LABEL_114;
      }

      v60 = *(v59 - 1);
      v61 = *v59;
      v62 = swift_getObjectType();
      v30 = *(v61 + 64);
      swift_unknownObjectRetain();
      (v30)(v125, v62, v61);
      sub_25A872C84(v125, &v119);
      if (v121)
      {
        sub_25A872CE0(&v119);
        sub_25A872C84(v125, &v119);
        if (v121 == 1)
        {
          v127 = v119;
          v128 = v120;
          sub_25A92DE50(&v127, &v115);
          swift_unknownObjectRelease();
          sub_25A878194(&v127, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v119);
          *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v63 = swift_allocObject();
          *&v115 = v63;
          *(v63 + 16) = 0u;
          *(v63 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v125);
      }

      else
      {
        v127 = v119;
        v128 = v120;
        sub_25A92DE50(&v127, &v115);
        swift_unknownObjectRelease();
        sub_25A878194(&v127, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v125);
      }

      v123[0] = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_25A937550((v64 > 1), v65 + 1, 1);
        v57 = v123[0];
      }

      ++v58;
      *(v57 + 16) = v65 + 1;
      sub_25A872D74(&v115, (v57 + 32 * v65 + 32));
      v59 += 2;
    }

    while (v108 != v58);
  }

  sub_25A87500C(v129, &v127);
  v66 = v113;
  v67 = *(v113 + 16);
  if (!v67)
  {
    v69 = 1;
LABEL_98:

    v87 = a1;
    *(a1 + 24) = MEMORY[0x277D839B0];
    *a1 = v69 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v129);
LABEL_99:
    *(v87 + 32) = 0;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v127);
  }

  v68 = 0;
  v69 = 1;
  v70 = MEMORY[0x277D84F70];
  v71 = 32;
  while (1)
  {
    if (v68 >= *(v66 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    sub_25A87500C(v66 + v71, &v119);
    v72 = *(v57 + 16);
    if (v68 == v72)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v119);
      goto LABEL_98;
    }

    if (v68 >= v72)
    {
      goto LABEL_117;
    }

    sub_25A872D74(&v119, v125);
    sub_25A87500C(v57 + v71, v126);
    sub_25A872D74(v126, v123);
    sub_25A872D74(v125, &v119);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_94;
    }

    v73 = sub_25A9988C8();

    if (v73 <= 4)
    {
      break;
    }

    if (v73 <= 6)
    {
      if (v73 == 5)
      {
        v74 = 5;
        goto LABEL_82;
      }

      v78 = 6;
      if (v69)
      {
LABEL_79:
        v69 = sub_25A8E4F80(&v127, v78, v123);
        goto LABEL_44;
      }
    }

    else
    {
      switch(v73)
      {
        case 7:
          v78 = 7;
          if (v69)
          {
            goto LABEL_79;
          }

          break;
        case 8:
          if (v69)
          {
            sub_25A87500C(&v127, &v119);

            goto LABEL_74;
          }

          break;
        case 9:
          if (v69)
          {
            sub_25A87500C(&v127, &v119);
            v75 = sub_25A9989E8();

            if ((v75 & 1) == 0)
            {
              if ((static MorpheusUtils.isNil(_:)(&v119) & 1) == 0 || (static MorpheusUtils.isNil(_:)(v123) & 1) == 0)
              {
                if ((static MorpheusUtils.isNil(_:)(&v119) & 1) == 0 && (static MorpheusUtils.isNil(_:)(v123) & 1) == 0)
                {
                  __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
                  v76 = sub_25A9989D8();
                  __swift_project_boxed_opaque_existential_1(v123, v124);
                  v77 = sub_25A9989D8();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v69 = v76 != v77;
LABEL_88:
                  __swift_destroy_boxed_opaque_existential_0Tm(&v119);
                  goto LABEL_44;
                }

LABEL_76:
                v69 = 1;
                goto LABEL_88;
              }

LABEL_91:
              v69 = 0;
              goto LABEL_88;
            }

LABEL_74:
            if (static MorpheusUtils.isNil(_:)(&v119) & 1) != 0 && (static MorpheusUtils.isNil(_:)(v123))
            {
              goto LABEL_76;
            }

            if ((static MorpheusUtils.isNil(_:)(&v119) & 1) == 0 && (static MorpheusUtils.isNil(_:)(v123) & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
              v81 = sub_25A9989D8();
              __swift_project_boxed_opaque_existential_1(v123, v124);
              v82 = sub_25A9989D8();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v69 = v81 == v82;
              goto LABEL_88;
            }

            goto LABEL_91;
          }

          break;
        default:
          goto LABEL_94;
      }
    }

    v69 = 0;
LABEL_44:
    ++v68;
    __swift_destroy_boxed_opaque_existential_0Tm(&v127);
    sub_25A872D74(v123, &v127);
    v71 += 32;
    v66 = v113;
    if (v67 == v68)
    {
      goto LABEL_98;
    }
  }

  if (v73 <= 1)
  {
    if (!v73)
    {
      v74 = 0;
      goto LABEL_82;
    }

    if (v73 == 1)
    {
      v74 = 1;
      goto LABEL_82;
    }

LABEL_94:

    v70 = v130;
    if (qword_27FA043C0 == -1)
    {
LABEL_95:
      v83 = sub_25A997BD8();
      __swift_project_value_buffer(v83, qword_27FA0FCE8);

      v84 = sub_25A997BB8();
      v85 = sub_25A9983A8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134217984;
        *(v86 + 4) = v70[2];

        _os_log_impl(&dword_25A232000, v84, v85, "Comparison> Not supported comparison operator. line %ld", v86, 0xCu);
        MEMORY[0x25F852800](v86, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v88 = 16;
      swift_willThrow();
      goto LABEL_112;
    }

LABEL_118:
    swift_once();
    goto LABEL_95;
  }

  if (v73 == 2)
  {
    v74 = 2;
  }

  else if (v73 == 3)
  {
    v74 = 3;
  }

  else
  {
    v74 = 4;
  }

LABEL_82:
  sub_25A8E2098(&v127, v74, v123, v122);
  if (*(v113 + 16) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v129);

    __swift_destroy_boxed_opaque_existential_0Tm(v123);
    v87 = a1;
    sub_25A872D74(v122, a1);
    goto LABEL_99;
  }

  sub_25A87500C(v122, v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v115, &v119);
    if (v69)
    {
      v79 = *(&v120 + 1);
      v80 = v121;
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      v69 = (*(v80 + 8))(v79, v80);
    }

    else
    {
      v69 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v122);
    goto LABEL_88;
  }

  v117 = 0;
  v115 = 0u;
  v116 = 0u;

  sub_25A878194(&v115, &qword_27FA047E8, &unk_25A9FBF80);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v89 = sub_25A997BD8();
  __swift_project_value_buffer(v89, qword_27FA0FCE8);
  sub_25A87500C(v123, &v119);
  v90 = v130;
  swift_retain_n();
  v91 = sub_25A997BB8();
  v92 = sub_25A9983A8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v114 = v94;
    *v93 = 136315906;
    swift_beginAccess();
    sub_25A87500C(&v127, &v115);
    v95 = sub_25A997EA8();
    v97 = sub_25A98CC90(v95, v96, &v114);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = sub_25A8E4694(v74);
    v100 = sub_25A98CC90(v98, v99, &v114);

    *(v93 + 14) = v100;
    *(v93 + 22) = 2080;
    sub_25A87500C(&v119, &v115);
    v101 = sub_25A997EA8();
    v103 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(&v119);
    v104 = sub_25A98CC90(v101, v103, &v114);

    *(v93 + 24) = v104;
    *(v93 + 32) = 2048;
    v105 = v90[2];

    *(v93 + 34) = v105;

    _os_log_impl(&dword_25A232000, v91, v92, "Comparison> %s %s %s not returning Truthiness. line %ld", v93, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F852800](v94, -1, -1);
    MEMORY[0x25F852800](v93, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v119);
  }

  sub_25A874F54();
  swift_allocError();
  *v106 = 29;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v122);
LABEL_112:
  __swift_destroy_boxed_opaque_existential_0Tm(v129);
  __swift_destroy_boxed_opaque_existential_0Tm(v123);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v127);
}

uint64_t sub_25A8E683C()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];
  swift_getObjectType();
  v4 = *(v3 + 8);
  swift_unknownObjectRetain();
  v16 = sub_25A997EB8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v5 = v1[7];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v7 = MEMORY[0x25F850440](v5, v6);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  MEMORY[0x25F850290](32, 0xE100000000000000);
  v10 = v1[8];

  v12 = MEMORY[0x25F850440](v11, v6);
  v14 = v13;

  MEMORY[0x25F850290](v12, v14);

  return v16;
}

uint64_t sub_25A8E6964()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
}

uint64_t sub_25A8E699C()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E6A6C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25A8E6ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A8E6ABC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25A8E6B74()
{
  result = qword_27FA04A80;
  if (!qword_27FA04A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A80);
  }

  return result;
}

uint64_t sub_25A8E6BC8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A8E6CB4()
{
  result = qword_27FA04AB0;
  if (!qword_27FA04AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04AB0);
  }

  return result;
}

uint64_t sub_25A8E6D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25A8E6D90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25A8E6ED0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25A8E70EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25A8E7134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A8E7190()
{
  result = qword_27FA04B48;
  if (!qword_27FA04B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B48);
  }

  return result;
}

unint64_t sub_25A8E71E8()
{
  result = qword_27FA04B50;
  if (!qword_27FA04B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B50);
  }

  return result;
}

unint64_t sub_25A8E7240()
{
  result = qword_27FA04B58;
  if (!qword_27FA04B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B58);
  }

  return result;
}

uint64_t sub_25A8E7294()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

double sub_25A8E734C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25A8F3600(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_25A87500C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t PyStaticMethod.__allocating_init(function:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25A8E73E4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_25A8E7434@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04308 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046D8;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

double sub_25A8E74F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  swift_beginAccess();
  v8 = *(v7 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_25A8F3600(a1, a2);
    if (v10)
    {
      sub_25A87500C(*(v8 + 56) + 32 * v9, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_25A8E7590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 104);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_25A8F3600(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_25A87500C(*(v6 + 56) + 32 * v7, v11);

  v9 = 1;
LABEL_6:
  sub_25A872D84(v11);
  return v9;
}

uint64_t sub_25A8E7640(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  sub_25A87500C(a1, v8);
  result = swift_dynamicCast();
  if (result)
  {
    sub_25A87500C(a2, v8);
    swift_beginAccess();
    sub_25A8F2ED0(v8, v6, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t PyStaticMethod.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PyStaticMethod.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E773C()
{
  v1 = *(*v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

unint64_t sub_25A8E796C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = mlx_array_dtype(*(v1 + 16));
  v4 = sub_25A956420(v3);
  if (v4 <= 4u)
  {
    if (v4 > 1u)
    {
      switch(v4)
      {
        case 2u:
          result = sub_25A8EEEE0();
          *(a1 + 24) = MEMORY[0x277D84C58];
          *a1 = result;
          return result;
        case 3u:
          result = sub_25A8EEC58();
          v6 = MEMORY[0x277D84CC0];
LABEL_24:
          *(a1 + 24) = v6;
          *a1 = result;
          return result;
        case 4u:
          *(a1 + 24) = MEMORY[0x277D84D38];
          result = sub_25A8EE9DC();
          *a1 = result;
          return result;
      }

      goto LABEL_27;
    }

    if (!v4)
    {
      result = sub_25A8EDD5C();
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = result & 1;
      return result;
    }

    result = sub_25A8EF168();
    v8 = MEMORY[0x277D84B78];
    goto LABEL_21;
  }

  if (v4 <= 7u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        *(a1 + 24) = MEMORY[0x277D84958];
        result = sub_25A8EE4B4();
        *a1 = result;
        return result;
      }

      if (v4 == 7)
      {
        result = sub_25A8EE218();
        v6 = MEMORY[0x277D849A8];
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    result = sub_25A8EE748();
    v8 = MEMORY[0x277D84900];
LABEL_21:
    *(a1 + 24) = v8;
    *a1 = result;
    return result;
  }

  switch(v4)
  {
    case 8u:
      result = sub_25A8EDF9C();
      *(a1 + 24) = MEMORY[0x277D84A28];
      *a1 = result;
      return result;
    case 9u:
      *(a1 + 24) = MEMORY[0x277D84DC8];
      result = sub_25A8EF684();
      *a1 = v7;
      return result;
    case 0xAu:
      result = sub_25A8EF3F0();
      *(a1 + 24) = MEMORY[0x277D83A90];
      *a1 = v9;
      return result;
  }

LABEL_27:
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000013, 0x800000025AA68D80);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

uint64_t sub_25A8E7BC0()
{
  if (swift_dynamicCastMetatype())
  {
    sub_25A8E7E18();
LABEL_25:
    v0 = sub_25A9987B8();

    return v0;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8070();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E82D0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8530();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8790();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E89F0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8C50();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8EB0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9110();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9370();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E95D0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9830();
    goto LABEL_25;
  }

  sub_25A874F54();
  swift_allocError();
  *v2 = 36;
  return swift_willThrow();
}

uint64_t sub_25A8E7E18()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3))
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v4 = v14[0];
    v5 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v5))
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 0, *(v4 + 16));

      v6 = v14[0];
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
    }

    else
    {
    }

    v10 = sub_25A8E7E18(v7);
  }

  else
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v8 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v8 unlock];
    v9 = mlx_array_size(*(v1 + 16));

    v10 = sub_25A8F1714(v9, v1, MEMORY[0x277D839B0], sub_25A8EFF6C);
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E802C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8034);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8070()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 1)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84B78], sub_25A8EFF6C);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 1)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 1, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E8070(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E828C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8294);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E82D0()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 2)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84C58], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 2)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 2, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E82D0(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E84EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E84F4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8530()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 3)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84CC0], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 3)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 3, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E8530(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E874C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8754);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8790()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 4)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84D38], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 4)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 4, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E8790(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E89AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E89B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E89F0()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 5)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84900], sub_25A8EFF6C);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 5)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 5, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E89F0(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E8C0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8C14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8C50()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 6)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84958], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 6)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 6, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E8C50(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E8E6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8E74);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8EB0()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 7)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D849A8], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 7)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 7, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E8EB0(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E90CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E90D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9110()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 8)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84A28], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 8)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 8, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E9110(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E932C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9334);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9370()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 9)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D84DC8], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 9)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 9, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E9370(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E958C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9594);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E95D0()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 10)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D83A90], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 10)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 10, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E95D0(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E97EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E97F4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9830()
{
  v1 = v0;
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  v3 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v3) == 12)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v4 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v4 unlock];
    v5 = mlx_array_size(*(v1 + 16));

    v6 = sub_25A8F1714(v5, v1, MEMORY[0x277D839F8], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14[0];
    v8 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v8) == 12)
    {
    }

    else
    {
      v14[0] = mlx_array_new();
      mlx_astype(v14, *(v1 + 16), 11, *(v7 + 16));

      v10 = v14[0];
      v9 = swift_allocObject();
      *(v9 + 16) = v10;
    }

    v6 = sub_25A8E9830(v9);
  }

  v11 = v6;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A8E9A4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9A54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9AB4(uint64_t a1, uint64_t a2)
{
  v5[4] = a2;
  v3 = *v2;
  v5[3] = a1;
  v5[0] = v3;

  static MorpheusUtils.toMLTensor(mlxArray:)(v5);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_25A8E9B1C()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8E9B50()
{
  result = *v0;
  if (*v0 >> 31)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8E9B6C()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

double sub_25A8E9C10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_25A8738A4(a1, a2, v3, &v58);
  if (v59)
  {
    sub_25A872D74(&v58, &v53);
    sub_25A872D74(&v53, a3);
    return result;
  }

  sub_25A878194(&v58, &qword_27FA04458, &unk_25A9F7FB0);
  if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v9 = MEMORY[0x277D84F90];
    v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v9;
    *(v12 + 40) = v9;
    *(v12 + 48) = v9;

    *(v12 + 56) = v9;

    *(v12 + 64) = v9;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v9);
    strcpy((v12 + 16), "np.ndarray.min");
    *(v12 + 31) = -18;
    v13 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v13;
    v57 = *(v12 + 96);
    v14 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v14;
    *(v12 + 32) = v9;
    *(v12 + 40) = v9;
    *(v12 + 48) = v9;
    *(v12 + 56) = v9;
    *(v12 + 64) = v9;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v15 = *(v12 + 104);
    *(v12 + 104) = v10;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F1910;
    *(v16 + 24) = v3;
LABEL_7:
    *(v12 + 112) = sub_25A8F1D14;
    *(v12 + 120) = v16;
    *(a3 + 24) = v11;
    *a3 = v12;
    return result;
  }

  if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v17 = MEMORY[0x277D84F90];
    v18 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v17;
    *(v12 + 40) = v17;
    *(v12 + 48) = v17;

    *(v12 + 56) = v17;

    *(v12 + 64) = v17;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v17);
    strcpy((v12 + 16), "np.ndarray.max");
    *(v12 + 31) = -18;
    v19 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v19;
    v57 = *(v12 + 96);
    v20 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v20;
    *(v12 + 32) = v17;
    *(v12 + 40) = v17;
    *(v12 + 48) = v17;
    *(v12 + 56) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v21 = *(v12 + 104);
    *(v12 + 104) = v18;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F18F4;
    *(v16 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 0x6E657474616C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v22 = MEMORY[0x277D84F90];
    v23 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v22;
    *(v12 + 40) = v22;
    *(v12 + 48) = v22;

    *(v12 + 56) = v22;

    *(v12 + 64) = v22;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v22);
    *(v12 + 16) = 0xD000000000000012;
    *(v12 + 24) = 0x800000025AA68D40;
    v24 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v24;
    v57 = *(v12 + 96);
    v25 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v25;
    *(v12 + 32) = v22;
    *(v12 + 40) = v22;
    *(v12 + 48) = v22;
    *(v12 + 56) = v22;
    *(v12 + 64) = v22;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v26 = *(v12 + 104);
    *(v12 + 104) = v23;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F18D8;
    *(v16 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    swift_beginAccess();
    v27 = mlx_array_size(v3[2]);
LABEL_21:
    *(a3 + 24) = MEMORY[0x277D83B88];
    *a3 = v27;
    return result;
  }

  if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v28 = sub_25A9616CC();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
    *a3 = v28;
    return result;
  }

  if (a1 == 1835623534 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    swift_beginAccess();
    v27 = mlx_array_ndim(v3[2]);
    goto LABEL_21;
  }

  if (a1 == 0x7473696C6F74 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v29 = MEMORY[0x277D84F90];
    v30 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v29;
    *(v12 + 40) = v29;
    *(v12 + 48) = v29;

    *(v12 + 56) = v29;

    *(v12 + 64) = v29;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v29);
    *(v12 + 16) = 0xD000000000000011;
    *(v12 + 24) = 0x800000025AA68D20;
    v31 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v31;
    v57 = *(v12 + 96);
    v32 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v32;
    *(v12 + 32) = v29;
    *(v12 + 40) = v29;
    *(v12 + 48) = v29;
    *(v12 + 56) = v29;
    *(v12 + 64) = v29;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v33 = *(v12 + 104);
    *(v12 + 104) = v30;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F18BC;
    *(v16 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 1835365481 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v34 = MEMORY[0x277D84F90];
    v35 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v34;
    *(v12 + 40) = v34;
    *(v12 + 48) = v34;

    *(v12 + 56) = v34;

    *(v12 + 64) = v34;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v34);
    *(v12 + 16) = 0x727261646E2E706ELL;
    *(v12 + 24) = 0xEF6D6574692E7961;
    v36 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v36;
    v57 = *(v12 + 96);
    v37 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v37;
    *(v12 + 32) = v34;
    *(v12 + 40) = v34;
    *(v12 + 48) = v34;
    *(v12 + 56) = v34;
    *(v12 + 64) = v34;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v38 = *(v12 + 104);
    *(v12 + 104) = v35;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F1868;
    *(v16 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 2037411683 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v39 = MEMORY[0x277D84F90];
    v40 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v39;
    *(v12 + 40) = v39;
    *(v12 + 48) = v39;

    *(v12 + 56) = v39;

    *(v12 + 64) = v39;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v39);
    *(v12 + 16) = 0x727261646E2E706ELL;
    *(v12 + 24) = 0xEF79706F632E7961;
    v41 = *(v12 + 80);
    v55 = *(v12 + 64);
    v56 = v41;
    v57 = *(v12 + 96);
    v42 = *(v12 + 48);
    v53 = *(v12 + 32);
    v54 = v42;
    *(v12 + 32) = v39;
    *(v12 + 40) = v39;
    *(v12 + 48) = v39;
    *(v12 + 56) = v39;
    *(v12 + 64) = v39;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v53);
    swift_beginAccess();
    v43 = *(v12 + 104);
    *(v12 + 104) = v40;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_25A8F184C;
    *(v16 + 24) = v3;
    goto LABEL_7;
  }

  if ((a1 != 0x657079747361 || a2 != 0xE600000000000000) && (sub_25A9989E8() & 1) == 0)
  {
    return sub_25A8738A4(a1, a2, v3, a3);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v3;
  *(v44 + 24) = v7;

  v45 = MEMORY[0x277D84F90];
  v46 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v47 = type metadata accessor for Function();
  v48 = swift_allocObject();
  v48[4] = v45;
  v48[5] = v45;
  v48[6] = v45;

  v48[7] = v45;

  v48[8] = v45;

  v48[9] = 0;
  v48[10] = 0;

  v48[11] = 0;
  v48[12] = 0;

  v48[13] = sub_25A92BDB4(v45);
  v48[2] = 0xD000000000000011;
  v48[3] = 0x800000025AA68D00;
  v49 = *(v48 + 5);
  v55 = *(v48 + 4);
  v56 = v49;
  v57 = v48[12];
  v50 = *(v48 + 3);
  v53 = *(v48 + 2);
  v54 = v50;
  v48[4] = &unk_286C0BB88;
  v48[5] = v45;
  v48[6] = v45;
  v48[7] = v45;
  v48[8] = v45;
  *(v48 + 9) = 0u;
  *(v48 + 11) = 0u;
  sub_25A892B80(&v53);
  swift_beginAccess();
  v51 = v48[13];
  v48[13] = v46;

  v52 = swift_allocObject();
  *(v52 + 16) = sub_25A8F1814;
  *(v52 + 24) = v44;
  v48[14] = sub_25A8F1830;
  v48[15] = v52;
  *(a3 + 24) = v47;
  *a3 = v48;
  return result;
}

uint64_t sub_25A8EA890@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v9[0] = mlx_array_new();
  swift_beginAccess();
  mlx_min(v9, *(a1 + 16), 0, *(v8 + 16));

  v5 = v9[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EA9C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EA9CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EA9D8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v9[0] = mlx_array_new();
  swift_beginAccess();
  mlx_max(v9, a1[2], 0, *(v8 + 16));

  v5 = v9[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EAB0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EAB14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EAB20@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v9[0] = mlx_array_new();
  swift_beginAccess();
  mlx_flatten(v9, *(a1 + 16), 0, -1, *(v8 + 16));

  v5 = v9[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EAC58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EAC60);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EAC6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  switch(sub_25A956420(v4))
  {
    case 1u:
      v15 = sub_25A8E8070();
      v6 = sub_25A930734(v15);
      goto LABEL_11;
    case 2u:
      v11 = sub_25A8E82D0();
      v8 = sub_25A930740(v11);
      goto LABEL_15;
    case 3u:
      v12 = sub_25A8E8530();
      v8 = sub_25A93074C(v12);
      goto LABEL_15;
    case 4u:
      v9 = sub_25A8E8790();
      v8 = sub_25A930758(v9);
      goto LABEL_15;
    case 5u:
      v18 = sub_25A8E89F0();
      v8 = sub_25A930764(v18);
      goto LABEL_15;
    case 6u:
      v19 = sub_25A8E8C50();
      v8 = sub_25A930864(v19);
      goto LABEL_15;
    case 7u:
      v13 = sub_25A8E8EB0();
      v8 = sub_25A930964(v13);
      goto LABEL_15;
    case 8u:
      v20 = sub_25A8E9110();
      v8 = sub_25A930A64(v20);
      goto LABEL_15;
    case 9u:
    case 0xAu:
      v5 = sub_25A8E95D0();
      v6 = sub_25A93053C(v5);
      goto LABEL_11;
    case 0xBu:
      v7 = sub_25A8E95D0();
      v8 = sub_25A93053C(v7);
LABEL_15:
      v21 = v8;

      v22 = sub_25A9616CC();
      sub_25A93254C(v21, v22, a2);
      goto LABEL_16;
    case 0xCu:
      v10 = sub_25A8E9830();
      v6 = sub_25A930638(v10);
      goto LABEL_11;
    default:
      v14 = sub_25A8E7E18();
      v6 = sub_25A930440(v14);
LABEL_11:
      v16 = v6;

      v17 = sub_25A9616CC();
      sub_25A93254C(v16, v17, a2);
LABEL_16:
  }
}

unint64_t sub_25A8EAE54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        *(a2 + 24) = MEMORY[0x277D84B78];
        result = sub_25A8EF168();
        *a2 = result;
      }

      else
      {
        *(a2 + 24) = MEMORY[0x277D839B0];
        result = sub_25A8EDD5C();
        *a2 = result & 1;
      }

      return result;
    }

    if (v5 == 2)
    {
      *(a2 + 24) = MEMORY[0x277D84C58];
      result = sub_25A8EEEE0();
      *a2 = result;
      return result;
    }

    if (v5 == 3)
    {
      *(a2 + 24) = MEMORY[0x277D84CC0];
      result = sub_25A8EEC58();
      *a2 = result;
      return result;
    }

    if (v5 != 4)
    {
LABEL_14:
      *(a2 + 24) = MEMORY[0x277D83A90];
      result = sub_25A8EF3F0();
      *a2 = v7;
      return result;
    }

    *(a2 + 24) = MEMORY[0x277D84D38];
    result = sub_25A8EE9DC();
LABEL_24:
    *a2 = result;
    return result;
  }

  if (v5 > 7)
  {
    if (v5 != 8)
    {
      if (v5 == 9)
      {
        *(a2 + 24) = MEMORY[0x277D84DC8];
        result = sub_25A8EF684();
        *a2 = v8;
        return result;
      }

      goto LABEL_14;
    }

    result = sub_25A8EDF9C();
    *(a2 + 24) = MEMORY[0x277D83B88];
    goto LABEL_24;
  }

  switch(v5)
  {
    case 5:
      *(a2 + 24) = MEMORY[0x277D84900];
      result = sub_25A8EE748();
      *a2 = result;
      break;
    case 6:
      *(a2 + 24) = MEMORY[0x277D84958];
      result = sub_25A8EE4B4();
      *a2 = result;
      break;
    case 7:
      *(a2 + 24) = MEMORY[0x277D849A8];
      result = sub_25A8EE218();
      *a2 = result;
      return result;
    default:
      goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A8EB024@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = mlx_array_dtype(a1[2]);
  v6 = sub_25A956420(v5);
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v14 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v14 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED894;
        v12 = sub_25A8ED894;
      }

      else
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v15 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v15 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8EDC30;
        v12 = sub_25A8EDC30;
      }
    }

    else if (v6 == 2)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v19 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v19 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED760;
      v12 = sub_25A8ED760;
    }

    else if (v6 == 3)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v16 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v16 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED624;
      v12 = sub_25A8ED624;
    }

    else
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v13 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v13 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED4E8;
      v12 = sub_25A8ED4E8;
    }
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 == 5)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v20 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v20 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED3BC;
        v12 = sub_25A8ED3BC;
      }

      else if (v6 == 6)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v17 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v17 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED288;
        v12 = sub_25A8ED288;
      }

      else
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v7 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v7 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED14C;
        v12 = sub_25A8ED14C;
      }

      goto LABEL_46;
    }

    if (v6 == 8)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v21 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v21 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED010;
      v12 = sub_25A8ED010;
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          if (qword_27FA043E0 == -1)
          {
            goto LABEL_45;
          }
        }

        else if (qword_27FA043E0 == -1)
        {
LABEL_45:
          v22 = qword_27FA0FD28;
          [qword_27FA0FD28 lock];
          mlx_array_eval(a1[2]);
          [v22 unlock];
          sub_25A972B28(&v25);
          v8 = v25;
          v9 = v26;
          sub_25A8F192C(v25, v26);
          sub_25A8F1980(&v25);
          v10 = sub_25A9616CC();
          v11 = sub_25A8ED9C0;
          v12 = sub_25A8ED9C0;
          goto LABEL_46;
        }

        swift_once();
        goto LABEL_45;
      }

      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v18 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v18 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8EDAFC;
      v12 = sub_25A8EDAFC;
    }
  }

LABEL_46:
  v23 = sub_25A8F19D4(v8, v9, v10, v11, v12);

  a2[3] = v4;
  *a2 = v23;
  return result;
}

uint64_t sub_25A8EB974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t **a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v14), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_25A8F139C(v12, v13);

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = sub_25A961880(v8, v14[0]);

    a3[3] = a2;
    *a3 = v9;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = -116;
    return swift_willThrow();
  }

  return result;
}

void *sub_25A8EBAFC(uint64_t a1, uint64_t a2)
{
  result = sub_25A8F0FA0(a2, 13);
  if (!v3)
  {
    v57[2] = 0;
    v58 = result;
    sub_25A87500C(a1, &v65);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B60, &qword_25A9F9EB8);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v71, v74);
      sub_25A872F24(v74, &v71);
      v6 = sub_25A96759C(0, 1, 1, MEMORY[0x277D84F90]);
      v77 = v6;
      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        v6 = sub_25A96759C((v7 > 1), v8 + 1, 1, v6);
        v77 = v6;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      v9 = *(&v72 + 1);
      v10 = AssociatedConformanceWitness;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v12 = *(*(v9 - 8) + 64);
      MEMORY[0x28223BE20](v11);
      v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      sub_25A8F012C(v8, v14, &v77, v9, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(&v71);
LABEL_30:
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      return sub_25A958C48(v58, v6, v74[0]);
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v71 = 0u;
      v72 = 0u;
      sub_25A878194(&v71, &qword_27FA04B68, &qword_25A9F9EC0);
      sub_25A87500C(a1, &v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
      if (swift_dynamicCast())
      {
        v57[1] = v2;
        sub_25A87817C(&v71, v74);
        v16 = v75;
        v17 = v76;
        v18 = __swift_project_boxed_opaque_existential_1(v74, v75);
        v19 = *(*(v16 - 8) + 64);
        MEMORY[0x28223BE20](v18);
        (*(v21 + 16))(v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = *(v17 + 8);
        *(&v72 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v71);
        sub_25A998068();
        v60 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v24 = sub_25A9983F8();
            v25 = *(v24 - 8);
            v26 = *(v25 + 64);
            MEMORY[0x28223BE20](v24);
            v28 = v57 - v27;
            sub_25A998448();
            v29 = *(AssociatedTypeWitness - 8);
            if ((*(v29 + 48))(v28, 1, AssociatedTypeWitness) == 1)
            {
              (*(v25 + 8))(v28, v24);
              __swift_destroy_boxed_opaque_existential_0Tm(&v71);
              __swift_destroy_boxed_opaque_existential_0Tm(v74);
              v6 = v60;
              goto LABEL_30;
            }

            v70 = AssociatedTypeWitness;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
            (*(v29 + 32))(boxed_opaque_existential_0, v28, AssociatedTypeWitness);
            sub_25A872D74(&v69, v68);
            sub_25A87500C(v68, &v64);
            if (!swift_dynamicCast())
            {
              break;
            }

            sub_25A87817C(&v61, &v65);
            sub_25A872F24(&v65, &v61);
            v31 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = v31;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v31 = sub_25A96759C(0, v31[2] + 1, 1, v31);
              v77 = v31;
            }

            v34 = v31[2];
            v33 = v31[3];
            if (v34 >= v33 >> 1)
            {
              v31 = sub_25A96759C((v33 > 1), v34 + 1, 1, v31);
              v77 = v31;
            }

            v60 = v31;
            __swift_destroy_boxed_opaque_existential_0Tm(&v65);
            __swift_destroy_boxed_opaque_existential_0Tm(v68);
            v35 = *(&v62 + 1);
            v36 = v63;
            v37 = __swift_mutable_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
            v38 = *(*(v35 - 8) + 64);
            MEMORY[0x28223BE20](v37);
            v40 = v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v41 + 16))(v40);
            sub_25A8F012C(v34, v40, &v77, v35, v36);
            __swift_destroy_boxed_opaque_existential_0Tm(&v61);
          }

          v63 = 0;
          v61 = 0u;
          v62 = 0u;
          sub_25A878194(&v61, &qword_27FA04B68, &qword_25A9F9EC0);
          sub_25A87500C(v68, &v65);
          v42 = swift_dynamicCast();
          v43 = v60;
          if ((v42 & 1) == 0)
          {
            break;
          }

          if (v61 == __PAIR128__(0xE700000000000000, 0x7369786177656ELL))
          {
          }

          else
          {
            v44 = sub_25A9989E8();

            if ((v44 & 1) == 0)
            {
              break;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_25A96759C(0, v43[2] + 1, 1, v43);
          }

          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            v43 = sub_25A96759C((v45 > 1), v46 + 1, 1, v43);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v68);
          v66 = &type metadata for MLXNewAxisIndex;
          v67 = &off_286C13760;
          v60 = v43;
          v43[2] = v46 + 1;
          sub_25A87817C(&v65, &v43[5 * v46 + 4]);
        }

        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v52 = sub_25A997BD8();
        __swift_project_value_buffer(v52, qword_27FA0FCE8);
        v53 = sub_25A997BB8();
        v54 = sub_25A9983A8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_25A232000, v53, v54, "Unrecognized MLXArray slice", v55, 2u);
          MEMORY[0x25F852800](v55, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v56 = 38;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        __swift_destroy_boxed_opaque_existential_0Tm(&v71);
        return __swift_destroy_boxed_opaque_existential_0Tm(v74);
      }

      else
      {
        AssociatedConformanceWitness = 0;
        v71 = 0u;
        v72 = 0u;
        sub_25A878194(&v71, &qword_27FA04850, &unk_25A9FDC60);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v47 = sub_25A997BD8();
        __swift_project_value_buffer(v47, qword_27FA0FCE8);
        v48 = sub_25A997BB8();
        v49 = sub_25A9983A8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_25A232000, v48, v49, "Invalid MLXArray slice", v50, 2u);
          MEMORY[0x25F852800](v50, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v51 = 38;
        swift_willThrow();
      }
    }
  }

  return result;
}

void *sub_25A8EC55C(uint64_t a1)
{
  sub_25A87500C(a1, &v44);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B60, &qword_25A9F9EB8);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v49, v52);
    sub_25A872F24(v52, &v49);
    v4 = sub_25A96759C(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = v4;
    v3 = v4[2];
    v5 = v4[3];
    if (v3 >= v5 >> 1)
    {
      goto LABEL_38;
    }

    goto LABEL_3;
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_25A878194(&v49, &qword_27FA04B68, &qword_25A9F9EC0);
  sub_25A87500C(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_25A878194(&v49, &qword_27FA04728, &unk_25A9FD740);
    return MEMORY[0x277D84F90];
  }

  v41 = v1;
  sub_25A87817C(&v49, v52);
  v13 = v53;
  v14 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = v15;
  v43 = *(v15 + 16);
  if (!v43)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_34:

    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    return v4;
  }

  v17 = 0;
  v18 = v15 + 32;
  v4 = MEMORY[0x277D84F90];
  v42 = v15;
  while (1)
  {
    v5 = *(v16 + 16);
    if (v17 >= v5)
    {
      break;
    }

    sub_25A87500C(v18, v48);
    sub_25A87500C(v48, v47);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v44, &v49);
      sub_25A872F24(&v49, &v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
        v55 = v4;
      }

      v22 = v4[2];
      v21 = v4[3];
      if (v22 >= v21 >> 1)
      {
        v4 = sub_25A96759C((v21 > 1), v22 + 1, 1, v4);
        v55 = v4;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      v23 = *(&v45 + 1);
      v24 = v46;
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v26 = *(*(v23 - 8) + 64);
      MEMORY[0x28223BE20](v25);
      v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      sub_25A8F012C(v22, v28, &v55, v23, v24);
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      v16 = v42;
      goto LABEL_9;
    }

    v46 = 0;
    v45 = 0u;
    v44 = 0u;
    sub_25A878194(&v44, &qword_27FA04B68, &qword_25A9F9EC0);
    sub_25A87500C(v48, &v49);
    if (swift_dynamicCast())
    {
      if (v44 == __PAIR128__(0xE700000000000000, 0x7369786177656ELL))
      {

        goto LABEL_22;
      }

      v30 = sub_25A9989E8();

      if (v30)
      {
        goto LABEL_22;
      }
    }

    if ((static MorpheusUtils.isNil(_:)(v48) & 1) == 0)
    {
      v33 = v41;
      v34 = sub_25A8F0FA0(v48, 13);
      v41 = v33;
      if (v33)
      {

        sub_25A874F54();
        swift_allocError();
        *v39 = 100;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        return v4;
      }

      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
      }

      v37 = v4[2];
      v36 = v4[3];
      if (v37 >= v36 >> 1)
      {
        v4 = sub_25A96759C((v36 > 1), v37 + 1, 1, v4);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      *(&v50 + 1) = type metadata accessor for MLXArray();
      v51 = &off_286C13590;
      *&v49 = v35;
      v4[2] = v37 + 1;
      v19 = &v4[5 * v37];
      goto LABEL_8;
    }

LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
    }

    v32 = v4[2];
    v31 = v4[3];
    if (v32 >= v31 >> 1)
    {
      v4 = sub_25A96759C((v31 > 1), v32 + 1, 1, v4);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    *(&v50 + 1) = &type metadata for MLXNewAxisIndex;
    v51 = &off_286C13760;
    v19 = &v4[5 * v32];
    v4[2] = v32 + 1;
LABEL_8:
    sub_25A87817C(&v49, (v19 + 4));
LABEL_9:
    ++v17;
    v18 += 32;
    if (v43 == v17)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_38:
  v4 = sub_25A96759C((v5 > 1), v3 + 1, 1, v4);
  v55 = v4;
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v6 = *(&v50 + 1);
  v7 = v51;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_25A8F012C(v3, v11, &v55, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v49);
  return v4;
}

uint64_t sub_25A8ECC90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_25A8EC55C(a1);
  if (!v3)
  {
    v7 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = (sub_25A958DBC)(v7);

    swift_beginAccess();
    result = mlx_array_size(*(v8 + 16));
    if (result == 1 && (v9 = *(sub_25A9616CC() + 16), result = , !v9))
    {
      sub_25A8E796C(a2);
    }

    else
    {
      a2[3] = v5;
      *a2 = v8;
    }
  }

  return result;
}

uint64_t sub_25A8ECDF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  sub_25A937570(0, v6, 0);
  v7 = v6;
  result = v31;
  v30 = v4;
  v28 = a1;
  v29 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v5;
    v13 = v5;
    while (v4)
    {
      if (!v12)
      {
        goto LABEL_29;
      }

      v14 = *v9 * *v10;
      if ((*v9 * *v10) >> 64 != v14 >> 63)
      {
        goto LABEL_30;
      }

      if (v14 < 0)
      {
        v15 = __OFSUB__(0, v14);
        v14 = -v14;
        if (v15)
        {
          goto LABEL_35;
        }
      }

      v32 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        v25 = v13;
        v26 = v7;
        sub_25A937570((v16 > 1), v17 + 1, 1);
        v13 = v25;
        v7 = v26;
        result = v32;
      }

      --v12;
      *(result + 16) = v17 + 1;
      *(result + 8 * v17 + 32) = v14;
      --v4;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v5;
LABEL_16:
  if (v30 > v13)
  {
    while (v7 < v30)
    {
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_32;
      }

      if (v13 == v7)
      {
        return result;
      }

      if (v7 >= v13)
      {
        goto LABEL_33;
      }

      v19 = *(v28 + 32 + 8 * v7);
      v20 = *(v29 + 32 + 8 * v7);
      v21 = v19 * v20;
      if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
      {
        goto LABEL_34;
      }

      if (v21 < 0)
      {
        v15 = __OFSUB__(0, v21);
        v21 = -v21;
        if (v15)
        {
          goto LABEL_36;
        }
      }

      v33 = result;
      v23 = *(result + 16);
      v22 = *(result + 24);
      if (v23 >= v22 >> 1)
      {
        v27 = v7;
        v24 = v13;
        sub_25A937570((v22 > 1), v23 + 1, 1);
        v7 = v27;
        v13 = v24;
        result = v33;
      }

      *(result + 16) = v23 + 1;
      *(result + 8 * v23 + 32) = v21;
      ++v7;
      if (v18 == v30)
      {
        return result;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8ED010(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 8;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 8);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED14C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 7);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED288(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 6);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED3BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 5);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED4E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 8;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 4);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED624(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 3);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED760(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 2);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED894(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 1);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED9C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 10);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDAFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 9);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDC30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 0);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDD5C()
{
  v1 = v0;
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v3 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v1[2]);
  [v3 unlock];
  v4 = mlx_array_dtype(v1[2]);
  if (sub_25A956420(v4))
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v12[0];
    v6 = mlx_array_dtype(v1[2]);
    if (sub_25A956420(v6))
    {
      v12[0] = mlx_array_new();
      mlx_astype(v12, v1[2], 0, *(v5 + 16));
      v7 = v12[0];
      *(swift_allocObject() + 16) = v7;
    }

    else
    {
    }

    v8 = sub_25A8EDD5C(v9);
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    mlx_array_item_BOOL(v12, v1[2]);
    v8 = v12[0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_25A8EDF50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EDF58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EDF9C()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) >= 8u)
  {
    v5 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v5) == 8)
    {
      v12[0] = 0;
      mlx_array_item_int64(v12, v0[2]);
      result = v12[0];
    }

    else
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v6 = v12[0];
      v7 = mlx_array_dtype(v0[2]);
      if (sub_25A956420(v7) == 8)
      {
      }

      else
      {
        v12[0] = mlx_array_new();
        mlx_astype(v12, v0[2], 8, *(v6 + 16));

        v9 = v12[0];
        v8 = swift_allocObject();
        *(v8 + 16) = v9;
      }

      v10 = sub_25A8EDF9C(v8);

      result = v10;
    }
  }

  else
  {
    result = sub_25A961B18();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EE1C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE1CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE218()
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v4 = sub_25A961B18();
  v5 = v4;
  if (v4 >= 0xFFFFFFFF80000000)
  {
    if (v4 <= 0x7FFFFFFF)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_7:
    v6 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v6) == 7)
    {
      LODWORD(v14[0]) = 0;
      mlx_array_item_int32(v14, v0[2]);
      v5 = LODWORD(v14[0]);
      goto LABEL_14;
    }

    v2 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v7 = v2;
  v8 = v14[0];
  v9 = mlx_array_dtype(v7[2]);
  if (sub_25A956420(v9) == 7)
  {
  }

  else
  {
    v14[0] = mlx_array_new();
    mlx_astype(v14, v7[2], 7, *(v8 + 16));

    v11 = v14[0];
    v10 = swift_allocObject();
    *(v10 + 16) = v11;
  }

  v5 = sub_25A8EE218(v10);

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A8EE460(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE468);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE4B4()
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v4 = sub_25A961B18();
  v5 = v4;
  if (v4 >= -32768)
  {
    if (v4 < 0x8000)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_7:
    v6 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v6) == 6)
    {
      LOWORD(v14[0]) = 0;
      mlx_array_item_int16(v14, v0[2]);
      v5 = LOWORD(v14[0]);
      goto LABEL_14;
    }

    v2 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v7 = v2;
  v8 = v14[0];
  v9 = mlx_array_dtype(v7[2]);
  if (sub_25A956420(v9) == 6)
  {
  }

  else
  {
    v14[0] = mlx_array_new();
    mlx_astype(v14, v7[2], 6, *(v8 + 16));

    v11 = v14[0];
    v10 = swift_allocObject();
    *(v10 + 16) = v11;
  }

  v5 = sub_25A8EE4B4(v10);

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A8EE6F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE6FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE748()
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v4 = sub_25A961B18();
  v5 = v4;
  if (v4 >= -128)
  {
    if (v4 <= 127)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_7:
    v6 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v6) == 5)
    {
      LOBYTE(v14[0]) = 0;
      mlx_array_item_int8(v14, v0[2]);
      v5 = LOBYTE(v14[0]);
      goto LABEL_14;
    }

    v2 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v7 = v2;
  v8 = v14[0];
  v9 = mlx_array_dtype(v7[2]);
  if (sub_25A956420(v9) == 5)
  {
  }

  else
  {
    v14[0] = mlx_array_new();
    mlx_astype(v14, v7[2], 5, *(v8 + 16));

    v11 = v14[0];
    v10 = swift_allocObject();
    *(v10 + 16) = v11;
  }

  v5 = sub_25A8EE748(v10);

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A8EE988(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE990);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE9DC()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) >= 8u)
  {
    v5 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v5) == 4)
    {
      v12[0] = 0;
      mlx_array_item_uint64(v12, v0[2]);
      result = v12[0];
    }

    else
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v6 = v12[0];
      v7 = mlx_array_dtype(v0[2]);
      if (sub_25A956420(v7) == 4)
      {
      }

      else
      {
        v12[0] = mlx_array_new();
        mlx_astype(v12, v0[2], 4, *(v6 + 16));

        v9 = v12[0];
        v8 = swift_allocObject();
        *(v8 + 16) = v9;
      }

      v10 = sub_25A8EE9DC(v8);

      result = v10;
    }
  }

  else
  {
    result = sub_25A961E68();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EEC04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EEC0CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EEC58()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) < 8u)
  {
    v4 = sub_25A961E68();
    if (!HIDWORD(v4))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v5 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v5) == 3)
  {
    LODWORD(v12[0]) = 0;
    mlx_array_item_uint32(v12, v0[2]);
    v4 = LODWORD(v12[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v12[0];
    v7 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v7) == 3)
    {
    }

    else
    {
      v12[0] = mlx_array_new();
      mlx_astype(v12, v0[2], 3, *(v6 + 16));

      v9 = v12[0];
      v8 = swift_allocObject();
      *(v8 + 16) = v9;
    }

    v4 = sub_25A8EEC58(v8);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25A8EEE8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EEE94);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EEEE0()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) < 8u)
  {
    v4 = sub_25A961E68();
    if (!(v4 >> 16))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v5 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v5) == 2)
  {
    LOWORD(v12[0]) = 0;
    mlx_array_item_uint16(v12, v0[2]);
    v4 = LOWORD(v12[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v12[0];
    v7 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v7) == 2)
    {
    }

    else
    {
      v12[0] = mlx_array_new();
      mlx_astype(v12, v0[2], 2, *(v6 + 16));

      v9 = v12[0];
      v8 = swift_allocObject();
      *(v8 + 16) = v9;
    }

    v4 = sub_25A8EEEE0(v8);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}