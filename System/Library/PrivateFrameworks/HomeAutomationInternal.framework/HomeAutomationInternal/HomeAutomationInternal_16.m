unint64_t sub_252A4689C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC000000646E756FLL;
      v8 = 0x46746F4E656D6F68;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x46746F4E6D6F6F72;
          v7 = 0xEC000000646E756FLL;
          break;
        case 2:
          v8 = 0xD000000000000011;
          v7 = 0x8000000252E68140;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x8000000252E68160;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E68180;
          break;
        case 5:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000252E681A0;
          break;
        case 6:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E681C0;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E681E0;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E68200;
          break;
        case 9:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E68220;
          break;
        case 0xA:
          v8 = 0xD000000000000013;
          v7 = 0x8000000252E68240;
          break;
        case 0xB:
          v8 = 0xD000000000000011;
          v7 = 0x8000000252E68260;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x8000000252E68280;
          break;
        case 0xD:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000252E682A0;
          break;
        case 0xE:
          v8 = 0xD000000000000020;
          v7 = 0x8000000252E682C0;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x8000000252E682F0;
          break;
        case 0x10:
          v7 = 0xEC00000064656B63;
          v8 = 0x6F4C656369766564;
          break;
        case 0x11:
          v8 = 0x6544737365636361;
          v7 = 0xEC0000006465696ELL;
          break;
        case 0x12:
          v8 = 0xD000000000000010;
          v7 = 0x8000000252E68320;
          break;
        case 0x13:
          v8 = 0xD000000000000012;
          v7 = 0x8000000252E68340;
          break;
        case 0x14:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E68360;
          break;
        case 0x15:
          v8 = 0xD000000000000013;
          v7 = 0x8000000252E68380;
          break;
        case 0x16:
          v8 = 0x65746F6D65526F6ELL;
          v7 = 0xEE00737365636341;
          break;
        default:
          break;
      }

      v9 = 0x46746F4E656D6F68;
      v10 = 0xEC000000646E756FLL;
      switch(a1)
      {
        case 1:
          v10 = 0xEC000000646E756FLL;
          if (v8 == 0x46746F4E6D6F6F72)
          {
            goto LABEL_69;
          }

          goto LABEL_70;
        case 2:
          v10 = 0x8000000252E68140;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 3:
          v10 = 0x8000000252E68160;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 4:
          v10 = 0x8000000252E68180;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 5:
          v10 = 0x8000000252E681A0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 6:
          v10 = 0x8000000252E681C0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 7:
          v10 = 0x8000000252E681E0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 8:
          v10 = 0x8000000252E68200;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 9:
          v10 = 0x8000000252E68220;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 10:
          v10 = 0x8000000252E68240;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 11:
          v10 = 0x8000000252E68260;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 12:
          v10 = 0x8000000252E68280;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 13:
          v10 = 0x8000000252E682A0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 14:
          v10 = 0x8000000252E682C0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 15:
          v10 = 0x8000000252E682F0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 16:
          v10 = 0xEC00000064656B63;
          if (v8 != 0x6F4C656369766564)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 17:
          v10 = 0xEC0000006465696ELL;
          if (v8 != 0x6544737365636361)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 18:
          v10 = 0x8000000252E68320;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 19:
          v10 = 0x8000000252E68340;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 20:
          v10 = 0x8000000252E68360;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 21:
          v10 = 0x8000000252E68380;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 22:
          v9 = 0x65746F6D65526F6ELL;
          v10 = 0xEE00737365636341;
          goto LABEL_68;
        default:
LABEL_68:
          if (v8 != v9)
          {
            goto LABEL_70;
          }

LABEL_69:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_70:
          v11 = sub_252E37DB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252A46FA4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v24 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v7 = 0x4274737544637672;
            v8 = 0xEE006C6C75466E69;
          }

          else
          {
            v7 = 0xD000000000000013;
            v8 = 0x8000000252E68420;
          }
        }

        else if (v6 == 7)
        {
          v7 = 0xD000000000000011;
          v8 = 0x8000000252E68440;
        }

        else if (v6 == 8)
        {
          v7 = 0xD000000000000013;
          v8 = 0x8000000252E68460;
        }

        else
        {
          v7 = 0xD000000000000018;
          v8 = 0x8000000252E68480;
        }
      }

      else if (*(*(v24 + 48) + v4) <= 1u)
      {
        if (*(*(v24 + 48) + v4))
        {
          v7 = 0xD00000000000001DLL;
        }

        else
        {
          v7 = 0xD000000000000016;
        }

        if (*(*(v24 + 48) + v4))
        {
          v8 = 0x8000000252E683B0;
        }

        else
        {
          v8 = 0x8000000252E67470;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
      }

      else if (v6 == 3)
      {
        v7 = 0xD00000000000001BLL;
        v8 = 0x8000000252E683D0;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = 0x8000000252E683F0;
      }

      v9 = 0xD000000000000013;
      v10 = 0xD000000000000018;
      if (v5 == 8)
      {
        v10 = 0xD000000000000013;
      }

      v11 = 0x8000000252E68480;
      if (v5 == 8)
      {
        v11 = 0x8000000252E68460;
      }

      if (v5 == 7)
      {
        v10 = 0xD000000000000011;
        v11 = 0x8000000252E68440;
      }

      if (v5 == 5)
      {
        v9 = 0x4274737544637672;
      }

      v12 = 0xEE006C6C75466E69;
      if (v5 != 5)
      {
        v12 = 0x8000000252E68420;
      }

      if (v5 <= 6)
      {
        v13 = v12;
      }

      else
      {
        v9 = v10;
        v13 = v11;
      }

      v14 = 0xD00000000000001BLL;
      if (v5 == 3)
      {
        v15 = 0x8000000252E683D0;
      }

      else
      {
        v14 = 0xD000000000000011;
        v15 = 0x8000000252E683F0;
      }

      if (v5 == 2)
      {
        v14 = 0x6E776F6E6B6E75;
        v15 = 0xE700000000000000;
      }

      v16 = 0xD000000000000016;
      if (v5)
      {
        v16 = 0xD00000000000001DLL;
        v17 = 0x8000000252E683B0;
      }

      else
      {
        v17 = 0x8000000252E67470;
      }

      if (v5 <= 1)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = v5 <= 4 ? v14 : v9;
      v19 = v5 <= 4 ? v15 : v13;
      if (v7 == v18 && v8 == v19)
      {
        break;
      }

      v20 = sub_252E37DB4();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252A472D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = sub_252E37DB4();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_252A473F0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A47460(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A474E4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A47550(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    do
    {
      v11 = (*(v7 + 48) + 16 * v6);
      if (*v11 == a1)
      {
        v12 = v11[1];
        if (v12)
        {
          if (a2)
          {
            type metadata accessor for HomeAttributeValue();
            v13 = v12;
            v14 = a2;
            v15 = sub_252E37694();

            if (v15)
            {
              return v6;
            }
          }
        }

        else if (!a2)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A47650(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_252E35CB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_252A485D0(&qword_27F541D30, MEMORY[0x277D563F8]);
      v16 = sub_252E36EF4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_252A47810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  sub_252956C1C(a1, &v26 - v4);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  else
  {
    v8 = sub_252E36304();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (qword_27F53F2B8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v11 = 0;
    v12 = off_27F541CE8;
    v13 = 1 << *(off_27F541CE8 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = off_27F541CE8 + 64;
    v16 = v14 & *(off_27F541CE8 + 8);
    v17 = (v13 + 63) >> 6;
    while (1)
    {
      if (!v16)
      {
        while (1)
        {
          v19 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v19 >= v17)
          {

            return 0;
          }

          v18 = *&v15[8 * v19];
          ++v11;
          if (v18)
          {
            v11 = v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      v18 = v16;
LABEL_13:
      v16 = (v18 - 1) & v18;
      if (v12[2])
      {
        v20 = *(v12[6] + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
        v21 = sub_252A44B78(v20);
        if (v22)
        {
          v23 = (v12[7] + 16 * v21);
          v24 = *v23 == v8 && v23[1] == v10;
          if (v24 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }
      }
    }
  }

  return v20;
}

BOOL sub_252A47A58(char *a1, char *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v12 = *a1;
  v11 = *a2;
  v4 = StateSemantic.rawValue.getter();
  v6 = v5;
  if (v4 == StateSemantic.rawValue.getter() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_252E37DB4();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_252A47B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    v25 = a1 + 32;
    v26 = *(a1 + 16);
    while (1)
    {
      v5 = *(v3 + v2);
      if (v5 == 30)
      {
        v6 = 29;
      }

      else
      {
        if (v5 != 34)
        {
          if (qword_27F53F2A0 != -1)
          {
            swift_once();
          }

          v9 = off_27F541CD0;
          v10 = off_27F541CD0 + 64;
          v11 = 1 << *(off_27F541CD0 + 32);
          if (v11 < 64)
          {
            v12 = ~(-1 << v11);
          }

          else
          {
            v12 = -1;
          }

          v13 = v12 & *(off_27F541CD0 + 8);
          v14 = (v11 + 63) >> 6;
          result = swift_bridgeObjectRetain_n();
          v16 = 0;
          while (v13)
          {
LABEL_26:
            v18 = __clz(__rbit64(v13));
            v13 &= v13 - 1;
            v6 = *(v9[6] + ((v16 << 9) | (8 * v18)));
            if (v9[2] && (result = sub_252A44B78(v6), (v19 & 1) != 0) && *(v9[7] + result) != 52)
            {
              if (v5 != 52)
              {
                v27 = *(v9[7] + result);
                v22 = AccessoryTypeSemantic.rawValue.getter();
                v24 = v20;
                if (v22 == AccessoryTypeSemantic.rawValue.getter() && v24 == v21)
                {

LABEL_35:

                  v3 = v25;
                  v1 = v26;
                  goto LABEL_9;
                }

                v23 = sub_252E37DB4();

                if (v23)
                {
                  goto LABEL_35;
                }
              }
            }

            else if (v5 == 52)
            {
              goto LABEL_35;
            }
          }

          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v14)
            {

              v3 = v25;
              v1 = v26;
              goto LABEL_4;
            }

            v13 = *&v10[8 * v17];
            ++v16;
            if (v13)
            {
              v16 = v17;
              goto LABEL_26;
            }
          }

          __break(1u);
          return result;
        }

        v6 = 30;
      }

LABEL_9:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_2529F7B8C((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v6;
LABEL_4:
      if (++v2 == v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_252A47DD4(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  if (v3 == 77 || (a3 & 1) != 0)
  {
    return 0;
  }

  if (qword_27F53F288 != -1)
  {
    v11 = v3;
    v10 = a2;
    swift_once();
    v3 = v11;
    a2 = v10;
  }

  v5 = off_27F541CB8;
  if (!*(off_27F541CB8 + 2))
  {
    return 0;
  }

  v6 = sub_252A45390(v3, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v5[7] + 8 * v6);
  v9 = v8;
  return v8;
}

unint64_t sub_252A47E88()
{
  result = qword_27F541D10;
  if (!qword_27F541D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541D10);
  }

  return result;
}

uint64_t sub_252A47F84(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 52:
      break;
    case 30:
      return 29;
    case 34:
      return 30;
  }

  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v3 = off_27F541CD0;
  v4 = off_27F541CD0 + 64;
  v5 = 1 << *(off_27F541CD0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_27F541CD0 + 8);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
LABEL_16:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v1 = *(v3[6] + ((v9 << 9) | (8 * v11)));
    if (v3[2] && (v12 = sub_252A44B78(v1), (v13 & 1) != 0) && *(v3[7] + v12) != 52)
    {
      if (v2 != 52)
      {
        v20 = *(v3[7] + v12);
        v14 = AccessoryTypeSemantic.rawValue.getter();
        v16 = v15;
        if (v14 == AccessoryTypeSemantic.rawValue.getter() && v16 == v17)
        {
          goto LABEL_27;
        }

        v18 = sub_252E37DB4();

        if (v18)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v2 == 52)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return 0;
    }

    v7 = *&v4[8 * v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:

LABEL_28:

  return v1;
}

uint64_t sub_252A481A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31[-v4];
  sub_252956C1C(a1, &v31[-v4]);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  v8 = sub_252E36304();
  v10 = v9;
  (*(v7 + 8))(v5, v6);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  AttributeSemantic.init(rawValue:)(v11);
  v12 = v32;
  if (v32 == 66)
  {
    return 0;
  }

  if (qword_27F53F2A8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v13 = off_27F541CD8;
  v14 = off_27F541CD8 + 64;
  v15 = 1 << *(off_27F541CD8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(off_27F541CD8 + 8);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  while (1)
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v18)
          {

            return 0;
          }

          v20 = *&v14[8 * v21];
          ++v19;
          if (v20)
          {
            v19 = v21;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v20 = v17;
LABEL_14:
      v17 = (v20 - 1) & v20;
      if (v13[2])
      {
        v22 = *(v13[6] + ((v19 << 9) | (8 * __clz(__rbit64(v20)))));
        v23 = sub_252A44B78(v22);
        if ((v24 & 1) != 0 && *(v13[7] + v23) != 66)
        {
          break;
        }
      }
    }

    v31[14] = *(v13[7] + v23);
    v31[13] = v12;
    v25 = AttributeSemantic.rawValue.getter();
    v27 = v26;
    if (v25 == AttributeSemantic.rawValue.getter() && v27 == v28)
    {
      break;
    }

    v29 = sub_252E37DB4();

    if (v29)
    {
      goto LABEL_24;
    }
  }

LABEL_24:

  return v22;
}

uint64_t sub_252A48498(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return 1836019570;
      }

      else
      {
        return 0x70756F7267;
      }
    }

    else if (a1 == 1)
    {
      return 1701670760;
    }

    else
    {
      if (a1 != 2)
      {
        return 0x6E776F6E6B6E75;
      }

      return 1701736314;
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return 0x656E656373;
    }

    else
    {
      return 0x72656767697274;
    }
  }

  else
  {
    switch(a1)
    {
      case 12:
        return 0x614D746567726174;
      case 11:
        return 0x7241746567726174;
      case 7:
        return 0x656369766564;
      default:
        return 0x6E776F6E6B6E75;
    }
  }
}

uint64_t sub_252A485D0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegerAttributeValuePair(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntegerAttributeValuePair(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BooleanAttributeValuePair(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BooleanAttributeValuePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SemanticStateAttributePair(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB4 && a1[16])
  {
    return (*a1 + 180);
  }

  v3 = *a1;
  v4 = v3 >= 0x4D;
  v5 = v3 - 77;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SemanticStateAttributePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB3)
  {
    *result = a2 - 180;
    *(result + 8) = 0;
    if (a3 >= 0xB4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 76;
    }
  }

  return result;
}

unint64_t sub_252A487E8()
{
  result = qword_27F541D50;
  if (!qword_27F541D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541D50);
  }

  return result;
}

unint64_t sub_252A48840()
{
  result = qword_27F541D58;
  if (!qword_27F541D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541D58);
  }

  return result;
}

unint64_t sub_252A48898()
{
  result = qword_27F541D60;
  if (!qword_27F541D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541D60);
  }

  return result;
}

uint64_t sub_252A4893C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExcludeCamerasWhenSetPowerForAllDevices();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252A48970(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 != 27 || (sub_252C4DD58(0x18) & 1) != 0 || (sub_252C4B680(0x18) & 1) != 0)
  {
    return 0;
  }

  result = [a1 filters];
  if (result)
  {
    v9 = result;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();

    type metadata accessor for HomeStore();
    v11 = static HomeStore.shared.getter();
    v12 = HomeStore.accessories(matching:supporting:)(v10, 0);
    v14 = v13;

    if (v14)
    {
      sub_252929F10(v12, 1);
      return 0;
    }

    if (qword_27F53F500 != -1)
    {
LABEL_56:
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DA8);
    sub_252E379F4();

    v16 = type metadata accessor for Accessory();
    v17 = MEMORY[0x2530AD730](v12, v16);
    MEMORY[0x2530AD570](v17);

    sub_252CC3D90(0xD000000000000025, 0x8000000252E73870, 0xD0000000000000A7, 0x8000000252E738A0);

    v18 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v19 = sub_252E378C4();
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_16:
        v20 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x2530ADF00](v20, v12);
            v23 = __OFADD__(v20++, 1);
            if (v23)
            {
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }
          }

          else
          {
            if (v20 >= *(v18 + 16))
            {
              __break(1u);
              goto LABEL_56;
            }

            v22 = *(v12 + 32 + 8 * v20);

            v23 = __OFADD__(v20++, 1);
            if (v23)
            {
              goto LABEL_40;
            }
          }

          v24 = (*v22 + 256);
          v25 = *v24;
          if ((*v24)() == 24)
          {
            sub_252929F10(v12, 0);

            goto LABEL_42;
          }

          v26 = v19;
          v27 = (*(*v22 + 272))();
          v28 = v27;
          if (*(v27 + 16))
          {
            v29 = *(v27 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](24);
            v30 = sub_252E37F14();
            v31 = -1 << *(v28 + 32);
            v32 = v30 & ~v31;
            if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
            {
              v33 = ~v31;
              while (*(*(v28 + 48) + 8 * v32) != 24)
              {
                v32 = (v32 + 1) & v33;
                if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

LABEL_41:
              sub_252929F10(v12, 0);

LABEL_42:
              if (sub_252C4DD58(0))
              {
                v43 = sub_252C4B680(0);
              }

              else
              {
                v43 = 0;
              }

              if (sub_252C51814(3u) & 1) != 0 || (sub_252C51814(1u))
              {
                if (v43)
                {
                  return 1;
                }
              }

              else if (v43 & sub_252C51814(2u))
              {
                return 1;
              }

              v44 = sub_252C4DD64();
              v45 = sub_252C4D664(7);
              if (v44 & 1) != 0 && (v45)
              {
                return 1;
              }

              sub_252CC3D90(0xD000000000000018, 0x8000000252E73950, 0xD0000000000000A7, 0x8000000252E738A0);
              return 0;
            }
          }

LABEL_27:

          v35 = (v25)(v34);
          if (v35 == 38)
          {
            break;
          }

          v36 = MEMORY[0x277D84FA0];
          if (v35 == 41)
          {
            v37 = &unk_2864A95E8;
LABEL_31:
            v36 = sub_2529FC004(v37);
          }

          if (*(v36 + 16))
          {
            v38 = *(v36 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](24);
            v39 = sub_252E37F14();
            v40 = -1 << *(v36 + 32);
            v41 = v39 & ~v40;
            if ((*(v36 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
            {
              v42 = ~v40;
              while (*(*(v36 + 48) + 8 * v41) != 24)
              {
                v41 = (v41 + 1) & v42;
                if (((*(v36 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              goto LABEL_41;
            }
          }

LABEL_17:

          v19 = v26;
          v21 = v20 == v26;
          v18 = v12 & 0xFFFFFFFFFFFFFF8;
          if (v21)
          {
            goto LABEL_58;
          }
        }

        v37 = &unk_2864A95C0;
        goto LABEL_31;
      }
    }

LABEL_58:
    sub_252929F10(v12, 0);
    return 0;
  }

  return result;
}

uint64_t sub_252A48F1C(void *a1)
{
  v2 = [a1 filters];
  if (v2)
  {
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v18 = v3;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v4.n128_f64[0] = HomeFilter.Builder.init()();
    v6 = (*(*v5 + 728))(1, v4);

    v7 = (*(*v6 + 624))(24);

    v9 = (*(*v7 + 760))(v8);

    v10 = v9;
    MEMORY[0x2530AD700]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v11 = [a1 userTask];
    v12 = [a1 time];
    v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v13 setUserTask_];
    v14 = sub_252E37254();

    [v13 setFilters_];

    [v13 setTime_];
    return v13;
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v16 = 8;
  }

  return result;
}

char *sub_252A491E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v204 = a4;
  v195 = a3;
  v210 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v247 = &v186 - v7;
  v200 = sub_252E34834();
  v206 = *(v200 - 8);
  v8 = *(v206 + 64);
  MEMORY[0x28223BE20](v200);
  v199 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E34B94();
  v286 = *(v10 - 8);
  v11 = v286[8];
  MEMORY[0x28223BE20](v10);
  v236 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_252E34B44();
  v207 = *(v209 - 8);
  v13 = *(v207 + 64);
  MEMORY[0x28223BE20](v209);
  v203 = &v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_252E34C54();
  v285 = *(v220 - 8);
  v15 = *(v285 + 64);
  MEMORY[0x28223BE20](v220);
  v205 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D78, &qword_252E424E8);
  v17 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v218 = &v186 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D80, &qword_252E424F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v186 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D88, &qword_252E424F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v222 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v224 = &v186 - v28;
  MEMORY[0x28223BE20](v27);
  v223 = &v186 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v282 = &v186 - v32;
  v262 = sub_252E34B74();
  v284 = *(v262 - 8);
  v33 = *(v284 + 64);
  MEMORY[0x28223BE20](v262);
  v261 = &v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_252E34804();
  v267 = *(v263 - 8);
  v35 = *(v267 + 64);
  v36 = MEMORY[0x28223BE20](v263);
  v246 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v232 = &v186 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v245 = &v186 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v240 = &v186 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v239 = &v186 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v231 = &v186 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v217 = &v186 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v230 = &v186 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v280 = &v186 - v53;
  MEMORY[0x28223BE20](v52);
  v279 = &v186 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v258 = &v186 - v57;
  v58 = sub_252E34694();
  v277 = *(v58 - 8);
  v59 = *(v277 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v186 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_252E34724();
  v227 = *(v254 - 8);
  v62 = *(v227 + 64);
  MEMORY[0x28223BE20](v254);
  v272 = &v186 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DA0, &qword_252E42508);
  v64 = *(v244 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v244);
  v226 = (&v186 - v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DA8, &qword_252E42510);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v253 = &v186 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v248 = (&v186 - v71);
  v191 = sub_252E36AB4();
  v190 = *(v191 - 8);
  v72 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v202 = &v186 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v74 = sub_252E36AD4();
    v75 = __swift_project_value_buffer(v74, qword_27F544D90);
    v289 = 0;
    v290 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E73970);
    v76 = a1;
    v77 = *(a1 + 16);
    v288 = v77;
    v78 = sub_252E37D94();
    MEMORY[0x2530AD570](v78);

    v251 = " groups entitySpans: ";
    v252 = v75;
    sub_252CC3D90(v289, v290, 0xD000000000000084, 0x8000000252E739B0);

    if (qword_27F53F5A8 != -1)
    {
      swift_once();
    }

    v79 = qword_27F544F30;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v80 = MEMORY[0x277D84F90];
    v288 = MEMORY[0x277D84F90];
    if (!v77)
    {
      v181 = MEMORY[0x277D84F90];
      goto LABEL_95;
    }

    v81 = v77;
    v186 = v79;
    v82 = 0;
    v83 = v76 + 32;
    v225 = v227 + 16;
    v243 = (v64 + 56);
    v242 = (v64 + 48);
    v241 = (v227 + 32);
    v281 = 0x8000000252E73A60;
    v274 = v277 + 16;
    v257 = (v286 + 6);
    v255 = (v286 + 1);
    v260 = (v284 + 8);
    v266 = (v267 + 16);
    v265 = v267 + 8;
    v270 = (v267 + 32);
    v273 = (v277 + 8);
    v216 = (v285 + 56);
    v215 = *MEMORY[0x277D5E740];
    v214 = (v285 + 104);
    v213 = (v285 + 48);
    v201 = (v285 + 32);
    v208 = (v285 + 8);
    v187 = 0x8000000252E73BB0;
    v194 = "Returning tokenIndexIdentifier ";
    v212 = *MEMORY[0x277D5E6C8];
    v235 = v286 + 13;
    v211 = "Returning itemIdIdentifier ";
    v234 = "significantTokenCount";
    v233 = "MatchedTokenCount not found";
    v229 = *MEMORY[0x277D5E700];
    v228 = "originEntityId not found";
    v221 = "ignments:userEntityName:)";
    v198 = v207 + 16;
    v197 = (v207 + 8);
    v193 = v206 + 16;
    v192 = v206 + 8;
    v238 = (v267 + 48);
    v237 = (v227 + 8);
    v256 = v10;
    v259 = v22;
    v64 = v263;
    v264 = v58;
    a1 = v272;
    v84 = v248;
    v189 = v81;
    v188 = v76 + 32;
LABEL_7:
    v85 = *(v83 + 8 * v82);
    v271 = v82;
    v196 = v82 + 1;
    v249 = v85;

    v86 = 0;
    v286 = v80;
LABEL_10:
    v87 = *(v249 + 16);
    v88 = v244;
    v89 = v253;
    if (v86 == v87)
    {
      v250 = v86;
      v90 = 1;
    }

    else
    {
      if (v86 >= v87)
      {
        goto LABEL_104;
      }

      v91 = v86 + 1;
      v92 = v227;
      v93 = v249 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v86;
      v94 = *(v244 + 48);
      v95 = v226;
      *v226 = v86;
      (*(v92 + 16))(&v95[v94], v93, v254);
      v96 = v95;
      v84 = v248;
      sub_25293DDF0(v96, v253, &qword_27F541DA0, &qword_252E42508);
      v89 = v253;
      v90 = 0;
      v250 = v91;
    }

    v97 = v89;
    (*v243)(v89, v90, 1, v88);
    sub_25293DDF0(v97, v84, &qword_27F541DA8, &qword_252E42510);
    if ((*v242)(v84, 1, v88) == 1)
    {
      break;
    }

    v98 = *v84;
    (*v241)(a1, v84 + *(v88 + 48), v254);
    v99 = sub_252E346D4();
    v100 = v99;
    v101 = *(v99 + 16);
    v283 = v98;
    v269 = HIDWORD(v98);
    v268 = HIDWORD(v271);
    v278 = v101;
    if (!v101)
    {

      v125 = v247;
LABEL_53:
      sub_252CC4050(0xD00000000000001BLL, v234 | 0x8000000000000000, 0xD000000000000084, v251 | 0x8000000000000000, 0xD000000000000079, v233 | 0x8000000000000000, 149);
      goto LABEL_69;
    }

    LODWORD(v284) = 0;
    v102 = 0;
    v103 = *(v277 + 80);
    v275 = v99;
    v276 = v99 + ((v103 + 32) & ~v103);
    LODWORD(v285) = 1;
    do
    {
      if (v102 >= *(v100 + 16))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      (*(v277 + 16))(v61, v276 + *(v277 + 72) * v102, v58);
      if (sub_252E34674() == 0xD000000000000015 && v281 == v104)
      {
      }

      else
      {
        v105 = sub_252E37DB4();

        if ((v105 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v106 = sub_252E34684();
      v107 = v284;
      if ((v106 & 0x100000000) == 0)
      {
        v107 = v106;
      }

      LODWORD(v284) = v107;
      LODWORD(v285) = ((v106 & 0x100000000uLL) >> 32) & v285;
LABEL_27:
      sub_252E34654();
      if (v108)
      {
        v109 = v258;
        sub_252E34664();
        if ((*v257)(v109, 1, v10) == 1)
        {
          sub_25293847C(v109, &qword_27F541D98, &unk_252E5B5B0);
        }

        else
        {
          sub_252E34B84();
          (*v255)(v109, v10);
        }

        v110 = 0;
        while (v110 != 11)
        {
          v111 = sub_252D1569C(byte_2864A25A0[v110 + 32]);
          v113 = v112;
          if (v111 == sub_252E34674() && v113 == v114)
          {

LABEL_40:

            sub_252E34674();
            break;
          }

          ++v110;
          v116 = sub_252E37DB4();

          if (v116)
          {
            goto LABEL_40;
          }
        }

        v117 = v261;
        sub_252E346F4();
        sub_252E34B64();
        (*v260)(v117, v262);
        v118 = sub_252E34764();
        (*(*(v118 - 8) + 56))(v282, 1, 1, v118);
        if ((v283 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        if (v269)
        {
          goto LABEL_98;
        }

        if (v268)
        {
          goto LABEL_99;
        }

        LOBYTE(v289) = 0;
        v119 = v279;
        sub_252E347B4();
        v120 = v119;
        v64 = v263;
        (*v266)(v280, v120, v263);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v286 = sub_2529F85CC(0, v286[2] + 1, 1, v286);
        }

        v10 = v256;
        v22 = v259;
        v100 = v275;
        v122 = v286[2];
        v121 = v286[3];
        if (v122 >= v121 >> 1)
        {
          v286 = sub_2529F85CC(v121 > 1, v122 + 1, 1, v286);
        }

        v123 = v267;
        (*(v267 + 8))(v279, v64);
        v124 = v286;
        v286[2] = v122 + 1;
        (*(v123 + 32))(v124 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v122, v280, v64);
        v58 = v264;
      }

      else
      {
        v100 = v275;
      }

      ++v102;
      (*v273)(v61, v58);
    }

    while (v102 != v278);

    v125 = v247;
    if (v285)
    {
      goto LABEL_53;
    }

    sub_252E34704();
    v126 = sub_252E34C74();
    v127 = *(v126 - 8);
    if ((*(v127 + 48))(v22, 1, v126) == 1)
    {
      sub_25293847C(v22, &qword_27F541D80, &qword_252E424F0);
      v128 = v216;
      v129 = v223;
      v130 = v220;
      (*v216)(v223, 1, 1, v220);
      v131 = v224;
    }

    else
    {
      v129 = v223;
      sub_252E34C64();
      (*(v127 + 8))(v22, v126);
      v130 = v220;
      v131 = v224;
      v128 = v216;
    }

    (*v214)(v131, v215, v130);
    (*v128)(v131, 0, 1, v130);
    v132 = *(v219 + 48);
    v133 = v218;
    sub_252A4CFCC(v129, v218);
    sub_252A4CFCC(v131, v133 + v132);
    a1 = v213;
    v134 = *v213;
    v135 = (*v213)(v133, 1, v130);
    v136 = v222;
    if (v135 == 1)
    {
      sub_25293847C(v131, &qword_27F541D88, &qword_252E424F8);
      sub_25293847C(v129, &qword_27F541D88, &qword_252E424F8);
      if (v134(v133 + v132, 1, v130) == 1)
      {
        sub_25293847C(v133, &qword_27F541D88, &qword_252E424F8);
        goto LABEL_86;
      }

LABEL_60:
      sub_25293847C(v133, &qword_27F541D78, &qword_252E424E8);
    }

    else
    {
      sub_252A4CFCC(v133, v222);
      if (v134(v133 + v132, 1, v130) == 1)
      {
        sub_25293847C(v224, &qword_27F541D88, &qword_252E424F8);
        sub_25293847C(v223, &qword_27F541D88, &qword_252E424F8);
        (*v208)(v136, v130);
        goto LABEL_60;
      }

      v169 = v205;
      (*v201)(v205, v133 + v132, v130);
      sub_252A4D0C8(&qword_27F541DB0, MEMORY[0x277D5E748]);
      v170 = sub_252E36EF4();
      a1 = v208;
      v171 = *v208;
      (*v208)(v169, v130);
      sub_25293847C(v224, &qword_27F541D88, &qword_252E424F8);
      sub_25293847C(v223, &qword_27F541D88, &qword_252E424F8);
      v171(v222, v130);
      sub_25293847C(v133, &qword_27F541D88, &qword_252E424F8);
      if (v170)
      {
LABEL_86:
        if (*(v210 + 16))
        {
          v172 = v203;
          (*(v207 + 16))(v203, v210 + ((*(v207 + 80) + 32) & ~*(v207 + 80)), v209);
          if (v204)
          {
            v173 = sub_252E34AF4();
            if (v174)
            {
              v175 = v173;
              v176 = v174;
              v289 = 0;
              v290 = 0xE000000000000000;

              sub_252E379F4();

              v289 = 0xD000000000000028;
              v290 = v187;
              MEMORY[0x2530AD570](v175, v176);

              sub_252CC3D90(v289, v290, 0xD000000000000084, v251 | 0x8000000000000000);

              (*v197)(v172, v209);
              goto LABEL_61;
            }
          }

          (*v197)(v172, v209);
        }

        v177 = sub_252E346E4();
        if (*(v177 + 16))
        {
          v178 = v206;
          v179 = v199;
          v180 = v200;
          (*(v206 + 16))(v199, v177 + ((*(v178 + 80) + 32) & ~*(v178 + 80)), v200);

          sub_252E34824();
          (*(v178 + 8))(v179, v180);
          sub_252CC3D90(0xD000000000000029, v194 | 0x8000000000000000, 0xD000000000000084, v251 | 0x8000000000000000);
        }

        else
        {
        }
      }
    }

LABEL_61:
    LOBYTE(v289) = 0;
    v58 = sub_252A4BFB0();
    v22 = v137;

    v138 = v261;
    sub_252E346F4();
    sub_252E34B64();
    v64 = v139;
    (*v260)(v138, v262);
    v140 = v236;
    (*v235)(v236, v212, v10);
    sub_252E34B84();
    (*v255)(v140, v10);
    v141 = sub_252E34764();
    (*(*(v141 - 8) + 56))(v282, 1, 1, v141);
    if ((v283 & 0x8000000000000000) != 0)
    {
      goto LABEL_105;
    }

    if (v269)
    {
      goto LABEL_106;
    }

    if (v268)
    {
      goto LABEL_107;
    }

    LOBYTE(v289) = 0;
    v142 = v217;
    sub_252E347B4();
    v289 = 0;
    v290 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, v211 | 0x8000000000000000);
    v64 = v263;
    sub_252E37AE4();
    sub_252CC3D90(v289, v290, 0xD000000000000084, v251 | 0x8000000000000000);

    v143 = *v270;
    v144 = v230;
    (*v270)(v230, v142, v64);
    (*v266)(v231, v144, v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v286 = sub_2529F85CC(0, v286[2] + 1, 1, v286);
    }

    v22 = v259;
    v125 = v247;
    v146 = v286[2];
    v145 = v286[3];
    if (v146 >= v145 >> 1)
    {
      v286 = sub_2529F85CC(v145 > 1, v146 + 1, 1, v286);
    }

    v147 = v267;
    (*(v267 + 8))(v230, v64);
    v148 = v286;
    v286[2] = v146 + 1;
    v143(&v148[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v146], v231, v64);
LABEL_69:
    sub_252A4B694(v272, v283, v271, v125);
    if ((*v238)(v125, 1, v64) == 1)
    {
      sub_25293847C(v125, &qword_27F541D70, &unk_252E5B5A0);
    }

    else
    {
      v149 = *v270;
      v150 = v239;
      (*v270)(v239, v125, v64);
      (*v266)(v240, v150, v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v286 = sub_2529F85CC(0, v286[2] + 1, 1, v286);
      }

      v152 = v286[2];
      v151 = v286[3];
      if (v152 >= v151 >> 1)
      {
        v286 = sub_2529F85CC(v151 > 1, v152 + 1, 1, v286);
      }

      v153 = v267;
      (*(v267 + 8))(v239, v64);
      v154 = v286;
      v286[2] = v152 + 1;
      v149(&v154[((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v152], v240, v64);
    }

    a1 = v272;
    sub_252E346C4();
    if (!v155)
    {
      sub_252CC3D90(0xD000000000000018, v221 | 0x8000000000000000, 0xD000000000000084, v251 | 0x8000000000000000);
      (*v237)(a1, v254);
      goto LABEL_9;
    }

    v58 = v155;
    v156 = v261;
    sub_252E346F4();
    v22 = sub_252E34B64();
    v64 = v157;
    (*v260)(v156, v262);
    a1 = v236;
    (*v235)(v236, v229, v10);
    sub_252E34B84();
    (*v255)(a1, v10);
    v158 = sub_252E34764();
    (*(*(v158 - 8) + 56))(v282, 1, 1, v158);
    if ((v283 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v269)
    {
      goto LABEL_102;
    }

    if (!v268)
    {
      LOBYTE(v289) = 0;
      v159 = v232;
      sub_252E347B4();
      v289 = 0;
      v290 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001BLL, v228 | 0x8000000000000000);
      v64 = v263;
      sub_252E37AE4();
      sub_252CC3D90(v289, v290, 0xD000000000000084, v251 | 0x8000000000000000);

      v160 = *v270;
      v161 = v245;
      (*v270)(v245, v159, v64);
      (*v266)(v246, v161, v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v286 = sub_2529F85CC(0, v286[2] + 1, 1, v286);
      }

      v22 = v259;
      v163 = v286[2];
      v162 = v286[3];
      if (v163 >= v162 >> 1)
      {
        v286 = sub_2529F85CC(v162 > 1, v163 + 1, 1, v286);
      }

      v164 = v267;
      (*(v267 + 8))(v245, v64);
      v165 = v272;
      (*v237)(v272, v254);
      v166 = v286;
      v286[2] = v163 + 1;
      v167 = v166 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v168 = *(v164 + 72);
      a1 = v165;
      v160(&v167[v168 * v163], v246, v64);
LABEL_9:
      v58 = v264;
      v84 = v248;
      v86 = v250;
      goto LABEL_10;
    }

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
    swift_once();
  }

  sub_25297BA5C(v286);
  v82 = v196;
  v83 = v188;
  v80 = MEMORY[0x277D84F90];
  if (v196 != v189)
  {
    goto LABEL_7;
  }

LABEL_100:
  v181 = v288;
LABEL_95:
  sub_252E375C4();
  v182 = v202;
  sub_252E36A74();
  v183 = sub_252DF9850(v181);

  v289 = 0;
  v290 = 0xE000000000000000;
  sub_252E379F4();

  v289 = 0xD000000000000020;
  v290 = 0x8000000252E73BE0;
  v287 = *(v183 + 2);
  v184 = sub_252E37D94();
  MEMORY[0x2530AD570](v184);

  sub_252CC3D90(v289, v290, 0xD000000000000084, v251 | 0x8000000000000000);

  (*(v190 + 8))(v182, v191);
  return v183;
}

uint64_t sub_252A4B694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v58 = a3;
  v65 = a2;
  v66 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v55 - v7;
  v8 = sub_252E34B94();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E34B74();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E35994();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DC0, &qword_252E42518);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = sub_252E359D4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_252E34714();
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v29, v24, v25);
    v30 = sub_252E359A4();
    if ((v30 & 0x100000000) != 0)
    {
      (*(v26 + 8))(v29, v25);
      goto LABEL_12;
    }

    v57 = v30;
    sub_252E35974();
    v31 = sub_252E35954();
    v32 = *(v17 + 8);
    v32(v20, v16);
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DC8, &qword_252E42520);
      v33 = sub_252E359C4();
      v34 = *(v33 - 8);
      v56 = *(v34 + 72);
      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252E3C3C0;
      v37 = v36 + v35;
      v38 = *(v34 + 104);
      v38(v37, *MEMORY[0x277D5F470], v33);
      v38(v37 + v56, *MEMORY[0x277D5F468], v33);
      v39 = sub_2529FE3BC(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v40 = sub_252E359B4();
      v41 = sub_252A4C5BC(v40, v39);

      if (v41)
      {
        v42 = 0x4D74636566726570;
      }

      else
      {
        v42 = 0x74614D7361696C61;
      }

      v43 = 0xEA00000000006863;
      if (v41)
      {
        v43 = 0xEC00000068637461;
      }
    }

    else
    {
      sub_252E35964();
      v48 = sub_252E35954();
      v32(v20, v16);
      if (v48)
      {
        v55 = 0x8000000252E65390;
        v56 = 0xD000000000000010;
        goto LABEL_22;
      }

      sub_252E35984();
      v49 = sub_252E35954();
      v32(v20, v16);
      if (v49)
      {
        v42 = 0x4D6C616974726170;
      }

      else
      {
        v42 = 0x4D74636566726570;
      }

      v43 = 0xEC00000068637461;
    }

    v55 = v43;
    v56 = v42;
LABEL_22:
    sub_252E346F4();
    sub_252E34B64();
    (*(v59 + 8))(v15, v60);
    v51 = v62;
    v50 = v63;
    (*(v62 + 104))(v11, *MEMORY[0x277D5E6C0], v63);
    sub_252E34B84();
    (*(v51 + 8))(v11, v50);
    v52 = sub_252E34764();
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    if (v65 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v58 | v65) & 0x8000000000000000) == 0)
    {
      if (v58 <= 0xFFFFFFFFLL)
      {
        LOBYTE(v67) = 0;
        v11 = v66;
        sub_252E347B4();
        if (qword_27F53F4F8 == -1)
        {
LABEL_26:
          v53 = sub_252E36AD4();
          __swift_project_value_buffer(v53, qword_27F544D90);
          v67 = 0;
          v68 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E73C30);
          v54 = sub_252E34804();
          sub_252E37AE4();
          sub_252CC3D90(v67, v68, 0xD000000000000084, 0x8000000252E739B0);

          (*(v26 + 8))(v29, v25);
          return (*(*(v54 - 8) + 56))(v11, 0, 1, v54);
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_25293847C(v24, &qword_27F541DC0, &qword_252E42518);
LABEL_12:
  v44 = v66;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v45 = sub_252E36AD4();
  __swift_project_value_buffer(v45, qword_27F544D90);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E73C10, 0xD000000000000084, 0x8000000252E739B0);
  v46 = sub_252E34804();
  return (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
}

uint64_t sub_252A4BFB0()
{
  v0 = sub_252E36F84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_252E329C4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252A4D03C();
  v5 = sub_252E329A4();
  v7 = v6;
  sub_252E36F74();
  v8 = sub_252E36F54();
  if (v9)
  {
    v10 = v8;
    sub_25296464C(v5, v7);

    return v10;
  }

  else
  {
    sub_25296464C(v5, v7);

    return 0;
  }
}

uint64_t sub_252A4C208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DE8, &qword_252E425B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A4D384();
  sub_252E37F84();
  v15 = 0;
  sub_252E37CE4();
  if (!v4)
  {
    v14 = 1;
    sub_252E37C94();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_252A4C3A4()
{
  if (*v0)
  {
    result = 0x756C61566E617073;
  }

  else
  {
    result = 0x756F436E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_252A4C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F436E656B6F74 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756C61566E617073 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252A4C4D4(uint64_t a1)
{
  v2 = sub_252A4D384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A4C510(uint64_t a1)
{
  v2 = sub_252A4D384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A4C54C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252A4D1D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_252A4C5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DD0, &qword_252E42528);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(a2 + 16);
  if (v8 == 1)
  {
    sub_252DA0AA4(a2, v7);
    v10 = sub_252E359C4();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      v13 = 0;
      v14 = *(a1 + 16);
      do
      {
        v9 = v14 != v13;
        if (v14 == v13)
        {
          break;
        }

        v15 = v13 + 1;
        v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v13;
        sub_252A4D0C8(&qword_27F5417B0, MEMORY[0x277D5F478]);
        v17 = sub_252E36EF4();
        v13 = v15;
      }

      while ((v17 & 1) == 0);
      (*(v11 + 8))(v7, v10);
      return v9;
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
      return 1;
    }

    return sub_252A4C7C4(a1, a2);
  }

  return result;
}

uint64_t sub_252A4C7C4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_252A4C944(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_252A4D090(v13, &v17);
    v14 = v17;
    MEMORY[0x2530AED00](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_252A4C944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v6 = sub_252E359C4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v28 - v12;
  v33 = *(a2 + 16);
  if (!v33)
  {
    return 0;
  }

  v28 = v3;
  v29 = 0;
  v13 = 0;
  v38 = *(v11 + 16);
  v39 = v11 + 16;
  v32 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v11 + 72);
  v36 = a3 + 56;
  v37 = v14;
  v15 = (v11 + 8);
  v35 = a3;
  while (1)
  {
    v34 = v13;
    v38(v40, v32 + v37 * v13, v6);
    v18 = *(a3 + 40);
    sub_252A4D0C8(&qword_27F5417A8, MEMORY[0x277D5F478]);
    v19 = sub_252E36E84();
    v20 = -1 << *(a3 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      v16 = *v15;
LABEL_4:
      v16(v40, v6);
      goto LABEL_5;
    }

    v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24 = ~v20;
    while (1)
    {
      v38(v10, *(v35 + 48) + v21 * v37, v6);
      sub_252A4D0C8(&qword_27F5417B0, MEMORY[0x277D5F478]);
      v25 = sub_252E36EF4();
      v16 = *v15;
      (*v15)(v10, v6);
      if (v25)
      {
        break;
      }

      v21 = (v21 + 1) & v24;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
      {
        a3 = v35;
        goto LABEL_4;
      }
    }

    result = (v16)(v40, v6);
    v27 = *(v30 + 8 * v22);
    *(v30 + 8 * v22) = v27 | v23;
    if ((v27 & v23) != 0)
    {
      a3 = v35;
LABEL_5:
      v17 = v34;
      goto LABEL_6;
    }

    v17 = v34;
    a3 = v35;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29 + 1 == *(v35 + 16))
    {
      return 1;
    }

    ++v29;
LABEL_6:
    v13 = v17 + 1;
    if (v13 == v33)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A4CC98()
{
  v0 = sub_252E36F84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36F74();
  v5 = sub_252E36F44();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  v8 = sub_252E32994();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_252E32984();
  sub_252A4CF78();
  sub_252E32974();

  sub_252982EFC(v5, v7);
  v11 = 0x100000000;
  if (!v14)
  {
    v11 = 0;
  }

  return v11 | v13[2];
}

unint64_t sub_252A4CF78()
{
  result = qword_27F541D68;
  if (!qword_27F541D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541D68);
  }

  return result;
}

uint64_t sub_252A4CFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D88, &qword_252E424F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A4D03C()
{
  result = qword_27F541DB8;
  if (!qword_27F541DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541DB8);
  }

  return result;
}

uint64_t sub_252A4D090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A4C944(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_252A4D0C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A4D110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252A4D16C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_252A4D1D0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DD8, &qword_252E425B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A4D384();
  sub_252E37F74();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11[15] = 0;
  v9 = sub_252E37BF4();
  v11[14] = 1;
  sub_252E37BA4();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 | ((HIDWORD(v9) & 1) << 32);
}

unint64_t sub_252A4D384()
{
  result = qword_27F541DE0;
  if (!qword_27F541DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541DE0);
  }

  return result;
}

unint64_t sub_252A4D3EC()
{
  result = qword_27F541DF0;
  if (!qword_27F541DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541DF0);
  }

  return result;
}

unint64_t sub_252A4D444()
{
  result = qword_27F541DF8;
  if (!qword_27F541DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541DF8);
  }

  return result;
}

unint64_t sub_252A4D49C()
{
  result = qword_27F541E00;
  if (!qword_27F541E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E00);
  }

  return result;
}

uint64_t sub_252A4D4F0(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v31 = a2;
  while (v6)
  {
LABEL_11:
    v12 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a1 + 48) + v12);
    v14 = *(*(a1 + 56) + v12);
    swift_bridgeObjectRetain_n();

    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a2;
    v33 = *a2;
    v18 = sub_252A454C0(v13);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_23;
    }

    v24 = v19;
    if (*(v17 + 24) < v23)
    {
      sub_252E00638(v23, isUniquelyReferenced_nonNull_native);
      type metadata accessor for Service();
      v18 = sub_252A454C0(v13);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v26 = v33;
      if (v24)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v29 = v18;
    sub_252E03EC4();
    v18 = v29;
    v26 = v33;
    if (v24)
    {
LABEL_4:
      v9 = v26[7];
      v10 = *(v9 + 8 * v18);
      *(v9 + 8 * v18) = v14;
      goto LABEL_5;
    }

LABEL_17:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    *(v26[6] + 8 * v18) = v13;
    *(v26[7] + 8 * v18) = v14;
    v27 = v26[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_24;
    }

    v26[2] = v28;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v31;
    *v31 = v26;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252A4D754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541748, &qword_252E40A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E426E0;
  *(v0 + 32) = type metadata accessor for InvalidInputForCurrentDeviceStateResponseHandler();
  *(v0 + 40) = &off_2864BE718;
  *(v0 + 48) = type metadata accessor for BluetoothWakeUpResponseHandler();
  *(v0 + 56) = &off_2864BDF80;
  *(v0 + 64) = type metadata accessor for CalibrationInProgressResponseHandler();
  *(v0 + 72) = &off_2864BB080;
  *(v0 + 80) = type metadata accessor for RemoteAccessNotSetUpResponseHandler();
  *(v0 + 88) = &off_2864BBBF8;
  *(v0 + 96) = type metadata accessor for SecureAccessDeniedResponseHandler();
  *(v0 + 104) = &off_2864C0078;
  *(v0 + 112) = type metadata accessor for SceneNotSetUpResponseHandler();
  *(v0 + 120) = &off_2864B69A0;
  *(v0 + 128) = type metadata accessor for MediaSceneFailureResponseHandler();
  *(v0 + 136) = &off_2864B59F0;
  *(v0 + 144) = type metadata accessor for SceneInProgressResponseHandler();
  *(v0 + 152) = &off_2864B5950;
  *(v0 + 160) = type metadata accessor for ScenePartialFailureResponseHandler();
  *(v0 + 168) = &off_2864BC3E0;
  *(v0 + 176) = type metadata accessor for HomeManagerSyncInProgressResponseHandler();
  *(v0 + 184) = &off_2864B8230;
  *(v0 + 192) = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  *(v0 + 200) = &off_2864B6EE0;
  *(v0 + 208) = type metadata accessor for InProgressResponseHandler();
  *(v0 + 216) = &off_2864B4BE8;
  *(v0 + 224) = type metadata accessor for UnreachableResponseHandler();
  *(v0 + 232) = &off_2864BCFE0;
  *(v0 + 240) = type metadata accessor for RvcFailureResponseHandler();
  *(v0 + 248) = &off_2864BAE60;
  *(v0 + 256) = type metadata accessor for FailureResponseHandler();
  *(v0 + 264) = &off_2864BF6F0;
  result = type metadata accessor for GenericFallbackResponseHandler();
  *(v0 + 272) = result;
  *(v0 + 280) = &off_2864BB830;
  qword_27F575798 = v0;
  return result;
}

uint64_t sub_252A4D8E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541748, &qword_252E40A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E426F0;
  *(v0 + 32) = type metadata accessor for AsyncEagerResponseHandler();
  *(v0 + 40) = &off_2864B7038;
  *(v0 + 48) = type metadata accessor for WatchPostExecutionResponseHandler();
  *(v0 + 56) = &off_2864B90A0;
  *(v0 + 64) = type metadata accessor for ConvenienceAnswerResponseHandler();
  *(v0 + 72) = &off_2864BACF8;
  *(v0 + 80) = type metadata accessor for WaterSystemResponseHandler();
  *(v0 + 88) = &off_2864B1E38;
  *(v0 + 96) = type metadata accessor for SceneEnabledResponseHandler();
  *(v0 + 104) = &off_2864BAC38;
  *(v0 + 112) = type metadata accessor for BatteryResponseHandler();
  *(v0 + 120) = &off_2864BE918;
  *(v0 + 128) = type metadata accessor for SprinklerResponseHandler();
  *(v0 + 136) = &off_2864B6BD0;
  SecuritySystemStateResponseHandler = type metadata accessor for GetSecuritySystemStateResponseHandler();
  *(v0 + 144) = SecuritySystemStateResponseHandler;
  *(v0 + 152) = &off_2864B1F98;
  *(v0 + 160) = type metadata accessor for PollingResponseHandler();
  *(v0 + 168) = &off_2864B9820;
  *(v0 + 176) = type metadata accessor for SetAirPurifierPowerResponseHandler();
  *(v0 + 184) = &off_2864C0AC8;
  *(v0 + 192) = type metadata accessor for AlreadyOffResponseHandler();
  *(v0 + 200) = &off_2864B8AA8;
  *(v0 + 208) = type metadata accessor for SetColorResponseHandler();
  *(v0 + 216) = &off_2864B0AE8;
  *(v0 + 224) = type metadata accessor for SetSwingModeResponseHandler();
  *(v0 + 232) = &off_2864BA680;
  *(v0 + 240) = type metadata accessor for SetModeResponseHandler();
  *(v0 + 248) = &off_2864BDAC0;
  *(v0 + 256) = type metadata accessor for BackToComfortableTemperatureResponseHandler();
  *(v0 + 264) = &off_2864B18C0;
  *(v0 + 272) = type metadata accessor for AlreadyHeatingCoolingResponseHandler();
  *(v0 + 280) = &off_2864BF320;
  *(v0 + 288) = type metadata accessor for SetSingleTemperatureValueResponseHandler();
  *(v0 + 296) = &off_2864B60D8;
  *(v0 + 304) = type metadata accessor for SetRangeTemperatureValueResponseHandler();
  *(v0 + 312) = &off_2864B8320;
  *(v0 + 320) = type metadata accessor for SetBooleanStateResponseHandler();
  *(v0 + 328) = &off_2864B8140;
  *(v0 + 336) = type metadata accessor for SetNumericValueResponseHandler();
  *(v0 + 344) = &off_2864B2060;
  *(v0 + 352) = type metadata accessor for GetModeResponseHandler();
  *(v0 + 360) = &off_2864C06B0;
  *(v0 + 368) = SecuritySystemStateResponseHandler;
  *(v0 + 376) = &off_2864B1F98;
  *(v0 + 384) = type metadata accessor for GetSmokeSensorStateResponseHandler();
  *(v0 + 392) = &off_2864B1D30;
  *(v0 + 400) = type metadata accessor for GetCarbonOxideSensorStateResponseHandler();
  *(v0 + 408) = &off_2864C10A8;
  *(v0 + 416) = type metadata accessor for GetRotationDirectionResponseHandler();
  *(v0 + 424) = &off_2864BF1A0;
  *(v0 + 432) = type metadata accessor for GetColorResponseHandler();
  *(v0 + 440) = &off_2864B9A20;
  *(v0 + 448) = type metadata accessor for GetFilterStateResponseHandler();
  *(v0 + 456) = &off_2864BEEE8;
  *(v0 + 464) = type metadata accessor for GetBooleanSensorStateResponseHandler();
  *(v0 + 472) = &off_2864B8E48;
  *(v0 + 480) = type metadata accessor for GetThermostatModeResponseHandler();
  *(v0 + 488) = &off_2864B85F8;
  *(v0 + 496) = type metadata accessor for GetSensorMeasurementResponseHandler();
  *(v0 + 504) = &off_2864BEFF0;
  *(v0 + 512) = type metadata accessor for GetBooleanStateResponseHandler();
  *(v0 + 520) = &off_2864B8698;
  *(v0 + 528) = type metadata accessor for GetNumericValueResponseHandler();
  *(v0 + 536) = &off_2864B4918;
  result = type metadata accessor for SuccessFallbackResponseHandler();
  *(v0 + 544) = result;
  *(v0 + 552) = &off_2864BC780;
  qword_27F5757A0 = v0;
  return result;
}

uint64_t sub_252A4DBD8(uint64_t a1, uint64_t a2)
{
  v3[304] = v2;
  v3[303] = a2;
  v3[302] = a1;
  v4 = sub_252E36AB4();
  v3[305] = v4;
  v5 = *(v4 - 8);
  v3[306] = v5;
  v6 = *(v5 + 64) + 15;
  v3[307] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A4DCA0, 0, 0);
}

uint64_t sub_252A4DCA0()
{
  v113 = v0;
  if (qword_27F53F2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F5757A0;

  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), v0 + 1864);

  v3 = *(v0 + 1888);
  v4 = *(v0 + 1896);
  __swift_project_boxed_opaque_existential_1((v0 + 1864), v3);
  if ((*(v4 + 64))(v3, v4))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
  }

  else
  {
    v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v5 + 288), v0 + 1904);

    v6 = *(v0 + 1928);
    v7 = *(v0 + 1936);
    __swift_project_boxed_opaque_existential_1((v0 + 1904), v6);
    v8 = (*(v7 + 72))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
    if ((v8 & 1) == 0)
    {
      v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v9 + 288), v0 + 1944);

      v10 = *(v0 + 1968);
      v11 = *(v0 + 1976);
      __swift_project_boxed_opaque_existential_1((v0 + 1944), v10);
      v12 = (*(v11 + 80))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1944));
      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v13 = *(v1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 2408) = v1;
  if (!isUniquelyReferenced_nonNull_native || v13 >= *(v1 + 3) >> 1)
  {
    v1 = sub_2529F891C(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v1);
    *(v0 + 2408) = v1;
  }

  v15 = type metadata accessor for AsyncDefaultEagerResponseHandler();
  sub_252B7DA94(0, 0, 1, v15, &off_2864BBE98);
LABEL_11:
  *(v0 + 2464) = v1;
  v16 = *(v0 + 2424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v17 = sub_252E33F24();
  *(v0 + 2472) = v17;
  v18 = sub_252E33F04();
  *(v0 + 2480) = v18;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  *(v0 + 2488) = v19;
  *(v0 + 2496) = __swift_project_value_buffer(v19, qword_27F544D30);
  v20 = v17;
  v21 = sub_252E36AC4();
  v22 = sub_252E374C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_252917000, v21, v22, "intent to be donated: %@", v23, 0xCu);
    sub_25293847C(v24, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v24, -1, -1);
    MEMORY[0x2530AED00](v23, -1, -1);
  }

  v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v26 + 288), v0 + 1984);

  v27 = *(v0 + 2008);
  v28 = *(v0 + 2016);
  __swift_project_boxed_opaque_existential_1((v0 + 1984), v27);
  v29 = (*(v28 + 40))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1984));
  if (v29)
  {
    v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v30 + 288), v0 + 2344);

    v31 = *(v0 + 2368);
    v32 = *(v0 + 2376);
    __swift_project_boxed_opaque_existential_1((v0 + 2344), v31);
    v33 = (*(v32 + 56))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
    if (v33)
    {
      v34 = swift_task_alloc();
      *(v0 + 2504) = v34;
      *v34 = v0;
      v34[1] = sub_252A4EBF4;

      return sub_252AE45DC(v20, v18);
    }
  }

  v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v36 + 288), v0 + 2024);

  v37 = *(v0 + 2048);
  v38 = *(v0 + 2056);
  __swift_project_boxed_opaque_existential_1((v0 + 2024), v37);
  v39 = (*(v38 + 8))(v37, v38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2024));
  if (v39)
  {
    type metadata accessor for SiriRemembersProvider();
    v40 = swift_allocObject();
    *(v0 + 2544) = v40;
    strcpy((v40 + 16), "HomeAutomation");
    *(v40 + 31) = -18;
    *(v40 + 32) = 0xD00000000000001DLL;
    *(v40 + 40) = 0x8000000252E73EE0;
    *(v40 + 48) = 0xD000000000000011;
    *(v40 + 56) = 0x8000000252E73F00;
    v41 = *(sub_252B680FC() + 75);

    if (v41 == 1)
    {
      v42 = *(v0 + 2472);
      if ((sub_252C4BEB8() & 1) == 0)
      {
        sub_252B680FC();
        v43 = sub_252B6355C();

        if (v43)
        {
          v44 = *(v0 + 2496);
          v45 = sub_252E36AC4();
          v46 = sub_252E374C4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_252917000, v45, v46, "Disambiguation was performed in this interaction, going to donate to SiriRemembers.", v47, 2u);
            MEMORY[0x2530AED00](v47, -1, -1);
          }

          v48 = swift_task_alloc();
          *(v0 + 2552) = v48;
          *v48 = v0;
          v48[1] = sub_252A4FA34;
          v49 = *(v0 + 2472);
          v50 = 1;
LABEL_56:

          return sub_252E1265C(v49, v50);
        }
      }
    }

    v51 = *(sub_252B680FC() + 76);

    if (v51 == 1)
    {
      v52 = *(v0 + 2472);
      if ((sub_252C4BEB8() & 1) == 0)
      {
        sub_252B680FC();
        v76 = sub_252B6355C();

        if (v76 || (v77 = *(sub_252B680FC() + 77), , v77 == 1))
        {
          v78 = *(v0 + 2496);
          v79 = sub_252E36AC4();
          v80 = sub_252E374C4();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_252917000, v79, v80, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v81, 2u);
            MEMORY[0x2530AED00](v81, -1, -1);
          }

          v82 = swift_task_alloc();
          *(v0 + 2568) = v82;
          *v82 = v0;
          v82[1] = sub_252A5045C;
          v83 = *(v0 + 2544);
          v49 = *(v0 + 2472);
          v50 = 2;
          goto LABEL_56;
        }
      }
    }

    v53 = *(v0 + 2544);
    swift_setDeallocating();
    v54 = v53[3];

    v55 = v53[5];

    v56 = v53[7];

    swift_deallocClassInstance();
  }

  v57 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v57 + 288), v0 + 2064);

  v58 = *(v0 + 2088);
  v59 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v58);
  v60 = (*(v59 + 160))(v58, v59);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if (v60)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v0 + 2288))
      {
        sub_252927BEC((v0 + 2264), v0 + 2224);
        v61 = sub_252B680FC();
        swift_beginAccess();
        v62 = *(v61 + 16);
        v63 = *(v62 + 16);
        if (v63)
        {
          memcpy((v0 + 16), (v62 + 504 * v63 - 472), 0x1F8uLL);
          sub_2529353AC(v0 + 16, v0 + 520);

          v64 = *(sub_252B680FC() + 152);

          if (v64 >> 62)
          {
            v65 = sub_252E378C4();
          }

          else
          {
            v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v65)
          {
            v66 = sub_252CC6468(MEMORY[0x277D84F90]);
            v111 = v66;
            v67 = *(sub_252B680FC() + 152);

            if (v67 >> 62)
            {
              result = sub_252E378C4();
              v68 = result;
              if (result)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v68)
              {
LABEL_39:
                if (v68 < 1)
                {
                  __break(1u);
                  return result;
                }

                v69 = 0;
                do
                {
                  if ((v67 & 0xC000000000000001) != 0)
                  {
                    v70 = MEMORY[0x2530ADF00](v69, v67);
                  }

                  else
                  {
                    v70 = *(v67 + 8 * v69 + 32);
                  }

                  v71 = v70;
                  ++v69;
                  sub_25297D6E8();
                  sub_252A4D4F0(v72, &v111);
                }

                while (v68 != v69);

                v66 = v111;
                goto LABEL_70;
              }
            }

LABEL_70:
            v87 = *(v0 + 2256);
            __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
            memcpy(__dst, (v0 + 16), 0x1F8uLL);
            v88 = type metadata accessor for ControlHomeCorrectionFlow(0);
            v89 = *(v88 + 48);
            v90 = *(v88 + 52);
            swift_allocObject();
            sub_2529353AC(v0 + 16, v0 + 1024);

            v91 = sub_252BDEA88(__dst, v66);
            *(v0 + 2328) = v88;
            *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow);
            *(v0 + 2304) = v91;
            sub_252E335E4();
            sub_252935408(v0 + 16);
            __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_71:
            __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
            goto LABEL_72;
          }

          sub_252935408(v0 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
        v84 = sub_252E36AC4();
        v85 = sub_252E374D4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_252917000, v84, v85, "Failed to get warmupResponses, won't register corrections client", v86, 2u);
          MEMORY[0x2530AED00](v86, -1, -1);
        }

        goto LABEL_71;
      }
    }

    else
    {
      *(v0 + 2296) = 0;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0u;
    }

    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v73 = sub_252E36AC4();
    v74 = sub_252E374D4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_252917000, v73, v74, "Failed to register correction client", v75, 2u);
      MEMORY[0x2530AED00](v75, -1, -1);
    }
  }

LABEL_72:
  v92 = *(v0 + 2480);
  v93 = *(v0 + 2472);
  v94 = *(v0 + 2464);
  v95 = v92;
  sub_252A51F98(v93, v92, v94, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v96 = sub_252E36F94();
  v98 = v97;
  *(v0 + 2584) = v96;
  *(v0 + 2592) = v97;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v99 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v96, v98);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v100 = [v99 description];
  v101 = sub_252E36F34();
  v103 = v102;

  MEMORY[0x2530AD570](v101, v103);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v104 = *(v0 + 2456);
  v105 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v106 = v105;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v107 = *(v0 + 2128);
  v108 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v107);
  v109 = swift_task_alloc();
  *(v0 + 2608) = v109;
  *v109 = v0;
  v109[1] = sub_252A50D40;
  v110 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v110, v92, v107, v108);
}

uint64_t sub_252A4EBF4(uint64_t a1)
{
  v2 = *(*v1 + 2504);
  v4 = *v1;
  *(*v1 + 2512) = a1;

  return MEMORY[0x2822009F8](sub_252A4ECF4, 0, 0);
}

uint64_t sub_252A4ECF4()
{
  v1 = v0[314];
  if (!v1)
  {
    v1 = sub_252CC6B08(MEMORY[0x277D84F90]);
  }

  v0[315] = v1;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v2 = sub_252E367F4();
  v4 = v3;

  v0[316] = v4;
  v5 = swift_task_alloc();
  v0[317] = v5;
  *v5 = v0;
  v5[1] = sub_252A4EE18;
  v6 = v0[309];
  v7 = v0[304];

  return sub_252AE49C4(v6, v1, v2, v4);
}

uint64_t sub_252A4EE18()
{
  v1 = *(*v0 + 2536);
  v2 = *(*v0 + 2528);
  v3 = *(*v0 + 2520);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_252A4EF4C, 0, 0);
}

uint64_t sub_252A4EF4C()
{
  v79 = v0;
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 288), v0 + 2024);

  v2 = *(v0 + 2048);
  v3 = *(v0 + 2056);
  __swift_project_boxed_opaque_existential_1((v0 + 2024), v2);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2024));
  if (v4)
  {
    type metadata accessor for SiriRemembersProvider();
    v5 = swift_allocObject();
    *(v0 + 2544) = v5;
    strcpy((v5 + 16), "HomeAutomation");
    *(v5 + 31) = -18;
    *(v5 + 32) = 0xD00000000000001DLL;
    *(v5 + 40) = 0x8000000252E73EE0;
    *(v5 + 48) = 0xD000000000000011;
    *(v5 + 56) = 0x8000000252E73F00;
    v6 = *(sub_252B680FC() + 75);

    if (v6 == 1)
    {
      v7 = *(v0 + 2472);
      if ((sub_252C4BEB8() & 1) == 0)
      {
        sub_252B680FC();
        v8 = sub_252B6355C();

        if (v8)
        {
          v9 = *(v0 + 2496);
          v10 = sub_252E36AC4();
          v11 = sub_252E374C4();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_252917000, v10, v11, "Disambiguation was performed in this interaction, going to donate to SiriRemembers.", v12, 2u);
            MEMORY[0x2530AED00](v12, -1, -1);
          }

          v13 = swift_task_alloc();
          *(v0 + 2552) = v13;
          *v13 = v0;
          v13[1] = sub_252A4FA34;
          v14 = *(v0 + 2472);
          v15 = 1;
LABEL_37:

          return sub_252E1265C(v14, v15);
        }
      }
    }

    v16 = *(sub_252B680FC() + 76);

    if (v16 == 1)
    {
      v17 = *(v0 + 2472);
      if ((sub_252C4BEB8() & 1) == 0)
      {
        sub_252B680FC();
        v42 = sub_252B6355C();

        if (v42 || (v43 = *(sub_252B680FC() + 77), , v43 == 1))
        {
          v44 = *(v0 + 2496);
          v45 = sub_252E36AC4();
          v46 = sub_252E374C4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_252917000, v45, v46, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v47, 2u);
            MEMORY[0x2530AED00](v47, -1, -1);
          }

          v48 = swift_task_alloc();
          *(v0 + 2568) = v48;
          *v48 = v0;
          v48[1] = sub_252A5045C;
          v49 = *(v0 + 2544);
          v14 = *(v0 + 2472);
          v15 = 2;
          goto LABEL_37;
        }
      }
    }

    v18 = *(v0 + 2544);
    swift_setDeallocating();
    v19 = v18[3];

    v20 = v18[5];

    v21 = v18[7];

    swift_deallocClassInstance();
  }

  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v22 + 288), v0 + 2064);

  v23 = *(v0 + 2088);
  v24 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v23);
  v25 = (*(v24 + 160))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if (v25)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v0 + 2288))
      {
        sub_252927BEC((v0 + 2264), v0 + 2224);
        v26 = sub_252B680FC();
        swift_beginAccess();
        v27 = *(v26 + 16);
        v28 = *(v27 + 16);
        if (v28)
        {
          memcpy((v0 + 16), (v27 + 504 * v28 - 472), 0x1F8uLL);
          sub_2529353AC(v0 + 16, v0 + 520);

          v29 = *(sub_252B680FC() + 152);

          if (v29 >> 62)
          {
            v30 = sub_252E378C4();
          }

          else
          {
            v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v30)
          {
            v31 = sub_252CC6468(MEMORY[0x277D84F90]);
            v77 = v31;
            v32 = *(sub_252B680FC() + 152);

            if (v32 >> 62)
            {
              result = sub_252E378C4();
              v34 = result;
              if (result)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v34)
              {
LABEL_20:
                if (v34 < 1)
                {
                  __break(1u);
                  return result;
                }

                v35 = 0;
                do
                {
                  if ((v32 & 0xC000000000000001) != 0)
                  {
                    v36 = MEMORY[0x2530ADF00](v35, v32);
                  }

                  else
                  {
                    v36 = *(v32 + 8 * v35 + 32);
                  }

                  v37 = v36;
                  ++v35;
                  sub_25297D6E8();
                  sub_252A4D4F0(v38, &v77);
                }

                while (v34 != v35);

                v31 = v77;
                goto LABEL_51;
              }
            }

LABEL_51:
            v53 = *(v0 + 2256);
            __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
            memcpy(__dst, (v0 + 16), 0x1F8uLL);
            v54 = type metadata accessor for ControlHomeCorrectionFlow(0);
            v55 = *(v54 + 48);
            v56 = *(v54 + 52);
            swift_allocObject();
            sub_2529353AC(v0 + 16, v0 + 1024);

            v57 = sub_252BDEA88(__dst, v31);
            *(v0 + 2328) = v54;
            *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow);
            *(v0 + 2304) = v57;
            sub_252E335E4();
            sub_252935408(v0 + 16);
            __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_52:
            __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
            goto LABEL_53;
          }

          sub_252935408(v0 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
        v50 = sub_252E36AC4();
        v51 = sub_252E374D4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_252917000, v50, v51, "Failed to get warmupResponses, won't register corrections client", v52, 2u);
          MEMORY[0x2530AED00](v52, -1, -1);
        }

        goto LABEL_52;
      }
    }

    else
    {
      *(v0 + 2296) = 0;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0u;
    }

    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v39 = sub_252E36AC4();
    v40 = sub_252E374D4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_252917000, v39, v40, "Failed to register correction client", v41, 2u);
      MEMORY[0x2530AED00](v41, -1, -1);
    }
  }

LABEL_53:
  v58 = *(v0 + 2480);
  v59 = *(v0 + 2472);
  v60 = *(v0 + 2464);
  v61 = v58;
  sub_252A51F98(v59, v58, v60, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v62 = sub_252E36F94();
  v64 = v63;
  *(v0 + 2584) = v62;
  *(v0 + 2592) = v63;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v62, v64);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v66 = [v65 description];
  v67 = sub_252E36F34();
  v69 = v68;

  MEMORY[0x2530AD570](v67, v69);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 2456);
  v71 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v72 = v71;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v73 = *(v0 + 2128);
  v74 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v73);
  v75 = swift_task_alloc();
  *(v0 + 2608) = v75;
  *v75 = v0;
  v75[1] = sub_252A50D40;
  v76 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v76, v58, v73, v74);
}

uint64_t sub_252A4FA34()
{
  v2 = *v1;
  v3 = *(*v1 + 2552);
  v7 = *v1;
  *(*v1 + 2560) = v0;

  if (v0)
  {
    v4 = *(v2 + 2464);

    v5 = sub_252A511F4;
  }

  else
  {
    v5 = sub_252A4FB50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A4FB50()
{
  v65 = v0;
  v1 = *(v0 + 2560);
  v2 = *(sub_252B680FC() + 76);

  if (v2 == 1)
  {
    v3 = *(v0 + 2472);
    if ((sub_252C4BEB8() & 1) == 0)
    {
      sub_252B680FC();
      v24 = sub_252B6355C();

      if (v24 || (v25 = *(sub_252B680FC() + 77), , v25 == 1))
      {
        v26 = *(v0 + 2496);
        v27 = sub_252E36AC4();
        v28 = sub_252E374C4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_252917000, v27, v28, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v29, 2u);
          MEMORY[0x2530AED00](v29, -1, -1);
        }

        v30 = swift_task_alloc();
        *(v0 + 2568) = v30;
        *v30 = v0;
        v30[1] = sub_252A5045C;
        v31 = *(v0 + 2544);
        v32 = *(v0 + 2472);

        return sub_252E1265C(v32, 2);
      }
    }
  }

  v4 = *(v0 + 2544);
  swift_setDeallocating();
  v5 = v4[3];

  v6 = v4[5];

  v7 = v4[7];

  swift_deallocClassInstance();
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 288), v0 + 2064);

  v9 = *(v0 + 2088);
  v10 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v9);
  LOBYTE(v4) = (*(v10 + 160))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if (v4)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v0 + 2288))
      {
        sub_252927BEC((v0 + 2264), v0 + 2224);
        v11 = sub_252B680FC();
        swift_beginAccess();
        v12 = *(v11 + 16);
        v13 = *(v12 + 16);
        if (v13)
        {
          memcpy((v0 + 16), (v12 + 504 * v13 - 472), 0x1F8uLL);
          sub_2529353AC(v0 + 16, v0 + 520);

          v14 = *(sub_252B680FC() + 152);

          if (v14 >> 62)
          {
            v15 = sub_252E378C4();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v15)
          {
            v16 = sub_252CC6468(MEMORY[0x277D84F90]);
            v63 = v16;
            v17 = *(sub_252B680FC() + 152);

            if (v17 >> 62)
            {
              result = sub_252E378C4();
              v19 = result;
              if (result)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v19)
              {
LABEL_12:
                if (v19 < 1)
                {
                  __break(1u);
                  return result;
                }

                v20 = 0;
                do
                {
                  if ((v17 & 0xC000000000000001) != 0)
                  {
                    v21 = MEMORY[0x2530ADF00](v20, v17);
                  }

                  else
                  {
                    v21 = *(v17 + 8 * v20 + 32);
                  }

                  v22 = v21;
                  ++v20;
                  sub_25297D6E8();
                  sub_252A4D4F0(v23, &v63);
                }

                while (v19 != v20);

                v16 = v63;
                goto LABEL_42;
              }
            }

LABEL_42:
            v39 = *(v0 + 2256);
            __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
            memcpy(__dst, (v0 + 16), 0x1F8uLL);
            v40 = type metadata accessor for ControlHomeCorrectionFlow(0);
            v41 = *(v40 + 48);
            v42 = *(v40 + 52);
            swift_allocObject();
            sub_2529353AC(v0 + 16, v0 + 1024);

            v43 = sub_252BDEA88(__dst, v16);
            *(v0 + 2328) = v40;
            *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow);
            *(v0 + 2304) = v43;
            sub_252E335E4();
            sub_252935408(v0 + 16);
            __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_43:
            __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
            goto LABEL_44;
          }

          sub_252935408(v0 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
        v36 = sub_252E36AC4();
        v37 = sub_252E374D4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_252917000, v36, v37, "Failed to get warmupResponses, won't register corrections client", v38, 2u);
          MEMORY[0x2530AED00](v38, -1, -1);
        }

        goto LABEL_43;
      }
    }

    else
    {
      *(v0 + 2296) = 0;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0u;
    }

    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v33 = sub_252E36AC4();
    v34 = sub_252E374D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_252917000, v33, v34, "Failed to register correction client", v35, 2u);
      MEMORY[0x2530AED00](v35, -1, -1);
    }
  }

LABEL_44:
  v44 = *(v0 + 2480);
  v45 = *(v0 + 2472);
  v46 = *(v0 + 2464);
  v47 = v44;
  sub_252A51F98(v45, v44, v46, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v48 = sub_252E36F94();
  v50 = v49;
  *(v0 + 2584) = v48;
  *(v0 + 2592) = v49;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v48, v50);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v52 = [v51 description];
  v53 = sub_252E36F34();
  v55 = v54;

  MEMORY[0x2530AD570](v53, v55);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 2456);
  v57 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v58 = v57;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v59 = *(v0 + 2128);
  v60 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v59);
  v61 = swift_task_alloc();
  *(v0 + 2608) = v61;
  *v61 = v0;
  v61[1] = sub_252A50D40;
  v62 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v62, v44, v59, v60);
}

uint64_t sub_252A5045C()
{
  v2 = *v1;
  v3 = *(*v1 + 2568);
  v7 = *v1;
  *(*v1 + 2576) = v0;

  if (v0)
  {
    v4 = *(v2 + 2464);

    v5 = sub_252A5129C;
  }

  else
  {
    v5 = sub_252A50578;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A50578()
{
  v54 = v0;
  v1 = *(v0 + 2576);
  v2 = *(v0 + 2544);
  swift_setDeallocating();
  v3 = v2[3];

  v4 = v2[5];

  v5 = v2[7];

  swift_deallocClassInstance();
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 288), v0 + 2064);

  v7 = *(v0 + 2088);
  v8 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v7);
  LOBYTE(v2) = (*(v8 + 160))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if ((v2 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_252E35F84();
  if (!sub_252E35F54())
  {
    *(v0 + 2296) = 0;
    *(v0 + 2264) = 0u;
    *(v0 + 2280) = 0u;
    goto LABEL_17;
  }

  sub_252E35F14();

  sub_252E335F4();

  if (!*(v0 + 2288))
  {
LABEL_17:
    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v22 = sub_252E36AC4();
    v23 = sub_252E374D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_252917000, v22, v23, "Failed to register correction client", v24, 2u);
      MEMORY[0x2530AED00](v24, -1, -1);
    }

    goto LABEL_35;
  }

  sub_252927BEC((v0 + 2264), v0 + 2224);
  v9 = sub_252B680FC();
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {

LABEL_25:
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v25 = sub_252E36AC4();
    v26 = sub_252E374D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_252917000, v25, v26, "Failed to get warmupResponses, won't register corrections client", v27, 2u);
      MEMORY[0x2530AED00](v27, -1, -1);
    }

    goto LABEL_34;
  }

  memcpy((v0 + 16), (v10 + 504 * v11 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  v12 = *(sub_252B680FC() + 152);

  if (v12 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
    sub_252935408(v0 + 16);
    goto LABEL_25;
  }

  v14 = sub_252CC6468(MEMORY[0x277D84F90]);
  v52 = v14;
  v15 = *(sub_252B680FC() + 152);

  if (v15 >> 62)
  {
    result = sub_252E378C4();
    v17 = result;
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_10:
      if (v17 < 1)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x2530ADF00](v18, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        sub_25297D6E8();
        sub_252A4D4F0(v21, &v52);
      }

      while (v17 != v18);

      v14 = v52;
      goto LABEL_33;
    }
  }

LABEL_33:
  v28 = *(v0 + 2256);
  __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v29 = type metadata accessor for ControlHomeCorrectionFlow(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2529353AC(v0 + 16, v0 + 1024);

  v32 = sub_252BDEA88(__dst, v14);
  *(v0 + 2328) = v29;
  *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow);
  *(v0 + 2304) = v32;
  sub_252E335E4();
  sub_252935408(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
LABEL_35:
  v33 = *(v0 + 2480);
  v34 = *(v0 + 2472);
  v35 = *(v0 + 2464);
  v36 = v33;
  sub_252A51F98(v34, v33, v35, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v37 = sub_252E36F94();
  v39 = v38;
  *(v0 + 2584) = v37;
  *(v0 + 2592) = v38;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v37, v39);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v41 = [v40 description];
  v42 = sub_252E36F34();
  v44 = v43;

  MEMORY[0x2530AD570](v42, v44);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 2456);
  v46 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v47 = v46;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v48 = *(v0 + 2128);
  v49 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v48);
  v50 = swift_task_alloc();
  *(v0 + 2608) = v50;
  *v50 = v0;
  v50[1] = sub_252A50D40;
  v51 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v51, v33, v48, v49);
}

uint64_t sub_252A50D40()
{
  v2 = *v1;
  v3 = *(*v1 + 2608);
  v4 = *v1;
  v2[327] = v0;

  v5 = v2[310];
  if (v0)
  {
    v6 = v2[324];

    v7 = sub_252A51344;
  }

  else
  {

    v7 = sub_252A50E84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A50E84()
{
  v49 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2432);
  v6 = *(v5 + 520);
  v7 = *(v5 + 528);
  LOBYTE(v34) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v37) = 1;
  *(v0 + 1696) = 0;
  *(v0 + 1704) = 1;
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0;
  *(v0 + 1768) = v3;
  *(v0 + 1776) = v2;
  *(v0 + 1784) = 0;
  *(v0 + 1792) = 1;
  *(v0 + 1800) = v6;
  *(v0 + 1808) = v7;
  *(v0 + 1816) = 0;
  *(v0 + 1824) = 513;
  *(v0 + 1848) = 0;
  *(v0 + 1832) = 0u;
  *(v0 + 1856) = 1;
  GEOLocationCoordinate2DMake(v0 + 1696);
  v8 = *(v0 + 1808);
  v9 = *(v0 + 1840);
  v46 = *(v0 + 1824);
  v47 = v9;
  v48 = *(v0 + 1856);
  v10 = *(v0 + 1744);
  v11 = *(v0 + 1776);
  v42 = *(v0 + 1760);
  v43 = v11;
  v44 = *(v0 + 1792);
  v45 = v8;
  v12 = *(v0 + 1712);
  v38 = *(v0 + 1696);
  v39 = v12;
  v40 = *(v0 + 1728);
  v41 = v10;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v1, v4, "HandleSuccessDialog", 19, 2, &v38);
  v13 = v47;
  *(v0 + 1656) = v46;
  *(v0 + 1672) = v13;
  *(v0 + 1688) = v48;
  v14 = v43;
  *(v0 + 1592) = v42;
  *(v0 + 1608) = v14;
  v15 = v45;
  *(v0 + 1624) = v44;
  *(v0 + 1640) = v15;
  v16 = v39;
  *(v0 + 1528) = v38;
  *(v0 + 1544) = v16;
  v17 = v41;
  *(v0 + 1560) = v40;
  *(v0 + 1576) = v17;
  sub_25293847C(v0 + 1528, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v18 = sub_252E36804();
  v20 = v19;

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    *(v21 + 32) = 25705;
    v22 = v21 + 32;
    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 40) = 0xE200000000000000;
    *(v21 + 48) = v18;
    *(v21 + 56) = v20;
    sub_252CC630C(v21);
    swift_setDeallocating();
    sub_25293847C(v22, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v23 = [objc_opt_self() sharedAnalytics];
  v24 = *(v0 + 2480);
  if (v23)
  {
    v25 = v23;

    sub_252CC1408(v26);

    v27 = sub_252E36E24();

    [v25 logEventWithType:6504 context:v27];
  }

  v28 = *(v0 + 2456);
  v29 = *(v0 + 2448);
  v30 = *(v0 + 2440);
  v31 = *(v0 + 2416);

  (*(v29 + 8))(v28, v30);
  sub_252927BEC((v0 + 2184), v31);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2104));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_252A511F4()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2472);

  swift_setDeallocating();
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  swift_deallocClassInstance();
  v6 = *(v0 + 2560);
  v7 = *(v0 + 2456);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252A5129C()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2472);

  swift_setDeallocating();
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  swift_deallocClassInstance();
  v6 = *(v0 + 2576);
  v7 = *(v0 + 2456);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252A51344()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2440);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
  v5 = *(v0 + 2616);
  v6 = *(v0 + 2456);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252A513EC(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v4 = sub_252E36AB4();
  v3[62] = v4;
  v5 = *(v4 - 8);
  v3[63] = v5;
  v6 = *(v5 + 64) + 15;
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A514B0, 0, 0);
}

uint64_t sub_252A514B0()
{
  v1 = v0[60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v2 = sub_252E33F24();
  v0[65] = v2;
  v3 = sub_252E33F04();
  v0[66] = v3;
  if (qword_27F53F2D0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F575798;
  v5 = v3;
  sub_252A51F98(v2, v3, v4, v0 + 44);
  sub_252929E74((v0 + 44), (v0 + 49));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v6 = sub_252E36F94();
  v8 = v7;
  v0[67] = v6;
  v0[68] = v7;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v6, v8);
  sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v10 = v0[64];
  v11 = qword_27F544F70;
  v0[69] = qword_27F544F70;
  v12 = v11;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v13 = v0[47];
  v14 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v13);
  v15 = swift_task_alloc();
  v0[70] = v15;
  *v15 = v0;
  v15[1] = sub_252A51780;

  return sub_252BA1314((v0 + 54), v2, v3, v13, v14);
}

uint64_t sub_252A51780()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  v2[71] = v0;

  v5 = v2[66];
  if (v0)
  {
    v6 = v2[68];

    v7 = sub_252A51C20;
  }

  else
  {

    v7 = sub_252A518C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A518C4()
{
  v49 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v5 + 520);
  v7 = *(v5 + 528);
  *(v0 + 184) = 0;
  LOBYTE(v34) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v37) = 1;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 256) = v3;
  *(v0 + 264) = v2;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = v6;
  *(v0 + 296) = v7;
  *(v0 + 304) = 0;
  *(v0 + 312) = 513;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = 1;
  GEOLocationCoordinate2DMake(v0 + 184);
  v8 = *(v0 + 328);
  v46 = *(v0 + 312);
  v47 = v8;
  v48 = *(v0 + 344);
  v9 = *(v0 + 264);
  v42 = *(v0 + 248);
  v43 = v9;
  v10 = *(v0 + 296);
  v44 = *(v0 + 280);
  v45 = v10;
  v11 = *(v0 + 200);
  v38 = *(v0 + 184);
  v39 = v11;
  v12 = *(v0 + 232);
  v40 = *(v0 + 216);
  v41 = v12;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v1, v4, "HandleFailureDialog", 19, 2, &v38);
  v13 = v44;
  *(v0 + 128) = v45;
  v14 = v47;
  *(v0 + 144) = v46;
  *(v0 + 160) = v14;
  v15 = v40;
  *(v0 + 64) = v41;
  v16 = v43;
  *(v0 + 80) = v42;
  *(v0 + 96) = v16;
  *(v0 + 112) = v13;
  v17 = v39;
  *(v0 + 16) = v38;
  *(v0 + 32) = v17;
  *(v0 + 176) = v48;
  *(v0 + 48) = v15;
  sub_25293847C(v0 + 16, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v18 = sub_252E36804();
  v20 = v19;

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    *(v21 + 32) = 25705;
    v22 = v21 + 32;
    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 40) = 0xE200000000000000;
    *(v21 + 48) = v18;
    *(v21 + 56) = v20;
    sub_252CC630C(v21);
    swift_setDeallocating();
    sub_25293847C(v22, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v23 = [objc_opt_self() sharedAnalytics];
  v24 = *(v0 + 520);
  if (v23)
  {
    v25 = v23;

    sub_252CC1408(v26);

    v27 = sub_252E36E24();

    [v25 logEventWithType:6504 context:v27];
  }

  v29 = *(v0 + 504);
  v28 = *(v0 + 512);
  v30 = *(v0 + 496);
  v31 = *(v0 + 472);

  (*(v29 + 8))(v28, v30);
  sub_252927BEC((v0 + 432), v31);
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_252A51C20()
{
  v1 = *(v0 + 528);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));

  v5 = *(v0 + 8);
  v6 = *(v0 + 568);

  return v5();
}

uint64_t sub_252A51CC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_252A51CE4, 0, 0);
}

uint64_t sub_252A51CE4()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v2 = sub_252E33F24();
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 16), (v0 + 2));

  LODWORD(v1) = *(sub_252B680FC() + 72);

  if (v1 != 1)
  {
    goto LABEL_6;
  }

  *(sub_252B680FC() + 72) = 0;

  v4 = sub_252B680FC();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;

  v5 = sub_252B680FC();
  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery);
  *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;

  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E338C4() & 1) != 0 || (v8 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E338D4()) || (v9 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E338E4()) || (v10 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E33884()))
  {
LABEL_6:
    v11 = v0[12];
    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v14 = v0[12];
    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D18);
    sub_252CC3D90(0xD000000000000041, 0x8000000252E73E30, 0xD000000000000091, 0x8000000252E73D10);
    v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v16 + 136), (v0 + 7));

    v17 = v0[10];
    v18 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v17);
    (*(v18 + 88))(v17, v18);

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[1];

  return v12();
}

void *sub_252A51F98@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = (a3 + 32);
  while (v7)
  {
    v9 = *v8++;
    v10 = *(&v9 + 1);
    v33 = v9;
    v11 = v9;
    --v7;
    if ((*(*(&v9 + 1) + 16))(a1, a2, v9, *(&v9 + 1)))
    {
      v12 = sub_252B680FC();
      swift_beginAccess();
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v13 + 504 * v14 - 472);
        memcpy(__dst, v15, sizeof(__dst));
        memmove(__src, v15, 0x1F8uLL);
        GEOLocationCoordinate2DMake(__src);
        sub_2529353AC(__dst, v36);

        memcpy(v36, __src, sizeof(v36));
      }

      else
      {

        sub_25293DEE0(v36);
      }

      memcpy(__src, v36, sizeof(__src));
      v25 = *(v10 + 8);
      v26 = *(v25 + 24);
      *(a4 + 3) = v33;
      __swift_allocate_boxed_opaque_existential_0(a4);
      v26(__src, v11, v25);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544D18);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();
      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      DynamicType = swift_getDynamicType();
      v29 = a4[4];
      __src[0] = DynamicType;
      __src[1] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E10, &qword_252E42840);
      v30 = sub_252E36F94();
      v32 = v31;

      __src[0] = v30;
      __src[1] = v32;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__src[0], __src[1], 0xD000000000000091, 0x8000000252E73D10);
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D18);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E73DD0);
  v17 = [a1 description];
  v18 = sub_252E36F34();
  v20 = v19;

  MEMORY[0x2530AD570](v18, v20);

  MEMORY[0x2530AD570](0x73657220646E610ALL, 0xEE002065736E6F70);
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E18, &qword_252E42848);
  v22 = sub_252E36F94();
  MEMORY[0x2530AD570](v22);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E73E00);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000091, 0x8000000252E73D10);

  sub_25293DEE0(v36);
  v23 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__src, v36, sizeof(__src));
  result = sub_252BE97AC(__src);
  a4[3] = v23;
  a4[4] = &off_2864BB830;
  *a4 = result;
  return result;
}

uint64_t sub_252A523FC()
{
  memcpy(__dst, v0 + 2, sizeof(__dst));
  sub_252935408(__dst);
  v1 = v0[66];

  v2 = v0[68];

  return swift_deallocClassInstance();
}

uint64_t sub_252A52480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_252A52544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_252A52608(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252A51CC4(a1, a2);
}

uint64_t sub_252A526A8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252A4DBD8(a1, a2);
}

uint64_t sub_252A52754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_252A52818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_252A528DC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252A513EC(a1, a2);
}

uint64_t sub_252A52988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252A52A84)(a1, a2);
}

uint64_t sub_252A52A84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A52B44, 0, 0);
}

uint64_t sub_252A52B44()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E73CE0, 0xD000000000000091, 0x8000000252E73D10);
  v7 = objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler());

  [v7 init];
  type metadata accessor for ControlHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_252A52CD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HomeUserTask.__allocating_init(taskType:attribute:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  return v10;
}

void *HomeUserTask.Builder.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 4;
  return result;
}

void *HomeUserTask.Builder.init()()
{
  result = v0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 4;
  return result;
}

uint64_t sub_252A52E38(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    *(v1 + 32) = a1;
    v3 = a1;
  }
}

id sub_252A52E7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = v3;
  v6 = sub_252E36F04();
  v7 = [v4 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];

  return v8;
}

void *sub_252A52F44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for HomeUserTask.Builder();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = v3;
  return v4;
}

uint64_t HomeUserTask.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StateSemantic.rawValue.getter()
{
  result = 28271;
  switch(*v0)
  {
    case 1:
      return 6710895;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0x646574756DLL;
    case 4:
      return 0x646574756D6E75;
    case 5:
      return 0x64656B636F6CLL;
    case 6:
      return 0x64656B636F6C6E75;
    case 7:
      v3 = 1801678700;
      return v3 | 0x676E6900000000;
    case 8:
      return 0x6E696B636F6C6E75;
    case 9:
      return 1852141679;
    case 0xA:
      return 0x6465736F6C63;
    case 0xB:
      v3 = 1852141679;
      return v3 | 0x676E6900000000;
    case 0xC:
      v3 = 1936682083;
      return v3 | 0x676E6900000000;
    case 0xD:
      return 28789;
    case 0xE:
      return 1853321060;
    case 0xF:
      return 7827308;
    case 0x10:
      return 0x6D756964656DLL;
    case 0x11:
      return 1751607656;
    case 0x12:
      return 0x796177666C6168;
    case 0x13:
      return 0x7369776B636F6C63;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x65737265766572;
    case 0x16:
      return 0x65645F656B6F6D73;
    case 0x17:
    case 0x2A:
      return 0xD000000000000012;
    case 0x18:
      return 0xD000000000000018;
    case 0x19:
      return 0xD00000000000001CLL;
    case 0x1A:
      return 0xD000000000000010;
    case 0x1B:
      return 0xD000000000000014;
    case 0x1C:
      return 0x6E656C6C65637865;
    case 0x1D:
      return 1685024615;
    case 0x1E:
      return 1919508838;
    case 0x1F:
      return 0x726F697265666E69;
    case 0x20:
      return 1919905648;
    case 0x21:
      v3 = 1952540008;
      return v3 | 0x676E6900000000;
    case 0x22:
      v3 = 1819242339;
      return v3 | 0x676E6900000000;
    case 0x23:
      return 0x65646F4D6F747561;
    case 0x24:
      return 0x6C61756E616DLL;
    case 0x25:
      return 0x6576654C6B616570;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 0x6C6576656CLL;
    case 0x28:
      return 0x656772616863;
    case 0x29:
      return 0x745F726F736E6573;
    case 0x2B:
      return 0x6F6D5F676E697773;
    case 0x2C:
      return 0x6573755F6E69;
    case 0x2D:
      return 0x755F6E695F746F6ELL;
    case 0x2E:
      return 0x64656D7261;
    case 0x2F:
      return 0x696E5F64656D7261;
    case 0x30:
      return 0x74735F64656D7261;
    case 0x31:
      return 0x77615F64656D7261;
    case 0x32:
      return 0x64656D7261736964;
    case 0x33:
      return 0x72745F6D72616C61;
    case 0x34:
      return 1701602409;
    case 0x35:
      return 0x6465786966;
    case 0x36:
      return 0x676E69676E697773;
    case 0x37:
      return 0x64656D6D616ALL;
    case 0x38:
      return 0x6E61656C63;
    case 0x39:
      return 0x6D7575636176;
    case 0x3A:
      return 7368557;
    case 0x3B:
      return 0x6E416D7575636176;
    case 0x3C:
      return 0x61656C4370656564;
    case 0x3D:
      return 0x6B63697571;
    case 0x3E:
      return 0x7465697571;
    case 0x3F:
      v2 = 1299145573;
      goto LABEL_81;
    case 0x40:
      return 0x6573696F4E776F6CLL;
    case 0x41:
      return 0x6E6F697461636176;
    case 0x42:
      v2 = 1299081581;
      goto LABEL_81;
    case 0x43:
      v2 = 1299734893;
      goto LABEL_81;
    case 0x44:
      v2 = 1299800420;
LABEL_81:
      result = v2 | 0x65646F00000000;
      break;
    case 0x45:
      result = 0x646F4D746867696ELL;
      break;
    case 0x46:
      result = 0x6573756170;
      break;
    case 0x47:
      result = 0x656D75736572;
      break;
    case 0x48:
      result = 0x64656B636F64;
      break;
    case 0x49:
      result = 0x6B63757473;
      break;
    case 0x4A:
      result = 0x646573756170;
      break;
    case 0x4B:
      result = 0x64656D75736572;
      break;
    case 0x4C:
      result = 0x646570706F7473;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::StateSemantic_optional __swiftcall StateSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 59;
  switch(v3)
  {
    case 0:
      goto LABEL_76;
    case 1:
      v5 = 1;
      goto LABEL_76;
    case 2:
      v5 = 2;
      goto LABEL_76;
    case 3:
      v5 = 3;
      goto LABEL_76;
    case 4:
      v5 = 4;
      goto LABEL_76;
    case 5:
      v5 = 5;
      goto LABEL_76;
    case 6:
      v5 = 6;
      goto LABEL_76;
    case 7:
      v5 = 7;
      goto LABEL_76;
    case 8:
      v5 = 8;
      goto LABEL_76;
    case 9:
      v5 = 9;
      goto LABEL_76;
    case 10:
      v5 = 10;
      goto LABEL_76;
    case 11:
      v5 = 11;
      goto LABEL_76;
    case 12:
      v5 = 12;
      goto LABEL_76;
    case 13:
      v5 = 13;
      goto LABEL_76;
    case 14:
      v5 = 14;
      goto LABEL_76;
    case 15:
      v5 = 15;
      goto LABEL_76;
    case 16:
      v5 = 16;
      goto LABEL_76;
    case 17:
      v5 = 17;
      goto LABEL_76;
    case 18:
      v5 = 18;
      goto LABEL_76;
    case 19:
      v5 = 19;
      goto LABEL_76;
    case 20:
      v5 = 20;
      goto LABEL_76;
    case 21:
      v5 = 21;
      goto LABEL_76;
    case 22:
      v5 = 22;
      goto LABEL_76;
    case 23:
      v5 = 23;
      goto LABEL_76;
    case 24:
      v5 = 24;
      goto LABEL_76;
    case 25:
      v5 = 25;
      goto LABEL_76;
    case 26:
      v5 = 26;
      goto LABEL_76;
    case 27:
      v5 = 27;
      goto LABEL_76;
    case 28:
      v5 = 28;
      goto LABEL_76;
    case 29:
      v5 = 29;
      goto LABEL_76;
    case 30:
      v5 = 30;
      goto LABEL_76;
    case 31:
      v5 = 31;
      goto LABEL_76;
    case 32:
      v5 = 32;
      goto LABEL_76;
    case 33:
      v5 = 33;
      goto LABEL_76;
    case 34:
      v5 = 34;
      goto LABEL_76;
    case 35:
      v5 = 35;
      goto LABEL_76;
    case 36:
      v5 = 36;
      goto LABEL_76;
    case 37:
      v5 = 37;
      goto LABEL_76;
    case 38:
      v5 = 38;
      goto LABEL_76;
    case 39:
      v5 = 39;
      goto LABEL_76;
    case 40:
      v5 = 40;
      goto LABEL_76;
    case 41:
      v5 = 41;
      goto LABEL_76;
    case 42:
      v5 = 42;
      goto LABEL_76;
    case 43:
      v5 = 43;
      goto LABEL_76;
    case 44:
      v5 = 44;
      goto LABEL_76;
    case 45:
      v5 = 45;
      goto LABEL_76;
    case 46:
      v5 = 46;
      goto LABEL_76;
    case 47:
      v5 = 47;
      goto LABEL_76;
    case 48:
      v5 = 48;
      goto LABEL_76;
    case 49:
      v5 = 49;
      goto LABEL_76;
    case 50:
      v5 = 50;
      goto LABEL_76;
    case 51:
      v5 = 51;
      goto LABEL_76;
    case 52:
      v5 = 52;
      goto LABEL_76;
    case 53:
      v5 = 53;
      goto LABEL_76;
    case 54:
      v5 = 54;
      goto LABEL_76;
    case 55:
      v5 = 55;
      goto LABEL_76;
    case 56:
      v5 = 56;
      goto LABEL_76;
    case 57:
      v5 = 57;
      goto LABEL_76;
    case 58:
      v5 = 58;
LABEL_76:
      v6 = v5;
      break;
    case 59:
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    default:
      v6 = 77;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static StateSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = StateSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A53B64(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StateSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == StateSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252A53C00()
{
  v1 = *v0;
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A53C68()
{
  v2 = *v0;
  StateSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252A53CCC()
{
  v1 = *v0;
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A53D3C@<X0>(uint64_t *a1@<X8>)
{
  result = StateSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252A53D64(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = StateSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A53E00(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = StateSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252A53EB0(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = StateSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252A53F60(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = StateSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A540BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A543EC();
  v5 = sub_252A54440();
  v6 = sub_252A54494();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252A54130()
{
  result = qword_27F541E40;
  if (!qword_27F541E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E40);
  }

  return result;
}

unint64_t sub_252A54188()
{
  result = qword_27F541E48;
  if (!qword_27F541E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409B0, &unk_252E3DF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E48);
  }

  return result;
}

unint64_t sub_252A541F0()
{
  result = qword_27F541E50;
  if (!qword_27F541E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E50);
  }

  return result;
}

unint64_t sub_252A54248()
{
  result = qword_27F541E58;
  if (!qword_27F541E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB4)
  {
    goto LABEL_17;
  }

  if (a2 + 76 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 76) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 76;
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

      return (*a1 | (v4 << 8)) - 76;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 76;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v8 = v6 - 77;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB4)
  {
    v4 = 0;
  }

  if (a2 > 0xB3)
  {
    v5 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
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
    *result = a2 + 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A543EC()
{
  result = qword_27F541E60;
  if (!qword_27F541E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E60);
  }

  return result;
}

unint64_t sub_252A54440()
{
  result = qword_27F541E68;
  if (!qword_27F541E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E68);
  }

  return result;
}

unint64_t sub_252A54494()
{
  result = qword_27F541E70;
  if (!qword_27F541E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541E70);
  }

  return result;
}

uint64_t sub_252A544EC(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Scene();
    sub_252A5B8EC(&qword_27F541EE8, type metadata accessor for Scene);
    result = sub_252E373E4();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_8:
  v18 = v10;
  v11 = v5;
  v12 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_252E37904() || (type metadata accessor for Scene(), swift_dynamicCast(), v15 = v19, v5 = v11, v6 = v12, !v19))
      {
LABEL_22:
        sub_25291AE30();
        return v18;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v5 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v6 = (v14 - 1) & v14;
    v15 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [objc_opt_self() executeRequestWithActionSet_];

    v11 = v5;
    v12 = v6;
    if (v16)
    {
      MEMORY[0x2530AD700](result);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v10 = v25;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v5);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A54788(void *a1, int64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v114 = a8;
  v113 = a7;
  v116 = a5;
  v117 = a6;
  v110 = a4;
  v111 = a3;
  v107 = sub_252E36C84();
  v106 = *(v107 - 8);
  v10 = *(v106 + 64);
  v11 = MEMORY[0x28223BE20](v107);
  v105 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = (&v98 - v13);
  v14 = sub_252E36D54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v104 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  if (qword_2814B0A70 != -1)
  {
LABEL_60:
    swift_once();
  }

  v98 = sub_252E36AD4();
  v26 = __swift_project_value_buffer(v98, qword_2814B0A78);
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E74420);
  v27 = [a1 description];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  v112 = v26;
  sub_252CC7784(v124, v125, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  sub_252E36D14();
  sub_252A591B8(a2, a1);
  v32 = v31;
  if ((v31 & 0xC000000000000001) != 0)
  {
    if (sub_252E378C4())
    {
      v99 = v23;
      v108 = v25;
      v115 = v15;
      v102 = v14;
      a1 = sub_252CC6468(MEMORY[0x277D84F90]);
      v101 = v32;

      sub_252E37874();
      type metadata accessor for Service();
      sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service);
      sub_252E373E4();
      v33 = v124;
      v25 = v125;
      v34 = v126;
      v35 = v127;
      v14 = v128;
LABEL_10:
      v100 = v34;
      v23 = ((v34 + 64) >> 6);
      v120 = xmmword_252E3C130;
      v118 = v25;
      for (i = v23; ; v23 = i)
      {
        if (v33 < 0)
        {
          v44 = sub_252E37904();
          if (!v44 || (v121 = v44, type metadata accessor for Service(), swift_dynamicCast(), v15 = v122, a2 = v35, v43 = v14, !v122))
          {
LABEL_33:
            sub_25291AE30();
            v60 = (MEMORY[0x277D84F90] >> 62);
            if (MEMORY[0x277D84F90] >> 62)
            {
              v97 = sub_252E378C4();
              v62 = v102;
              v63 = v114;
              v64 = v113;
              v65 = v111;
              LOBYTE(v66) = v110;
              if (!v97)
              {
                goto LABEL_64;
              }

              v61 = sub_2529FF6A8(MEMORY[0x277D84F90]);
            }

            else
            {
              v61 = MEMORY[0x277D84FA0];
              v62 = v102;
              v63 = v114;
              v64 = v113;
              v65 = v111;
              LOBYTE(v66) = v110;
            }

            while (1)
            {
              v67 = ((v66 & 1) != 0 ? 2000 : v65);
              v68 = sub_252A565B8(a1, v61, v67, 0, v116, v117, v64, v63);

              if (sub_252C2B888())
              {
                break;
              }

              *&v120 = v60;
              v73 = v99;
              sub_252E36D14();

              v74 = 7000;
              if ((v66 & 1) == 0)
              {
                v74 = v65;
              }

              v75 = v103;
              *v103 = v74;
              v76 = v106;
              v77 = v107;
              (*(v106 + 104))(v75, *MEMORY[0x277D85178], v107);
              v78 = v104;
              MEMORY[0x2530AD270](v73, v75);
              v79 = *(v76 + 8);
              v79(v75, v77);
              v80 = v105;
              sub_252E36D34();
              MEMORY[0x2530AD270](v78, v80);
              v79(v80, v77);
              v60 = *(v115 + 8);
              v81 = v78;
              v82 = v62;
              v115 += 8;
              v60(v81, v62);
              v83 = sub_252CA9EE8(v68);

              v84 = [v68 entityResponses];
              if (v84)
              {
                v85 = v84;
                type metadata accessor for HomeEntityResponse();
                v66 = sub_252E37264();
              }

              else
              {
                if (qword_27F53F4E8 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v98, qword_27F544D60);
                v122 = 0;
                v123 = 0xE000000000000000;
                sub_252E379F4();

                v62 = 0xD00000000000007ALL;
                v122 = 0xD00000000000002FLL;
                v123 = 0x8000000252E69700;
                v86 = v68;
                v87 = [v86 description];
                v88 = sub_252E36F34();
                v90 = v89;

                MEMORY[0x2530AD570](v88, v90);

                sub_252CC3D90(v122, v123, 0xD000000000000098, 0x8000000252E69730);

                v66 = MEMORY[0x277D84F90];
                v63 = v114;
                v64 = v113;
              }

              v65 = sub_252CAA4E0(v83, v66);

              if (v120 && sub_252E378C4())
              {
                a1 = sub_2529FF6A8(MEMORY[0x277D84F90]);
              }

              else
              {
                a1 = MEMORY[0x277D84FA0];
              }

              v91 = v109;
              v92 = sub_252E36D44();
              if ((v92 & 0x8000000000000000) == 0)
              {
                v93 = sub_252A565B8(v65, a1, v92, 0, v116, v117, v64, v63);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_252E3C3D0;
                *(inited + 32) = v68;
                *(inited + 40) = v93;
                v68 = combineIntentResponses(intentResponses:)(inited);
                swift_setDeallocating();
                v95 = *(inited + 16);
                swift_arrayDestroy();
                v60(v91, v82);
                v60(v99, v82);
                v60(v108, v82);
                return v68;
              }

              __break(1u);
LABEL_64:
              v61 = MEMORY[0x277D84FA0];
            }

            v69 = sub_252E36AC4();
            v70 = sub_252E374D4();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&dword_252917000, v69, v70, "Found error while doing a get request. We will bail out", v71, 2u);
              MEMORY[0x2530AED00](v71, -1, -1);
            }

            (*(v115 + 8))(v108, v62);
            return v68;
          }
        }

        else
        {
          v41 = v35;
          v42 = v14;
          a2 = v35;
          if (!v14)
          {
            while (1)
            {
              a2 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (a2 >= v23)
              {
                goto LABEL_33;
              }

              v42 = *&v25[8 * a2];
              ++v41;
              if (v42)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_18:
          v43 = (v42 - 1) & v42;
          v15 = *(*(v33 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v42)))));

          if (!v15)
          {
            goto LABEL_33;
          }
        }

        v23 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v25 = swift_allocObject();
        *(v25 + 1) = v120;
        v45 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v46 = sub_252E36F04();
        v47 = [v45 initWithIdentifier:0 displayString:v46];

        v48 = v47;
        [v48 setTaskType_];
        [v48 setAttribute_];
        [v48 setValue_];

        *(v25 + 4) = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = a1;
        v51 = sub_252A454C0(v15);
        v52 = a1[2];
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_58;
        }

        v14 = v50;
        if (a1[3] >= v54)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v122;
            if (v50)
            {
              goto LABEL_11;
            }
          }

          else
          {
            sub_252E03EC4();
            a1 = v122;
            if (v14)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_252E00638(v54, isUniquelyReferenced_nonNull_native);
          v55 = sub_252A454C0(v15);
          if ((v14 & 1) != (v56 & 1))
          {
            type metadata accessor for Service();
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v51 = v55;
          a1 = v122;
          if (v14)
          {
LABEL_11:
            v39 = a1[7];
            v40 = *(v39 + 8 * v51);
            *(v39 + 8 * v51) = v25;

            goto LABEL_12;
          }
        }

        a1[(v51 >> 6) + 8] |= 1 << v51;
        *(a1[6] + 8 * v51) = v15;
        *(a1[7] + 8 * v51) = v25;
        v57 = a1[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_59;
        }

        a1[2] = v59;
LABEL_12:
        v35 = a2;
        v14 = v43;
        v33 = v23;
        v25 = v118;
      }
    }
  }

  else if (*(v31 + 16))
  {
    v99 = v23;
    v108 = v25;
    v115 = v15;
    v102 = v14;
    a1 = sub_252CC6468(MEMORY[0x277D84F90]);
    v36 = -1 << *(v32 + 32);
    v25 = (v32 + 56);
    v34 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v14 = v38 & *(v32 + 56);

    v35 = 0;
    v101 = v32;
    v33 = v32;
    goto LABEL_10;
  }

  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
  sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
  v68 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v72 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v68[v72] = 102;
  [v68 setUserActivity_];
  (*(v15 + 8))(v25, v14);
  return v68;
}

id sub_252A55500(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v133 = a8;
  v128 = a6;
  v129 = a7;
  v127 = a5;
  v130 = a4;
  v131 = a3;
  v10 = sub_252E36C84();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v120 = (&v105 - v14);
  v15 = sub_252E36D54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v121 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v105 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v126 = &v105 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v105 - v24;
  if (qword_2814B0A70 != -1)
  {
    goto LABEL_62;
  }

LABEL_2:
  v119 = sub_252E36AD4();
  v26 = __swift_project_value_buffer(v119, qword_2814B0A78);
  v134 = 0;
  v135 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74460);
  v27 = [a1 description];
  v28 = sub_252E36F34();
  v30 = v29;

  v31 = v28;
  v32 = v26;
  MEMORY[0x2530AD570](v31, v30);

  sub_252CC7784(v134, v135, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  v33 = v25;
  sub_252E36D14();
  sub_252A591B8(a2, a1);
  v35 = v34;
  v36 = a1;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v37 = sub_252E378C4();
  }

  else
  {
    v37 = *(v34 + 16);
  }

  v38 = v133;
  v39 = v15;
  v40 = v33;
  if (!v37)
  {

    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    a1 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v48 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *(a1 + v48) = 102;
    [a1 setUserActivity_];
LABEL_16:
    (*(v16 + 8))(v40, v39);
    return a1;
  }

  v41 = sub_252CAAD54(v35, a1);
  v118 = MEMORY[0x277D84F90] >> 62;
  v125 = v35;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v100 = sub_252E378C4();
    v43 = v132;
    if (v100)
    {
      v42 = sub_2529FF6A8(MEMORY[0x277D84F90]);
    }

    else
    {
      v42 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
    v43 = v132;
  }

  if (v130)
  {
    v44 = 2000;
  }

  else
  {
    v44 = v131;
  }

  a1 = sub_252A565B8(v41, v42, v44, 0, v127, v128, v129, v38);

  if (sub_252C2B888())
  {

    v45 = sub_252E36AC4();
    v46 = sub_252E374D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_252917000, v45, v46, "Found error while doing a get request. We will bail out", v47, 2u);
      MEMORY[0x2530AED00](v47, -1, -1);
    }

    goto LABEL_16;
  }

  v49 = [v36 taskType];
  v116 = v39;
  v117 = v40;
  v115 = a1;
  if (v49 != 3)
  {
    goto LABEL_44;
  }

  v50 = [a1 entityResponses];
  if (!v50)
  {
    goto LABEL_44;
  }

  v51 = v50;
  type metadata accessor for HomeEntityResponse();
  v52 = sub_252E37264();

  v110 = v36;
  if (v52 >> 62)
  {
    v53 = sub_252E378C4();
    v54 = v125;
    if (!v53)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v125;
    if (!v53)
    {
      goto LABEL_70;
    }
  }

  v112 = 0;
  a2 = 0;
  v55 = v52 & 0xC000000000000001;
  v56 = v52 & 0xFFFFFFFFFFFFFF8;
  v57 = v52 + 32;
  v109 = v32;
  v114 = v16;
  v111 = v52;
  v108 = v53;
  v107 = v52 & 0xC000000000000001;
  v106 = v52 & 0xFFFFFFFFFFFFFF8;
  v105 = v52 + 32;
  do
  {
    if (v55)
    {
      v58 = v112;
      v59 = MEMORY[0x2530ADF00](v112, v52);
    }

    else
    {
      v58 = v112;
      if (v112 >= *(v56 + 16))
      {
        goto LABEL_67;
      }

      v59 = *(v57 + 8 * v112);
    }

    v113 = v59;
    v60 = __OFADD__(v58, 1);
    v61 = v58 + 1;
    if (v60)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v62 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v63 = sub_252E36F04();
    v64 = [v62 initWithIdentifier:0 displayString:v63];

    v65 = v64;
    [v65 setBoolValue_];
    [v65 setType_];

    v66 = [v113 taskResponses];
    if (!v66)
    {
      goto LABEL_59;
    }

    v67 = v66;
    type metadata accessor for HomeUserTaskResponse();
    v16 = sub_252E37264();

    v112 = v61;
    if (v16 >> 62)
    {
      v25 = sub_252E378C4();
      if (!v25)
      {
LABEL_42:

        v16 = v114;
        while (1)
        {
          v36 = v110;
LABEL_44:
          v71 = v126;
          sub_252E36D14();
          v72 = 7000;
          if ((v130 & 1) == 0)
          {
            v72 = v131;
          }

          v73 = v120;
          *v120 = v72;
          v75 = v123;
          v74 = v124;
          (*(v123 + 104))(v73, *MEMORY[0x277D85178], v124);
          v76 = v36;
          v77 = v121;
          MEMORY[0x2530AD270](v71, v73);
          v78 = *(v75 + 8);
          v78(v73, v74);
          v79 = v122;
          sub_252E36D34();
          MEMORY[0x2530AD270](v77, v79);
          v78(v79, v74);
          v80 = *(v16 + 8);
          v16 += 8;
          v38 = v80;
          v40 = v116;
          v80(v77, v116);
          a1 = v76;
          v81 = v76;
          v82 = v115;
          v54 = sub_252CAC120(v115, v81);

          v83 = [v82 entityResponses];
          if (v83)
          {
            v84 = v83;
            type metadata accessor for HomeEntityResponse();
            v85 = sub_252E37264();
          }

          else
          {
            v43 = v82;
            v114 = v16;
            if (qword_27F53F4E8 != -1)
            {
LABEL_68:
              swift_once();
            }

            __swift_project_value_buffer(v119, qword_27F544D60);
            v134 = 0;
            v135 = 0xE000000000000000;
            sub_252E379F4();

            v134 = 0xD00000000000002FLL;
            v135 = 0x8000000252E69700;
            v86 = v43;
            v87 = [v86 description];
            v88 = sub_252E36F34();
            v90 = v89;

            MEMORY[0x2530AD570](v88, v90);

            sub_252CC3D90(v134, v135, 0xD000000000000098, 0x8000000252E69730);

            v85 = MEMORY[0x277D84F90];
            v16 = v114;
            v82 = v43;
          }

          v91 = v117;
          v92 = sub_252CAC228(v54, v85, a1);

          if (v118)
          {
            v95 = sub_252E378C4();
            v65 = v132;
            if (v95)
            {
              v93 = sub_2529FF6A8(MEMORY[0x277D84F90]);
              v94 = sub_252E36D44();
              if ((v94 & 0x8000000000000000) == 0)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v93 = MEMORY[0x277D84FA0];
              v94 = sub_252E36D44();
              if ((v94 & 0x8000000000000000) == 0)
              {
LABEL_55:
                v96 = sub_252A565B8(v92, v93, v94, 0, v127, v128, v129, v133);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_252E3C3D0;
                *(inited + 32) = v82;
                *(inited + 40) = v96;
                a1 = combineIntentResponses(intentResponses:)(inited);
                swift_setDeallocating();
                v98 = *(inited + 16);
                swift_arrayDestroy();
                (v38)(v65, v40);
                (v38)(v126, v40);
                (v38)(v91, v40);
                return a1;
              }
            }
          }

          else
          {
            v93 = MEMORY[0x277D84FA0];
            v65 = v132;
            v94 = sub_252E36D44();
            if ((v94 & 0x8000000000000000) == 0)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_59:
        }
      }
    }

    else
    {
      v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    v38 = 0;
    v15 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v68 = MEMORY[0x2530ADF00](v38, v16);
      }

      else
      {
        if (v38 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v68 = *(v16 + 8 * v38 + 32);
      }

      v69 = v68;
      v70 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_2;
      }

      v134 = v68;
      a1 = sub_252DA5D40(&v134, 27, v65, 0, 1);

      if (a1)
      {
        break;
      }

      ++v38;
      if (v70 == v25)
      {
        goto LABEL_42;
      }
    }

    v39 = v116;
    v16 = v114;
    v40 = v117;
    v43 = v132;
    a1 = v115;
    v54 = v125;
    v52 = v111;
    v55 = v107;
    v56 = v106;
    v57 = v105;
  }

  while (v112 != v108);
LABEL_70:

  v101 = sub_252E36AC4();
  v102 = sub_252E374D4();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_252917000, v101, v102, "All entities are off. Returning power value instead of original", v103, 2u);
    MEMORY[0x2530AED00](v103, -1, -1);
  }

  v104 = sub_252C2BC20(0x1B);
  (*(v16 + 8))(v40, v39);
  return v104;
}

char *sub_252A56278(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E744A0);
  v14 = [a1 description];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  sub_252CC7784(0, 0xE000000000000000, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v18 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ([a1 attribute] == 1)
  {
    v18 = sub_252A5E390(a2);
  }

  else
  {

    sub_252A591B8(a2, a1);
    v19 = sub_252CACCC8(v20, a1);
  }

  if (*(v19 + 16))
  {
    goto LABEL_9;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_15;
    }
  }

  else if (!*(v18 + 16))
  {
LABEL_15:

    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    v21 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v21[v23] = 102;
    [v21 setUserActivity_];
    goto LABEL_10;
  }

LABEL_9:
  v21 = sub_252A565B8(v19, v18, a3, a4 & 1, a5, a6, a7, a8);

LABEL_10:

  return v21;
}

char *sub_252A565B8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v189 = a8;
  v188 = a7;
  v195 = a6;
  v190 = a5;
  v224 = *MEMORY[0x277D85DE8];
  v12 = sub_252E36C84();
  v183 = *(v12 - 8);
  v184 = v12;
  v13 = *(v183 + 64);
  MEMORY[0x28223BE20](v12);
  v180 = (&v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_252E36D54();
  v181 = *(v15 - 8);
  v182 = v15;
  v16 = *(v181 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v179 = &v164 - v19;
  v20 = sub_252E36AB4();
  v176 = *(v20 - 8);
  v177 = v20;
  v21 = *(v176 + 64);
  MEMORY[0x28223BE20](v20);
  v191 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_252E36AD4();
  v193 = *(v23 - 8);
  v24 = v193[8];
  MEMORY[0x28223BE20](v23);
  v192 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_252E32E84();
  v174 = *(v26 - 8);
  v175 = v26;
  v27 = *(v174 + 64);
  MEMORY[0x28223BE20](v26);
  v173 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = dispatch_semaphore_create(0);
  v30 = qword_2814B0A70;

  if (v30 != -1)
  {
    swift_once();
  }

  v185 = v23;
  v200 = __swift_project_value_buffer(v23, qword_2814B0A78);
  *&v212 = 0;
  *(&v212 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E74540);
  v196 = a3;
  *&v210[0] = a3;
  BYTE8(v210[0]) = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  MEMORY[0x2530AD570](0x53202020200A736DLL, 0xEE002073656E6563);
  v32 = a2 & 0xC000000000000001;
  v198 = v29;
  LODWORD(v197) = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v33 = sub_252E378C4();
  }

  else
  {
    v33 = *(a2 + 16);
  }

  *&v210[0] = v33;
  v34 = sub_252E37D94();
  MEMORY[0x2530AD570](v34);

  MEMORY[0x2530AD570](0x726553202020200ALL, 0xEE00207365636976);
  *&v210[0] = *(a1 + 16);
  v35 = sub_252E37D94();
  MEMORY[0x2530AD570](v35);

  v199 = "Invalid attribute value ";
  sub_252CC7784(v212, *(&v212 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  v36 = v198;
  if (!*(a1 + 16))
  {
    if (v32)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_17;
      }
    }

    else if (!*(a2 + 16))
    {
LABEL_17:
      sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, v199 | 0x8000000000000000, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
      sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
      v49 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v50 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v49[v50] = 102;
      [v49 setUserActivity_];

      goto LABEL_61;
    }
  }

  v37 = sub_252DA0B60(a1);
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate), , v39 = [v38 accessory], v38, v40 = objc_msgSend(v39, sel_home), v39, (v194 = v40) == 0))
  {
    v41 = sub_252DA0BC8(a2);
    if (!v41)
    {
      goto LABEL_17;
    }

    v42 = *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

    v43 = [v42 home];

    v194 = v43;
    if (!v43)
    {
      goto LABEL_17;
    }
  }

  v44 = swift_allocObject();
  *(v44 + 16) = MEMORY[0x277D84F90];
  v171 = v44 + 16;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v172 = (v45 + 16);
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v36;
  v186 = v46;
  if (v32)
  {

    v47 = v36;
    v48 = sub_252E378C4();
  }

  else
  {
    v48 = *(a2 + 16);

    v51 = v36;
  }

  v187 = v44;
  v52 = v197;
  if (!v48)
  {
    *&v212 = 0;
    *(&v212 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v212 = 0xD000000000000025;
    *(&v212 + 1) = 0x8000000252E745F0;
    type metadata accessor for Service();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service);
    v68 = sub_252E36E54();
    MEMORY[0x2530AD570](v68);

    sub_252CC7784(v212, *(&v212 + 1), 0, 0xD00000000000007ALL, v199 | 0x8000000000000000);

    v69 = v196;
    LOBYTE(v163) = v189;
    v60 = sub_252A59B64(a1, sub_252A5E938, v187, sub_252A5E940, v186, v190, v195, v188, v163, v196, v52 & 1);
    if (v60)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  v170 = v45;
  *&v212 = 0;
  *(&v212 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v53 = 0xD000000000000022;
  *&v212 = 0xD000000000000022;
  *(&v212 + 1) = 0x8000000252E74570;
  v54 = type metadata accessor for Scene();
  v168 = sub_252A5B8EC(&qword_27F541EE8, type metadata accessor for Scene);
  v169 = v54;
  v55 = sub_252E373B4();
  MEMORY[0x2530AD570](v55);

  sub_252CC7784(v212, *(&v212 + 1), 0, 0xD00000000000007ALL, v199 | 0x8000000000000000);

  v56 = sub_252A544EC(a2);
  v57 = v56;
  v167 = 0;
  if (v56 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
    sub_252E37B14();
  }

  else
  {
    v58 = v56 & 0xFFFFFFFFFFFFFF8;

    sub_252E37DD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
    if (swift_dynamicCastMetatype() || (v74 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v75 = a1;
      v76 = (v58 + 32);
      do
      {
        v77 = *v76;
        v223 = &unk_2864E6530;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        ++v76;
        --v74;
      }

      while (v74);

      a1 = v75;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
  v59 = sub_252E37254();

  v60 = [objc_opt_self() batchRequestWithExecuteRequests_];

  if (v60)
  {
    v61 = v60;
    v62 = v173;
    sub_252E32E74();
    sub_252E32E24();
    (*(v174 + 8))(v62, v175);
    v63 = sub_252E36F04();

    v64 = [objc_opt_self() clientContextWithMetricIdentifier_];

    [v61 setClientContext_];
    v65 = v195;
    v66 = v196;
    v165 = 0xD000000000000022;
    v166 = a1;
    if (v195)
    {
      v67 = v61;
      v65 = sub_252B89AA0(v190, v65, v66, v197 & 1);
    }

    else
    {
      v78 = v61;
    }

    [v61 setReportContext_];

    *&v214 = sub_252A5E938;
    *(&v214 + 1) = v187;
    *&v212 = MEMORY[0x277D85DD0];
    *(&v212 + 1) = 1107296256;
    *&v213 = sub_252A58A5C;
    *(&v213 + 1) = &block_descriptor_12;
    v79 = _Block_copy(&v212);
    v80 = v61;

    [v80 setProgressHandler_];
    _Block_release(v79);

    *&v214 = sub_252A5E940;
    *(&v214 + 1) = v186;
    *&v212 = MEMORY[0x277D85DD0];
    *(&v212 + 1) = 1107296256;
    *&v213 = sub_2529E0210;
    *(&v213 + 1) = &block_descriptor_15;
    v81 = _Block_copy(&v212);
    v82 = v80;

    [v82 setCompletionHandler_];
    _Block_release(v81);

    v53 = v165;
    a1 = v166;
  }

  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v83 = v185;
  v84 = __swift_project_value_buffer(v185, qword_2814B09D8);
  (v193[2])(v192, v84, v83);
  *&v212 = 0;
  *(&v212 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v210[0] = v212;
  MEMORY[0x2530AD570](v53, 0x8000000252E745A0);
  v45 = v170;
  if (v60)
  {
    v85 = sub_252E329C4();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    v88 = v60;
    sub_252E329B4();
    *&v212 = v88;
    sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
    sub_252A5B884();
    v89 = v167;
    v90 = sub_252E329A4();
    if (v89)
    {
    }

    else
    {
      v154 = v90;
      v155 = v91;

      v156 = objc_opt_self();
      v157 = sub_252E32D14();
      sub_25296464C(v154, v155);
      *&v212 = 0;
      v158 = [v156 JSONObjectWithData:v157 options:0 error:&v212];

      if (v158)
      {
        v159 = v212;
        sub_252E377F4();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
        v160 = swift_dynamicCast();
        v45 = v170;
        if (v160)
        {
          v92 = v208[0];
        }

        else
        {
          v92 = sub_252CC630C(MEMORY[0x277D84F90]);
        }

        goto LABEL_43;
      }

      v161 = v212;
      v162 = sub_252E32C54();

      swift_willThrow();
      v89 = v162;
      v45 = v170;
    }

    v92 = sub_252CC630C(MEMORY[0x277D84F90]);

LABEL_43:
    goto LABEL_45;
  }

  v92 = 0;
LABEL_45:
  *&v212 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA0, &unk_252E42C00);
  v93 = sub_252E36F94();
  MEMORY[0x2530AD570](v93);

  MEMORY[0x2530AD570](0x73206D6F72660A20, 0xEE002073656E6563);
  v94 = sub_252E373B4();
  MEMORY[0x2530AD570](v94);

  v95 = v192;
  sub_252CC4A5C(*&v210[0], *(&v210[0] + 1), 1, 0xD00000000000007ALL, v199 | 0x8000000000000000);

  (v193[1])(v95, v83);
  v69 = v196;
  if (v60)
  {
LABEL_46:
    v96 = v45;
    v97 = a1;
    v98 = v69;
    v99 = v60;
    v193 = sub_252A580D8(v191, &v212, v99);
    strcpy(v210, "batchRequest ");
    HIWORD(v210[0]) = -4864;
    v100 = [v99 description];
    v101 = sub_252E36F34();
    v103 = v102;

    MEMORY[0x2530AD570](v101, v103);

    v104 = *(&v210[0] + 1);
    sub_252CC3D90(*&v210[0], *(&v210[0] + 1), 0xD00000000000007ALL, v199 | 0x8000000000000000);

    v196 = v99;
    [v194 performBatchRequest_];
    v105 = 7000;
    if ((v197 & 1) == 0)
    {
      v105 = v98;
    }

    v106 = v105 + 400;
    if (__OFADD__(v105, 400))
    {
      __break(1u);
LABEL_70:
      swift_once();
LABEL_60:
      v124 = qword_2814B0A20;
      v125 = v221;
      v104[19] = v220;
      v104[20] = v125;
      v209 = v222;
      v126 = v217;
      v104[15] = v216;
      v104[16] = v126;
      v127 = v219;
      v104[17] = v218;
      v104[18] = v127;
      v128 = v213;
      v104[11] = v212;
      v104[12] = v128;
      v129 = v215;
      v104[13] = v214;
      v104[14] = v129;
      GEOLocationCoordinate2DMake(v208);
      v130 = v104[20];
      v104[8] = v104[19];
      v104[9] = v130;
      v207 = v209;
      v131 = v104[16];
      v104[4] = v104[15];
      v104[5] = v131;
      v132 = v104[18];
      v104[6] = v104[17];
      v104[7] = v132;
      v133 = v104[12];
      v203 = v104[11];
      v204 = v133;
      v134 = v104[14];
      v205 = v104[13];
      v206 = v134;
      v135 = v191;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v124, v191, "SendBatchRequest", 16, 2, &v203);
      v136 = v104[9];
      v104[30] = v104[8];
      v104[31] = v136;
      v211 = v207;
      v137 = v104[5];
      v104[26] = v104[4];
      v104[27] = v137;
      v138 = v104[7];
      v104[28] = v104[6];
      v104[29] = v138;
      v139 = v204;
      v104[22] = v203;
      v104[23] = v139;
      v140 = v206;
      v104[24] = v205;
      v104[25] = v140;
      sub_25293847C(v210, &qword_27F5407B0, &unk_252E42860);
      swift_beginAccess();
      v141 = *(v187 + 16);
      swift_beginAccess();
      v142 = *(v96 + 16);

      v143 = v142;
      v144 = v194;
      sub_252A5D4A0(v141, v142, a2, v106, v194);
      v49 = v145;

      v201 = 0;
      v202 = 0xE000000000000000;
      sub_252E379F4();

      v201 = 0x6552746E65746E69;
      v202 = 0xEF2065736E6F7073;
      v146 = [v49 description];
      v147 = sub_252E36F34();
      v149 = v148;

      MEMORY[0x2530AD570](v147, v149);

      sub_252CC3D90(v201, v202, 0xD00000000000007ALL, v199 | 0x8000000000000000);

      v150 = v197;
      sub_252A5E268(v197, v49, v190, v195, v188);

      v151 = v196;

      (*(v176 + 8))(v135, v177);

      goto LABEL_61;
    }

    v107 = v178;
    sub_252E36D14();
    v108 = v180;
    *v180 = v106;
    v110 = v183;
    v109 = v184;
    (*(v183 + 104))(v108, *MEMORY[0x277D85178], v184);
    v111 = v179;
    sub_252E36D24();
    (*(v110 + 8))(v108, v109);
    v112 = v182;
    v113 = *(v181 + 8);
    v113(v107, v182);
    sub_252E375F4();
    v113(v111, v112);
    v114 = sub_252E36C94();
    v115 = v172;
    if (v114)
    {
      v116 = sub_252E36AC4();
      v117 = sub_252E374D4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 134217984;
        *(v118 + 4) = v106;
        _os_log_impl(&dword_252917000, v116, v117, "timedout after %ld", v118, 0xCu);
        MEMORY[0x2530AED00](v118, -1, -1);
      }

      sub_252CC4050(0xD00000000000003ALL, 0x8000000252E74310, 0xD00000000000007ALL, v199 | 0x8000000000000000, 0x293A5F28676F6CLL, 0xE700000000000000, 553);
      sub_2529515FC(8, 10, 0x6572676F72506E69, 0xEA00000000007373);
      type metadata accessor for HMError(0);
      v208[0] = 15;
      sub_252A5B958(MEMORY[0x277D84F90]);
      sub_252A5B8EC(&qword_27F541F00, type metadata accessor for HMError);
      sub_252E32C34();
      v119 = *&v210[0];
      swift_beginAccess();
      v120 = *v115;
      *v115 = v119;
    }

    v121 = sub_252DB7C84()[5];

    v122 = sub_252DB5924();

    sub_252DB7C84();
    v123 = sub_252DB7280(v196);

    if (v123)
    {
      if ((v122 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v122))
      {
        [v123 setCommandDuration_];
        goto LABEL_57;
      }

      __break(1u);
    }

LABEL_57:
    if (v193)
    {

      sub_252D2D83C(0, 0);
    }

    v197 = v123;
    v104 = &v203;
    v106 = v97;
    if (qword_2814B0A18 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_27:
  v70 = sub_252E36AC4();
  v71 = sub_252E374D4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_252917000, v70, v71, "Batch request creation failed.", v72, 2u);
    MEMORY[0x2530AED00](v72, -1, -1);
  }

  v49 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v73 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v49[v73] = 5;
  [v49 setUserActivity_];

LABEL_61:
  v152 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t sub_252A57E18(uint64_t a1)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0A78);
  sub_252E379F4();

  v3 = sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v4 = MEMORY[0x2530AD730](a1, v3);
  MEMORY[0x2530AD570](v4);

  sub_252CC7784(0xD00000000000002CLL, 0x8000000252E74870, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  swift_beginAccess();

  sub_25297BB0C(v5);
  return swift_endAccess();
}

uint64_t sub_252A57F68(void *a1, uint64_t a2)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_2814B0A78);
  sub_252E379F4();

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC7784(0xD000000000000028, 0x8000000252E74840, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = a1;
  v8 = a1;

  return sub_252E37614();
}

id sub_252A580D8(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a1;
  v69 = sub_252E32E04();
  v68 = *(v69 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - v10;
  v12 = sub_252E32E84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_252E36AB4();
  v65 = *(v66 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v58 = v16;
  v20 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v21 = sub_252B680FC();
  v64 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v62 = *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v23 = sub_252B680FC();
  v25 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  v24 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
  v61 = v25;
  v60 = v24;

  v63 = v22;
  LOBYTE(v71[0]) = v22;
  LOBYTE(v75[0]) = 1;
  LOBYTE(v73) = 1;
  v72 = 1;
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v59 = sub_252D2D190(203, 0x6E776F6E6B6E75, 0xE700000000000000);
  v70 = a3;
  v26 = [a3 clientContext];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 metricIdentifier];

    v29 = sub_252E36F34();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v32)
  {
    v33 = v32;
    if (v31)
    {

      sub_252E32E14();

      v34 = v12;
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        v35 = v29;
        (*(v13 + 32))(v58, v11, v34);
        v50 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v57 = v34;
        v51 = v50;
        v52 = sub_252E32E44();
        v53 = [v51 initWithNSUUID_];

        [v33 setCommandId_];
        [v33 setCommandType_];
        sub_252C471EC();
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v54 = sub_252E37254();

        [v33 setHomeAutomationRequests_];

        v55 = sub_252DB7C84();
        swift_beginAccess();
        v56 = v33;
        MEMORY[0x2530AD700]();
        if (*((v55[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        swift_endAccess();

        (*(v13 + 8))(v58, v57);
        goto LABEL_13;
      }

      sub_25293847C(v11, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
    }
  }

  v35 = v29;
  if (qword_27F53F530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544E38);
    sub_252CC4050(0xD000000000000033, 0x8000000252E747E0, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000015, 0x8000000252E74820, 591);
LABEL_13:
    v37 = sub_252DB7C84()[5];

    sub_252E32DF4();
    sub_252E32D44();
    v39 = v38;
    (*(v68 + 8))(v7, v69);
    v40 = v39 * 1000.0;
    if (COERCE__INT64(fabs(v39 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v40 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v40 < 9.22337204e18)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  *(v37 + 16) = v40;

  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v42 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v35;
    *(inited + 56) = v31;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v42, &unk_27F541F10, &unk_252E42870);
  }

  v43 = [objc_opt_self() sharedAnalytics];
  if (v43)
  {
    v44 = v43;

    sub_252CC1408(v45);

    v46 = sub_252E36E24();

    [v44 logEventWithType:6501 context:v46];
  }

  else
  {
  }

  v71[3] = sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
  v71[0] = v70;
  v47 = v70;
  _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(v71);
  __swift_destroy_boxed_opaque_existential_1(v71);
  (*(v65 + 32))(v67, v19, v66);
  *a2 = v64;
  *(a2 + 8) = v63;
  *(a2 + 9) = v71[0];
  *(a2 + 12) = *(v71 + 3);
  v48 = v61;
  *(a2 + 16) = v62;
  *(a2 + 24) = v48;
  *(a2 + 32) = v60;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 97) = v75[0];
  *(a2 + 100) = *(v75 + 3);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 129) = 2;
  *(a2 + 130) = v73;
  *(a2 + 134) = v74;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a2 + 160) = 1;
  return v59;
}

uint64_t sub_252A58A5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v3 = sub_252E37264();

  v2(v3);
}

uint64_t sub_252A58AE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a5;
  v8 = *a1;
  sub_252974E7C(a2, v33);
  sub_252974E7C(a2, &v31);
  v9 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    v10 = [v8 metadata];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 maximumValue];

      if (v12)
      {
        *&v31 = 0;
        BYTE8(v31) = 1;
        MEMORY[0x2530AD810](v12, &v31);

        if ((BYTE8(v31) & 1) == 0)
        {
          v13 = v31;
          if (*&v31 < v30)
          {
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v14 = sub_252E36AD4();
            __swift_project_value_buffer(v14, qword_27F544CB8);
            *&v31 = 0;
            *(&v31 + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E74230);
            sub_252E37374();
            MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74280);
            sub_252E37374();
            sub_252CC4050(v31, *(&v31 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD00000000000005BLL, 0x8000000252E74120, 435);

            v32 = v9;
            *&v31 = v13;
            __swift_destroy_boxed_opaque_existential_1(v33);
            sub_252A00AF4(&v31, v33);
            goto LABEL_25;
          }
        }
      }
    }
  }

  sub_252974E7C(a2, &v31);
  v15 = MEMORY[0x277D839F8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = [v8 metadata];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  v18 = [v16 minimumValue];

  if (!v18)
  {
    goto LABEL_25;
  }

  *&v31 = 0;
  BYTE8(v31) = 1;
  MEMORY[0x2530AD810](v18, &v31);

  if (BYTE8(v31))
  {
    goto LABEL_25;
  }

  v19 = *&v31;
  if (v30 >= *&v31)
  {
    goto LABEL_25;
  }

  v20 = *MEMORY[0x277CCF788];
  v21 = sub_252E36F34();
  if (!a4)
  {

    goto LABEL_21;
  }

  if (v21 != a3 || v22 != a4)
  {
    v23 = sub_252E37DB4();

    if (v23)
    {
      goto LABEL_20;
    }

LABEL_21:
    v32 = v15;
    *&v31 = v19;
    goto LABEL_22;
  }

LABEL_20:
  v32 = v15;
  *&v31 = v19 + 1.0;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_252A00AF4(&v31, v33);
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544CB8);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E741A0);
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E741F0);
  sub_252E37374();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E74210);
  sub_252E37AE4();
  sub_252CC4050(v31, *(&v31 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD00000000000005BLL, 0x8000000252E74120, 449);

LABEL_25:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544CB8);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74180);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  MEMORY[0x2530AD570](0x20687469772029, 0xE700000000000000);
  sub_252E37AE4();
  sub_252CC3D90(v31, *(&v31 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

  __swift_project_boxed_opaque_existential_1(v33, v34);
  v27 = sub_252E37DA4();
  v28 = [objc_opt_self() writeRequestWithCharacteristic:v8 value:v27];
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_1(v33);
  *v35 = v28;
  return result;
}

void sub_252A591B8(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v2 = sub_2529FEBC8(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = HomeStore.accessories(matching:supporting:)(a1, a2);
  v6 = v5;

  if (v6)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](a1, v8);
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v10 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000021, 0x8000000252E71210, 520);

    v11 = 1;
    goto LABEL_21;
  }

  if (!(v4 >> 62))
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_20:
    v11 = 0;
LABEL_21:
    sub_252929F10(v4, v11);
    return;
  }

  v12 = sub_252E378C4();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v4 & 0xC000000000000001;
    v15 = v4;
    do
    {
      if (v14)
      {
        MEMORY[0x2530ADF00](v13, v4);
      }

      else
      {
        v22 = *(v4 + 8 * v13 + 32);
      }

      ++v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = [a2 attribute];
      v17 = sub_252D51310(a1);
      v18 = sub_252C75958(v17);

      v19 = sub_252D51460(inited);
      swift_setDeallocating();
      v20 = sub_252C75958(v19);

      v21 = sub_2529F9A94(v20, v18);

      v2 = sub_2529F2424(v21, v2);

      v4 = v15;
    }

    while (v12 != v13);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_252A595F0(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v3 = sub_252E36AD4();
      __swift_project_value_buffer(v3, qword_2814B0A78);
      sub_252E379F4();

      v4 = [a1 description];
      v5 = sub_252E36F34();
      v7 = v6;

      sub_252A5B934(a1, 0);
      MEMORY[0x2530AD570](v5, v7);

      sub_252CC4050(0xD00000000000002FLL, 0x8000000252E74390, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 543);

      v8 = "m batch request for user task: ";
      v9 = 0xD000000000000017;
      goto LABEL_21;
    }

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_2814B0A78);
    sub_252E379F4();

    swift_getErrorValue();
    v16 = sub_252E37E54();
    MEMORY[0x2530AD570](v16);

    sub_252CC4050(0xD000000000000024, 0x8000000252E742C0, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 558);

    v13 = "mpleted with error: ";
    v14 = 0xD000000000000011;
    return sub_2529515FC(8, 10, v14, v13 | 0x8000000000000000);
  }

  if (a2 == 2)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_2814B0A78);
    sub_252E379F4();

    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0x61722061206F7420, 0xEF65756C61762077);
    sub_252CC4050(0x7420656C62616E55, 0xEF203A70616D206FLL, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 563);

    v13 = "\nReturning maximum value ";
    v14 = 0xD000000000000015;
    return sub_2529515FC(8, 10, v14, v13 | 0x8000000000000000);
  }

  if (a1)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    sub_252CC4050(0xD00000000000003ALL, 0x8000000252E74310, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 553);
    v9 = 0x6572676F72506E69;
    v19 = 0xEA00000000007373;
    goto LABEL_22;
  }

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_2814B0A78);
  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
  v8 = "Found no matching entities";
  v9 = 0xD000000000000017;
LABEL_21:
  v19 = v8 | 0x8000000000000000;
LABEL_22:

  return sub_2529515FC(8, 10, v9, v19);
}

id sub_252A59B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v185 = a7;
  v190 = a6;
  v189 = a5;
  v188 = a4;
  v187 = a3;
  v186 = a2;
  v183 = a10;
  v228 = *MEMORY[0x277D85DE8];
  v181 = sub_252E32E84();
  v180 = *(v181 - 8);
  v13 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v179 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_252E36AD4();
  v196 = *(v199 - 8);
  v15 = *(v196 + 64);
  v16 = MEMORY[0x28223BE20](v199);
  v195 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v184 = &v178 - v19;
  MEMORY[0x28223BE20](v18);
  v192 = &v178 - v20;
  v194 = sub_252E36AB4();
  v193 = *(v194 - 8);
  v21 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v23 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v182 = a11;
  v24 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v191 = v24;
  sub_252E36A84();
  v25 = MEMORY[0x277D84F90];
  v217 = MEMORY[0x277D84F90];
  v218 = MEMORY[0x277D84F90];
  v26 = *(a1 + 64);
  v202 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v201 = (v27 + 63) >> 6;
  v203 = a1;

  v30 = 0;
  v204 = 0;
  v206 = v23;
  while (1)
  {
    if (!v29)
    {
      v31 = v203;
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (v32 >= v201)
        {
          break;
        }

        v29 = *(v202 + 8 * v32);
        ++v30;
        if (v29)
        {
          v30 = v32;
          goto LABEL_13;
        }
      }

      v87 = v218;
      v46 = v218 >> 62;
      if (v218 >> 62)
      {
        v88 = sub_252E378C4();
      }

      else
      {
        v88 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0xD00000000000007ALL;
      if (v88)
      {
        if (qword_2814B0A70 != -1)
        {
          swift_once();
        }

        v89 = v199;
        v90 = __swift_project_value_buffer(v199, qword_2814B0A78);
        (*(v196 + 16))(v192, v90, v89);
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&aBlock = 0xD00000000000001ELL;
        *(&aBlock + 1) = 0x8000000252E74030;
        if (v46)
        {
          v48 = sub_252E378C4();
        }

        else
        {
          v48 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v226 = v48;

        v94 = sub_252E37D94();
        v23 = v95;
        MEMORY[0x2530AD570](v94);

        MEMORY[0x2530AD570](0x202020200ALL, 0xE500000000000000);
        v96 = MEMORY[0x277D84F90];
        if (!v48)
        {
          goto LABEL_119;
        }

        v215 = v46;
        *&v226 = MEMORY[0x277D84F90];
        sub_2529AA3A0(0, v48 & ~(v48 >> 63), 0);
        if ((v48 & 0x8000000000000000) == 0)
        {
          v97 = 0;
          v96 = v226;
          do
          {
            if ((v87 & 0xC000000000000001) != 0)
            {
              v98 = MEMORY[0x2530ADF00](v97, v87);
            }

            else
            {
              v98 = *(v87 + 8 * v97 + 32);
            }

            v99 = v98;
            v100 = [v98 characteristic];
            v101 = [v100 characteristicType];

            v102 = sub_252E36F34();
            v104 = v103;

            *&v226 = v96;
            v106 = *(v96 + 16);
            v105 = *(v96 + 24);
            if (v106 >= v105 >> 1)
            {
              sub_2529AA3A0((v105 > 1), v106 + 1, 1);
              v96 = v226;
            }

            ++v97;
            *(v96 + 16) = v106 + 1;
            v107 = v96 + 16 * v106;
            *(v107 + 32) = v102;
            *(v107 + 40) = v104;
          }

          while (v48 != v97);
          v11 = 0xD00000000000007ALL;
          v46 = v215;
LABEL_119:

          v108 = MEMORY[0x2530AD730](v96, MEMORY[0x277D837D0]);
          v110 = v109;

          MEMORY[0x2530AD570](v108, v110);

          v111 = v192;
          sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

          (*(v196 + 8))(v111, v199);

          if (v46)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
            sub_252E37B14();
            swift_bridgeObjectRelease_n();
            v23 = v206;
          }

          else
          {

            sub_252E37DD4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
            v112 = swift_dynamicCastMetatype();
            v23 = v206;
            if (v112 || (v133 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
            {
            }

            else
            {
              v134 = v206;
              v135 = ((v87 & 0xFFFFFFFFFFFFFF8) + 32);
              do
              {
                v136 = *v135;
                v225 = &unk_2864E62E0;
                if (!swift_dynamicCastObjCProtocolConditional())
                {
                  break;
                }

                ++v135;
                --v133;
              }

              while (v133);

              v23 = v134;
              v11 = 0xD00000000000007ALL;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
          v113 = sub_252E37254();
          v114 = &selRef_batchRequestWithReadRequests_;
          goto LABEL_156;
        }

        __break(1u);
      }

      else
      {
        v46 = v217;
        v48 = v217 >> 62;
        if (!(v217 >> 62))
        {
          if (!*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_177;
          }

          goto LABEL_103;
        }
      }

      if (!sub_252E378C4())
      {
LABEL_177:

        if (qword_2814B0A70 != -1)
        {
          goto LABEL_195;
        }

LABEL_178:
        __swift_project_value_buffer(v199, qword_2814B0A78);
        sub_252CC4050((v11 - 60), 0x8000000252E740E0, 0xD00000000000007ALL, 0x8000000252E73FB0, (v11 - 31), 0x8000000252E74120, 482);
        v116 = 0;
        goto LABEL_179;
      }

LABEL_103:
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v91 = v199;
      v92 = __swift_project_value_buffer(v199, qword_2814B0A78);
      (*(v196 + 16))(v184, v92, v91);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&aBlock = 0xD00000000000001FLL;
      *(&aBlock + 1) = 0x8000000252E740C0;
      if (!v48)
      {
        v23 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_133;
      }

      goto LABEL_132;
    }

    v31 = v203;
LABEL_13:
    v197 = v29;
    v198 = v30;
    v33 = (v30 << 9) | (8 * __clz(__rbit64(v29)));
    v34 = *(v31 + 56);
    v211 = *(*(v31 + 48) + v33);
    v35 = *(v34 + v33);
    v216 = v25;
    if (v35 >> 62)
    {
      v36 = sub_252E378C4();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v210 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v200 = v35;
    if (!v36)
    {
      v85 = v25;
      goto LABEL_92;
    }

    v37 = 0;
    v209 = v35 & 0xC000000000000001;
    v208 = v35 & 0xFFFFFFFFFFFFFF8;
    v207 = v35 + 32;
    v205 = v36;
LABEL_19:
    if (v209)
    {
      v38 = MEMORY[0x2530ADF00](v37, v200);
    }

    else
    {
      if (v37 >= *(v208 + 16))
      {
        goto LABEL_172;
      }

      v38 = *(v207 + 8 * v37);
    }

    v11 = v38;
    v39 = __OFADD__(v37, 1);
    v40 = v37 + 1;
    if (v39)
    {
      goto LABEL_171;
    }

    v41 = [v38 taskType];
    v213 = v40;
    if ((v41 - 4) < 2)
    {
      break;
    }

    if (v41 != 1)
    {

      v93 = v11;
      sub_252A595F0(v11, 0);

LABEL_127:
      (*(v193 + 8))(v206, v194);
      v116 = 0;
      goto LABEL_193;
    }

    v59 = [v11 attribute];
    v60 = [v11 value];
    sub_252C6847C(v59, v60, &v226);

    if (!v227)
    {

      sub_25293847C(&v226, &qword_27F541E80, &qword_252E3DFA0);
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v199, qword_27F544CB8);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&aBlock = 0xD000000000000018;
      *(&aBlock + 1) = 0x8000000252E73F90;
      *&v226 = [v11 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v115 = sub_252E36F94();
      MEMORY[0x2530AD570](v115);

      sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

      goto LABEL_127;
    }

    sub_252A00AF4(&v226, &aBlock);
    v61 = v211;
    v214 = sub_252DE8C4C(v11, v211);
    v63 = v62;
    v64 = [*(v61 + v210) characteristics];
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    v46 = sub_252E37264();

    *&v226 = v25;
    if (v46 >> 62)
    {
      v65 = sub_252E378C4();
      if (!v65)
      {
LABEL_88:
        v81 = v25;
        goto LABEL_89;
      }
    }

    else
    {
      v65 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_88;
      }
    }

    v212 = v11;
    v48 = 0;
    v215 = v46 & 0xC000000000000001;
    do
    {
      if (v215)
      {
        v66 = MEMORY[0x2530ADF00](v48, v46);
      }

      else
      {
        if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v66 = *(v46 + 8 * v48 + 32);
      }

      v67 = v66;
      v68 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v69 = v65;
      v70 = [v66 characteristicType];
      v71 = sub_252E36F34();
      v73 = v72;

      if (!v63)
      {

LABEL_52:

        goto LABEL_53;
      }

      if (v71 == v214 && v63 == v73)
      {
      }

      else
      {
        v75 = sub_252E37DB4();

        if ((v75 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_252E37A94();
      v76 = *(v226 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_53:
      v65 = v69;
      ++v48;
    }

    while (v68 != v69);
    v81 = v226;
    v11 = v212;
    v36 = v205;
LABEL_89:

    MEMORY[0x28223BE20](v82);
    p_aBlock = &aBlock;
    v176 = v214;
    v177 = v63;
    v83 = v204;
    v84 = sub_252CB0D6C(sub_252A5B84C, (&v178 - 6), v81);
    v204 = v83;

    sub_25297BAB4(v84);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_18:
    v37 = v213;
    v23 = v206;
    v25 = MEMORY[0x277D84F90];
    if (v213 != v36)
    {
      goto LABEL_19;
    }

    v85 = v216;
LABEL_92:
    v29 = (v197 - 1) & v197;

    v11 = v211;
    v86 = sub_252CA8C88(v85, v211);

    sub_25297BAB4(v86);

    v30 = v198;
  }

  v42 = v211;
  v214 = sub_252DE8C4C(v11, v211);
  v44 = v43;
  v45 = [*(v42 + v210) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v46 = sub_252E37264();

  *&aBlock = v25;
  if (v46 >> 62)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v212 = v11;
  if (v47)
  {
    v48 = 0;
    v215 = v46 & 0xC000000000000001;
    v25 = v46 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v215)
      {
        v49 = MEMORY[0x2530ADF00](v48, v46);
      }

      else
      {
        if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v49 = *(v46 + 8 * v48 + 32);
      }

      v50 = v49;
      v11 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_130;
      }

      v51 = [v49 characteristicType];
      v52 = sub_252E36F34();
      v54 = v53;

      if (v44)
      {
        if (v52 == v214 && v44 == v54)
        {

LABEL_43:
          sub_252E37A94();
          v57 = *(aBlock + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_30;
        }

        v56 = sub_252E37DB4();

        if (v56)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

LABEL_30:
      ++v48;
      if (v11 == v47)
      {
        v58 = aBlock;
        v25 = MEMORY[0x277D84F90];
        goto LABEL_69;
      }
    }
  }

  v58 = v25;
LABEL_69:

  *&aBlock = v25;
  if (v58 < 0 || (v58 & 0x4000000000000000) != 0)
  {
    v48 = sub_252E378C4();
  }

  else
  {
    v48 = *(v58 + 16);
  }

  v77 = 0;
  v78 = v25;
  while (1)
  {
    if (v48 == v77)
    {

      sub_25297BA88(v78);

      v36 = v205;
      goto LABEL_18;
    }

    if ((v58 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x2530ADF00](v77, v58);
    }

    else
    {
      if (v77 >= *(v58 + 16))
      {
        goto LABEL_129;
      }

      v79 = *(v58 + 8 * v77 + 32);
    }

    v46 = v79;
    v25 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    v11 = [objc_opt_self() readRequestWithCharacteristic_];

    ++v77;
    if (v11)
    {
      MEMORY[0x2530AD700]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v80 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v78 = aBlock;
      v77 = v25;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v23 = sub_252E378C4();
LABEL_133:
  *&v226 = v23;

  v117 = sub_252E37D94();
  v11 = v118;
  MEMORY[0x2530AD570](v117);

  MEMORY[0x2530AD570](0x202020200ALL, 0xE500000000000000);
  if (!v23)
  {
LABEL_150:

    v120 = MEMORY[0x277D84F90];
    goto LABEL_151;
  }

  v215 = v48;
  *&v226 = v25;
  sub_2529AA3A0(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
LABEL_195:
    swift_once();
    goto LABEL_178;
  }

  v119 = 0;
  v120 = v226;
  v121 = v46 & 0xC000000000000001;
  v122 = v46;
  do
  {
    if (v121)
    {
      v123 = MEMORY[0x2530ADF00](v119, v46);
    }

    else
    {
      v123 = *(v46 + 8 * v119 + 32);
    }

    v124 = v123;
    v125 = [v123 characteristic];
    v126 = [v125 characteristicType];

    v127 = sub_252E36F34();
    v129 = v128;

    *&v226 = v120;
    v131 = *(v120 + 16);
    v130 = *(v120 + 24);
    if (v131 >= v130 >> 1)
    {
      sub_2529AA3A0((v130 > 1), v131 + 1, 1);
      v120 = v226;
    }

    ++v119;
    *(v120 + 16) = v131 + 1;
    v132 = v120 + 16 * v131;
    *(v132 + 32) = v127;
    *(v132 + 40) = v129;
    v46 = v122;
  }

  while (v23 != v119);

  v48 = v215;
LABEL_151:
  v137 = MEMORY[0x2530AD730](v120, MEMORY[0x277D837D0]);
  v139 = v138;

  MEMORY[0x2530AD570](v137, v139);

  v140 = v184;
  sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

  (*(v196 + 8))(v140, v199);

  v11 = 0xD00000000000007ALL;
  if (v48)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
    sub_252E37B14();
    swift_bridgeObjectRelease_n();
    v23 = v206;
  }

  else
  {

    sub_252E37DD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
    v141 = swift_dynamicCastMetatype();
    v23 = v206;
    if (!v141)
    {
      v149 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v149)
      {
        v150 = ((v46 & 0xFFFFFFFFFFFFFF8) + 32);
        do
        {
          v151 = *v150;
          v219 = &unk_2864E63C8;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v150;
          --v149;
        }

        while (v149);
      }
    }

LABEL_173:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
  v113 = sub_252E37254();
  v114 = &selRef_batchRequestWithWriteRequests_;
LABEL_156:

  v116 = [objc_opt_self() *v114];

  if (v116)
  {
    v142 = v185;
    if (v185)
    {
      v143 = sub_252E36F04();
    }

    else
    {
      v144 = v179;
      sub_252E32E74();
      sub_252E32E24();
      (*(v180 + 8))(v144, v181);
      v143 = sub_252E36F04();
    }

    v145 = [objc_opt_self() clientContextWithMetricIdentifier_];

    [v116 setClientContext_];
    if (v142)
    {
      v146 = sub_252B89AA0(v190, v142, v183, v182 & 1);
    }

    else
    {
      v146 = 0;
    }

    [v116 setReportContext_];

    v223 = v186;
    v224 = v187;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v221 = sub_252A58A5C;
    v222 = &block_descriptor_5;
    v147 = _Block_copy(&aBlock);

    [v116 setProgressHandler_];
    _Block_release(v147);
    v223 = v188;
    v224 = v189;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v221 = sub_2529E0210;
    v222 = &block_descriptor_3_0;
    v148 = _Block_copy(&aBlock);

    [v116 setCompletionHandler_];
    _Block_release(v148);
    v11 = 0xD00000000000007ALL;
  }

LABEL_179:
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v152 = v199;
  v153 = __swift_project_value_buffer(v199, qword_2814B09D8);
  (*(v196 + 16))(v195, v153, v152);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_252E379F4();
  v226 = aBlock;
  MEMORY[0x2530AD570](v11 - 88, 0x8000000252E74070);
  if (v116)
  {
    v154 = sub_252E329C4();
    v155 = *(v154 + 48);
    v156 = *(v154 + 52);
    swift_allocObject();
    sub_252E329B4();
    *&aBlock = v116;
    sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
    sub_252A5B884();
    v157 = v204;
    v158 = sub_252E329A4();
    if (v157)
    {

      goto LABEL_184;
    }

    v161 = v23;
    v162 = v158;
    v163 = v159;

    v164 = objc_opt_self();
    v165 = sub_252E32D14();
    sub_25296464C(v162, v163);
    *&aBlock = 0;
    v166 = [v164 JSONObjectWithData:v165 options:0 error:&aBlock];

    if (v166)
    {
      v167 = aBlock;
      sub_252E377F4();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
      v23 = v161;
      if (swift_dynamicCast())
      {
        v160 = v216;
      }

      else
      {
        v160 = sub_252CC630C(MEMORY[0x277D84F90]);
      }

      v11 = 0xD00000000000007ALL;
    }

    else
    {
      v168 = aBlock;
      v169 = sub_252E32C54();

      swift_willThrow();
      v157 = v169;
      v23 = v161;
      v11 = 0xD00000000000007ALL;
LABEL_184:
      v160 = sub_252CC630C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v160 = 0;
  }

  *&aBlock = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA0, &unk_252E42C00);
  v170 = sub_252E36F94();
  MEMORY[0x2530AD570](v170);

  MEMORY[0x2530AD570](v11 - 105, 0x8000000252E740A0);
  type metadata accessor for Service();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service);
  v171 = sub_252E36E54();
  MEMORY[0x2530AD570](v171);

  v172 = v195;
  sub_252CC4A5C(v226, *(&v226 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  (*(v196 + 8))(v172, v199);
  sub_252E375C4();
  v177 = MEMORY[0x277D84F90];
  LOBYTE(v176) = 2;
  p_aBlock = 21;
  sub_252E36A74();
  (*(v193 + 8))(v23, v194);
LABEL_193:
  v173 = *MEMORY[0x277D85DE8];
  return v116;
}