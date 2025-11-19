uint64_t sub_1D5E1EA6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v27 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v8;
  v29 = result;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + (v9 | (v3 << 6)));
      sub_1D7264A0C();
      v30 = v10;
      sub_1D72621EC();

      v14 = sub_1D7264A5C();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(a2 + 48) + v16);
        v19 = 0xD00000000000001CLL;
        if (v18 != 1)
        {
          v19 = 0xD000000000000028;
        }

        v20 = "unusedProperties";
        if (v18 != 1)
        {
          v20 = "duplicateNewsroomIdentifiers";
        }

        v21 = v18 == 0;
        if (*(*(a2 + 48) + v16))
        {
          v22 = v19;
        }

        else
        {
          v22 = 0xD000000000000010;
        }

        v23 = "bility-news-plus-via-hardware";
        if (!v21)
        {
          v23 = v20;
        }

        if (v13)
        {
          v24 = v13 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
          v25 = "unusedProperties";
          if (v13 != 1)
          {
            v25 = "duplicateNewsroomIdentifiers";
          }
        }

        else
        {
          v24 = 0xD000000000000010;
          v25 = "bility-news-plus-via-hardware";
        }

        if (v22 == v24 && (v23 | 0x8000000000000000) == (v25 | 0x8000000000000000))
        {
          break;
        }

        v26 = sub_1D72646CC();

        if (v26)
        {
          goto LABEL_38;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_38:
      v8 = v28;
      result = v29;
      v7 = v30;
    }

    while (v30);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v27 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E1ED0C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v25 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v28 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0xD000000000000014;
      v21 = 0x80000001D73BA280;
      if (!v15)
      {
        goto LABEL_28;
      }

LABEL_19:
      if (v15 == 1)
      {
        v22 = 0xD000000000000021;
      }

      else
      {
        v22 = 0x7461636572706564;
      }

      if (v15 == 1)
      {
        v23 = 0x80000001D73BA2A0;
      }

      else
      {
        v23 = 0xEA00000000006465;
      }

      if (v20 == v22)
      {
        goto LABEL_29;
      }

LABEL_30:
      v24 = sub_1D72646CC();

      if (v24)
      {
        goto LABEL_34;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v20 = 0x7461636572706564;
    v21 = 0xEA00000000006465;
    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0xD000000000000021;
      v21 = 0x80000001D73BA2A0;
    }

    if (v15)
    {
      goto LABEL_19;
    }

LABEL_28:
    v23 = 0x80000001D73BA280;
    if (v20 != 0xD000000000000014)
    {
      goto LABEL_30;
    }

LABEL_29:
    if (v21 != v23)
    {
      goto LABEL_30;
    }

LABEL_34:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v25 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E1EFE4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = *(result + 56);
    v32 = result + 56;
    v5 = 1 << *(result + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & v4;
    v8 = (v5 + 63) >> 6;
    v9 = a2 + 56;
    v33 = v8;
    v34 = result;
    if ((v6 & v4) != 0)
    {
LABEL_7:
      v10 = __clz(__rbit64(v7));
      v11 = (v7 - 1) & v7;
      goto LABEL_13;
    }

LABEL_8:
    v12 = v3;
    do
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v13 = *(v32 + 8 * v3);
      ++v12;
    }

    while (!v13);
    v10 = __clz(__rbit64(v13));
    v11 = (v13 - 1) & v13;
LABEL_13:
    v14 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v14;
    v16 = v14[1];
    sub_1D7264A0C();
    v35 = v11;
    switch(v16)
    {
      case 0uLL:
        v17 = 0;
        goto LABEL_30;
      case 1uLL:
        v17 = 1;
        goto LABEL_30;
      case 2uLL:
        v17 = 2;
        goto LABEL_30;
      case 3uLL:
        v17 = 3;
        goto LABEL_30;
      case 4uLL:
        v17 = 4;
        goto LABEL_30;
      case 5uLL:
        v17 = 5;
        goto LABEL_30;
      case 6uLL:
        v17 = 6;
        goto LABEL_30;
      case 7uLL:
        v17 = 7;
        goto LABEL_30;
      case 8uLL:
        v17 = 8;
        goto LABEL_30;
      case 9uLL:
        v17 = 9;
        goto LABEL_30;
      case 0xAuLL:
        v17 = 10;
        goto LABEL_30;
      case 0xBuLL:
        v17 = 11;
        goto LABEL_30;
      case 0xCuLL:
        v17 = 12;
        goto LABEL_30;
      case 0xDuLL:
        v17 = 13;
        goto LABEL_30;
      case 0xEuLL:
        v17 = 14;
        goto LABEL_30;
      case 0xFuLL:
        v17 = 15;
LABEL_30:
        MEMORY[0x1DA6FC0B0](v17);
        break;
      default:
        MEMORY[0x1DA6FC0B0](16);

        sub_1D72621EC();
        break;
    }

    v18 = sub_1D7264A5C();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if ((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = (*(a2 + 48) + 16 * v20);
        v24 = *v22;
        v23 = v22[1];
        switch(v23)
        {
          case 0:
            if (v16)
            {
              sub_1D5CBA110(v15, v16);
              v25 = 0;
              goto LABEL_68;
            }

            v30 = *v22;
            v31 = 0;
            goto LABEL_95;
          case 1:
            if (v16 == 1)
            {
              v30 = *v22;
              v31 = 1;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 1;
            goto LABEL_68;
          case 2:
            if (v16 == 2)
            {
              v30 = *v22;
              v31 = 2;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 2;
            goto LABEL_68;
          case 3:
            if (v16 == 3)
            {
              v30 = *v22;
              v31 = 3;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 3;
            goto LABEL_68;
          case 4:
            if (v16 == 4)
            {
              v30 = *v22;
              v31 = 4;
LABEL_95:
              sub_1D5CBA0FC(v30, v31);
LABEL_96:
              sub_1D5CBA0FC(v15, v16);
              v8 = v33;
              result = v34;
              v7 = v35;
              if (v35)
              {
                goto LABEL_7;
              }

              goto LABEL_8;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 4;
LABEL_68:
            sub_1D5CBA0FC(v24, v25);
            sub_1D5CBA0FC(v15, v16);
LABEL_69:
            v20 = (v20 + 1) & v21;
            if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_99;
            }

            break;
          case 5:
            if (v16 == 5)
            {
              v30 = *v22;
              v31 = 5;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 5;
            goto LABEL_68;
          case 6:
            if (v16 == 6)
            {
              v30 = *v22;
              v31 = 6;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 6;
            goto LABEL_68;
          case 7:
            if (v16 == 7)
            {
              v30 = *v22;
              v31 = 7;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 7;
            goto LABEL_68;
          case 8:
            if (v16 == 8)
            {
              v30 = *v22;
              v31 = 8;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 8;
            goto LABEL_68;
          case 9:
            if (v16 == 9)
            {
              v30 = *v22;
              v31 = 9;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 9;
            goto LABEL_68;
          case 10:
            if (v16 == 10)
            {
              v30 = *v22;
              v31 = 10;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 10;
            goto LABEL_68;
          case 11:
            if (v16 == 11)
            {
              v30 = *v22;
              v31 = 11;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 11;
            goto LABEL_68;
          case 12:
            if (v16 == 12)
            {
              v30 = *v22;
              v31 = 12;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 12;
            goto LABEL_68;
          case 13:
            if (v16 == 13)
            {
              v30 = *v22;
              v31 = 13;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 13;
            goto LABEL_68;
          case 14:
            if (v16 == 14)
            {
              v30 = *v22;
              v31 = 14;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 14;
            goto LABEL_68;
          case 15:
            if (v16 == 15)
            {
              v30 = *v22;
              v31 = 15;
              goto LABEL_95;
            }

            sub_1D5CBA110(v15, v16);
            v25 = 15;
            goto LABEL_68;
          default:
            if (v16 < 0x10)
            {
              v26 = v22[1];
              sub_1D5CBA110(v15, v16);
              sub_1D5CBA110(v24, v26);
              v25 = v26;
              goto LABEL_68;
            }

            if (v24 == v15 && v23 == v16)
            {

              v30 = v15;
              v31 = v16;
              goto LABEL_95;
            }

            v28 = v22[1];
            v29 = sub_1D72646CC();
            sub_1D5CBA110(v15, v16);
            sub_1D5CBA110(v24, v28);
            sub_1D5CBA0FC(v24, v28);
            sub_1D5CBA0FC(v15, v16);
            if (v29)
            {
              goto LABEL_96;
            }

            goto LABEL_69;
        }
      }
    }

LABEL_99:
    sub_1D5CBA0FC(v15, v16);
  }

  return 0;
}

uint64_t sub_1D5E1F5F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v30 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v31 = v9;
  v32 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    v33 = v12;
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 2)
      {
        break;
      }

      if (v20 == 3)
      {
        v21 = 0xD000000000000011;
        v22 = 0x80000001D73BAB30;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

      else if (v20 == 4)
      {
        v21 = 0x656C626978656C66;
        v22 = 0xEE00746867696548;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v21 = 0xD000000000000014;
        v22 = 0x80000001D73BAB60;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

LABEL_24:
      if (v15)
      {
        v23 = v15 == 1;
        if (v15 == 1)
        {
          v24 = 0x656C626978656C66;
        }

        else
        {
          v24 = 0xD000000000000013;
        }

        v25 = 0xED00006874646957;
        v26 = 0x80000001D73BAB10;
        goto LABEL_42;
      }

      v28 = 0x80000001D73BAAE0;
      if (v21 == 0xD000000000000012)
      {
        goto LABEL_46;
      }

LABEL_47:
      v29 = sub_1D72646CC();

      if (v29)
      {
        goto LABEL_57;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v18))
    {
      v21 = 0xD000000000000012;
      v22 = 0x80000001D73BAAE0;
      if (v15 > 2)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v20 == 1)
    {
      v21 = 0x656C626978656C66;
    }

    else
    {
      v21 = 0xD000000000000013;
    }

    if (v20 == 1)
    {
      v22 = 0xED00006874646957;
    }

    else
    {
      v22 = 0x80000001D73BAB10;
    }

    if (v15 <= 2)
    {
      goto LABEL_24;
    }

LABEL_34:
    v27 = 0xD000000000000014;
    if (v15 == 4)
    {
      v27 = 0x656C626978656C66;
    }

    v26 = 0xEE00746867696548;
    if (v15 != 4)
    {
      v26 = 0x80000001D73BAB60;
    }

    v23 = v15 == 3;
    if (v15 == 3)
    {
      v24 = 0xD000000000000011;
    }

    else
    {
      v24 = v27;
    }

    v25 = 0x80000001D73BAB30;
LABEL_42:
    if (v23)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    if (v21 != v24)
    {
      goto LABEL_47;
    }

LABEL_46:
    if (v22 != v28)
    {
      goto LABEL_47;
    }

LABEL_57:
    v9 = v31;
    v3 = v32;
    v8 = v33;
  }

  while (v33);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v30 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E1FA08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v30 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v31 = v9;
  v32 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v33 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      v21 = 0x6867696C68676968;
      if (v20 != 2)
      {
        v21 = 0x64657463656C6573;
      }

      v22 = 0xEB00000000646574;
      if (v20 != 2)
      {
        v22 = 0xE800000000000000;
      }

      v23 = 0x64656C6261736964;
      if (*(*(a2 + 48) + v18))
      {
        v23 = 0x64657375636F66;
      }

      v24 = 0xE700000000000000;
      if (!*(*(a2 + 48) + v18))
      {
        v24 = 0xE800000000000000;
      }

      v25 = *(*(a2 + 48) + v18) <= 1u ? v23 : v21;
      v26 = *(*(a2 + 48) + v18) <= 1u ? v24 : v22;
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v28 = 0x6867696C68676968;
      }

      else
      {
        v28 = 0x64657463656C6573;
      }

      if (v15 == 2)
      {
        v27 = 0xEB00000000646574;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v25 == v28)
      {
        goto LABEL_42;
      }

LABEL_43:
      v29 = sub_1D72646CC();

      if (v29)
      {
        goto LABEL_47;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v15)
    {
      v27 = 0xE800000000000000;
      if (v25 == 0x64656C6261736964)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v27 = 0xE700000000000000;
    if (v25 != 0x64657375636F66)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (v26 != v27)
    {
      goto LABEL_43;
    }

LABEL_47:
    v9 = v31;
    v3 = v32;
    v8 = v33;
  }

  while (v33);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v30 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E1FD58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v27 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_1D7264A0C();
      v15 = v14 ? 0x73676E69646E6962 : 0x736E6F6974706FLL;
      v16 = v14 ? 0xE800000000000000 : 0xE700000000000000;
      sub_1D72621EC();

      v17 = sub_1D7264A5C();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19) ? 0x73676E69646E6962 : 0x736E6F6974706FLL;
        v22 = *(*(a2 + 48) + v19) ? 0xE800000000000000 : 0xE700000000000000;
        if (v21 == v15 && v22 == v16)
        {
          break;
        }

        v24 = sub_1D72646CC();

        if (v24)
        {
          goto LABEL_35;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v25;
      v3 = v26;
      v8 = v27;
    }

    while (v27);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E1FFA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 2)
      {
        break;
      }

      if (v20 == 3)
      {
        v22 = 0xE500000000000000;
        v21 = 0x6567616D69;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

      else if (v20 == 4)
      {
        v22 = 0xE400000000000000;
        v21 = 1633905005;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v21 = 0x66456C6175736976;
        v22 = 0xEC00000074636566;
        if (v15 > 2)
        {
          goto LABEL_34;
        }
      }

LABEL_24:
      if (v15)
      {
        v23 = v15 == 1;
        if (v15 == 1)
        {
          v24 = 0x72476C6169646172;
        }

        else
        {
          v24 = 0x65695674696C7073;
        }

        v25 = 0xEE00746E65696461;
        v26 = 0xE900000000000077;
        goto LABEL_42;
      }

      v28 = 0xE800000000000000;
      if (v21 == 0x746E656964617267)
      {
        goto LABEL_46;
      }

LABEL_47:
      v29 = sub_1D72646CC();

      if (v29)
      {
        goto LABEL_57;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v18))
    {
      v22 = 0xE800000000000000;
      v21 = 0x746E656964617267;
      if (v15 > 2)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v20 == 1)
    {
      v21 = 0x72476C6169646172;
    }

    else
    {
      v21 = 0x65695674696C7073;
    }

    if (v20 == 1)
    {
      v22 = 0xEE00746E65696461;
    }

    else
    {
      v22 = 0xE900000000000077;
    }

    if (v15 <= 2)
    {
      goto LABEL_24;
    }

LABEL_34:
    v27 = 0x66456C6175736976;
    if (v15 == 4)
    {
      v27 = 1633905005;
    }

    v26 = 0xEC00000074636566;
    if (v15 == 4)
    {
      v26 = 0xE400000000000000;
    }

    v23 = v15 == 3;
    if (v15 == 3)
    {
      v24 = 0x6567616D69;
    }

    else
    {
      v24 = v27;
    }

    v25 = 0xE500000000000000;
LABEL_42:
    if (v23)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    if (v21 != v24)
    {
      goto LABEL_47;
    }

LABEL_46:
    if (v22 != v28)
    {
      goto LABEL_47;
    }

LABEL_57:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E203CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v22 = result;
LABEL_7:
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_14:
    v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    if (v14)
    {
      v15 = 0x646165687473616DLL;
    }

    else
    {
      v15 = 0x6465727574616566;
    }

    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      if (*(*(a2 + 48) + v18))
      {
        v20 = 0x646165687473616DLL;
      }

      else
      {
        v20 = 0x6465727574616566;
      }

      if (v20 == v15)
      {
        result = swift_bridgeObjectRelease_n();
        v3 = v22;
        goto LABEL_7;
      }

      v21 = sub_1D72646CC();
      result = swift_bridgeObjectRelease_n();
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v22;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E205E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v33 = v9;
  v34 = result;
  if (v8)
  {
LABEL_7:
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
    goto LABEL_13;
  }

LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
LABEL_13:
      v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_1D7264A0C();
      FormatItemTrait.rawValue.getter();
      sub_1D72621EC();

      v16 = sub_1D7264A5C();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }

      v35 = v12;
      v19 = ~v17;
      while (2)
      {
        v20 = 0xE400000000000000;
        v21 = 1835365481;
        switch(*(*(a2 + 48) + v18))
        {
          case 1:
            v20 = 0xE300000000000000;
            v21 = 7364967;
            break;
          case 2:
            v21 = 0x69616E626D756874;
            v20 = 0xE90000000000006CLL;
            break;
          case 3:
            v20 = 0xE500000000000000;
            v21 = 0x6F65646976;
            break;
          case 4:
            v20 = 0xE700000000000000;
            v21 = 0x656E696C66666FLL;
            break;
          case 5:
            v20 = 0xE800000000000000;
            v21 = 0x6465727574616566;
            break;
          case 6:
            v20 = 0xE500000000000000;
            v21 = 0x7265766F63;
            break;
          case 7:
            v20 = 0xE800000000000000;
            v21 = 0x656E696C64616568;
            break;
          case 8:
            v20 = 0xE800000000000000;
            v21 = 0x7469617274726F70;
            break;
          case 9:
            v21 = 0x70616373646E616CLL;
            v20 = 0xE900000000000065;
            break;
          case 0xA:
            v20 = 0xE600000000000000;
            v21 = 0x657261757173;
            break;
          case 0xB:
            v20 = 0xE300000000000000;
            v21 = 6448503;
            break;
          case 0xC:
            v20 = 0xE800000000000000;
            v21 = 0x7373656363416F6ELL;
            break;
          case 0xD:
            v20 = 0xE200000000000000;
            v21 = 25697;
            break;
          case 0xE:
            v21 = 0xD000000000000011;
            v20 = 0x80000001D73B9220;
            break;
          case 0xF:
            v21 = 0xD000000000000012;
            v20 = 0x80000001D73B9240;
            break;
          case 0x10:
            v21 = 0x6854657261757173;
            v20 = 0xEF6C69616E626D75;
            break;
          case 0x11:
            v21 = 0xD000000000000014;
            v20 = 0x80000001D73B9270;
            break;
          case 0x12:
            v21 = 0xD000000000000015;
            v20 = 0x80000001D73B9290;
            break;
          case 0x13:
            v21 = 0xD000000000000012;
            v20 = 0x80000001D73B92B0;
            break;
          case 0x14:
            v20 = 0xE800000000000000;
            v21 = 0x79726F6765746163;
            break;
          case 0x15:
            v21 = 0xD000000000000010;
            v20 = 0x80000001D73B92D0;
            break;
          case 0x16:
            v21 = 0x6172546F69647561;
            v20 = 0xEA00000000006B63;
            break;
          case 0x17:
            v21 = 0x63537374726F7073;
            v20 = 0xEB0000000065726FLL;
            break;
          case 0x18:
            v21 = 0x74537374726F7073;
            v20 = 0xEF73676E69646E61;
            break;
          case 0x19:
            v21 = 0x74726F7053676174;
            goto LABEL_36;
          case 0x1A:
            v21 = 0x6C61636F4C676174;
            v20 = 0xEC0000007377654ELL;
            break;
          case 0x1B:
            v21 = 0x707377654E676174;
            v20 = 0xEC00000072657061;
            break;
          case 0x1C:
            v20 = 0xE800000000000000;
            v21 = 0x6369706F54676174;
            break;
          case 0x1D:
            v21 = 0x6E6E616843676174;
            v20 = 0xEA00000000006C65;
            break;
          case 0x1E:
            v21 = 0x72427374726F7073;
            v20 = 0xED000074656B6361;
            break;
          case 0x1F:
            v21 = 0x6F427374726F7073;
            v22 = 0x65726F635378;
            goto LABEL_66;
          case 0x20:
            v21 = 0x694C7374726F7073;
            v20 = 0xEF65726F6353656ELL;
            break;
          case 0x21:
            v21 = 0xD000000000000012;
            v20 = 0x80000001D73B9370;
            break;
          case 0x22:
            v21 = 0x654B7374726F7073;
            v20 = 0xEF726579616C5079;
            break;
          case 0x23:
            v21 = 0x76457374726F7073;
            v20 = 0xEB00000000746E65;
            break;
          case 0x24:
            v21 = 0x7463657269646572;
LABEL_36:
            v20 = 0xE900000000000073;
            break;
          case 0x25:
            v20 = 0xE700000000000000;
            v21 = 0x64656B636F6C62;
            break;
          case 0x26:
            v21 = 0x6B636F6C42746F6ELL;
            v20 = 0xEA00000000006465;
            break;
          case 0x27:
            v21 = 0x6C69787541736168;
            v20 = 0xEC00000079726169;
            break;
          case 0x28:
            v20 = 0xE600000000000000;
            v21 = 0x656C7A7A7570;
            break;
          case 0x29:
            v21 = 0x7954656C7A7A7570;
            v20 = 0xEA00000000006570;
            break;
          case 0x2A:
            v21 = 0x6554656C7A7A7570;
            v20 = 0xEC00000072657361;
            break;
          case 0x2B:
            v21 = 0x7453656C7A7A7570;
            v20 = 0xEF63697473697461;
            break;
          case 0x2C:
            v21 = 0xD000000000000014;
            v20 = 0x80000001D73B93F0;
            break;
          case 0x2D:
            v21 = 0xD00000000000001ALL;
            v20 = 0x80000001D73B9410;
            break;
          case 0x2E:
            v21 = 0x756854656772616CLL;
            v22 = 0x6C69616E626DLL;
LABEL_66:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 0x2F:
            v21 = 0xD000000000000013;
            v20 = 0x80000001D73B9440;
            break;
          case 0x30:
            v21 = 0xD000000000000017;
            v20 = 0x80000001D73B9460;
            break;
          case 0x31:
            v21 = 0xD000000000000014;
            v20 = 0x80000001D73B9480;
            break;
          default:
            break;
        }

        v23 = 0xE400000000000000;
        v24 = 1835365481;
        switch(v15)
        {
          case 1:
            v23 = 0xE300000000000000;
            if (v21 == 7364967)
            {
              goto LABEL_163;
            }

            goto LABEL_164;
          case 2:
            v23 = 0xE90000000000006CLL;
            if (v21 != 0x69616E626D756874)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 3:
            v23 = 0xE500000000000000;
            if (v21 != 0x6F65646976)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 4:
            v23 = 0xE700000000000000;
            if (v21 != 0x656E696C66666FLL)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 5:
            v23 = 0xE800000000000000;
            if (v21 != 0x6465727574616566)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 6:
            v23 = 0xE500000000000000;
            if (v21 != 0x7265766F63)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 7:
            v23 = 0xE800000000000000;
            if (v21 != 0x656E696C64616568)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 8:
            v23 = 0xE800000000000000;
            if (v21 != 0x7469617274726F70)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 9:
            v23 = 0xE900000000000065;
            if (v21 != 0x70616373646E616CLL)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 10:
            v23 = 0xE600000000000000;
            if (v21 != 0x657261757173)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 11:
            v23 = 0xE300000000000000;
            if (v21 != 6448503)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 12:
            v23 = 0xE800000000000000;
            if (v21 != 0x7373656363416F6ELL)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 13:
            v23 = 0xE200000000000000;
            if (v21 != 25697)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 14:
            v23 = 0x80000001D73B9220;
            if (v21 != 0xD000000000000011)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 15:
            v23 = 0x80000001D73B9240;
            if (v21 != 0xD000000000000012)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 16:
            v23 = 0xEF6C69616E626D75;
            if (v21 != 0x6854657261757173)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 17:
            v23 = 0x80000001D73B9270;
            if (v21 != 0xD000000000000014)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 18:
            v23 = 0x80000001D73B9290;
            if (v21 != 0xD000000000000015)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 19:
            v23 = 0x80000001D73B92B0;
            if (v21 != 0xD000000000000012)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 20:
            v23 = 0xE800000000000000;
            if (v21 != 0x79726F6765746163)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 21:
            v23 = 0x80000001D73B92D0;
            if (v21 != 0xD000000000000010)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 22:
            v23 = 0xEA00000000006B63;
            if (v21 != 0x6172546F69647561)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 23:
            v25 = 0x63537374726F7073;
            v26 = 6648431;
            goto LABEL_153;
          case 24:
            v23 = 0xEF73676E69646E61;
            if (v21 != 0x74537374726F7073)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 25:
            v27 = 0x74726F7053676174;
            goto LABEL_104;
          case 26:
            v24 = 0x6C61636F4C676174;
            v23 = 0xEC0000007377654ELL;
            goto LABEL_162;
          case 27:
            v28 = 0x707377654E676174;
            v29 = 1919250529;
            goto LABEL_146;
          case 28:
            v23 = 0xE800000000000000;
            if (v21 != 0x6369706F54676174)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 29:
            v23 = 0xEA00000000006C65;
            if (v21 != 0x6E6E616843676174)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 30:
            v23 = 0xED000074656B6361;
            if (v21 != 0x72427374726F7073)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 31:
            v30 = 0x6F427374726F7073;
            v31 = 0x65726F635378;
            goto LABEL_168;
          case 32:
            v23 = 0xEF65726F6353656ELL;
            if (v21 != 0x694C7374726F7073)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 33:
            v23 = 0x80000001D73B9370;
            if (v21 != 0xD000000000000012)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 34:
            v23 = 0xEF726579616C5079;
            if (v21 != 0x654B7374726F7073)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 35:
            v25 = 0x76457374726F7073;
            v26 = 7630437;
LABEL_153:
            v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v21 != v25)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 36:
            v27 = 0x7463657269646572;
LABEL_104:
            v23 = 0xE900000000000073;
            if (v21 != v27)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 37:
            v23 = 0xE700000000000000;
            if (v21 != 0x64656B636F6C62)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 38:
            v23 = 0xEA00000000006465;
            if (v21 != 0x6B636F6C42746F6ELL)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 39:
            v28 = 0x6C69787541736168;
            v29 = 2037539177;
LABEL_146:
            v23 = v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v21 != v28)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 40:
            v23 = 0xE600000000000000;
            if (v21 != 0x656C7A7A7570)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 41:
            v23 = 0xEA00000000006570;
            if (v21 != 0x7954656C7A7A7570)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 42:
            v23 = 0xEC00000072657361;
            if (v21 != 0x6554656C7A7A7570)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 43:
            v23 = 0xEF63697473697461;
            if (v21 != 0x7453656C7A7A7570)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 44:
            v23 = 0x80000001D73B93F0;
            if (v21 != 0xD000000000000014)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 45:
            v23 = 0x80000001D73B9410;
            if (v21 != 0xD00000000000001ALL)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 46:
            v30 = 0x756854656772616CLL;
            v31 = 0x6C69616E626DLL;
LABEL_168:
            v23 = v31 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v21 != v30)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 47:
            v23 = 0x80000001D73B9440;
            if (v21 != 0xD000000000000013)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 48:
            v23 = 0x80000001D73B9460;
            if (v21 != 0xD000000000000017)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          case 49:
            v23 = 0x80000001D73B9480;
            if (v21 != 0xD000000000000014)
            {
              goto LABEL_164;
            }

            goto LABEL_163;
          default:
LABEL_162:
            if (v21 != v24)
            {
              goto LABEL_164;
            }

LABEL_163:
            if (v20 != v23)
            {
LABEL_164:
              v32 = sub_1D72646CC();

              if (v32)
              {
                goto LABEL_171;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_171:
            v9 = v33;
            v3 = v34;
            v8 = v35;
            if (!v35)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E21434(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v31 = v9;
  v32 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = sub_1D5C9F418();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v33 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 2)
      {
        break;
      }

      if (*(*(a2 + 48) + v18) > 4u)
      {
        if (v20 == 5)
        {
          v21 = 0xE800000000000000;
          v22 = 0x6465626D45626577;
          if (v15 <= 2)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v21 = 0xE400000000000000;
          v22 = 1684366694;
          if (v15 <= 2)
          {
            goto LABEL_45;
          }
        }
      }

      else if (v20 == 3)
      {
        v21 = 0xE800000000000000;
        v22 = 0x656E696C64616568;
        if (v15 <= 2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v21 = 0xE500000000000000;
        v22 = 0x6575737369;
        if (v15 <= 2)
        {
          goto LABEL_45;
        }
      }

LABEL_25:
      v23 = 0x6465626D45626577;
      if (v15 != 5)
      {
        v23 = 1684366694;
      }

      v24 = 0xE400000000000000;
      if (v15 == 5)
      {
        v24 = 0xE800000000000000;
      }

      v25 = 0x656E696C64616568;
      if (v15 != 3)
      {
        v25 = 0x6575737369;
      }

      v26 = 0xE500000000000000;
      if (v15 == 3)
      {
        v26 = 0xE800000000000000;
      }

      if (v15 <= 4)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      if (v15 <= 4)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      if (v22 == v27)
      {
        goto LABEL_52;
      }

LABEL_53:
      v30 = sub_1D72646CC();

      if (v30)
      {
        goto LABEL_61;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v18))
    {
      v21 = 0xE300000000000000;
      v22 = 6775156;
      if (v15 <= 2)
      {
        goto LABEL_45;
      }

      goto LABEL_25;
    }

    if (v20 == 1)
    {
      v22 = 0x72656874616577;
    }

    else
    {
      v22 = 0x6C6C6177796170;
    }

    v21 = 0xE700000000000000;
    if (v15 > 2)
    {
      goto LABEL_25;
    }

LABEL_45:
    if (v15)
    {
      if (v15 == 1)
      {
        v29 = 0x72656874616577;
      }

      else
      {
        v29 = 0x6C6C6177796170;
      }

      v28 = 0xE700000000000000;
      if (v22 == v29)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v28 = 0xE300000000000000;
    if (v22 != 6775156)
    {
      goto LABEL_53;
    }

LABEL_52:
    if (v21 != v28)
    {
      goto LABEL_53;
    }

LABEL_61:
    v9 = v31;
    v3 = v32;
    v8 = v33;
  }

  while (v33);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E21790(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1D72649FC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5E218E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatRegex() - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v36 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v23 = a2 + 56;
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v15;
    v40 = a1;
    v41 = v11;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(v15 + 72);
        sub_1D5E2A7E4(*(a1 + 48) + v27 * (v24 | (v17 << 6)), v16, type metadata accessor for FormatRegex);
        sub_1D5E2A84C(v16, v11, type metadata accessor for FormatRegex);
        sub_1D7264A0C();
        v28 = *v11;
        v29 = v11[1];
        sub_1D72621EC();
        v30 = sub_1D7264A5C();
        v31 = -1 << *(a2 + 32);
        v32 = v30 & ~v31;
        if (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          break;
        }

        v33 = ~v31;
        while (1)
        {
          sub_1D5E2A7E4(*(a2 + 48) + v32 * v27, v7, type metadata accessor for FormatRegex);
          if (*v7 == v28 && v7[1] == v29)
          {
            break;
          }

          v35 = sub_1D72646CC();
          sub_1D5E1A778(v7);
          if (v35)
          {
            goto LABEL_23;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_1D5E1A778(v7);
LABEL_23:
        v11 = v41;
        sub_1D5E1A778(v41);
        v15 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

LABEL_26:
      sub_1D5E1A778(v41);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D5E21BD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v35 = v9;
  v36 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = sub_1D6950A98();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v37 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v18) > 5u)
      {
        if (v20 == 6)
        {
          v26 = 0xE800000000000000;
          v25 = 0x73676E69646E6962;
          if (v15 <= 3)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v26 = 0xE300000000000000;
          v25 = 7105633;
          if (v15 <= 3)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        if (v20 == 4)
        {
          v25 = 0x6574616C706D6574;
        }

        else
        {
          v25 = 0x747865746E6F63;
        }

        if (v20 == 4)
        {
          v26 = 0xE800000000000000;
        }

        else
        {
          v26 = 0xE700000000000000;
        }

        if (v15 <= 3)
        {
          goto LABEL_31;
        }
      }

LABEL_43:
      v28 = 0x73676E69646E6962;
      if (v15 != 6)
      {
        v28 = 7105633;
      }

      v29 = 0xE300000000000000;
      if (v15 == 6)
      {
        v29 = 0xE800000000000000;
      }

      v30 = 0x6574616C706D6574;
      if (v15 != 4)
      {
        v30 = 0x747865746E6F63;
      }

      v31 = 0xE700000000000000;
      if (v15 == 4)
      {
        v31 = 0xE800000000000000;
      }

      if (v15 <= 5)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      if (v15 <= 5)
      {
        v27 = v31;
      }

      else
      {
        v27 = v29;
      }

      if (v25 == v32)
      {
        goto LABEL_71;
      }

LABEL_72:
      v34 = sub_1D72646CC();

      if (v34)
      {
        goto LABEL_78;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = 0x40736E6F6974706FLL;
    v22 = 0x726F73727563;
    if (v20 == 2)
    {
      v22 = 0x40736E6F6974706FLL;
    }

    v23 = 0xEE0074756F79616CLL;
    if (v20 != 2)
    {
      v23 = 0xE600000000000000;
    }

    if (!*(*(a2 + 48) + v18))
    {
      v21 = 0x736E6F6974706FLL;
    }

    v24 = 0xEC000000646E6962;
    if (!*(*(a2 + 48) + v18))
    {
      v24 = 0xE700000000000000;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v25 = v21;
    }

    else
    {
      v25 = v22;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v23;
    }

    if (v15 > 3)
    {
      goto LABEL_43;
    }

LABEL_31:
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = 0x40736E6F6974706FLL;
      }

      else
      {
        v33 = 0x726F73727563;
      }

      if (v15 == 2)
      {
        v27 = 0xEE0074756F79616CLL;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      if (v25 == v33)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (!v15)
    {
      v27 = 0xE700000000000000;
      if (v25 == 0x736E6F6974706FLL)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    v27 = 0xEC000000646E6962;
    if (v25 != 0x40736E6F6974706FLL)
    {
      goto LABEL_72;
    }

LABEL_71:
    if (v26 != v27)
    {
      goto LABEL_72;
    }

LABEL_78:
    v9 = v35;
    v3 = v36;
    v8 = v37;
  }

  while (v37);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E21FA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v29 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = v8;
  v31 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = sub_1D6954F90(*(a2 + 40), *(*(v3 + 48) + (v10 | (v4 << 6))));
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v16) <= 5u)
      {
        if (v18 == 4)
        {
          v19 = 0x6275536563726F66;
          v20 = 0xEC00000064657564;
          if (v13 <= 3)
          {
            goto LABEL_52;
          }

          goto LABEL_24;
        }

        v19 = 0xD000000000000016;
        v20 = 0x80000001D73BB860;
LABEL_51:
        if (v13 <= 3)
        {
          goto LABEL_52;
        }

        goto LABEL_24;
      }

      if (v18 == 6)
      {
        v19 = 0xD000000000000017;
        v20 = 0x80000001D73BB880;
        if (v13 <= 3)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v19 = 0xD00000000000001CLL;
        v20 = 0x80000001D73BB8A0;
        if (v13 <= 3)
        {
          goto LABEL_52;
        }
      }

LABEL_24:
      v21 = 0xD000000000000017;
      if (v13 != 6)
      {
        v21 = 0xD00000000000001CLL;
      }

      v22 = 0x80000001D73BB8A0;
      if (v13 == 6)
      {
        v22 = 0x80000001D73BB880;
      }

      v23 = 0xD000000000000016;
      if (v13 == 4)
      {
        v23 = 0x6275536563726F66;
      }

      v24 = 0xEC00000064657564;
      if (v13 != 4)
      {
        v24 = 0x80000001D73BB860;
      }

      if (v13 <= 5)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v13 <= 5)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v19 == v25)
      {
        goto LABEL_67;
      }

LABEL_68:
      v28 = sub_1D72646CC();

      if (v28)
      {
        goto LABEL_72;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v16) > 1u)
    {
      v19 = 0x6E6964756C637865;
      v20 = 0xEF776F6461685367;
      if (v18 != 2)
      {
        v19 = 0x7263536563726F66;
        v20 = 0xEA00000000006D69;
        if (v13 <= 3)
        {
          goto LABEL_52;
        }

        goto LABEL_24;
      }

      goto LABEL_51;
    }

    if (*(*(a2 + 48) + v16))
    {
      v19 = 0xD000000000000013;
    }

    else
    {
      v19 = 0xD000000000000010;
    }

    if (*(*(a2 + 48) + v16))
    {
      v20 = 0x80000001D73BB820;
    }

    else
    {
      v20 = 0x80000001D73BB800;
    }

    if (v13 > 3)
    {
      goto LABEL_24;
    }

LABEL_52:
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v27 = 0x6E6964756C637865;
      }

      else
      {
        v27 = 0x7263536563726F66;
      }

      if (v13 == 2)
      {
        v26 = 0xEF776F6461685367;
      }

      else
      {
        v26 = 0xEA00000000006D69;
      }

      if (v19 == v27)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (!v13)
    {
      v26 = 0x80000001D73BB800;
      if (v19 == 0xD000000000000010)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    v26 = 0x80000001D73BB820;
    if (v19 != 0xD000000000000013)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (v20 != v26)
    {
      goto LABEL_68;
    }

LABEL_72:
    v8 = v30;
    v3 = v31;
    v7 = v32;
  }

  while (v32);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v29 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E22398(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v28 = v9;
  v29 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v30 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v22 = 0xE800000000000000;
        v21 = 0x676E696C69617274;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6D6F74746F62;
        }

        else
        {
          v21 = 7105633;
        }

        if (v20 == 3)
        {
          v22 = 0xE600000000000000;
        }

        else
        {
          v22 = 0xE300000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v23 = 0x6D6F74746F62;
      if (v15 != 3)
      {
        v23 = 7105633;
      }

      v24 = 0xE300000000000000;
      if (v15 == 3)
      {
        v24 = 0xE600000000000000;
      }

      if (v15 == 2)
      {
        v25 = 0x676E696C69617274;
      }

      else
      {
        v25 = v23;
      }

      if (v15 == 2)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = v24;
      }

      if (v21 == v25)
      {
        goto LABEL_49;
      }

LABEL_50:
      v27 = sub_1D72646CC();

      if (v27)
      {
        goto LABEL_54;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18))
    {
      v21 = 0x676E696461656CLL;
    }

    else
    {
      v21 = 7368564;
    }

    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v26 = 0xE300000000000000;
      if (v21 == 7368564)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v26 = 0xE700000000000000;
    if (v21 != 0x676E696461656CLL)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v22 != v26)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v28;
    v3 = v29;
    v8 = v30;
  }

  while (v30);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E22704(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v29 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v31 = result;
  v30 = v8;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
    goto LABEL_13;
  }

LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v29 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_13:
      v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      sub_1D7264A0C();
      FormatFontTrait.rawValue.getter();
      sub_1D72621EC();

      v14 = sub_1D7264A5C();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (2)
      {
        v18 = 0xE600000000000000;
        v19 = 0x63696C617469;
        switch(*(*(a2 + 48) + v16))
        {
          case 1:
            v18 = 0xE400000000000000;
            v19 = 1684828002;
            break;
          case 2:
            v18 = 0xE800000000000000;
            v19 = 0x6465646E61707865;
            break;
          case 3:
            v19 = 0x65736E65646E6F63;
            v18 = 0xE900000000000064;
            break;
          case 4:
            v18 = 0xE900000000000065;
            v19 = 0x636170536F6E6F6DLL;
            break;
          case 5:
            v18 = 0xE800000000000000;
            v19 = 0x6C61636974726576;
            break;
          case 6:
            v19 = 0x696D6974704F6975;
            v18 = 0xEB0000000064657ALL;
            break;
          case 7:
            v20 = 0x4C7468676974;
            goto LABEL_35;
          case 8:
            v20 = 0x4C65736F6F6CLL;
LABEL_35:
            v19 = v20 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
            v18 = 0xEC000000676E6964;
            break;
          case 9:
            v18 = 0xE400000000000000;
            v19 = 1802723693;
            break;
          case 0xA:
            v19 = 0x656C797453646C6FLL;
            goto LABEL_33;
          case 0xB:
            v19 = 0xD000000000000012;
            v18 = 0x80000001D73B9100;
            break;
          case 0xC:
            v19 = 0x65536E7265646F6DLL;
            v18 = 0xEC00000073666972;
            break;
          case 0xD:
            v19 = 0x6F646E6572616C63;
            v18 = 0xEF7366697265536ELL;
            break;
          case 0xE:
            v19 = 0x6972655362616C73;
            v18 = 0xEA00000000007366;
            break;
          case 0xF:
            v19 = 0x6D726F6665657266;
LABEL_33:
            v18 = 0xEE00736669726553;
            break;
          case 0x10:
            v18 = 0xE900000000000066;
            v19 = 0x69726553736E6173;
            break;
          case 0x11:
            v19 = 0x746E656D616E726FLL;
            v18 = 0xEB00000000736C61;
            break;
          case 0x12:
            v18 = 0xE700000000000000;
            v19 = 0x73747069726373;
            break;
          case 0x13:
            v18 = 0xE800000000000000;
            v19 = 0x63696C6F626D7973;
            break;
          default:
            break;
        }

        v21 = 0xE600000000000000;
        v22 = 0x63696C617469;
        switch(v13)
        {
          case 1:
            v21 = 0xE400000000000000;
            if (v19 == 1684828002)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          case 2:
            v21 = 0xE800000000000000;
            if (v19 != 0x6465646E61707865)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 3:
            v21 = 0xE900000000000064;
            if (v19 != 0x65736E65646E6F63)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 4:
            v21 = 0xE900000000000065;
            if (v19 != 0x636170536F6E6F6DLL)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 5:
            v21 = 0xE800000000000000;
            if (v19 != 0x6C61636974726576)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 6:
            v26 = 0x696D6974704F6975;
            v27 = 6579578;
            goto LABEL_65;
          case 7:
            v23 = 0x61654C7468676974;
            v24 = 1735289188;
            goto LABEL_57;
          case 8:
            v22 = 0x61654C65736F6F6CLL;
            v21 = 0xEC000000676E6964;
            goto LABEL_73;
          case 9:
            v21 = 0xE400000000000000;
            if (v19 != 1802723693)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 10:
            v25 = 0x656C797453646C6FLL;
            goto LABEL_70;
          case 11:
            v21 = 0x80000001D73B9100;
            if (v19 != 0xD000000000000012)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 12:
            v23 = 0x65536E7265646F6DLL;
            v24 = 1936091506;
LABEL_57:
            v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v19 != v23)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 13:
            v21 = 0xEF7366697265536ELL;
            if (v19 != 0x6F646E6572616C63)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 14:
            v21 = 0xEA00000000007366;
            if (v19 != 0x6972655362616C73)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 15:
            v25 = 0x6D726F6665657266;
LABEL_70:
            v21 = 0xEE00736669726553;
            if (v19 != v25)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 16:
            v21 = 0xE900000000000066;
            if (v19 != 0x69726553736E6173)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 17:
            v26 = 0x746E656D616E726FLL;
            v27 = 7564385;
LABEL_65:
            v21 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v19 != v26)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 18:
            v21 = 0xE700000000000000;
            if (v19 != 0x73747069726373)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 19:
            v21 = 0xE800000000000000;
            if (v19 != 0x63696C6F626D7973)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          default:
LABEL_73:
            if (v19 != v22)
            {
              goto LABEL_75;
            }

LABEL_74:
            if (v18 != v21)
            {
LABEL_75:
              v28 = sub_1D72646CC();

              if (v28)
              {
                goto LABEL_81;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_81:
            v8 = v30;
            v3 = v31;
            v7 = v32;
            if (!v32)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E22DD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0xE600000000000000;
      v21 = 0x657669746361;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x64657269707865;
      }

      else
      {
        v22 = 0x64656C6261736964;
      }

      if (v15 == 1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v21 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_1D72646CC();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0xE700000000000000;
      v21 = 0x64657269707865;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0xE800000000000000;
    v21 = 0x64656C6261736964;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE600000000000000;
    if (v21 != 0x657669746361)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v20 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E2309C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v22 = result;
LABEL_7:
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_14:
    v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1D7264A0C();
    if (v14)
    {
      v15 = 0x656E696C66666FLL;
    }

    else
    {
      v15 = 0x746C7561666564;
    }

    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      if (*(*(a2 + 48) + v18))
      {
        v20 = 0x656E696C66666FLL;
      }

      else
      {
        v20 = 0x746C7561666564;
      }

      if (v20 == v15)
      {
        result = swift_bridgeObjectRelease_n();
        v3 = v22;
        goto LABEL_7;
      }

      v21 = sub_1D72646CC();
      result = swift_bridgeObjectRelease_n();
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v22;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E232B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v28 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = v8;
  v30 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D72621EC();

    v14 = sub_1D7264A5C();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      v19 = 0x676E696E657665;
      if (v18 != 2)
      {
        v19 = 0x746867696ELL;
      }

      v20 = 0xE500000000000000;
      if (v18 == 2)
      {
        v20 = 0xE700000000000000;
      }

      v21 = 0x6F6F6E7265746661;
      if (!*(*(a2 + 48) + v16))
      {
        v21 = 0x676E696E726F6DLL;
      }

      v22 = 0xE90000000000006ELL;
      if (!*(*(a2 + 48) + v16))
      {
        v22 = 0xE700000000000000;
      }

      v23 = *(*(a2 + 48) + v16) <= 1u ? v21 : v19;
      v24 = *(*(a2 + 48) + v16) <= 1u ? v22 : v20;
      if (v13 <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v26 = 0x676E696E657665;
      }

      else
      {
        v26 = 0x746867696ELL;
      }

      if (v13 == 2)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v23 == v26)
      {
        goto LABEL_42;
      }

LABEL_43:
      v27 = sub_1D72646CC();

      if (v27)
      {
        goto LABEL_47;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v25 = 0xE700000000000000;
      if (v23 == 0x676E696E726F6DLL)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v25 = 0xE90000000000006ELL;
    if (v23 != 0x6F6F6E7265746661)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (v24 != v25)
    {
      goto LABEL_43;
    }

LABEL_47:
    v8 = v29;
    v3 = v30;
    v7 = v31;
  }

  while (v31);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v28 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E235F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v31 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v32 = v8;
  v33 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D7264A0C();
    sub_1D694D024();
    v14 = sub_1D7264A5C();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v16) <= 5u)
      {
        if (v18 == 4)
        {
          v20 = 0x7961647372756874;
        }

        else
        {
          v20 = 0x796164697266;
        }

        if (v18 == 4)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }

        if (v13 <= 3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        if (v18 == 6)
        {
          v20 = 0x7961647275746173;
          if (v13 <= 3)
          {
            goto LABEL_57;
          }
        }

        else if (v18 == 7)
        {
          v20 = 0x737961646B656577;
          if (v13 <= 3)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v20 = 0x73646E656B656577;
          if (v13 <= 3)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_34:
      v24 = 0x737961646B656577;
      if (v13 != 7)
      {
        v24 = 0x73646E656B656577;
      }

      if (v13 == 6)
      {
        v24 = 0x7961647275746173;
      }

      v25 = 0x7961647372756874;
      if (v13 != 4)
      {
        v25 = 0x796164697266;
      }

      v26 = 0xE600000000000000;
      if (v13 == 4)
      {
        v26 = 0xE800000000000000;
      }

      if (v13 <= 5)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      if (v13 <= 5)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE800000000000000;
      }

      if (v20 == v27)
      {
        goto LABEL_72;
      }

LABEL_73:
      v30 = sub_1D72646CC();

      if (v30)
      {
        goto LABEL_79;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = 0x7961646E7573;
    v22 = 0x616473656E646577;
    if (v18 == 2)
    {
      v22 = 0x79616473657574;
    }

    v23 = 0xE900000000000079;
    if (v18 == 2)
    {
      v23 = 0xE700000000000000;
    }

    if (*(*(a2 + 48) + v16))
    {
      v21 = 0x7961646E6F6DLL;
    }

    if (*(*(a2 + 48) + v16) <= 1u)
    {
      v20 = v21;
    }

    else
    {
      v20 = v22;
    }

    if (*(*(a2 + 48) + v16) <= 1u)
    {
      v19 = 0xE600000000000000;
    }

    else
    {
      v19 = v23;
    }

    if (v13 > 3)
    {
      goto LABEL_34;
    }

LABEL_57:
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v29 = 0x79616473657574;
      }

      else
      {
        v29 = 0x616473656E646577;
      }

      if (v13 == 2)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE900000000000079;
      }

      if (v20 == v29)
      {
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    if (!v13)
    {
      v28 = 0xE600000000000000;
      if (v20 == 0x7961646E7573)
      {
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    v28 = 0xE600000000000000;
    if (v20 != 0x7961646E6F6DLL)
    {
      goto LABEL_73;
    }

LABEL_72:
    if (v19 != v28)
    {
      goto LABEL_73;
    }

LABEL_79:
    v8 = v32;
    v3 = v33;
    v7 = v34;
  }

  while (v34);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v31 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E239F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9DC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D726449C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D726276C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D5E24268(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_1D5E23B6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1D5E23BF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, &qword_1EDF01D00, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1D5E23D88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, &qword_1EDF01E80, &type metadata for FormatContentPoolSlotPlaceholder, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D5E23E30(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, &unk_1EDF196A8, &type metadata for FormatContentPoolPlaceholder, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_1D5E23F50(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5E29800(0, a3, a4, a5, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  result = v7;
  v10 = ((v8 - 32) * 0x6666666666666667) >> 64;
  v7[2] = a1;
  v7[3] = 2 * ((v10 >> 4) + (v10 >> 63));
  return result;
}

void *sub_1D5E23FF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5E2994C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1D5E24080(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5E2A594(0, &qword_1EC88EED0, sub_1D5E29ACC);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1D5E241BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5E2A594(0, a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

uint64_t sub_1D5E24268(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D62FF50C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D5E247B4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D698BA94((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D5E247B4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D5E247B4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D5E249A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a4 + 32;
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        result = sub_1D5B68374(v12, v10);
        if (v13 == v11)
        {
          goto LABEL_11;
        }

        v10 += 40;
        ++v11;
        v12 += 40;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D5E24A6C(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D5E24B6C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D5E24C6C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1D5CBA110(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1D5CBA110(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E24DD0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1D5E24ECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatRegex();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_1D5E2A7E4(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for FormatRegex);
      v25 = v24;
      v26 = v32;
      sub_1D5E2A84C(v25, v32, type metadata accessor for FormatRegex);
      sub_1D5E2A84C(v26, a2, type metadata accessor for FormatRegex);
      if (v20 == v31)
      {
        a1 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1D5E25120(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D5E252A0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_1D5E2A788(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_1D5E2A788(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E25454(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E255A8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_1D7263BBC();
  sub_1D5B5A498(0, &qword_1EDF1AAF0);
  sub_1D5E2A738(&qword_1EDF1AAE0, &qword_1EDF1AAF0);
  result = sub_1D7262B8C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D7263C2C())
      {
        goto LABEL_30;
      }

      sub_1D5B5A498(0, &qword_1EDF1AAF0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

void *sub_1D5E25814(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1D5B68374(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1D5B63F14(v20, v21);
      sub_1D5B63F14(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1D5E25980(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v28 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v28;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v28 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v31 = result;
    v32 = a3;
    result = 0;
    v9 = 0;
    v30 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v33 = v9;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(a4 + 56) + 48 * v15);
      v21 = *v20;
      v22 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      v25 = v20[4];
      v26 = v20[5];
      *v8 = v19;
      v8[1] = v18;
      v8[2] = v21;
      v8[3] = v22;
      v8[4] = v24;
      v8[5] = v23;
      v8[6] = v25;
      v8[7] = v26;
      if (v11 == v32)
      {

        v5 = v30;
        result = v31;
        a4 = v16;
        a3 = v32;
        v28 = v33;
        goto LABEL_24;
      }

      v8 += 8;

      result = v11;
      v27 = __OFADD__(v11++, 1);
      a4 = v16;
      v9 = v33;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v29 = v9 + 1;
    }

    else
    {
      v29 = v10;
    }

    v28 = v29 - 1;
    a3 = result;
    v5 = v30;
    result = v31;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E25B5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D5E25CD8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1D5E298BC(*(a4 + 56) + 104 * (v17 | (v12 << 6)), v25);
      v18 = v25[2];
      v19 = v25[1];
      *v11 = v25[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      v20 = v25[5];
      v21 = v25[4];
      v22 = v25[3];
      *(v11 + 96) = v26;
      *(v11 + 64) = v21;
      *(v11 + 80) = v20;
      *(v11 + 48) = v22;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 104;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1D5E25E5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_1D5B76B10(*(a4 + 56) + 32 * v18, &v27 + 8);
      *&v27 = v19;
      v20 = v29;
      v32 = v29;
      v21 = v28;
      v30 = v27;
      v31 = v28;
      *v11 = v27;
      *(v11 + 16) = v21;
      *(v11 + 32) = v20;
      if (v14 == v10)
      {
        v25 = v19;
        goto LABEL_23;
      }

      v11 += 40;
      v22 = v19;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D5E25FE8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E26198(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D5E26314(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 16 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 8 * v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E264A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D5E265A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D5E26700(uint64_t a1)
{
  result = sub_1D5E26728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E26728()
{
  result = qword_1EDF20960;
  if (!qword_1EDF20960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20960);
  }

  return result;
}

unint64_t sub_1D5E26780()
{
  result = qword_1EDF04A68;
  if (!qword_1EDF04A68)
  {
    sub_1D5B87DC0(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04A68);
  }

  return result;
}

uint64_t sub_1D5E26850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5BC8C(255, &qword_1EDF1AD10, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5E268EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EC87FAF8, sub_1D5B5C29C);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    while (1)
    {
      v8 = (v30 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      sub_1D7264A0C();
      switch(v10)
      {
        case 1:
          MEMORY[0x1DA6FC0B0](1);
          break;
        case 2:
          MEMORY[0x1DA6FC0B0](2);
          break;
        case 3:
          MEMORY[0x1DA6FC0B0](3);
          break;
        default:
          MEMORY[0x1DA6FC0B0](0);
          sub_1D7264A2C();
          if (v10)
          {

            sub_1D72621EC();
          }

          break;
      }

      result = sub_1D7264A5C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        break;
      }

LABEL_43:
      *(v5 + 8 * v14) = v15 | v16;
      v25 = (*(v3 + 48) + 16 * v13);
      *v25 = v9;
      v25[1] = v10;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v28;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v17 = ~v12;
    while (1)
    {
      v18 = (*(v3 + 48) + 16 * v13);
      v19 = *v18;
      v20 = v18[1];
      if (v20 == 1)
      {
        if (v10 == 1)
        {
          sub_1D5C39250(*v18, 1);
          v6 = v9;
          v7 = 1;
          goto LABEL_4;
        }

        sub_1D5B7CD94(v9, v10);
        v21 = 1;
        goto LABEL_27;
      }

      if (v20 == 2)
      {
        break;
      }

      if (v20 == 3)
      {
        if (v10 == 3)
        {
          sub_1D5C39250(*v18, 3);
          v6 = v9;
          v7 = 3;
          goto LABEL_4;
        }

        sub_1D5B7CD94(v9, v10);
        v21 = 3;
        goto LABEL_27;
      }

      if ((v10 - 1) < 3)
      {
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, v20);
        v21 = v20;
LABEL_27:
        v22 = v10;
        goto LABEL_28;
      }

      if (!v20)
      {
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, 0);
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, 0);
        sub_1D5C39250(v19, 0);
        sub_1D5C39250(v9, v10);
        v22 = v10;
        if (!v10)
        {
          v6 = v9;
          v7 = 0;
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      if (v10)
      {
        if (v19 == v9 && v20 == v10)
        {

          sub_1D5C39250(v9, v10);
LABEL_48:
          v6 = v9;
          v7 = v10;
LABEL_4:
          sub_1D5C39250(v6, v7);
          v1 = v29;
          goto LABEL_5;
        }

        v24 = sub_1D72646CC();
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, v20);
        sub_1D5C39250(v19, v20);
        result = sub_1D5C39250(v9, v10);
        if (v24)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      sub_1D5B7CD94(v9, 0);
      sub_1D5B7CD94(v9, 0);
      sub_1D5B7CD94(v19, v20);
      v21 = v20;
      v22 = 0;
LABEL_28:
      sub_1D5C39250(v19, v21);
LABEL_29:
      result = sub_1D5C39250(v9, v22);
LABEL_30:
      v13 = (v13 + 1) & v17;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v1 = v29;
        goto LABEL_43;
      }
    }

    if (v10 == 2)
    {
      sub_1D5C39250(*v18, 2);
      v6 = v9;
      v7 = 2;
      goto LABEL_4;
    }

    sub_1D5B7CD94(v9, v10);
    v21 = 2;
    goto LABEL_27;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E26CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF042D0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1DA6FC080](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E26E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5B8, sub_1D5E2A690);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v6 = *(v31 + v4);
      v32 = v4 + 1;
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 5)
          {
            if (*(*(v3 + 48) + v9) > 8u)
            {
              if (v13 == 9)
              {
                v15 = 0xE500000000000000;
                v14 = 0x6F65646976;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else if (v13 == 10)
              {
                v15 = 0xE400000000000000;
                v14 = 1953394534;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v14 = 0x616C506F65646976;
                v15 = 0xEB00000000726579;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }
            }

            else if (v13 == 6)
            {
              v15 = 0xE300000000000000;
              v14 = 7107189;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v15 = 0xE500000000000000;
              if (v13 == 7)
              {
                v14 = 0x726F6C6F63;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v14 = 0x6567616D69;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }
            }
          }

          else if (*(*(v3 + 48) + v9) > 2u)
          {
            if (v13 == 3)
            {
              v15 = 0xE500000000000000;
              v14 = 0x74616F6C66;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else if (v13 == 4)
            {
              v15 = 0xE700000000000000;
              v14 = 0x72656765746E69;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x676E69727473;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 1702125924;
            }

            else
            {
              v14 = 1836412517;
            }

            v15 = 0xE400000000000000;
            if (v6 > 5)
            {
LABEL_38:
              v16 = 0x616C506F65646976;
              if (v6 == 10)
              {
                v16 = 1953394534;
              }

              v17 = 0xEB00000000726579;
              if (v6 == 10)
              {
                v17 = 0xE400000000000000;
              }

              if (v6 == 9)
              {
                v16 = 0x6F65646976;
                v17 = 0xE500000000000000;
              }

              v18 = 0x726F6C6F63;
              if (v6 != 7)
              {
                v18 = 0x6567616D69;
              }

              v19 = 0xE500000000000000;
              if (v6 == 6)
              {
                v18 = 7107189;
                v19 = 0xE300000000000000;
              }

              if (v6 <= 8)
              {
                v20 = v18;
              }

              else
              {
                v20 = v16;
              }

              if (v6 <= 8)
              {
                v21 = v19;
              }

              else
              {
                v21 = v17;
              }

              if (v14 != v20)
              {
                goto LABEL_78;
              }

              goto LABEL_77;
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x6E61656C6F6F62;
            if (v6 > 5)
            {
              goto LABEL_38;
            }
          }

          if (v6 > 2)
          {
            v23 = 0x72656765746E69;
            if (v6 != 4)
            {
              v23 = 0x676E69727473;
            }

            v24 = 0xE700000000000000;
            if (v6 != 4)
            {
              v24 = 0xE600000000000000;
            }

            if (v6 == 3)
            {
              v25 = 0x74616F6C66;
            }

            else
            {
              v25 = v23;
            }

            if (v6 == 3)
            {
              v21 = 0xE500000000000000;
            }

            else
            {
              v21 = v24;
            }

            if (v14 != v25)
            {
              goto LABEL_78;
            }
          }

          else if (v6)
          {
            if (v6 == 1)
            {
              v22 = 1702125924;
            }

            else
            {
              v22 = 1836412517;
            }

            v21 = 0xE400000000000000;
            if (v14 != v22)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v21 = 0xE700000000000000;
            if (v14 != 0x6E61656C6F6F62)
            {
              goto LABEL_78;
            }
          }

LABEL_77:
          if (v15 == v21)
          {

            goto LABEL_4;
          }

LABEL_78:
          v26 = sub_1D72646CC();

          if (v26)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v27 = *(v3 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v3 + 16) = v29;
LABEL_4:
      v4 = v32;
      if (v32 == v30)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E27400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF042C8, MEMORY[0x1E69E7B10], MEMORY[0x1E69E7B18], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1D7264A0C();
      sub_1D7264A3C();
      result = sub_1D7264A5C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E2755C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5C8, sub_1D5B4B090);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v32 = a1 + 32;
    while (1)
    {
      v9 = (v32 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_1D7264A0C();
      switch(v11)
      {
        case 0uLL:
          v12 = 0;
          goto LABEL_25;
        case 1uLL:
          v12 = 1;
          goto LABEL_25;
        case 2uLL:
          v12 = 2;
          goto LABEL_25;
        case 3uLL:
          v12 = 3;
          goto LABEL_25;
        case 4uLL:
          v12 = 4;
          goto LABEL_25;
        case 5uLL:
          v12 = 5;
          goto LABEL_25;
        case 6uLL:
          v12 = 6;
          goto LABEL_25;
        case 7uLL:
          v12 = 7;
          goto LABEL_25;
        case 8uLL:
          v12 = 8;
          goto LABEL_25;
        case 9uLL:
          v12 = 9;
          goto LABEL_25;
        case 0xAuLL:
          v12 = 10;
          goto LABEL_25;
        case 0xBuLL:
          v12 = 11;
          goto LABEL_25;
        case 0xCuLL:
          v12 = 12;
          goto LABEL_25;
        case 0xDuLL:
          v12 = 13;
          goto LABEL_25;
        case 0xEuLL:
          v12 = 14;
          goto LABEL_25;
        case 0xFuLL:
          v12 = 15;
LABEL_25:
          MEMORY[0x1DA6FC0B0](v12);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);

          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) == 0)
      {
        break;
      }

      while (2)
      {
        v18 = (*(v3 + 48) + 16 * v14);
        v20 = *v18;
        v19 = v18[1];
        switch(v19)
        {
          case 0:
            if (v11)
            {
              sub_1D5CBA110(v10, v11);
              v21 = 0;
              goto LABEL_62;
            }

            sub_1D5CBA0FC(*v18, 0);
            v7 = v10;
            v8 = 0;
            goto LABEL_6;
          case 1:
            if (v11 == 1)
            {
              sub_1D5CBA0FC(*v18, 1uLL);
              v7 = v10;
              v8 = 1;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 1;
            goto LABEL_62;
          case 2:
            if (v11 == 2)
            {
              sub_1D5CBA0FC(*v18, 2uLL);
              v7 = v10;
              v8 = 2;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 2;
            goto LABEL_62;
          case 3:
            if (v11 == 3)
            {
              sub_1D5CBA0FC(*v18, 3uLL);
              v7 = v10;
              v8 = 3;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 3;
            goto LABEL_62;
          case 4:
            if (v11 == 4)
            {
              sub_1D5CBA0FC(*v18, 4uLL);
              v7 = v10;
              v8 = 4;
LABEL_6:
              sub_1D5CBA0FC(v7, v8);
              goto LABEL_7;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 4;
            goto LABEL_62;
          case 5:
            if (v11 == 5)
            {
              sub_1D5CBA0FC(*v18, 5uLL);
              v7 = v10;
              v8 = 5;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 5;
            goto LABEL_62;
          case 6:
            if (v11 == 6)
            {
              sub_1D5CBA0FC(*v18, 6uLL);
              v7 = v10;
              v8 = 6;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 6;
            goto LABEL_62;
          case 7:
            if (v11 == 7)
            {
              sub_1D5CBA0FC(*v18, 7uLL);
              v7 = v10;
              v8 = 7;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 7;
            goto LABEL_62;
          case 8:
            if (v11 == 8)
            {
              sub_1D5CBA0FC(*v18, 8uLL);
              v7 = v10;
              v8 = 8;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 8;
            goto LABEL_62;
          case 9:
            if (v11 == 9)
            {
              sub_1D5CBA0FC(*v18, 9uLL);
              v7 = v10;
              v8 = 9;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 9;
            goto LABEL_62;
          case 10:
            if (v11 == 10)
            {
              sub_1D5CBA0FC(*v18, 0xAuLL);
              v7 = v10;
              v8 = 10;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 10;
            goto LABEL_62;
          case 11:
            if (v11 == 11)
            {
              sub_1D5CBA0FC(*v18, 0xBuLL);
              v7 = v10;
              v8 = 11;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 11;
            goto LABEL_62;
          case 12:
            if (v11 == 12)
            {
              sub_1D5CBA0FC(*v18, 0xCuLL);
              v7 = v10;
              v8 = 12;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 12;
            goto LABEL_62;
          case 13:
            if (v11 == 13)
            {
              sub_1D5CBA0FC(*v18, 0xDuLL);
              v7 = v10;
              v8 = 13;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 13;
            goto LABEL_62;
          case 14:
            if (v11 == 14)
            {
              sub_1D5CBA0FC(*v18, 0xEuLL);
              v7 = v10;
              v8 = 14;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 14;
            goto LABEL_62;
          case 15:
            if (v11 == 15)
            {
              sub_1D5CBA0FC(*v18, 0xFuLL);
              v7 = v10;
              v8 = 15;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 15;
            goto LABEL_62;
          default:
            v22 = v4;
            v23 = v1;
            if (v11 < 0x10)
            {
              v24 = v18[1];
              sub_1D5CBA110(v10, v11);
              sub_1D5CBA110(v20, v24);
              v21 = v24;
              v1 = v23;
              v4 = v22;
LABEL_62:
              sub_1D5CBA0FC(v20, v21);
              result = sub_1D5CBA0FC(v10, v11);
LABEL_63:
              v14 = (v14 + 1) & v13;
              v15 = v14 >> 6;
              v16 = *(v5 + 8 * (v14 >> 6));
              v17 = 1 << v14;
              if ((v16 & (1 << v14)) == 0)
              {
                goto LABEL_71;
              }

              continue;
            }

            if (v20 != v10 || v19 != v11)
            {
              v26 = v18[1];
              v31 = sub_1D72646CC();
              sub_1D5CBA110(v10, v11);
              sub_1D5CBA110(v20, v26);
              sub_1D5CBA0FC(v20, v26);
              result = sub_1D5CBA0FC(v10, v11);
              v1 = v23;
              v4 = v22;
              if (v31)
              {
                v7 = v10;
                v8 = v11;
                goto LABEL_6;
              }

              goto LABEL_63;
            }

            sub_1D5CBA0FC(v10, v11);
            sub_1D5CBA0FC(v10, v11);
            v4 = v22;
LABEL_7:
            if (++v4 == v1)
            {
              return v3;
            }

            break;
        }

        break;
      }
    }

LABEL_71:
    *(v5 + 8 * v15) = v16 | v17;
    v27 = (*(v3 + 48) + 16 * v14);
    *v27 = v10;
    v27[1] = v11;
    v28 = *(v3 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v3 + 16) = v30;
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E27C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5B0, sub_1D5E299D0);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v27 = v4 + 1;
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = 0xD000000000000011;
              v15 = 0x80000001D73BAB30;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else if (v13 == 4)
            {
              v14 = 0x656C626978656C66;
              v15 = 0xEE00746867696548;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v14 = 0xD000000000000014;
              v15 = 0x80000001D73BAB60;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x656C626978656C66;
            }

            else
            {
              v14 = 0xD000000000000013;
            }

            if (v13 == 1)
            {
              v15 = 0xED00006874646957;
            }

            else
            {
              v15 = 0x80000001D73BAB10;
            }

            if (v6 > 2)
            {
LABEL_35:
              v18 = 0xD000000000000014;
              if (v6 == 4)
              {
                v18 = 0x656C626978656C66;
              }

              v19 = 0xEE00746867696548;
              if (v6 != 4)
              {
                v19 = 0x80000001D73BAB60;
              }

              if (v6 == 3)
              {
                v20 = 0xD000000000000011;
              }

              else
              {
                v20 = v18;
              }

              if (v6 == 3)
              {
                v17 = 0x80000001D73BAB30;
              }

              else
              {
                v17 = v19;
              }

              if (v14 != v20)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }
          }

          else
          {
            v14 = 0xD000000000000012;
            v15 = 0x80000001D73BAAE0;
            if (v6 > 2)
            {
              goto LABEL_35;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v16 = 0x656C626978656C66;
            }

            else
            {
              v16 = 0xD000000000000013;
            }

            if (v6 == 1)
            {
              v17 = 0xED00006874646957;
            }

            else
            {
              v17 = 0x80000001D73BAB10;
            }

            if (v14 != v16)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v17 = 0x80000001D73BAAE0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_47;
            }
          }

LABEL_46:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_47:
          v21 = sub_1D72646CC();

          if (v21)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27;
      if (v27 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E28004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5A0, sub_1D5E2A540);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v26 = v1;
    v27 = a1 + 32;
    while (1)
    {
      v6 = *(v27 + v4++);
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v15 = 0xE500000000000000;
              v14 = 0x6567616D69;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }

            else if (v13 == 4)
            {
              v15 = 0xE400000000000000;
              v14 = 1633905005;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v14 = 0x66456C6175736976;
              v15 = 0xEC00000074636566;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x72476C6169646172;
            }

            else
            {
              v14 = 0x65695674696C7073;
            }

            if (v13 == 1)
            {
              v15 = 0xEE00746E65696461;
            }

            else
            {
              v15 = 0xE900000000000077;
            }

            if (v6 > 2)
            {
LABEL_31:
              v21 = 0x66456C6175736976;
              if (v6 == 4)
              {
                v21 = 1633905005;
              }

              v19 = 0xEC00000074636566;
              if (v6 == 4)
              {
                v19 = 0xE400000000000000;
              }

              v16 = v6 == 3;
              if (v6 == 3)
              {
                v17 = 0x6567616D69;
              }

              else
              {
                v17 = v21;
              }

              v18 = 0xE500000000000000;
              goto LABEL_39;
            }
          }

          else
          {
            v15 = 0xE800000000000000;
            v14 = 0x746E656964617267;
            if (v6 > 2)
            {
              goto LABEL_31;
            }
          }

          if (!v6)
          {
            v20 = 0xE800000000000000;
            if (v14 != 0x746E656964617267)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          v16 = v6 == 1;
          if (v6 == 1)
          {
            v17 = 0x72476C6169646172;
          }

          else
          {
            v17 = 0x65695674696C7073;
          }

          v18 = 0xEE00746E65696461;
          v19 = 0xE900000000000077;
LABEL_39:
          if (v16)
          {
            v20 = v18;
          }

          else
          {
            v20 = v19;
          }

          if (v14 != v17)
          {
            goto LABEL_44;
          }

LABEL_43:
          if (v15 == v20)
          {

            goto LABEL_4;
          }

LABEL_44:
          v22 = sub_1D72646CC();

          if (v22)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (v4 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E28430(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D5CD88E8(0, a2, a3);
    v5 = sub_1D7263CDC();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v12);
      result = sub_1D7264A5C();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E28588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF04328, sub_1D5E2A63C);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    while (1)
    {
      v6 = *(v28 + v4++);
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 2)
          {
            if (*(*(v3 + 48) + v9))
            {
              if (v13 == 1)
              {
                v14 = 1852138867;
              }

              else
              {
                v14 = 0x6E657A6F7266;
              }

              if (v13 == 1)
              {
                v15 = 0xE400000000000000;
              }

              else
              {
                v15 = 0xE600000000000000;
              }

              if (v6 > 2)
              {
LABEL_19:
                v16 = 0x64656C6F6F706572;
                if (v6 != 5)
                {
                  v16 = 0x6465646E61707865;
                }

                v17 = 0x656546664F646E65;
                if (v6 != 3)
                {
                  v17 = 0x646568636163;
                }

                v18 = 0xE900000000000064;
                if (v6 != 3)
                {
                  v18 = 0xE600000000000000;
                }

                if (v6 <= 4)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v16;
                }

                if (v6 <= 4)
                {
                  v20 = v18;
                }

                else
                {
                  v20 = 0xE800000000000000;
                }

                if (v14 != v19)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x657669746361;
              if (v6 > 2)
              {
                goto LABEL_19;
              }
            }
          }

          else if (*(*(v3 + 48) + v9) > 4u)
          {
            v15 = 0xE800000000000000;
            if (v13 == 5)
            {
              v21 = 0x6C6F6F706572;
            }

            else
            {
              v21 = 0x646E61707865;
            }

            v14 = v21 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          else if (v13 == 3)
          {
            v14 = 0x656546664F646E65;
            v15 = 0xE900000000000064;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v15 = 0xE600000000000000;
            v14 = 0x646568636163;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v22 = 1852138867;
            }

            else
            {
              v22 = 0x6E657A6F7266;
            }

            if (v6 == 1)
            {
              v20 = 0xE400000000000000;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v14 != v22)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v20 = 0xE600000000000000;
            if (v14 != 0x657669746361)
            {
              goto LABEL_52;
            }
          }

LABEL_51:
          if (v15 == v20)
          {

            goto LABEL_4;
          }

LABEL_52:
          v23 = sub_1D72646CC();

          if (v23)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (v4 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}