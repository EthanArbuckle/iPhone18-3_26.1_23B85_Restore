double sub_22D88AED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    sub_22D84DB94(a1 + 32, v16);
    if (swift_dynamicCast())
    {
      if ([objc_opt_self() isInternalBuild])
      {
        v3 = v14 == 7169633 && v15 == 0xE300000000000000;
        if (v3 || (sub_22D8B1F8C() & 1) != 0)
        {

          sub_22D8B146C();
          v4 = sub_22D8B145C();
          if ((v4 & 1) == 0)
          {
LABEL_16:
            *(a2 + 24) = MEMORY[0x277D839B0];
            *a2 = v4 & 1;
            return result;
          }

          if (qword_2814589E8 != -1)
          {
            swift_once();
          }

          v6 = sub_22D8B178C();
          sub_22D84C6FC(v6, qword_2814592B0);
          v7 = sub_22D8B176C();
          v8 = sub_22D8B1C6C();
          if (!os_log_type_enabled(v7, v8))
          {
LABEL_15:

            goto LABEL_16;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "GMBypass.gmEligibilityBypass returned true";
LABEL_14:
          _os_log_impl(&dword_22D84A000, v7, v8, v10, v9, 2u);
          MEMORY[0x2318D50E0](v9, -1, -1);
          goto LABEL_15;
        }

        if (v14 == 7169121 && v15 == 0xE300000000000000)
        {

LABEL_26:
          sub_22D8B146C();
          v4 = sub_22D8B144C();
          if ((v4 & 1) == 0)
          {
            goto LABEL_16;
          }

          if (qword_2814589E8 != -1)
          {
            swift_once();
          }

          v13 = sub_22D8B178C();
          sub_22D84C6FC(v13, qword_2814592B0);
          v7 = sub_22D8B176C();
          v8 = sub_22D8B1C6C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_15;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "GMBypass.admBypassState returned true";
          goto LABEL_14;
        }

        v12 = sub_22D8B1F8C();

        if (v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_22D88B194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) != 2)
  {
    goto LABEL_19;
  }

  sub_22D84DB94(a1 + 32, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_22D84DB94(a1 + 64, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_19:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v5 = sub_22D8ACDF8(v19, v20);
  if (!v5)
  {

    if (qword_2814589E8 != -1)
    {
      swift_once();
    }

    v10 = sub_22D8B178C();
    sub_22D84C6FC(v10, qword_2814592B0);

    v11 = sub_22D8B176C();
    v12 = sub_22D8B1C4C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v21[0] = v14;
      *v13 = 136315138;
      v15 = sub_22D84C63C(v19, v20, v21);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_22D84A000, v11, v12, "SubscriptionEvaluator user defaults UDF could not initialize userDefaults with suiteName: %s", v13, 0xCu);
      sub_22D84D8A0(v14);
      MEMORY[0x2318D50E0](v14, -1, -1);
      MEMORY[0x2318D50E0](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v6 = v5;

  v7 = v19 == 0xD000000000000016 && 0x800000022D8B8C00 == v20;
  if (v7 || (sub_22D8B1F8C() & 1) != 0)
  {
    v8 = sub_22D8B19CC();
    v9 = [v6 objectForKey_];

    if (!v9)
    {

      memset(v21, 0, sizeof(v21));
      sub_22D84D014(v21, &qword_27DA0D590, &unk_22D8B31B0);
      *(a2 + 24) = MEMORY[0x277D839B0];

      *a2 = 1;
      return;
    }

    sub_22D8B1D8C();
    swift_unknownObjectRelease();
    sub_22D84D014(v21, &qword_27DA0D590, &unk_22D8B31B0);
    goto LABEL_26;
  }

  v16 = v19 == 0x44796C6C61636F4CLL && v20 == 0xEF64656C62617369;
  if (v16 || (sub_22D8B1F8C() & 1) != 0)
  {
LABEL_26:
    v17 = sub_22D8B19CC();

    v18 = [v6 BOOLForKey_];

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v18;
    return;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_22D88B550@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) == 1)
  {
    sub_22D84DB94(result + 32, v18);
    result = swift_dynamicCast();
    if (result)
    {
      v4 = v18[5];
      v3 = v18[6];
      v5 = sub_22D8B114C();
      v6 = *(v5 - 8);
      v7 = *(v6 + 64);
      MEMORY[0x28223BE20](v5);
      v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = sub_22D8B0BDC();
      v11 = sub_22D8580D8(&qword_27DA0DC10, &unk_22D8B4A88);
      v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v11 - 8);
      v14 = &v18[-1] - v13;
      sub_22D872EBC(v4, v3, v10, &v18[-1] - v13);

      if (sub_22D84D0C0(v14, 1, v5) != 1)
      {
        (*(v6 + 32))(v9, v14, v5);
        v18[3] = v5;
        v18[4] = sub_22D84D680(&qword_281458780, MEMORY[0x282221C38]);
        v15 = sub_22D858D74(v18);
        (*(v6 + 16))(v15, v9, v5);
        v16 = sub_22D8B089C();
        sub_22D84D8A0(v18);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v16 & 1;
        return (*(v6 + 8))(v9, v5);
      }

      result = sub_22D84D014(v14, &qword_27DA0DC10, &unk_22D8B4A88);
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_22D88B7C8()
{
  sub_22D84CFE0();
  if (v3)
  {
    sub_22D84D754();
    if (v5 != v6)
    {
      sub_22D84CEA4();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_22D8580D8(&qword_27DA0D990, &qword_22D8B4090);
    v9 = sub_22D89154C();
    j__malloc_size(v9);
    sub_22D8522AC();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_22D88B8A4()
{
  sub_22D84CFE0();
  if (v5)
  {
    sub_22D84D754();
    if (v7 != v8)
    {
      sub_22D84CEA4();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22D84DB0C(v6);
  if (v3)
  {
    sub_22D8580D8(&qword_27DA0DC58, &unk_22D8B4AE0);
    v9 = sub_22D89154C();
    sub_22D8519DC(v9);
    sub_22D8522AC();
    v3[2] = v2;
    v3[3] = v10;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = (v3 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22D88B97C()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0DBC0, &qword_22D8B4A08, MEMORY[0x282221930]);
  sub_22D84F5AC();
  v7 = sub_22D8B0B6C();
  sub_22D8516DC(v7);
  v9 = *(v8 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x282221938], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BA44()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0D9B8, &qword_22D8B40D0, MEMORY[0x282221D10]);
  sub_22D84F5AC();
  v7 = sub_22D8B12BC();
  sub_22D8516DC(v7);
  v9 = *(v8 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x282221CF8], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BB0C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22D8915E4(v2, v5, &qword_27DA0D9C0, &unk_22D8B40D8);
  sub_22D84F5AC();
  v9 = type metadata accessor for SubscriptionDecision();
  sub_22D8516DC(v9);
  v11 = *(v10 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(type metadata accessor for SubscriptionDecision, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BBE4()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22D8915E4(v2, v5, &qword_27DA0DC40, &qword_22D8B4AC0);
  sub_22D84F5AC();
  v9 = sub_22D8B16FC();
  sub_22D8516DC(v9);
  v11 = *(v10 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x277D20638], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BCBC()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0D9B0, &unk_22D8B40C0, MEMORY[0x282221980]);
  sub_22D84F5AC();
  v7 = sub_22D8B0C6C();
  sub_22D8516DC(v7);
  v9 = *(v8 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x282221990], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BD84()
{
  sub_22D84CFE0();
  if (v5)
  {
    sub_22D84D754();
    if (v7 != v8)
    {
      sub_22D84CEA4();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22D84DB0C(v6);
  if (v3)
  {
    sub_22D8580D8(&qword_27DA0DC30, &qword_22D8B4AA8);
    v9 = swift_allocObject();
    sub_22D8519DC(v9);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v10 / 48);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 48 * v2 <= (v3 + 32))
    {
      v12 = sub_22D854F6C();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D8580D8(&qword_27DA0DC38, &unk_22D8B4AB0);
    sub_22D854F6C();
    swift_arrayInitWithCopy();
  }
}

void sub_22D88BE8C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22D8915E4(v2, v5, &qword_27DA0DBB8, &qword_22D8B4A00);
  sub_22D84F5AC();
  v9 = sub_22D8B150C();
  sub_22D8516DC(v9);
  v11 = *(v10 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x277CEDFA8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BF64()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0DC28, &qword_22D8B4AA0, MEMORY[0x282221A40]);
  sub_22D84F5AC();
  v7 = sub_22D8B0E1C();
  sub_22D8516DC(v7);
  v9 = *(v8 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x282221A48], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88C02C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22D8915E4(v2, v5, &qword_27DA0DC48, &unk_22D8B4AC8);
  sub_22D84F5AC();
  v9 = sub_22D8B16EC();
  sub_22D8516DC(v9);
  v11 = *(v10 + 80);
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(MEMORY[0x277D20628], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88C104()
{
  sub_22D84CFE0();
  if (v5)
  {
    sub_22D84D754();
    if (v7 != v8)
    {
      sub_22D84CEA4();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22D84DB0C(v6);
  if (v3)
  {
    sub_22D8580D8(&qword_27DA0DBF8, &qword_22D8B4A68);
    v9 = sub_22D89154C();
    sub_22D8519DC(v9);
    sub_22D8522AC();
    v3[2] = v2;
    v3[3] = v10;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = (v3 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_22D88C1D8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_22D88C5AC(v8, v7);
  v10 = *(sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_22D88C7FC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_22D88C318(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_22D84D754();
    if (v13 != v14)
    {
      sub_22D84CEA4();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_22D8580D8(a5, a6);
    v17 = sub_22D89154C();
    j__malloc_size(v17);
    sub_22D8522AC();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22D8580D8(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_22D88C428(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  v4 = sub_22D89154C();
  j__malloc_size(v4);
  sub_22D8522AC();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_22D88C4B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(a3, a4);
  v8 = sub_22D84F5AC();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_22D88C5AC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(&qword_27DA0DC00, &unk_22D8B4A70);
  v4 = *(sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22D88C6B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22D850834(a3, result);
  }

  return result;
}

char *sub_22D88C6D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22D850834(a3, result);
  }

  return result;
}

uint64_t sub_22D88C73C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_22D84C740(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_22D8915B0();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_22D8915B0();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

uint64_t sub_22D88C7FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);

    return MEMORY[0x2821FE828](a3);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3);
  }

  return result;
}

uint64_t sub_22D88C8E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22D8B4780;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22D88C94C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  v12 = sub_22D8B205C();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_22D8B1F8C() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_22D8B1F8C() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v26 = (*(v30 + 48) + 32 * v15);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    *a1 = *v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;

    return 0;
  }

  else
  {
LABEL_14:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_22D88E90C(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

BOOL sub_22D88CB20(char *a1, char *a2)
{
  v33 = a1;
  v4 = sub_22D8B12BC();
  v32 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22D84D680(&qword_281458778, MEMORY[0x282221D00]);
  v38 = a2;
  v7 = sub_22D8B196C();
  v36 = ~(-1 << *(v5 + 32));
  v37 = v5 + 56;
  v34 = v5;
  v35 = v4 - 8;
  while (1)
  {
    v8 = v7 & v36;
    v9 = *(v37 + (((v7 & v36) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = (1 << (v7 & v36)) & v9;
    if (!v10)
    {
      v21 = v32;
      v22 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = isUniquelyReferenced_nonNull_native;
      v25 = *(v4 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v28 = &v31 - v27;
      v29 = v38;
      (*(v25 + 16))(&v31 - v27, v38, v4);
      v40 = *v21;
      sub_22D88EAD4(v28, v8, v24);
      *v21 = v40;
      (*(v25 + 32))(v33, v29, v4);
      return v10 == 0;
    }

    v11 = (1 << v8) & v9;
    v39 = &v31;
    v12 = *(v4 - 8);
    v13 = v12[8];
    MEMORY[0x28223BE20](v7);
    v15 = &v31 - v14;
    v17 = *(v16 + 72) * v8;
    v18 = v12[2];
    v18(&v31 - v14, *(v34 + 48) + v17, v4);
    sub_22D84D680(&qword_281458770, MEMORY[0x282221D00]);
    v19 = sub_22D8B19AC();
    v20 = v12[1];
    v20(v15, v4);
    if (v19)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v20(v38, v4);
  v18(v33, *(v34 + 48) + v17, v4);
  v10 = v11;
  return v10 == 0;
}

BOOL sub_22D88CE38(char *a1, char *a2)
{
  v33 = a1;
  v4 = sub_22D8B0C6C();
  v32 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22D84D680(&qword_281458798, MEMORY[0x282221988]);
  v38 = a2;
  v7 = sub_22D8B196C();
  v36 = ~(-1 << *(v5 + 32));
  v37 = v5 + 56;
  v34 = v5;
  v35 = v4 - 8;
  while (1)
  {
    v8 = v7 & v36;
    v9 = *(v37 + (((v7 & v36) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = (1 << (v7 & v36)) & v9;
    if (!v10)
    {
      v21 = v32;
      v22 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = isUniquelyReferenced_nonNull_native;
      v25 = *(v4 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v28 = &v31 - v27;
      v29 = v38;
      (*(v25 + 16))(&v31 - v27, v38, v4);
      v40 = *v21;
      sub_22D88ED74(v28, v8, v24);
      *v21 = v40;
      (*(v25 + 32))(v33, v29, v4);
      return v10 == 0;
    }

    v11 = (1 << v8) & v9;
    v39 = &v31;
    v12 = *(v4 - 8);
    v13 = v12[8];
    MEMORY[0x28223BE20](v7);
    v15 = &v31 - v14;
    v17 = *(v16 + 72) * v8;
    v18 = v12[2];
    v18(&v31 - v14, *(v34 + 48) + v17, v4);
    sub_22D84D680(&qword_281458790, MEMORY[0x282221988]);
    v19 = sub_22D8B19AC();
    v20 = v12[1];
    v20(v15, v4);
    if (v19)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v20(v38, v4);
  v18(v33, *(v34 + 48) + v17, v4);
  v10 = v11;
  return v10 == 0;
}

void sub_22D88D150()
{
  sub_22D851698();
  v2 = v1;
  v29 = v3;
  v4 = sub_22D8B0F6C();
  v28 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10]);
  sub_22D891528();
  v34 = v2;
  v7 = sub_22D8B196C();
  v32 = ~(-1 << *(v5 + 32));
  v33 = v5 + 56;
  v30 = v5;
  v31 = v4 - 8;
  while (1)
  {
    v8 = v7 & v32;
    if (((1 << (v7 & v32)) & *(v33 + (((v7 & v32) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v18 = v28;
      v19 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v4 - 8);
      v22 = *(v21 + 64);
      sub_22D84C5F4();
      MEMORY[0x28223BE20](v23);
      v25 = &v27 - v24;
      v26 = v34;
      (*(v21 + 16))(&v27 - v24, v34, v4);
      v36 = *v18;
      sub_22D88F014(v25, v8, isUniquelyReferenced_nonNull_native);
      *v18 = v36;
      (*(v21 + 32))(v29, v26, v4);
      goto LABEL_7;
    }

    v35 = &v27;
    v9 = *(v4 - 8);
    v10 = v9[8];
    MEMORY[0x28223BE20](v7);
    v12 = &v27 - v11;
    v14 = *(v13 + 72) * v8;
    v15 = v9[2];
    v15(&v27 - v11, *(v30 + 48) + v14, v4);
    sub_22D84D680(&qword_2814591F0, MEMORY[0x282221B10]);
    v16 = sub_22D8B19AC();
    v17 = v9[1];
    v17(v12, v4);
    if (v16)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v17(v34, v4);
  v15(v29, *(v30 + 48) + v14, v4);
LABEL_7:
  sub_22D84D1C0();
}

uint64_t sub_22D88D450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_22D88C8E8(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_22D8B201C();
    v35 = v18;
    sub_22D8B1A6C();
    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v6 + 48) + 32 * v26);
    v3 = v34;
    *v31 = v35;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v13 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88D6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22D88C8E8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_22D8B201C();
    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88D930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DC50, &qword_22D8B4AD8);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_22D88C8E8(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_22D8B12BC();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    MEMORY[0x28223BE20](v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v3 + 48);
    v24 = v19[9];
    v38 = v19[4];
    v38(v22, v23 + v24 * v17, v18);
    v25 = *(v6 + 40);
    sub_22D84D680(&qword_281458778, MEMORY[0x282221D00]);
    result = sub_22D8B196C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v24, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v37;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88DC5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBE0, &qword_22D8B4A48);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_22D88C8E8(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_22D8B0C6C();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    MEMORY[0x28223BE20](v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v3 + 48);
    v24 = v19[9];
    v38 = v19[4];
    v38(v22, v23 + v24 * v17, v18);
    v25 = *(v6 + 40);
    sub_22D84D680(&qword_281458798, MEMORY[0x282221988]);
    result = sub_22D8B196C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v24, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v37;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88DF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBF0, &unk_22D8B4A58);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_22D88C8E8(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_22D8B0EBC();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    MEMORY[0x28223BE20]();
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v3 + 48);
    v24 = v19[9];
    v38 = v19[4];
    v38(v22, v23 + v24 * v17, v18);
    v25 = *(v6 + 40);
    sub_22D84D680(&qword_281459208, MEMORY[0x282221A90]);
    result = sub_22D8B196C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v24, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v37;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88E2B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBE8, &qword_22D8B4A50);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_22D88C8E8(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_22D8B0D8C();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    MEMORY[0x28223BE20](v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v3 + 48);
    v24 = v19[9];
    v38 = v19[4];
    v38(v22, v23 + v24 * v17, v18);
    v25 = *(v6 + 40);
    sub_22D84D680(&qword_281459218, MEMORY[0x282221A08]);
    result = sub_22D8B196C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v24, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v37;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88E5E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBC8, &unk_22D8B4A10);
  result = sub_22D8B1DFC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_22D88C8E8(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_22D8B0F6C();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    MEMORY[0x28223BE20](v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v3 + 48);
    v24 = v19[9];
    v38 = v19[4];
    v38(v22, v23 + v24 * v17, v18);
    v25 = *(v6 + 40);
    sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10]);
    result = sub_22D8B196C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v24, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v37;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D88E90C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_22D88D450(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_22D88F2B4();
      goto LABEL_21;
    }

    sub_22D88F76C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  result = sub_22D8B205C();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_22D8B1F8C(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }

        result = sub_22D8B1F8C();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_22D8B1FAC();
  __break(1u);
  return result;
}

uint64_t sub_22D88EAD4(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88D930(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D88FC00(v5 + 1);
LABEL_8:
      v25 = v3;
      v7 = *v3;
      v8 = *(*v3 + 40);
      v9 = sub_22D8B12BC();
      sub_22D84D680(&qword_281458778, MEMORY[0x282221D00]);
      v10 = sub_22D8B196C();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 - 8);
        v13 = *(v12 + 64);
        MEMORY[0x28223BE20](v10);
        v15 = &v25 - v14;
        (*(v12 + 16))(&v25 - v14, *(v7 + 48) + *(v16 + 72) * a2, v9);
        sub_22D84D680(&qword_281458770, MEMORY[0x282221D00]);
        v17 = sub_22D8B19AC();
        (*(v12 + 8))(v15, v9);
        if (v17)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v18 = *v3;
  *(v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_22D8B12BC();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v26, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }

  return result;
}

uint64_t sub_22D88ED74(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88DC5C(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D88FF14(v5 + 1);
LABEL_8:
      v25 = v3;
      v7 = *v3;
      v8 = *(*v3 + 40);
      v9 = sub_22D8B0C6C();
      sub_22D84D680(&qword_281458798, MEMORY[0x282221988]);
      v10 = sub_22D8B196C();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 - 8);
        v13 = *(v12 + 64);
        MEMORY[0x28223BE20](v10);
        v15 = &v25 - v14;
        (*(v12 + 16))(&v25 - v14, *(v7 + 48) + *(v16 + 72) * a2, v9);
        sub_22D84D680(&qword_281458790, MEMORY[0x282221988]);
        v17 = sub_22D8B19AC();
        (*(v12 + 8))(v15, v9);
        if (v17)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v18 = *v3;
  *(v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_22D8B0C6C();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v26, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }

  return result;
}

uint64_t sub_22D88F014(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88E5E0(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D890850(v5 + 1);
LABEL_8:
      v25 = v3;
      v7 = *v3;
      v8 = *(*v3 + 40);
      v9 = sub_22D8B0F6C();
      sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10]);
      v10 = sub_22D8B196C();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 - 8);
        v13 = *(v12 + 64);
        MEMORY[0x28223BE20](v10);
        v15 = &v25 - v14;
        (*(v12 + 16))(&v25 - v14, *(v7 + 48) + *(v16 + 72) * a2, v9);
        sub_22D84D680(&qword_2814591F0, MEMORY[0x282221B10]);
        v17 = sub_22D8B19AC();
        (*(v12 + 8))(v15, v9);
        if (v17)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v18 = *v3;
  *(v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_22D8B0F6C();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v26, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }

  return result;
}

void *sub_22D88F2B4()
{
  v1 = v0;
  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  v2 = *v0;
  v3 = sub_22D8B1DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_22D88F41C()
{
  v1 = v0;
  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  v2 = *v0;
  v3 = sub_22D8B1DEC();
  if (*(v2 + 16))
  {
    v4 = *(v3 + 32);
    sub_22D84E10C();
    v7 = (v6 + 63) >> 6;
    if (v3 != v2 || v5 >= v2 + 56 + 8 * v7)
    {
      memmove(v5, (v2 + 56), 8 * v7);
    }

    v9 = 0;
    *(v3 + 16) = *(v2 + 16);
    v10 = *(v2 + 32);
    sub_22D84E10C();
    v11 = *(v2 + 56);
    sub_22D84DFD8();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v21 = v17 | (v9 << 6);
        v22 = (*(v2 + 48) + 16 * v21);
        v23 = v22[1];
        v24 = (*(v3 + 48) + 16 * v21);
        *v24 = *v22;
        v24[1] = v23;
      }

      while (v14);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v2 + 56 + 8 * v9))
      {
        sub_22D84E214();
        v14 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void sub_22D88F558()
{
  sub_22D851698();
  v35 = v1;
  v2 = v0;
  sub_22D8580D8(v3, v4);
  v5 = *v0;
  v6 = sub_22D8B1DEC();
  if (*(v5 + 16))
  {
    v34 = v2;
    v7 = *(v6 + 32);
    sub_22D84E10C();
    v10 = (v9 + 63) >> 6;
    if (v6 != v5 || v8 >= v5 + 56 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v12 = 0;
    v13 = *(v5 + 16);
    v36 = v6;
    *(v6 + 16) = v13;
    v14 = *(v5 + 32);
    sub_22D84E10C();
    v15 = *(v5 + 56);
    sub_22D84DFD8();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v25 = v21 | (v12 << 6);
        v26 = v35(0);
        v27 = *(v26 - 8);
        v28 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20]();
        v30 = &v33 - v29;
        v32 = *(v31 + 72) * v25;
        (*(v27 + 16))(&v33 - v29, *(v5 + 48) + v32, v26);
        (*(v27 + 32))(*(v36 + 48) + v32, v30, v26);
      }

      while (v18);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v20)
      {

        v2 = v34;
        v6 = v36;
        goto LABEL_19;
      }

      ++v22;
      if (*(v5 + 56 + 8 * v12))
      {
        sub_22D84E214();
        v18 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v6;
    sub_22D84D1C0();
  }
}

uint64_t sub_22D88F76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_22D8B201C();

        sub_22D8B1A6C();
        sub_22D8B1A6C();
        result = sub_22D8B205C();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 32 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v20;
        v31[3] = v21;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D88F9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_22D8B201C();

        sub_22D8B1A6C();
        result = sub_22D8B205C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D88FC00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DC50, &qword_22D8B4AD8);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_22D8B12BC();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20](v18);
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_22D84D680(&qword_281458778, MEMORY[0x282221D00]);
        result = sub_22D8B196C();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D88FF14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBE0, &qword_22D8B4A48);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_22D8B0C6C();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20](v18);
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_22D84D680(&qword_281458798, MEMORY[0x282221988]);
        result = sub_22D8B196C();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D890228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBF0, &unk_22D8B4A58);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_22D8B0EBC();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20]();
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_22D84D680(&qword_281459208, MEMORY[0x282221A90]);
        result = sub_22D8B196C();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D89053C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBE8, &qword_22D8B4A50);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_22D8B0D8C();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20](v18);
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_22D84D680(&qword_281459218, MEMORY[0x282221A08]);
        result = sub_22D8B196C();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D890850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22D8580D8(&qword_27DA0DBC8, &unk_22D8B4A10);
  result = sub_22D8B1DFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_22D8B0F6C();
        v40 = &v36;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20](v18);
        v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23;
        v25 = *(v3 + 48);
        v26 = *(v24 + 72);
        (*(v19 + 16))(v22, v25 + v26 * v17, v18);
        v6 = v39;
        v27 = *(v39 + 40);
        sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10]);
        result = sub_22D8B196C();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = (*(v19 + 32))(*(v6 + 48) + v31 * v26, v22, v18);
        ++*(v6 + 16);
        v11 = v41;
        v3 = v38;
        if (!v41)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v41 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D890B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2318D48F0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_22D8B1A6C();
      sub_22D8B1A6C();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_22D890C08(void *a1)
{
  v2 = *sub_22D84E124(a1, a1[3]);
  sub_22D869100(0xD000000000000010, 0x800000022D8B8BA0, 1, sub_22D88A9B8, 0);
  v3 = *sub_22D84E124(a1, a1[3]);
  sub_22D869100(0xD000000000000010, 0x800000022D8B8BC0, 1, sub_22D88AB20, 0);
  v4 = *sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x63697665645F6D62, 0xED00006F666E4965, 1, sub_22D88AD48, 0);
  v5 = *sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x7079426D675F6D62, 0xEB00000000737361, 1, sub_22D88AED8, 0);
  v6 = *sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x44726573755F6D62, 0xEF73746C75616665, 2, sub_22D88B194, 0);
  v7 = *sub_22D84E124(a1, a1[3]);
  return sub_22D869100(0xD000000000000013, 0x800000022D8B8BE0, 1, sub_22D88B550, 0);
}

uint64_t sub_22D890E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_22D890F4C()
{
  result = qword_27DA0DB98;
  if (!qword_27DA0DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DB98);
  }

  return result;
}

uint64_t sub_22D890FA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_22D890FF4()
{
  result = qword_27DA0DBA0;
  if (!qword_27DA0DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DBA0);
  }

  return result;
}

uint64_t sub_22D891090(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22D891110()
{
  sub_22D8B12BC();
  if (v0 <= 0x3F)
  {
    sub_22D8911AC();
    if (v1 <= 0x3F)
    {
      sub_22D8911FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D8911AC()
{
  if (!qword_2814584D8)
  {
    v0 = sub_22D8B1B2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814584D8);
    }
  }
}

void sub_22D8911FC()
{
  if (!qword_2814587B0)
  {
    sub_22D8B083C();
    v0 = sub_22D8B1D7C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814587B0);
    }
  }
}

__n128 sub_22D891254(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D891268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D8912A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionEvaluator.EvaluationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionEvaluator.EvaluationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22D89147C()
{
  result = qword_27DA0DBB0;
  if (!qword_27DA0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DBB0);
  }

  return result;
}

unint64_t sub_22D8914D0()
{
  result = qword_27DA0DC18;
  if (!qword_27DA0DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DC18);
  }

  return result;
}

uint64_t sub_22D89154C()
{

  return swift_allocObject();
}

uint64_t sub_22D891578()
{
  v2 = **(v1 - 160);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22D8915C4(unint64_t *a1)
{
  v2 = MEMORY[0x282221D00];

  return sub_22D84D680(a1, v2);
}

size_t sub_22D8915E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22D88C4B4(v5, a2, a3, a4, v4);
}

void static Daemon.main()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15 = a1;
  v16 = a2;
  v6 = sub_22D8B1C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D8B1CEC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  static Daemon.enterSandbox()(a1, a2);
  sub_22D891800();
  v17 = MEMORY[0x277D84F90];
  sub_22D891844();
  sub_22D8580D8(&qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D89189C();
  sub_22D8B1DAC();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  v13 = sub_22D8B1CFC();
  dispatch_activate(v13);
  v14 = MEMORY[0x2318D49C0]();
  sub_22D891900(v13, v3, v15, v16);
  objc_autoreleasePoolPop(v14);
  dispatch_main();
}

unint64_t sub_22D891800()
{
  result = qword_281458890;
  if (!qword_281458890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281458890);
  }

  return result;
}

unint64_t sub_22D891844()
{
  result = qword_281458898;
  if (!qword_281458898)
  {
    sub_22D8B1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458898);
  }

  return result;
}

unint64_t sub_22D89189C()
{
  result = qword_281458908;
  if (!qword_281458908)
  {
    sub_22D85EE94(&qword_27DA0DC60, qword_22D8B4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458908);
  }

  return result;
}

uint64_t sub_22D891900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  v8[5] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22D891BC0;
  *(v9 + 24) = v8;
  v13[4] = sub_22D891BCC;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22D891BF4;
  v13[3] = &unk_2840E4038;
  v10 = _Block_copy(v13);
  v11 = a1;

  dispatch_async_and_wait(v11, v10);
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D891AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);
  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22D84A000, v8, v9, "Starting modelcatalogd", v10, 2u);
    MEMORY[0x2318D50E0](v10, -1, -1);
  }

  return (*(a4 + 24))(a2, a3, a4);
}

uint64_t sub_22D891BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t static Daemon.enterSandbox()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  sub_22D8B1A5C();

  v2 = _set_user_dir_suffix();

  if (!v2)
  {
    _exit(5);
  }

  static Daemon.confstr(_:)(65537);
  if (!v3 || (String.realpath.getter(), v5 = v4, , !v5))
  {
    _exit(3);
  }
}

uint64_t static Daemon.confstr(_:)(int a1)
{
  v2 = sub_22D8B067C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = sub_22D8B064C();
  sub_22D89228C(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  v5 = sub_22D891E40(&v7, a1);
  sub_22D877894(v7, v8);
  return v5;
}

uint64_t sub_22D891D60@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_22D8B1A8C();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t String.realpath.getter()
{
  v0 = sub_22D8B1A5C();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_22D8B1A8C();
  MEMORY[0x2318D50E0](v1, -1, -1);
  return v2;
}

uint64_t sub_22D891E40(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22D877894(v4, v3);
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v4)
      {
        goto LABEL_23;
      }

      if (sub_22D8B063C() && __OFSUB__(v4, sub_22D8B066C()))
      {
        goto LABEL_24;
      }

      v15 = sub_22D8B067C();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_22D8B062C();

      v13 = v18;
LABEL_16:
      if (v14 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_22D8921E0(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_22D877894(v4, v3);
      v23 = v4;
      v24 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      sub_22D8B074C();
      v10 = v24;
      v11 = sub_22D8921E0(*(v23 + 16), *(v23 + 24), v24, a2);
      if (v2)
      {
        v12 = v24 | 0x8000000000000000;
        *a1 = v23;
LABEL_19:
        a1[1] = v12;
      }

      else
      {
        v5 = v11;
        *a1 = v23;
        a1[1] = v10 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v22, 0, 15);
      sub_22D891D60(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      break;
    default:
      v5 = v4 >> 40;
      sub_22D877894(v4, v3);
      *v22 = v4;
      *&v22[8] = v3;
      v22[10] = BYTE2(v3);
      v22[11] = BYTE3(v3);
      v22[12] = BYTE4(v3);
      v22[13] = BYTE5(v3);
      v22[14] = BYTE6(v3);
      sub_22D891D60(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      v8 = *&v22[8] | ((*&v22[12] | (v22[14] << 16)) << 32);
      *a1 = *v22;
      a1[1] = v8;
      break;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22D8921E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_22D8B063C();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_22D8B066C();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_22D8B065C();
  result = sub_22D891D60((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_22D89228C(int *a1, int a2)
{
  result = sub_22D8B076C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_22D8B063C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_22D8B066C();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_22D8B065C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t static ModelCatalogAgent.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v2 = sub_22D8B178C();
  v3 = sub_22D84C6FC(v2, qword_281459298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ModelCatalogAgent.start()()
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v0 = sub_22D8B178C();
  sub_22D84C6FC(v0, qword_281459298);
  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22D84A000, v1, v2, "starting ModelCatalogAgent", v3, 2u);
    MEMORY[0x2318D50E0](v3, -1, -1);
  }

  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85BDA8();
  type metadata accessor for SubscriptionEvaluationXPCServiceServer();
  sub_22D892514();
  return sub_22D8B136C();
}

unint64_t sub_22D892514()
{
  result = qword_281458A88;
  if (!qword_281458A88)
  {
    type metadata accessor for SubscriptionEvaluationXPCServiceServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458A88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelCatalogAgent(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22D892658()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459248 = result;
  return result;
}

uint64_t sub_22D89268C()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459250 = result;
  return result;
}

uint64_t sub_22D8926C0()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459258 = result;
  return result;
}

uint64_t sub_22D8926F4()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459240 = result;
  return result;
}

uint64_t sub_22D892728()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459260 = result;
  return result;
}

uint64_t sub_22D89275C()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_27DA0EB40 = result;
  return result;
}

uint64_t sub_22D892790()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459288 = result;
  return result;
}

uint64_t sub_22D8927C4()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459290 = result;
  return result;
}

uint64_t sub_22D892804()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22D8B1A2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D892B40();
  v2 = objc_opt_self();
  v3 = sub_22D8B1ACC();

  v28[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v28];

  v5 = v28[0];
  if (!v4)
  {
    v12 = v5;
    v13 = sub_22D8B069C();

    swift_willThrow();
    if (qword_281458500 != -1)
    {
      sub_22D892BA4();
    }

    v14 = sub_22D8B178C();
    sub_22D84C6FC(v14, qword_281459270);
    v15 = v13;
    v16 = sub_22D8B176C();
    v17 = sub_22D8B1C4C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_22D84A000, v16, v17, "allAneArchitectureTypesJson could not serialize JSON array with error: %@", v18, 0xCu);
      sub_22D862C98(v19);
      MEMORY[0x2318D50E0](v19, -1, -1);
      MEMORY[0x2318D50E0](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = sub_22D8B07BC();
  v8 = v7;

  sub_22D8B1A1C();
  v9 = sub_22D8B1A0C();
  if (!v10)
  {
    if (qword_281458500 != -1)
    {
      sub_22D892BA4();
    }

    v22 = sub_22D8B178C();
    sub_22D84C6FC(v22, qword_281459270);
    v23 = sub_22D8B176C();
    v24 = sub_22D8B1C4C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22D84A000, v23, v24, "allAneArchitectureTypesJson could not create string from json data", v25, 2u);
      MEMORY[0x2318D50E0](v25, -1, -1);
    }

    sub_22D877894(v6, v8);
LABEL_14:
    v11 = 23899;
    goto LABEL_15;
  }

  v11 = v9;
  sub_22D877894(v6, v8);
LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

void *sub_22D892B40()
{
  sub_22D894218(&unk_2840E2C98);
  sub_22D894218(&unk_2840E2CC8);
  sub_22D894218(&unk_2840E2CF8);
  return &unk_2840E2B98;
}

uint64_t sub_22D892BA4()
{

  return swift_once();
}

uint64_t sub_22D892BC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_22;
  }

  if (v4)
  {
    v7 = result;
    v19 = MEMORY[0x277D84F90];
    result = sub_22D87B9A8(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v7 || v4 < 0)
    {
      goto LABEL_23;
    }

    v8 = v19;
    v9 = v7 + 4;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if ((v9 - 4) >= *(*a3 + 16))
      {
        goto LABEL_18;
      }

      if ((v9 - 4) >= *(a4 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(a4 + 8 * v9);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(*a3 + 8 * v9);
      if (v10 >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = v11 + 16 * v10;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);

      if (v16 >= v15 >> 1)
      {
        result = sub_22D87B9A8(v15 > 1, v16 + 1, 1);
      }

      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      ++v9;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22D892D48(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_22D88C498(*(a1 + 16), 0);
  sub_22D8AF198();
  v4 = sub_22D8B12BC();
  sub_22D84C3FC(v4);
  v6 = *(v5 + 80);
  sub_22D84D24C();
  v8 = sub_22D8AE6F8(&v10, v1 + v7, v3, a1);
  sub_22D879544();
  if (v8 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

void *sub_22D892E04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22D88C428(*(a1 + 16), 0);
  v4 = sub_22D8AE98C(&v6, v3 + 4, v2, a1);
  sub_22D879544();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22D892E94()
{
  sub_22D851698();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22D8AF220();
  v9 = sub_22D8580D8(v7, v8);
  sub_22D84C3FC(v9);
  v11 = *(v10 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v12);
  sub_22D8AF88C();
  v13 = sub_22D8AF574();
  sub_22D8AECE4(v13, v14, &qword_27DA0D628, "l\x1B");
  v15 = sub_22D8B1B9C();
  v16 = sub_22D8AF22C();
  v18 = sub_22D84D0C0(v16, v17, v15);

  if (v18 == 1)
  {
    sub_22D84D014(v0, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    sub_22D84C5C4(v15);
    (*(v19 + 8))(v0, v15);
  }

  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22D84D014(v4, &qword_27DA0D628, "l\x1B");
    sub_22D8AFDF0();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22D8B1B3C();
  sub_22D8AF1A4();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22D8B1A5C();

  sub_22D8AFDF0();
  swift_task_create();
  sub_22D8AF054();

  sub_22D84D014(v4, &qword_27DA0D628, "l\x1B");

LABEL_9:
  sub_22D84D1C0();
}

void sub_22D8930E4()
{
  sub_22D851698();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22D8AF790();
  v11 = sub_22D8580D8(v9, v10);
  sub_22D84C3FC(v11);
  v13 = *(v12 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20]();
  sub_22D8AF88C();
  sub_22D8AECE4(v6, v0, &qword_27DA0D628, "l\x1B");
  v14 = sub_22D8B1B9C();
  v15 = sub_22D8AF22C();
  v17 = sub_22D84D0C0(v15, v16, v14);

  if (v17 == 1)
  {
    sub_22D84D014(v0, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    sub_22D84C5C4(v14);
    (*(v18 + 8))(v0, v14);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v20)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22D84D014(v6, &qword_27DA0D628, "l\x1B");
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    *(v22 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22D8B1B3C();
  sub_22D8AF1A4();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22D8AFA18();
  sub_22D8B1A5C();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v2;

  swift_task_create();
  sub_22D84E0E8();

  sub_22D84D014(v6, &qword_27DA0D628, "l\x1B");

LABEL_9:
  sub_22D84D1C0();
}

BOOL sub_22D893390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22D8B201C();
  sub_22D8B1A6C();
  v7 = sub_22D8B205C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_22D8B1F8C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_22D8934A0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    sub_22D84C5D0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_22D89357C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {

      return v7;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    sub_22D84E298(v6, &v18);
    v8 = v20;
    sub_22D84E124(&v18, v19);
    v9 = *(v8 + 8);
    v10 = sub_22D8B0A5C();
    if (*(*a2 + 16))
    {
      sub_22D852D10(v10, v11);
      v13 = v12;

      if (v13)
      {
        result = sub_22D84D8A0(&v18);
        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_22D851550(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22D87BC48(0, *(v7 + 16) + 1, 1);
      v7 = v21;
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_22D87BC48(v15 > 1, v16 + 1, 1);
      v7 = v21;
    }

    *(v7 + 16) = v16 + 1;
    result = sub_22D851550(v17, v7 + 40 * v16 + 32);
LABEL_13:
    v6 += 40;
    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8936FC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_22D851F6C(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_22D8937A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22D8937C8, 0, 0);
}

uint64_t sub_22D8937C8()
{
  sub_22D84D77C();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  sub_22D8B0FDC();
  *v5 = v0;
  v5[1] = sub_22D8938C0;
  v6 = *(v0 + 16);
  sub_22D8AEFD4();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_22D8938C0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_22D84C3F0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    sub_22D84D800();

    return v13();
  }
}

uint64_t sub_22D8939DC()
{
  sub_22D84D198();
  v1 = *(v0 + 48);

  sub_22D84D800();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_22D893A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v5 = sub_22D8B18DC();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D8B18FC();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_22D8AEBC8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D854268;
  aBlock[3] = &unk_2840E46E0;
  v21 = _Block_copy(aBlock);

  sub_22D8B18EC();
  v28 = MEMORY[0x277D84F90];
  sub_22D8AEC30(&qword_281458940, MEMORY[0x277D85198]);
  sub_22D8580D8(&qword_27DA0DCC0, &unk_22D8B4E28);
  sub_22D87C430(&qword_281458920, &qword_27DA0DCC0, &unk_22D8B4E28);
  sub_22D8B1DAC();
  MEMORY[0x2318D4570](0, v12, v8, v21);
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v9 + 8))(v12, v25);
}

uint64_t sub_22D893DE0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_22D8B0FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = a1(v5);
  MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v9 - v6, v9 - v6, v2);
  sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  sub_22D8B1B5C();
  return (*(v3 + 8))(v9 - v6, v2);
}

uint64_t sub_22D893F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v2 != v3)
    {
      v4 = *(a1 + 32 + 8 * v3++);
      if (!*(v4 + 16))
      {
        return a1;
      }
    }

    sub_22D893FCC(0, v2);
  }

  return a1;
}

uint64_t sub_22D893FCC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_22D8B1B0C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_22D8B4780)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22D894070()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = v0[1];
    swift_bridgeObjectRetain_n();
    sub_22D892BC4(0, v2, v0, v1);
    v4 = 0;
    for (i = v2 - 1; ; i = v6)
    {
      v6 = i - 1;
      if (i < 1)
      {
        if ((i != 0) | v4 & 1)
        {

          v15 = v0[1];

          v0[1] = 0;
          return;
        }

        v6 = 0;
        v4 = 1;
      }

      v7 = v0[1];
      if (!v7)
      {
        break;
      }

      if (i >= *(v7 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v8 = *(v7 + 8 * i + 32);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_22;
      }

      if (i >= *(*v0 + 16))
      {
        goto LABEL_23;
      }

      if (v10 < *(*(*v0 + 8 * i + 32) + 16))
      {

        v7 = v0[1];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_16:
          if (i >= *(v7 + 16))
          {
            __break(1u);
          }

          else
          {
            v13 = *(v7 + 32 + 8 * i);
            v9 = __OFADD__(v13, 1);
            v14 = v13 + 1;
            if (!v9)
            {
              *(v7 + 32 + 8 * i) = v14;
              v0[1] = v7;
              return;
            }
          }

          __break(1u);
          break;
        }

LABEL_25:
        sub_22D8AE6E4(v7);
        v7 = v16;
        goto LABEL_16;
      }

      v11 = v0[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D8AE6E4(v7);
        v7 = v12;
      }

      if (i >= *(v7 + 16))
      {
        goto LABEL_24;
      }

      *(v7 + 8 * i + 32) = 0;
      v0[1] = v7;
    }

    __break(1u);
  }
}

uint64_t sub_22D894218(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_22D8ADF74(result, 1, sub_22D851D5C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22D8942EC()
{
  v0 = sub_22D8B073C();
  v1 = sub_22D84C3FC(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22D84CFA4();
  sub_22D8B09DC();
  sub_22D8B12CC();
  result = sub_22D8B091C();
  qword_2814594E8 = result;
  return result;
}

uint64_t sub_22D894368()
{
  sub_22D8B118C();
  result = sub_22D8B117C();
  qword_2814594A8 = result;
  return result;
}

uint64_t sub_22D89439C()
{
  result = sub_22D8B08FC();
  qword_2814594A0 = result;
  return result;
}

void sub_22D8943BC()
{
  sub_22D8580D8(&qword_27DA0DCC8, &qword_22D8B4E40);
  v0 = sub_22D8B0EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D8B3740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D29B38], v0);
  v6(v5 + v2, *MEMORY[0x277D29B30], v0);
  sub_22D84D258();
  qword_2814594B0 = v7;
}

uint64_t sub_22D8944D4(uint64_t a1)
{
  sub_22D8B0CAC();
  v3 = *(MEMORY[0x277D29AD0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D89457C;

  return MEMORY[0x282188168](a1);
}

uint64_t sub_22D89457C()
{
  sub_22D84D198();
  v3 = v2;
  sub_22D84C734();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22D84CED0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22D89466C(void *a1, uint64_t a2)
{
  v3 = &unk_22D8B3000;
  if (!a2)
  {
    v29 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v30 = swift_allocError();
    v32 = v31;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_22D8B1E2C();
    v33 = a1[4];
    sub_22D84E124(a1, a1[3]);
    v34 = sub_22D8B0E5C();
    v36 = v35;

    v92 = v34;
    v93 = v36;
    v37 = 0x800000022D8B91B0;
    v38 = 0xD000000000000010;
LABEL_11:
    MEMORY[0x2318D4340](v38, v37);
    v44 = v93;
    *v32 = v92;
    v32[1] = v44;
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D29A50], v29);
    swift_willThrow();
    goto LABEL_12;
  }

  v5 = a1[4];
  sub_22D84E124(a1, a1[3]);
  v6 = sub_22D8B0C6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B0E4C();
  v11 = sub_22D8B0C2C();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = sub_22D872F94(v11, v13, a2);

  if (!v14)
  {
    v29 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v30 = swift_allocError();
    v32 = v39;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_22D8B1E2C();
    v40 = a1[4];
    sub_22D84E124(a1, a1[3]);
    v41 = sub_22D8B0E5C();
    v43 = v42;

    v92 = v41;
    v93 = v43;
    v38 = 0xD000000000000015;
    v37 = 0x800000022D8B91D0;
    goto LABEL_11;
  }

  v15 = a1[4];
  sub_22D84E124(a1, a1[3]);
  v16 = v14;
  sub_22D8B0E5C();
  v17 = sub_22D8B19CC();

  v18 = [v16 assetNamed_];

  if (v18)
  {
    v19 = v18;
    if (UAFAsset.isPresent()())
    {

      if (qword_2814589E0 != -1)
      {
        swift_once();
      }

      v20 = sub_22D8B178C();
      sub_22D84C6FC(v20, qword_281459298);
      sub_22D84E298(a1, &v92);
      v21 = sub_22D8B176C();
      v22 = sub_22D8B1C6C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v91 = v24;
        *v23 = 136315138;
        sub_22D84E124(&v92, v94);
        v25 = sub_22D8B0E5C();
        v27 = v26;
        sub_22D84D8A0(&v92);
        v28 = sub_22D84C63C(v25, v27, &v91);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_22D84A000, v21, v22, "availableUseCases: resource %s is ready", v23, 0xCu);
        sub_22D84D8A0(v24);
        MEMORY[0x2318D50E0](v24, -1, -1);
        MEMORY[0x2318D50E0](v23, -1, -1);
      }

      else
      {

        sub_22D84D8A0(&v92);
      }

      return 1;
    }

    if (qword_281458500 != -1)
    {
      swift_once();
    }

    v67 = sub_22D8B178C();
    sub_22D84C6FC(v67, qword_281459270);
    sub_22D84E298(a1, &v92);
    v68 = v19;
    v69 = sub_22D8B176C();
    v70 = sub_22D8B1C4C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = v90;
      *v71 = 136315394;
      sub_22D84E124(&v92, v94);
      v72 = sub_22D8B0E5C();
      v74 = v73;
      sub_22D84D8A0(&v92);
      v75 = sub_22D84C63C(v72, v74, &v91);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v76 = [v68 metadata];
      sub_22D8B191C();

      v3 = &unk_22D8B3000;
      v77 = sub_22D8B192C();
      v79 = v78;

      v80 = sub_22D84C63C(v77, v79, &v91);

      *(v71 + 14) = v80;
      _os_log_impl(&dword_22D84A000, v69, v70, "Asset %s does not have a location. Metadata: %s", v71, 0x16u);
      v81 = v90;
      swift_arrayDestroy();
      MEMORY[0x2318D50E0](v81, -1, -1);
      MEMORY[0x2318D50E0](v71, -1, -1);
    }

    else
    {

      sub_22D84D8A0(&v92);
    }

    v82 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v30 = swift_allocError();
    v84 = v83;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_22D8B1E2C();
    v85 = a1[4];
    sub_22D84E124(a1, a1[3]);
    v86 = sub_22D8B0E5C();
    v88 = v87;

    v92 = v86;
    v93 = v88;
    MEMORY[0x2318D4340](0x6F6C206F6E202D20, 0xEE006E6F69746163);
    v89 = v93;
    *v84 = v92;
    v84[1] = v89;
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D29A50], v82);
    swift_willThrow();
  }

  else
  {
    v59 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v30 = swift_allocError();
    v61 = v60;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_22D8B1E2C();
    v62 = a1[4];
    sub_22D84E124(a1, a1[3]);
    v63 = sub_22D8B0E5C();
    v65 = v64;

    v92 = v63;
    v93 = v65;
    MEMORY[0x2318D4340](0xD000000000000011, 0x800000022D8B91F0);
    v66 = v93;
    *v61 = v92;
    v61[1] = v66;
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D29A50], v59);
    swift_willThrow();
  }

LABEL_12:
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v45 = sub_22D8B178C();
  sub_22D84C6FC(v45, qword_281459298);
  sub_22D84E298(a1, &v92);
  v46 = v30;
  v47 = sub_22D8B176C();
  v48 = sub_22D8B1C6C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v91 = v51;
    *v49 = v3[230];
    sub_22D84E124(&v92, v94);
    v52 = sub_22D8B0E5C();
    v54 = v53;
    sub_22D84D8A0(&v92);
    v55 = sub_22D84C63C(v52, v54, &v91);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2112;
    v56 = v30;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v57;
    *v50 = v57;
    _os_log_impl(&dword_22D84A000, v47, v48, "availableUseCases: resource %s is NOT ready: %@", v49, 0x16u);
    sub_22D84D014(v50, &qword_27DA0D4D0, &qword_22D8B3400);
    MEMORY[0x2318D50E0](v50, -1, -1);
    sub_22D84D8A0(v51);
    MEMORY[0x2318D50E0](v51, -1, -1);
    MEMORY[0x2318D50E0](v49, -1, -1);
  }

  else
  {

    sub_22D84D8A0(&v92);
  }

  return 0;
}

uint64_t sub_22D89515C()
{
  v0 = sub_22D8B1C9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D8B1CEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8[0] = sub_22D85AFB0(0, &qword_281458890, 0x277D85CA8);
  v8[1] = MEMORY[0x277D84F90];
  sub_22D8AEC30(&qword_281458898, MEMORY[0x277D852C0]);
  sub_22D8580D8(&qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D87C430(&qword_281458908, &qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D8B1DAC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_22D8B1CFC();
  qword_281459488 = result;
  return result;
}

uint64_t sub_22D8953A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D8953C8, 0, 0);
}

uint64_t sub_22D8953C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v18 = v16[3];
  v19 = sub_22D8B178C();
  v16[7] = sub_22D84DD10(v19, qword_281459298);

  v20 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8AF43C();

  if (sub_22D868510())
  {
    v22 = v16[2];
    v21 = v16[3];
    sub_22D84DD3C();
    a12 = sub_22D8AF080();
    *v17 = 136315138;
    v23 = sub_22D84CFB4();
    *(v17 + 4) = sub_22D84C63C(v23, v24, v25);
    sub_22D84E1F0();
    sub_22D8552DC(v26, v27, v28, v29);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v31 = v16[2];
  v30 = v16[3];
  v32 = sub_22D8B0EBC();
  v16[8] = v32;
  sub_22D84D7DC(v32);
  v34 = v33;
  v16[9] = v33;
  v36 = *(v35 + 64);
  v16[10] = sub_22D8AF5EC();
  v37 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84C3FC(v37);
  v39 = *(v38 + 64);
  v40 = sub_22D84C584();

  sub_22D8AFA0C();
  sub_22D8B0E9C();
  v41 = sub_22D8AF7C4();
  sub_22D8AFBB4(v41, v42, v32);
  if (v43)
  {
    v45 = v16[2];
    v44 = v16[3];
    sub_22D84D014(v40, &qword_27DA0D808, &qword_22D8B3DE0);

    v46 = sub_22D8B0A1C();
    sub_22D84D0F4(&qword_2814587A0);
    v47 = sub_22D8AFC60();
    *v48 = v45;
    v48[1] = v44;
    v49 = *MEMORY[0x277D29A80];
    sub_22D84C5C4(v46);
    (*(v50 + 104))();
    swift_willThrow();

    sub_22D8AF79C();
    v51 = v47;
    v52 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D84C2AC();

    if (sub_22D8AFBCC())
    {
      v54 = v16[2];
      v53 = v16[3];
      sub_22D8AF4E8();
      sub_22D8AF4CC();
      a12 = sub_22D8AF080();
      *v47 = 136315394;
      v55 = sub_22D85522C();
      v58 = sub_22D84C63C(v55, v56, v57);
      sub_22D8AF1F4(v58);
      v59 = _swift_stdlib_bridgeErrorToNSError();
      sub_22D8AFE5C(v59);
      sub_22D855CCC();
      _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
      sub_22D84D014(v31, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D8728AC();
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    sub_22D8B00E4();
    v65 = sub_22D84CF98();
    (v47)(v65);

    goto LABEL_20;
  }

  v66 = *(v34 + 32);
  sub_22D8AF020();
  v67();

  v68 = sub_22D8B0E7C();
  v69 = swift_task_alloc();
  v70 = sub_22D855CDC(v69);
  v74 = sub_22D8AFFC8(v70, v71, v72, v73);

  if (v74)
  {
    if (qword_2814589E8 != -1)
    {
      sub_22D84DE80();
    }

    sub_22D84DD10(v19, qword_2814592B0);
    v75 = swift_task_alloc();
    sub_22D8AF87C(v34);
    v76();
    v77 = sub_22D8B176C();
    v78 = sub_22D8B1C6C();
    if (os_log_type_enabled(v77, v78))
    {
      a10 = sub_22D84DD3C();
      a11 = sub_22D84CE7C();
      a12 = a11;
      *a10 = 136315138;
      a9 = sub_22D8B0EAC();
      v79 = sub_22D8AEF28();
      v80 = v75(v79);
      v83 = sub_22D8AFF88(v80, v81, v82);

      *(a10 + 4) = v83;
      sub_22D8AFF68(&dword_22D84A000, v84, v85, "AssetManager not subscribing to deprecated requestResourcesKey: %s as SubscriptionEvaluation FF is enabled", a10);
      sub_22D8AEF74();
      sub_22D85167C();
    }

    else
    {

      v91 = sub_22D8AEF28();
      v68(v91);
      v34 = v68;
    }

    v93 = v16[4];
    v92 = v16[5];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v94 = sub_22D8B1D4C();
    v93(v94, 0);

    v95 = sub_22D84C538();
    (v34)(v95);

LABEL_20:
    sub_22D84D800();
    sub_22D84E168();

    return v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v86 = v16[6];
  swift_task_alloc();
  sub_22D84DDC0();
  v16[11] = v87;
  *v87 = v88;
  sub_22D8AFDDC(v87);
  sub_22D84E168();

  return sub_22D86E034();
}

uint64_t sub_22D895928()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_22D84CED0();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D895A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v15 = sub_22D8AFDC8();
  v16(v15);

  v17 = v13[12];
  sub_22D8AF79C();
  v18 = v17;
  v19 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D84C2AC();

  if (sub_22D8AFBCC())
  {
    v21 = v13[2];
    v20 = v13[3];
    sub_22D8AF4E8();
    sub_22D8AF4CC();
    sub_22D8AF080();
    sub_22D8AFE94();
    *v12 = 136315394;
    v22 = sub_22D85522C();
    v25 = sub_22D84C63C(v22, v23, v24);
    sub_22D8AF1F4(v25);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AFE5C(v26);
    sub_22D855CCC();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    sub_22D84D014(v14, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D8728AC();
    sub_22D8AEF40();
    sub_22D84DDE4();
  }

  sub_22D8B00E4();
  v32 = sub_22D84CF98();
  v12(v32);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_22D895B60()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  sub_22D84DF3C(v1);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8953A0(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_22D895C44()
{
  sub_22D8B0028();
  sub_22D8AF718();
  v5 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v5);
  v7 = *(v6 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AF67C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF3F4();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v4;
  v14[5] = v3;
  v14[6] = v2;
  v14[7] = v1;
  v14[8] = v0;

  v15 = v0;
  sub_22D862778();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D895D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D895D34, 0, 0);
}

uint64_t sub_22D895D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v18 = v16[3];
  v19 = sub_22D8B178C();
  v16[7] = sub_22D84DD10(v19, qword_281459298);

  v20 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8AF43C();

  if (sub_22D868510())
  {
    v22 = v16[2];
    v21 = v16[3];
    sub_22D84DD3C();
    a12 = sub_22D8AF080();
    *v17 = 136315138;
    v23 = sub_22D84CFB4();
    *(v17 + 4) = sub_22D84C63C(v23, v24, v25);
    sub_22D84E1F0();
    sub_22D8552DC(v26, v27, v28, v29);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v31 = v16[2];
  v30 = v16[3];
  v32 = sub_22D8B0EBC();
  v16[8] = v32;
  sub_22D84D7DC(v32);
  v34 = v33;
  v16[9] = v33;
  v36 = *(v35 + 64);
  v16[10] = sub_22D8AF5EC();
  v37 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84C3FC(v37);
  v39 = *(v38 + 64);
  v40 = sub_22D84C584();

  sub_22D8AFA0C();
  sub_22D8B0E9C();
  v41 = sub_22D8AF7C4();
  sub_22D8AFBB4(v41, v42, v32);
  if (v43)
  {
    v45 = v16[2];
    v44 = v16[3];
    sub_22D84D014(v40, &qword_27DA0D808, &qword_22D8B3DE0);

    v46 = sub_22D8B0A1C();
    sub_22D84D0F4(&qword_2814587A0);
    v47 = sub_22D8AFC60();
    *v48 = v45;
    v48[1] = v44;
    v49 = *MEMORY[0x277D29A80];
    sub_22D84C5C4(v46);
    (*(v50 + 104))();
    swift_willThrow();

    sub_22D8AF79C();
    v51 = v47;
    v52 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D84C2AC();

    if (sub_22D8AFBCC())
    {
      v54 = v16[2];
      v53 = v16[3];
      sub_22D8AF4E8();
      sub_22D8AF4CC();
      a12 = sub_22D8AF080();
      *v47 = 136315394;
      v55 = sub_22D85522C();
      v58 = sub_22D84C63C(v55, v56, v57);
      sub_22D8AF1F4(v58);
      v59 = _swift_stdlib_bridgeErrorToNSError();
      sub_22D8AFE5C(v59);
      sub_22D855CCC();
      _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
      sub_22D84D014(v31, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D8728AC();
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    sub_22D8B00E4();
    v65 = sub_22D84CF98();
    (v47)(v65);

    goto LABEL_20;
  }

  v66 = *(v34 + 32);
  sub_22D8AF020();
  v67();

  v68 = sub_22D8B0E7C();
  v69 = swift_task_alloc();
  v70 = sub_22D855CDC(v69);
  v74 = sub_22D8AFFC8(v70, v71, v72, v73);

  if (v74)
  {
    if (qword_2814589E8 != -1)
    {
      sub_22D84DE80();
    }

    sub_22D84DD10(v19, qword_2814592B0);
    v75 = swift_task_alloc();
    sub_22D8AF87C(v34);
    v76();
    v77 = sub_22D8B176C();
    v78 = sub_22D8B1C6C();
    if (os_log_type_enabled(v77, v78))
    {
      a10 = sub_22D84DD3C();
      a11 = sub_22D84CE7C();
      a12 = a11;
      *a10 = 136315138;
      a9 = sub_22D8B0EAC();
      v79 = sub_22D8AEF28();
      v80 = v75(v79);
      v83 = sub_22D8AFF88(v80, v81, v82);

      *(a10 + 4) = v83;
      sub_22D8AFF68(&dword_22D84A000, v84, v85, "AssetManager not unsubscribing to deprecated requestResourcesKey: %s as SubscriptionEvaluation FF is enabled", a10);
      sub_22D8AEF74();
      sub_22D85167C();
    }

    else
    {

      v93 = sub_22D8AEF28();
      v68(v93);
      v34 = v68;
    }

    v95 = v16[4];
    v94 = v16[5];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v96 = sub_22D8B1D4C();
    v95(v96, 0);

    v97 = sub_22D84C538();
    (v34)(v97);

LABEL_20:
    sub_22D84D800();
    sub_22D84E168();

    return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v86 = v16[6];
  swift_task_alloc();
  sub_22D84DDC0();
  v16[11] = v87;
  *v87 = v88;
  sub_22D8AFDDC(v87);
  sub_22D84E168();

  return sub_22D86EB88(v89, v90);
}

uint64_t sub_22D896294()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_22D84CED0();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D89638C()
{
  sub_22D872924();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v6 = sub_22D8B1D4C();
  v5(v6, 0);

  v7 = *(v2 + 8);
  v8 = sub_22D84EB60();
  v9(v8);

  sub_22D84D800();

  return v10();
}

uint64_t sub_22D896454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v15 = sub_22D8AFDC8();
  v16(v15);

  v17 = v13[12];
  sub_22D8AF79C();
  v18 = v17;
  v19 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D84C2AC();

  if (sub_22D8AFBCC())
  {
    v21 = v13[2];
    v20 = v13[3];
    sub_22D8AF4E8();
    sub_22D8AF4CC();
    sub_22D8AF080();
    sub_22D8AFE94();
    *v12 = 136315394;
    v22 = sub_22D85522C();
    v25 = sub_22D84C63C(v22, v23, v24);
    sub_22D8AF1F4(v25);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AFE5C(v26);
    sub_22D855CCC();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    sub_22D84D014(v14, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D8728AC();
    sub_22D8AEF40();
    sub_22D84DDE4();
  }

  sub_22D8B00E4();
  v32 = sub_22D84CF98();
  v12(v32);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_22D896594()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = sub_22D8AF374();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22D8965DC()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  sub_22D84DF3C(v1);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D895D0C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8966C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a7;
  v8[64] = a8;
  v8[61] = a5;
  v8[62] = a6;
  v8[60] = a4;
  v9 = *(*(sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0) - 8) + 64) + 15;
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D896770, 0, 0);
}

uint64_t sub_22D896770()
{
  v128 = v1;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v3 = *(v1 + 488);
  v4 = sub_22D8B178C();
  *(v1 + 536) = sub_22D84C6FC(v4, qword_281459298);

  v5 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8B003C();
  if (sub_22D84DFC0())
  {
    v7 = *(v1 + 480);
    v6 = *(v1 + 488);
    sub_22D84DD3C();
    v126 = sub_22D8AF080();
    *v2 = 136315138;
    v8 = sub_22D8AF1E8();
    *(v2 + 4) = sub_22D84C63C(v8, v9, v10);
    sub_22D8516B0();
    sub_22D8552DC(v11, v12, v13, v14);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v15 = *(v1 + 488);
  v16 = *(v1 + 480);
  v17 = *(*(v1 + 496) + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B099C();
  if (*(v1 + 144))
  {
    v18 = (v1 + 280);
    sub_22D851550((v1 + 120), v1 + 80);
    sub_22D84E298(v1 + 80, v1 + 160);
    v19 = sub_22D8B176C();
    v20 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v20))
    {
      v21 = sub_22D84DD3C();
      v22 = sub_22D84CE7C();
      v126 = v22;
      *v21 = 136315138;
      sub_22D84E298(v1 + 160, v1 + 440);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      v23 = sub_22D8B1A3C();
      v25 = v24;
      sub_22D84D8A0((v1 + 160));
      v26 = sub_22D84C63C(v23, v25, &v126);

      *(v21 + 4) = v26;
      sub_22D8AF804(&dword_22D84A000, v19, v20, "Attempting explicit request found resource: %s");
      sub_22D84D8A0(v22);
      sub_22D8728AC();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0((v1 + 160));
    }

    sub_22D84E298(v1 + 80, v1 + 240);
    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (swift_dynamicCast())
    {
      sub_22D851550((v1 + 280), v1 + 200);
      v18 = sub_22D8B125C();
      v29 = *(v1 + 112);
      sub_22D84E124((v1 + 80), *(v1 + 104));
      sub_22D8AF054();
      v30 = sub_22D8B0A4C();
      v32 = sub_22D893390(v30, v31, v18);

      if (v32)
      {
        v33 = sub_22D8B176C();
        v34 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v34))
        {
          v35 = sub_22D85225C();
          sub_22D84C544(v35);
          sub_22D84C460();
          _os_log_impl(v36, v37, v38, v39, v40, 2u);
          sub_22D84DDE4();
        }

        v41 = *(v1 + 528);

        v42 = sub_22D8B083C();
        sub_22D84E35C();
        sub_22D84C4F8(v43, v44, v45, v42);
        sub_22D84E298(v1 + 80, v1 + 360);
        sub_22D8580D8(&qword_27DA0DCD0, &qword_22D8B4E58);
        if (swift_dynamicCast())
        {
          sub_22D851550((v1 + 400), v1 + 320);
          v46 = sub_22D8580D8(&unk_27DA0DCE0, &qword_22D8B4E68);
          sub_22D84C3FC(v46);
          v48 = *(v47 + 64);
          v49 = sub_22D84C584();
          v50 = *(v1 + 352);
          sub_22D84E124((v1 + 320), *(v1 + 344));
          sub_22D84C868();
          v51 = sub_22D8B0FAC();
          sub_22D84D7DC(v51);
          v53 = v52;
          v55 = *(v54 + 64);
          sub_22D84C584();
          sub_22D8B115C();
          sub_22D8B0F9C();
          v56 = *(v53 + 8);
          v57 = sub_22D8AFA00();
          v58(v57);
          v59 = sub_22D8B11AC();
          v60 = sub_22D8AF7C4();
          sub_22D8AFBB4(v60, v61, v59);
          if (v62)
          {

            sub_22D84D014(v49, &unk_27DA0DCE0, &qword_22D8B4E68);
          }

          else
          {
            sub_22D8B119C();
            v78 = v77;
            sub_22D84C5C4(v59);
            v80 = *(v79 + 8);
            v81 = sub_22D8AFA54();
            v82(v81);

            if ((v78 & 1) == 0)
            {
              v83 = *(v1 + 528);
              v84 = *(v1 + 520);
              sub_22D8B080C();
              v85 = sub_22D8538E0();
              sub_22D84D014(v85, v86, &unk_22D8B3DB0);
              sub_22D84C4F8(v84, 0, 1, v42);
              sub_22D8AF020();
              sub_22D8AED30(v87, v88, v89, &unk_22D8B3DB0);
            }
          }

          sub_22D84D8A0((v1 + 320));
        }

        else
        {
          *(v1 + 432) = 0;
          *(v1 + 400) = 0u;
          *(v1 + 416) = 0u;
          sub_22D84D014(v1 + 400, &qword_27DA0DCD8, &qword_22D8B4E60);
        }

        v125 = *(v1 + 528);
        v91 = *(v1 + 488);
        v90 = *(v1 + 496);
        v92 = *(v1 + 480);
        sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22D8B3470;
        sub_22D84F5A0();
        *(v94 + 32) = 0xD000000000000025;
        *(v94 + 40) = v95;
        v126 = 0;
        v127 = 0xE000000000000000;
        sub_22D8B1E2C();

        sub_22D84F5A0();
        v126 = 0xD00000000000001ALL;
        v127 = v96;
        v97 = sub_22D84CFB4();
        MEMORY[0x2318D4340](v97);
        v98 = v127;
        *(inited + 48) = v126;
        *(inited + 56) = v98;
        v123 = sub_22D8B193C();
        v124 = (v90 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface);
        v99 = *(v1 + 232);
        sub_22D84E124((v1 + 200), *(v1 + 224));
        sub_22D84C868();
        v100 = sub_22D8B0C6C();
        sub_22D84D7DC(v100);
        v102 = v101;
        v104 = *(v103 + 64);
        v105 = sub_22D84C584();
        *(v1 + 544) = v105;
        sub_22D8B0E4C();
        sub_22D8B0C3C();
        (*(v102 + 8))(v105, v100);
        v106 = MEMORY[0x277D84F90];
        sub_22D8AFA54();
        v107 = sub_22D8B193C();
        v108 = sub_22D8B0F3C();
        *(v1 + 552) = v108;
        v109 = *(v108 - 8);
        v110 = v109;
        *(v1 + 560) = v109;
        v111 = *(v109 + 64);
        v112 = sub_22D84C584();
        *(v1 + 568) = v112;
        v113 = sub_22D8AFA00();
        sub_22D86D340(v113, v114, v106, v107, v123, v125, v115);

        v116 = sub_22D84E124(v124, v124[3]);
        sub_22D8B0DAC();
        *(v1 + 576) = v117;
        sub_22D8580D8(&qword_27DA0D820, &unk_22D8B3E00);
        v118 = *(v109 + 72);
        v119 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v120 = swift_allocObject();
        *(v1 + 584) = v120;
        *(v120 + 16) = xmmword_22D8B3470;
        (*(v110 + 16))(v120 + v119, v112, v108);
        v121 = *v116;
        v122 = swift_task_alloc();
        *(v1 + 592) = v122;
        *v122 = v1;
        sub_22D84DD88(v122);

        return sub_22D865664();
      }

      sub_22D84D8A0((v1 + 200));
    }

    else
    {
      *(v1 + 312) = 0;
      *v18 = 0u;
      *(v1 + 296) = 0u;
      sub_22D84D014(v1 + 280, &qword_27DA0D698, &qword_22D8B36C0);
    }

    v63 = sub_22D8B176C();
    v64 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v64))
    {
      v65 = sub_22D85225C();
      sub_22D84C544(v65);
      sub_22D84C460();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      sub_22D84DDE4();
    }

    v72 = *(v1 + 504);
    v71 = *(v1 + 512);

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v72();

    sub_22D84D8A0((v1 + 80));
  }

  else
  {
    v28 = *(v1 + 504);
    v27 = *(v1 + 512);
    sub_22D84D014(v1 + 120, &qword_27DA0DC68, &qword_22D8B4C08);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v28();
  }

  v73 = *(v1 + 528);
  v74 = *(v1 + 520);

  sub_22D84D800();

  return v75();
}

uint64_t sub_22D897134()
{
  sub_22D84D77C();
  v2 = v0;
  sub_22D84C734();
  sub_22D84C3C8();
  *v4 = v3;
  v6 = v5[74];
  v7 = v5[73];
  v8 = v5[72];
  v9 = *v1;
  sub_22D84CED0();
  *v10 = v9;
  *(v11 + 600) = v2;

  swift_setDeallocating();
  sub_22D870E80();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22D897274()
{
  sub_22D84F8A0();
  v1 = v0[68];
  v2 = v0[66];
  v4 = v0[63];
  v3 = v0[64];
  (*(v0[70] + 8))(v0[71], v0[69]);

  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v5 = sub_22D8B1D4C();
  v4(v5, 0);

  sub_22D84D014(v2, &qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84D8A0(v0 + 25);
  sub_22D84D8A0(v0 + 10);
  v6 = v0[66];
  v7 = v0[65];

  sub_22D84D800();

  return v8();
}

uint64_t sub_22D897384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v13 = v12[75];
  v14 = v12[68];
  v15 = v12[67];
  v16 = v12[66];
  v17 = v12[61];
  (*(v12[70] + 8))(v12[71], v12[69]);

  sub_22D84D014(v16, &qword_27DA0D608, &unk_22D8B3DB0);

  sub_22D84D8A0(v12 + 25);
  sub_22D84D8A0(v12 + 10);

  v18 = v13;
  v19 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D84DFC0())
  {
    v20 = v12[75];
    v22 = v12[60];
    v21 = v12[61];
    v23 = sub_22D8AF4E8();
    v24 = sub_22D84E1FC();
    a10 = sub_22D84CE7C();
    *v23 = 136315394;
    v25 = sub_22D85522C();
    v28 = sub_22D84C63C(v25, v26, v27);
    sub_22D8AF81C(v28);
    v29 = v20;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v30;
    *v24 = v30;
    sub_22D8516B0();
    sub_22D8B00B4(v31, v32, v33, v34);
    sub_22D84D014(v24, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D8A0(a10);
    sub_22D84D6DC();
    sub_22D8AF038();
  }

  v35 = v12[75];
  v37 = v12[63];
  v36 = v12[64];
  v38 = v35;
  v39 = sub_22D84CF98();
  v37(v39);

  v40 = v12[66];
  v41 = v12[65];

  sub_22D84D800();
  sub_22D8AF2C0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_22D897560()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  sub_22D84DF3C(v1);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8966C0(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_22D897644()
{
  sub_22D8B0028();
  sub_22D8AF718();
  v5 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v5);
  v7 = *(v6 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AF67C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF3F4();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v4;
  v14[5] = v3;
  v14[6] = v0;
  v14[7] = v2;
  v14[8] = v1;

  v15 = v0;

  sub_22D862778();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D89770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[52] = a4;
  return MEMORY[0x2822009F8](sub_22D897734, 0, 0);
}

uint64_t sub_22D897734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v15 = *(v13 + 424);
  v16 = sub_22D8B178C();
  *(v13 + 456) = sub_22D84C6FC(v16, qword_281459298);

  v17 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8B003C();
  if (sub_22D84DFC0())
  {
    v19 = *(v13 + 416);
    v18 = *(v13 + 424);
    sub_22D84DD3C();
    a10 = sub_22D8AF080();
    *v14 = 136315138;
    v20 = sub_22D8AF1E8();
    *(v14 + 4) = sub_22D84C63C(v20, v21, v22);
    sub_22D8516B0();
    sub_22D8552DC(v23, v24, v25, v26);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v27 = *(v13 + 424);
  v28 = *(v13 + 416);
  v29 = *(*(v13 + 432) + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B099C();
  if (*(v13 + 80))
  {
    sub_22D851550((v13 + 56), v13 + 16);
    sub_22D84E298(v13 + 16, v13 + 96);
    v30 = sub_22D8B176C();
    v31 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v31))
    {
      v32 = sub_22D84DD3C();
      sub_22D84CE7C();
      sub_22D8AFE94();
      *v32 = 136315138;
      sub_22D84E298(v13 + 96, v13 + 376);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0((v13 + 96));
      v33 = sub_22D8AF220();
      sub_22D84C63C(v33, v34, v35);
      sub_22D84D0E8();

      *(v32 + 4) = v14;
      sub_22D855CCC();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    else
    {

      sub_22D84D8A0((v13 + 96));
    }

    sub_22D84E298(v13 + 16, v13 + 176);
    v43 = sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (swift_dynamicCast())
    {
      sub_22D851550((v13 + 216), v13 + 136);
      v44 = sub_22D8B125C();
      v45 = *(v13 + 48);
      sub_22D84E124((v13 + 16), *(v13 + 40));
      sub_22D8AF054();
      v46 = sub_22D8B0A4C();
      v48 = sub_22D893390(v46, v47, v44);

      if (v48)
      {
        v49 = sub_22D8B176C();
        v50 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v50))
        {
          v51 = sub_22D85225C();
          sub_22D8AFA30(v51);
          sub_22D84E1F0();
          sub_22D8AFC78(v52, v53, v54, v55);
          sub_22D84D6DC();
        }

        sub_22D84E298(v13 + 16, v13 + 296);
        sub_22D8580D8(&qword_27DA0DCD0, &qword_22D8B4E58);
        if (swift_dynamicCast())
        {
          sub_22D851550((v13 + 336), v13 + 256);
          v56 = sub_22D8580D8(&unk_27DA0DCE0, &qword_22D8B4E68);
          sub_22D84C3FC(v56);
          v58 = *(v57 + 64);
          v59 = sub_22D84C584();
          v60 = *(v13 + 288);
          sub_22D84E124((v13 + 256), *(v13 + 280));
          sub_22D84C868();
          v61 = sub_22D8B0FAC();
          sub_22D84D7DC(v61);
          v63 = v62;
          v65 = *(v64 + 64);
          sub_22D84C584();
          sub_22D8AF454();
          sub_22D8B115C();
          sub_22D8B0F9C();
          (*(v63 + 8))(v43, v61);
          v66 = sub_22D8B11AC();
          sub_22D8AFBB4(v59, 1, v66);
          if (v67)
          {

            sub_22D84D014(v59, &unk_27DA0DCE0, &qword_22D8B4E68);
          }

          else
          {
            sub_22D8B119C();
            sub_22D84C5C4(v66);
            v88 = *(v87 + 8);
            v89 = sub_22D84C538();
            v90(v89);
          }

          sub_22D84D8A0((v13 + 256));
        }

        else
        {
          *(v13 + 368) = 0;
          *(v13 + 336) = 0u;
          *(v13 + 352) = 0u;
          sub_22D84D014(v13 + 336, &qword_27DA0DCD8, &qword_22D8B4E60);
        }

        v91 = *(v13 + 432);
        v92 = *(v13 + 168);
        sub_22D851278((v13 + 136), *(v13 + 160));
        sub_22D8B0A5C();
        *(v13 + 464) = v93;
        swift_task_alloc();
        sub_22D84DDC0();
        *(v13 + 472) = v94;
        *v94 = v95;
        v94[1] = sub_22D897DB0;
        sub_22D8AF430();
        sub_22D8AF2C0();

        return sub_22D86E614(v96, v97, v98, v99);
      }

      sub_22D84D8A0((v13 + 136));
    }

    else
    {
      *(v13 + 248) = 0;
      *(v13 + 232) = 0u;
      *(v13 + 216) = 0u;
      sub_22D84D014(v13 + 216, &qword_27DA0D698, &qword_22D8B36C0);
    }

    v68 = sub_22D8B176C();
    v69 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v69))
    {
      v70 = sub_22D85225C();
      sub_22D84C544(v70);
      sub_22D84C460();
      _os_log_impl(v71, v72, v73, v74, v75, 2u);
      sub_22D84DDE4();
    }

    v77 = *(v13 + 440);
    v76 = *(v13 + 448);

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v77();

    sub_22D84D8A0((v13 + 16));
  }

  else
  {
    v42 = *(v13 + 440);
    v41 = *(v13 + 448);
    sub_22D84D014(v13 + 56, &qword_27DA0DC68, &qword_22D8B4C08);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v42();
  }

  sub_22D84D800();
  sub_22D8AF2C0();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12);
}

uint64_t sub_22D897DB0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 480) = v0;

  if (!v0)
  {
    v9 = *(v3 + 464);
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22D897EB0()
{
  sub_22D84D77C();
  v3 = v1[55];
  v2 = v1[56];
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  sub_22D8B1D4C();
  sub_22D8AEECC();
  v3();

  sub_22D84D8A0(v1 + 17);
  sub_22D84D8A0(v1 + 2);
  sub_22D84D800();

  return v4();
}

uint64_t sub_22D897F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v13 = v12[60];
  v15 = v12[57];
  v14 = v12[58];
  v16 = v12[53];

  sub_22D84D8A0(v12 + 17);
  sub_22D84D8A0(v12 + 2);

  v17 = v13;
  v18 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D8B003C();

  if (sub_22D84DFC0())
  {
    v19 = v12[60];
    v21 = v12[52];
    v20 = v12[53];
    v22 = sub_22D8AF4E8();
    v23 = sub_22D84E1FC();
    a10 = sub_22D84CE7C();
    *v22 = 136315394;
    v24 = sub_22D85522C();
    v27 = sub_22D84C63C(v24, v25, v26);
    sub_22D8AF81C(v27);
    v28 = v19;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v29;
    *v23 = v29;
    sub_22D8516B0();
    sub_22D8B00B4(v30, v31, v32, v33);
    sub_22D84D014(v23, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D8A0(a10);
    sub_22D84D6DC();
    sub_22D8AF038();
  }

  v34 = v12[60];
  v36 = v12[55];
  v35 = v12[56];
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v37 = sub_22D8B1D4C();
  v38 = v34;
  v39 = sub_22D8AF214();
  v36(v39);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_22D8980EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = sub_22D8AF374();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22D898134()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  sub_22D84DF3C(v1);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D89770C(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_22D8981F8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_2814589E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = sub_22D8B178C();
    sub_22D84C6FC(v4, qword_281459298);
    v5 = sub_22D8B176C();
    v6 = sub_22D8B1C6C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22D84A000, v5, v6, "requesting resources", v7, 2u);
      MEMORY[0x2318D50E0](v7, -1, -1);
    }

    v8 = *(a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
    v9 = sub_22D8B09BC();
    v10 = *(v9 + 16);
    if (!v10)
    {
      break;
    }

    v15 = a2;
    v18 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    a2 = sub_22D8B0CCC();
    v11 = 0;
    a1 = 0;
    v12 = v9 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_22D84E298(v12, v17);
      sub_22D84E298(v17, v16);
      sub_22D8B0CBC();
      ++v11;
      sub_22D84D014(v16, &qword_27DA0DC68, &qword_22D8B4C08);
      sub_22D84D8A0(v17);
      sub_22D8B1E5C();
      v13 = *(v18 + 16);
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v12 += 40;
      if (v10 == v11)
      {

        a2 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_22D8B0CCC();
  v14 = sub_22D8B1ACC();
  (a2)[2](a2, v14, 0);

  _Block_release(a2);
}

void CatalogServiceServer.Server.resourceContainers(with:)(void (*a1)(uint64_t))
{
  v5 = v2;
  if (qword_2814589E0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_22D8B178C();
    sub_22D84DD10(v7, qword_281459298);
    v8 = sub_22D8B176C();
    v9 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v9))
    {
      v10 = sub_22D85225C();
      sub_22D8AFA30(v10);
      sub_22D84E1F0();
      sub_22D8AFC78(v11, v12, v13, v14);
      sub_22D84D6DC();
    }

    v15 = *&v5[OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex];
    v16 = sub_22D8B09BC();
    v17 = *(v16 + 16);
    if (!v17)
    {
      break;
    }

    v20 = a1;
    v23 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    sub_22D8B0CCC();
    sub_22D8AFE68();
    while (v4 < *(v16 + 16))
    {
      sub_22D84E298(v3, v22);
      sub_22D84E298(v22, v21);
      v18 = sub_22D8B0CBC();
      if (v5)
      {

        sub_22D84D014(v21, &qword_27DA0DC68, &qword_22D8B4C08);
        sub_22D84D8A0(v22);

        sub_22D8B068C();
        v19 = sub_22D8AF004();
        v20(v19);

        return;
      }

      v1 = v18;
      ++v4;
      sub_22D84D014(v21, &qword_27DA0DC68, &qword_22D8B4C08);
      sub_22D84D8A0(v22);
      sub_22D8B1E5C();
      a1 = *(v23 + 16);
      sub_22D8B1E8C();
      sub_22D8AF778();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v3 += 40;
      if (v17 == v4)
      {

        (v20)(v23, 0);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_22D86845C();
    swift_once();
  }

  (a1)(MEMORY[0x277D84F90], 0);
LABEL_11:
}

void sub_22D898708(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_2814589E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = sub_22D8B178C();
    sub_22D84C6FC(v4, qword_281459298);
    v5 = sub_22D8B176C();
    v6 = sub_22D8B1C6C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22D84A000, v5, v6, "requesting resource bundles", v7, 2u);
      MEMORY[0x2318D50E0](v7, -1, -1);
    }

    v8 = *(a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
    v9 = sub_22D8B093C();
    v10 = *(v9 + 16);
    if (!v10)
    {
      break;
    }

    v15 = a2;
    v18 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    a2 = sub_22D8B106C();
    v11 = 0;
    a1 = 0;
    v12 = v9 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_22D84E298(v12, v17);
      sub_22D84E298(v17, v16);
      sub_22D8B105C();
      ++v11;
      sub_22D84D014(v16, &qword_27DA0DC70, &unk_22D8B4C10);
      sub_22D84D8A0(v17);
      sub_22D8B1E5C();
      v13 = *(v18 + 16);
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v12 += 40;
      if (v10 == v11)
      {

        a2 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_22D8B106C();
  v14 = sub_22D8B1ACC();
  (a2)[2](a2, v14, 0);

  _Block_release(a2);
}

void CatalogServiceServer.Server.resourceBundleContainers(with:)(void (*a1)(uint64_t))
{
  v5 = v2;
  if (qword_2814589E0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_22D8B178C();
    sub_22D84DD10(v7, qword_281459298);
    v8 = sub_22D8B176C();
    v9 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v9))
    {
      v10 = sub_22D85225C();
      sub_22D8AFA30(v10);
      sub_22D84E1F0();
      sub_22D8AFC78(v11, v12, v13, v14);
      sub_22D84D6DC();
    }

    v15 = *&v5[OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex];
    v16 = sub_22D8B093C();
    v17 = *(v16 + 16);
    if (!v17)
    {
      break;
    }

    v20 = a1;
    v23 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    sub_22D8B106C();
    sub_22D8AFE68();
    while (v4 < *(v16 + 16))
    {
      sub_22D84E298(v3, v22);
      sub_22D84E298(v22, v21);
      v18 = sub_22D8B105C();
      if (v5)
      {

        sub_22D84D014(v21, &qword_27DA0DC70, &unk_22D8B4C10);
        sub_22D84D8A0(v22);

        sub_22D8B068C();
        v19 = sub_22D8AF004();
        v20(v19);

        return;
      }

      v1 = v18;
      ++v4;
      sub_22D84D014(v21, &qword_27DA0DC70, &unk_22D8B4C10);
      sub_22D84D8A0(v22);
      sub_22D8B1E5C();
      a1 = *(v23 + 16);
      sub_22D8B1E8C();
      sub_22D8AF778();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v3 += 40;
      if (v17 == v4)
      {

        (v20)(v23, 0);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_22D86845C();
    swift_once();
  }

  (a1)(MEMORY[0x277D84F90], 0);
LABEL_11:
}

void sub_22D898C18(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_22D898CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D8AFF0C();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v36 = sub_22D8B178C();
  sub_22D84C6FC(v36, qword_281459298);
  v37 = v35;
  v38 = sub_22D8B176C();
  v39 = sub_22D8B1C6C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_22D84DD3C();
    a11 = sub_22D84CE7C();
    v41 = v33;
    v42 = v27;
    v43 = v29;
    v44 = a11;
    *v40 = 136315138;
    v45 = v31();
    v47 = sub_22D84C63C(v45, v46, &a11);

    *(v40 + 4) = v47;
    v48 = v43;
    v27 = v42;
    v33 = v41;
    _os_log_impl(&dword_22D84A000, v38, v39, v48, v40, 0xCu);
    sub_22D84D8A0(v44);
    sub_22D84DDE4();
    sub_22D84C3D8();
  }

  v27(v37, v33 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  v49 = *(v33 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v50 = sub_22D8B1D3C();
  v51 = sub_22D8AF070();
  v52(v51, v50, 0);

  sub_22D8AF620();

  _Block_release(v53);
}

void sub_22D898EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D8AFF0C();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v24;
  v35 = v34;
  v37 = v36;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v38 = sub_22D8B178C();
  sub_22D84DD10(v38, qword_281459298);
  v39 = v37;
  v40 = sub_22D8B176C();
  v41 = sub_22D8B1C6C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = sub_22D84DD3C();
    v43 = v28;
    v44 = v35;
    v45 = sub_22D84CE7C();
    a11 = v45;
    *v42 = 136315138;
    v46 = v32();
    v48 = sub_22D84C63C(v46, v47, &a11);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_22D84A000, v40, v41, v30, v42, 0xCu);
    sub_22D84D8A0(v45);
    v35 = v44;
    v28 = v43;
    v33 = v24;
    sub_22D84C3D8();
    sub_22D8AF038();
  }

  v28(v39, v33 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  v49 = *(v33 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v52 = sub_22D8B1D3C();
  v35(v52, 0);
  sub_22D8AF620();
}

void sub_22D8991AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22D8AFEF0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v34 = sub_22D8B178C();
  sub_22D84DD10(v34, qword_281459298);

  v35 = sub_22D8B176C();
  v36 = sub_22D8B1C6C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_22D84DD3C();
    v38 = sub_22D84CE7C();
    a9 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22D84C63C(v33, v31, &a9);
    _os_log_impl(&dword_22D84A000, v35, v36, v27, v37, 0xCu);
    sub_22D84D8A0(v38);
    sub_22D84C3D8();
    sub_22D8AF344();
  }

  v25(v33, v31, v29 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  v39 = *(v29 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v40 = sub_22D8B1D3C();
  v41 = sub_22D8AF070();
  v42(v41, v40, 0);

  sub_22D8AF604();

  _Block_release(v43);
}

void sub_22D899390()
{
  sub_22D8AFF0C();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v8 = sub_22D8B178C();
  sub_22D84DD10(v8, qword_281459298);

  v9 = sub_22D8B176C();
  v10 = sub_22D8B1C6C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v7;
    v12 = sub_22D84DD3C();
    v21 = sub_22D84CE7C();
    *v12 = 136315138;
    v13 = sub_22D8AFA18();
    *(v12 + 4) = sub_22D84C63C(v13, v14, v15);
    _os_log_impl(&dword_22D84A000, v9, v10, v4, v12, 0xCu);
    sub_22D84D8A0(v21);
    sub_22D8AF038();
    v7 = v11;
    sub_22D84C3D8();
  }

  v16 = sub_22D8AFA18();
  v2(v16);
  v17 = *(v5 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v20 = sub_22D8B1D3C();
  v7(v20, 0);
  sub_22D8AF620();
}

void sub_22D899634(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v63 = a4;
  v6 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = v56 - v8;
  v62 = sub_22D8B073C();
  v58 = *(v62 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = v56 - v12;
  v13 = a1 == 0xD000000000000028 && 0x800000022D8B8F10 == a2;
  if (v13 || (sub_22D8B1F8C() & 1) != 0)
  {
    a2 = 0x800000022D8B8FC0;
    a1 = 0xD000000000000027;
  }

  else
  {
    v51 = a1 == 0xD000000000000023 && 0x800000022D8B8F40 == a2;
    if (v51 || (sub_22D8B1F8C() & 1) != 0)
    {
      a2 = 0x800000022D8B8F90;
      a1 = 0xD000000000000022;
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }
  }

  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22D8B178C();
  v15 = sub_22D84C6FC(v14, qword_281459298);

  v56[2] = v15;
  v16 = sub_22D8B176C();
  v17 = sub_22D8B1C6C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_22D84C63C(a1, a2, v64);
    _os_log_impl(&dword_22D84A000, v16, v17, "requesting resource information for: %s", v18, 0xCu);
    sub_22D84D8A0(v19);
    MEMORY[0x2318D50E0](v19, -1, -1);
    MEMORY[0x2318D50E0](v18, -1, -1);
  }

  v59 = sub_22D8B193C();
  v20 = sub_22D8B0C1C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D8580D8(&qword_27DA0DC78, &unk_22D8B4C20);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v56 - v27;
  sub_22D8B0D9C();
  v56[1] = v56;

  if (sub_22D84D0C0(v28, 1, v20) == 1)
  {
    sub_22D84D014(v28, &qword_27DA0DC78, &unk_22D8B4C20);
  }

  else
  {
    (*(v21 + 32))(v24, v28, v20);
    v52 = v57;
    sub_22D8B0BFC();
    sub_22D8B06BC();
    (*(v58 + 8))(v52, v62);
    v53 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v53;
    sub_22D8AD400();
    v54 = v64[0];
    sub_22D8B0C0C();
    swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v54;
    sub_22D8AD400();
    v55 = v64[0];
    sub_22D8B0BEC();
    swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v55;
    sub_22D8AD400();
    (*(v21 + 8))(v24, v20);
  }

  v29 = sub_22D8B08DC();
  v30 = sub_22D893390(a1, a2, v29);

  if (v30)
  {

    sub_22D84C4F8(v60, 1, 1, v62);
    v31 = objc_allocWithZone(sub_22D8B0EDC());
    v32 = sub_22D8B0ECC();
    (v63)[2](v63, v32, 0);
  }

  else
  {
    v33 = v57;
    sub_22D8B12DC();
    v34 = v61;
    sub_22D8B06DC();

    v35 = v58;
    v36 = *(v58 + 8);
    v37 = v33;
    v38 = v62;
    v36(v37, v62);
    v39 = v60;
    (*(v35 + 16))(v60, v34, v38);
    sub_22D84C4F8(v39, 0, 1, v38);
    v40 = objc_allocWithZone(sub_22D8B0EDC());
    v41 = sub_22D8B0ECC();
    v42 = sub_22D8B176C();
    v43 = sub_22D8B1C6C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64[0] = v45;
      *v44 = 136315138;
      v46 = [v41 debugDescription];
      v47 = sub_22D8B19FC();
      v49 = v48;

      v50 = sub_22D84C63C(v47, v49, v64);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_22D84A000, v42, v43, "Resource Info is: %s", v44, 0xCu);
      sub_22D84D8A0(v45);
      MEMORY[0x2318D50E0](v45, -1, -1);
      MEMORY[0x2318D50E0](v44, -1, -1);
    }

    (v63)[2](v63, v41, 0);
    v36(v61, v62);
  }

  _Block_release(v63);
}

void CatalogServiceServer.Server.resourceInformation(identifier:with:)()
{
  sub_22D851698();
  v87 = v2;
  v88 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  sub_22D84C3FC(v7);
  v9 = *(v8 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v10);
  v85 = v81 - v11;
  v89 = sub_22D8B073C();
  v12 = sub_22D84D7DC(v89);
  v83 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v86 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = v81 - v18;
  v19 = v6 == 0xD000000000000028 && 0x800000022D8B8F10 == v4;
  if (!v19)
  {
    sub_22D85522C();
    if ((sub_22D8B1F8C() & 1) == 0 && (v6 != 0xD000000000000023 || 0x800000022D8B8F40 != v4))
    {
      sub_22D85522C();
      if ((sub_22D8B1F8C() & 1) == 0)
      {
        swift_bridgeObjectRetain_n();
      }
    }
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v20 = sub_22D8B178C();
  sub_22D84DD10(v20, qword_281459298);

  v81[1] = v0;
  v21 = sub_22D8B176C();
  v22 = sub_22D8B1C6C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_22D84DD3C();
    v24 = sub_22D84CE7C();
    v90 = v24;
    *v23 = 136315138;
    v25 = sub_22D85522C();
    *(v23 + 4) = sub_22D84C63C(v25, v26, v27);
    _os_log_impl(&dword_22D84A000, v21, v22, "requesting resource information for: %s", v23, 0xCu);
    sub_22D84D8A0(v24);
    sub_22D8AF2DC();
    sub_22D84DDE4();
  }

  v84 = sub_22D8B193C();
  v28 = sub_22D8B0C1C();
  v29 = sub_22D84D7DC(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22D84CFA4();
  sub_22D8AFCE0();
  v34 = sub_22D8580D8(&qword_27DA0DC78, &unk_22D8B4C20);
  sub_22D84C3FC(v34);
  v36 = *(v35 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v37);
  sub_22D8AF88C();
  sub_22D85522C();
  sub_22D8B0D9C();
  v81[0] = v81;

  v38 = sub_22D8AF22C();
  sub_22D8AFBB4(v38, v39, v28);
  if (v19)
  {
    sub_22D84D014(v22, &qword_27DA0DC78, &unk_22D8B4C20);
  }

  else
  {
    v72 = *(v31 + 32);
    sub_22D8AF0BC();
    v73();
    v74 = v82;
    sub_22D8B0BFC();
    sub_22D8B06BC();
    (*(v83 + 8))(v74, v89);
    v75 = v84;
    swift_isUniquelyReferenced_nonNull_native();
    v90 = v75;
    sub_22D8AD400();
    v76 = v90;
    sub_22D8B0C0C();
    swift_isUniquelyReferenced_nonNull_native();
    v90 = v76;
    sub_22D8AD400();
    v77 = v90;
    sub_22D8B0BEC();
    swift_isUniquelyReferenced_nonNull_native();
    v90 = v77;
    v22 = &v90;
    sub_22D8AD400();
    v78 = *(v31 + 8);
    v79 = sub_22D8AF214();
    v80(v79);
  }

  v40 = sub_22D8B08DC();
  v41 = sub_22D85522C();
  sub_22D893390(v41, v42, v40);
  sub_22D84C59C();
  if (v22)
  {

    sub_22D84E118();
    sub_22D84E35C();
    sub_22D84C4F8(v43, v44, v45, v89);
    v46 = objc_allocWithZone(sub_22D8B0EDC());
    sub_22D8AEFC8();
    v47 = sub_22D8B0ECC();
    (v88)(v47, 0);
  }

  else
  {
    v48 = v82;
    sub_22D8B12DC();
    v49 = v86;
    sub_22D85522C();
    sub_22D8B06DC();

    v50 = v83;
    v51 = *(v83 + 8);
    v52 = v48;
    v53 = v89;
    v51(v52, v89);
    v54 = v85;
    (*(v50 + 16))(v85, v49, v53);
    sub_22D84C4F8(v54, 0, 1, v53);
    v55 = objc_allocWithZone(sub_22D8B0EDC());
    v56 = sub_22D8B0ECC();
    v57 = sub_22D8B176C();
    v58 = sub_22D8B1C6C();

    if (sub_22D84DFC0())
    {
      sub_22D84DD3C();
      v59 = sub_22D854F30();
      v90 = v59;
      *v54 = 136315138;
      v60 = [v56 debugDescription];
      sub_22D8B19FC();
      sub_22D8AFE7C();

      v61 = sub_22D8AF220();
      v64 = sub_22D84C63C(v61, v62, v63);

      *(v54 + 4) = v64;
      sub_22D8516B0();
      sub_22D8B015C(v65, v66, v67, v68);
      sub_22D84D8A0(v59);
      sub_22D84D6DC();
      sub_22D8AF2DC();
    }

    v69 = v56;
    v70 = sub_22D8AF384();
    v88(v70);

    v51(v86, v89);
  }

  sub_22D84D1C0();
}

void sub_22D89A8DC(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_22D8ACDF8(0xD00000000000001DLL, 0x800000022D8B8FF0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_22D8B19CC();
    v7 = sub_22D8B19CC();
    [v5 setObject:v6 forKey:v7];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v8 = sub_22D8B1D4C();
    (a2)[2](a2, v8, 0);
  }

  else
  {
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v8 = sub_22D8B1D4C();
    (a2)[2](a2, v8, 0);
  }

  _Block_release(a2);
}

void CatalogServiceServer.Server.enableTestResources(with:)(void (*a1)(id, void))
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_22D8ACDF8(0xD00000000000001DLL, 0x800000022D8B8FF0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D8B19CC();
    v6 = sub_22D8B19CC();
    [v4 setObject:v5 forKey:v6];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v7 = sub_22D8B1D4C();
    a1(v7, 0);
  }

  else
  {
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v7 = sub_22D8B1D4C();
    a1(v7, 0);
  }
}

uint64_t sub_22D89ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_22D89AC74;

  return static ModelCatalogDaemon.essentialResourcesReady(sideLoadUrl:)(a4 + v8);
}

uint64_t sub_22D89AC74()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_22D84CED0();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22D89AD80()
{
  sub_22D84D77C();
  v2 = *(v1 + 48);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D8B1D3C();
  sub_22D8AEECC();
  v4();

  sub_22D84D800();

  return v5();
}

uint64_t sub_22D89AE18()
{
  sub_22D84D77C();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_22D8B068C();
  v3(0, v4);

  sub_22D84D800();

  return v5();
}

uint64_t sub_22D89AED4()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22D8B178C();
  sub_22D84DD10(v2, qword_281459298);
  v3 = v1;
  v4 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    v5 = v0[5];
    sub_22D84DD3C();
    v6 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v7);
    sub_22D8AF09C(&dword_22D84A000, v8, v9, "acquireCoherenceToken failed, returning no tokens due to: %@");
    sub_22D84D014(v6, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  v13 = sub_22D8B068C();
  v12(0, v13);

  sub_22D84D800();
  sub_22D8AFC08();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_22D89B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x2822009F8](sub_22D89B074, 0, 0);
}

uint64_t sub_22D89B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v17 = sub_22D8B178C();
  *(v16 + 80) = sub_22D84C6FC(v17, qword_281459298);
  v18 = sub_22D8B176C();
  v19 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v19))
  {
    v20 = sub_22D85225C();
    sub_22D84C544(v20);
    sub_22D84C460();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    sub_22D84DDE4();
  }

  v26 = *(v16 + 56);

  sub_22D8B09DC();
  v27 = sub_22D8B094C();
  v28 = *(v27 + 16);
  if (v28)
  {
    v95 = MEMORY[0x277D84F90];
    sub_22D87BBA4(0, v28, 0);
    v29 = v95;
    a10 = v27;
    v30 = v27 + 32;
    a12 = sub_22D8B0C6C();
    sub_22D84D7DC(a12);
    v32 = v31;
    a11 = *(v33 + 64) + 15;
    do
    {
      v34 = swift_task_alloc();
      sub_22D84E298(v30, v16 + 16);
      v35 = *(v16 + 48);
      sub_22D84E124((v16 + 16), *(v16 + 40));
      sub_22D8B0E4C();
      sub_22D84D8A0((v16 + 16));
      a13 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        v40 = sub_22D84C4D0(v36);
        sub_22D87BBA4(v40, v37 + 1, 1);
      }

      *(v29 + 16) = v37 + 1;
      v38 = *(v32 + 80);
      sub_22D84D24C();
      (*(v32 + 32))(v29 + v39 + *(v32 + 72) * v37, v34, a12);

      v30 += 40;
      --v28;
    }

    while (v28);
  }

  sub_22D8871C4();
  v42 = v41;
  *(v16 + 88) = v41;
  v43 = *(v41 + 32);
  *(v16 + 200) = v43;
  v44 = 1 << v43;
  v45 = -1;
  if (1 << v43 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 56);
  v47 = sub_22D8B0C6C();
  *(v16 + 96) = v47;
  sub_22D84D7DC(v47);
  v49 = v48;
  *(v16 + 104) = v48;
  *(v16 + 112) = *(v50 + 64);
  v51 = sub_22D84C584();
  v52 = v51;
  *(v16 + 120) = v51;
  *(v16 + 201) = 0;
  if (v46)
  {
    v53 = 0;
LABEL_17:
    *(v16 + 128) = v46;
    *(v16 + 136) = v53;
    (*(v49 + 16))(v51, *(v42 + 48) + *(v49 + 72) * (__clz(__rbit64(v46)) | (v53 << 6)), v47);
    v55 = sub_22D8B0FDC();
    *(v16 + 144) = v55;
    sub_22D84C5D0(v55);
    *(v16 + 152) = v56;
    *(v16 + 160) = *(v57 + 64);
    *(v16 + 168) = sub_22D84C584();
    if (qword_281459190 != -1)
    {
      sub_22D84DE40();
    }

    v59 = *(v16 + 112);
    v58 = *(v16 + 120);
    v60 = *(v16 + 96);
    v61 = *(v16 + 104);
    swift_task_alloc();
    v62 = *(v61 + 32);
    sub_22D8AF020();
    v62();
    v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v64 = swift_allocObject();
    v65 = sub_22D8AFA6C(v64);
    (v62)(v65);

    swift_task_alloc();
    sub_22D84DDC0();
    *(v16 + 184) = v66;
    *v66 = v67;
    sub_22D8AF178(v66);
    sub_22D855A60();
    sub_22D84E168();

    return v71(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, sub_22D8937A4, a13, a14, a15, a16);
  }

  else
  {
    v54 = 0;
    while (1)
    {
      v53 = v54 + 1;
      if (v54 + 1 >= (v44 + 63) >> 6)
      {
        break;
      }

      v46 = *(v42 + 8 * v54++ + 64);
      if (v46)
      {
        goto LABEL_17;
      }
    }

    v77 = *(v16 + 80);

    v78 = sub_22D8B176C();
    v79 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v79))
    {
      v52 = sub_22D84E1FC();
      *v52 = 67109120;
      v52[1] = 1;
      sub_22D84C460();
      _os_log_impl(v80, v81, v82, v83, v84, 8u);
      sub_22D84DDE4();
    }

    v86 = *(v16 + 64);
    v85 = *(v16 + 72);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D853B64();
    sub_22D8B1D3C();
    sub_22D8AEECC();
    v86();

    sub_22D84D800();
    sub_22D84E168();

    return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_22D89B5D0()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *(v2 + 184);
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = *(v2 + 176);

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22D89B6F0()
{
  sub_22D8516FC();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160) + 15;
  v5 = MEMORY[0x277D29BD8];
  swift_task_alloc();
  (*(v3 + 32))();
  v6 = *(v3 + 88);
  v7 = sub_22D8AF448();
  v9 = v8(v7);
  if (v5)
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    if (v9 == *v5)
    {
      v12 = MEMORY[0x277D29CA0];
      v13 = v11[12];
      v14 = sub_22D8AF0D4();
      v15(v14);
      v11 = *(sub_22D8B124C() - 8);
      v16 = v11[11];
      v17 = sub_22D8AF0D4();
      v19 = v18(v17);
      v20 = *(v0 + 201);
      if (v12)
      {
        v20 |= v19 == *v12;
      }

LABEL_7:
      v22 = *(v0 + 168);
      v23 = v11[1];
      v24 = sub_22D8AF0D4();
      v25(v24);

      v27 = *(v0 + 128);
      v26 = *(v0 + 136);
      *(v0 + 201) = v20 & 1;
      v28 = (v27 - 1) & v27;
      if (v28)
      {
        v29 = *(v0 + 88);
        goto LABEL_13;
      }

      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v30 >= (((1 << *(v0 + 200)) + 63) >> 6))
        {
          v46 = *(v0 + 120);
          v48 = *(v0 + 80);
          v47 = *(v0 + 88);

          v49 = sub_22D8B176C();
          v50 = sub_22D8B1C6C();
          if (sub_22D84CEE0(v50))
          {
            v22 = sub_22D84E1FC();
            *v22 = 67109120;
            v22[1] = (v20 ^ 1) & 1;
            sub_22D84C460();
            _os_log_impl(v51, v52, v53, v54, v55, 8u);
            sub_22D84DDE4();
          }

          v57 = *(v0 + 64);
          v56 = *(v0 + 72);
          sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
          sub_22D8B1D3C();
          sub_22D8AEECC();
          v57();

          sub_22D84D800();
          sub_22D872A24();

          __asm { BRAA            X1, X16 }
        }

        v29 = *(v0 + 88);
        v28 = *(v29 + 8 * v30 + 56);
        ++v26;
        if (v28)
        {
          v26 = v30;
LABEL_13:
          *(v0 + 128) = v28;
          *(v0 + 136) = v26;
          (*(*(v0 + 104) + 16))(*(v0 + 120), *(v29 + 48) + *(*(v0 + 104) + 72) * (__clz(__rbit64(v28)) | (v26 << 6)), *(v0 + 96));
          v31 = sub_22D8B0FDC();
          *(v0 + 144) = v31;
          sub_22D84C5D0(v31);
          *(v0 + 152) = v32;
          *(v0 + 160) = *(v33 + 64);
          *(v0 + 168) = sub_22D84C584();
          if (qword_281459190 == -1)
          {
LABEL_14:
            v35 = *(v0 + 112);
            v34 = *(v0 + 120);
            v36 = *(v0 + 96);
            v37 = *(v0 + 104);
            swift_task_alloc();
            v38 = *(v37 + 32);
            sub_22D8AF020();
            v38();
            v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
            v40 = swift_allocObject();
            v41 = sub_22D8AFA6C(v40);
            (v38)(v41);

            swift_task_alloc();
            sub_22D84DDC0();
            *(v0 + 184) = v42;
            *v42 = v43;
            sub_22D8AF178();
            sub_22D855A60();
            sub_22D872A24();

            __asm { BR              X3 }
          }

LABEL_23:
          sub_22D84DE40();
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  v20 = *(v0 + 201);
  goto LABEL_7;
}

uint64_t sub_22D89BB10()
{
  sub_22D84D198();
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[11];

  sub_22D84D800();
  v5 = v0[24];

  return v4();
}

uint64_t sub_22D89BBB8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = _Block_copy(aBlock);
  sub_22D8AF3DC();
  *(swift_allocObject() + 16) = v8;
  v9 = a1;
  v10 = sub_22D8AF448();
  a6(v10);
}

uint64_t CatalogServiceServer.Server.useCaseResourceAvailability(by:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  v9 = *(v8 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v10);
  sub_22D8AFCE0();
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v11, v12, v13, v14);
  sub_22D8AFDB0();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v3;
  v15[6] = a2;
  v15[7] = a3;

  v16 = v3;

  sub_22D8AEFE4();
  sub_22D892E94();
}

uint64_t sub_22D89BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[91] = a7;
  v7[90] = a6;
  v7[89] = a5;
  v7[88] = a4;
  return MEMORY[0x2822009F8](sub_22D89BD5C, 0, 0);
}

uint64_t sub_22D89BD5C()
{
  v106 = v0;
  v1 = sub_22D886CD4(*(v0 + 704));
  v2 = MEMORY[0x277D84F90];
  v97 = v0;
  if (v1)
  {
    v3 = v1;
    v105 = MEMORY[0x277D84F90];
    result = sub_22D87B9A8(0, v1 & ~(v1 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v0 + 704);
    v2 = v105;
    v100 = v6 + 32;
    v102 = v6 & 0xC000000000000001;
    v104 = v3;
    do
    {
      v7 = v2;
      if (v102)
      {
        v8 = MEMORY[0x2318D4700](v5, *(v0 + 704));
      }

      else
      {
        v8 = *(v100 + 8 * v5);
      }

      v9 = v8;
      v10 = sub_22D8B0D8C();
      sub_22D84D7DC(v10);
      v12 = v11;
      v14 = *(v13 + 64);
      sub_22D84C584();
      sub_22D8B111C();
      v15 = sub_22D8B0D1C();
      v17 = v16;

      v18 = *(v12 + 8);
      v19 = sub_22D85522C();
      v20(v19);

      v2 = v7;
      v105 = v7;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22D87B9A8(v21 > 1, v22 + 1, 1);
        v2 = v105;
      }

      ++v5;
      *(v2 + 16) = v22 + 1;
      v23 = v2 + 16 * v22;
      *(v23 + 32) = v15;
      *(v23 + 40) = v17;
      v0 = v97;
    }

    while (v104 != v5);
  }

  *(v0 + 736) = v2;
  if (qword_2814589E0 != -1)
  {
LABEL_65:
    sub_22D86845C();
    swift_once();
  }

  v24 = sub_22D8B178C();
  *(v0 + 744) = sub_22D84DD10(v24, qword_281459298);

  v25 = sub_22D8B176C();
  v26 = sub_22D8B1C6C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_22D84DD3C();
    v28 = sub_22D84CE7C();
    v105 = v28;
    *v27 = 136315138;
    *(v0 + 696) = v2;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    sub_22D87C430(&qword_281458918, &qword_27DA0D7A0, &unk_22D8B3B50);
    v29 = sub_22D8B199C();
    sub_22D84C63C(v29, v30, &v105);
    sub_22D8AFCA8();
    *(v27 + 4) = &qword_27DA0D7A0;
    sub_22D8B0144(&dword_22D84A000, v25, v26, "useCaseResourceAvailability called with use case identifiers: %s");
    sub_22D84D8A0(v28);
    v0 = v97;
    sub_22D84C3D8();
    sub_22D84F8CC();
  }

  v31 = *(*(v0 + 712) + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  v32 = sub_22D8B09BC();
  v33 = 0;
  v94 = *(v32 + 16);
  v95 = v32;
  v93 = v32 + 32;
  v34 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  while (v33 != v94)
  {
    sub_22D8AD6C8(v33, 1, v95);
    sub_22D84E298(v93 + 40 * v33, v0 + 72);
    v36 = *(v0 + 104);
    sub_22D84E124((v0 + 72), *(v0 + 96));
    sub_22D8AEFC8();
    v37 = sub_22D8B0A7C();
    v38 = *(v37 + 16);
    if (v38)
    {
      v96 = v33;
      v105 = v34;
      sub_22D87B9A8(0, v38, 0);
      v39 = v105;
      v40 = 0;
      v103 = sub_22D8B12BC();
      sub_22D84D7DC(v103);
      v99 = v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v98 = *(v42 + 64) + 15;
      v101 = v41;
      do
      {
        v43 = swift_task_alloc();
        (*(v101 + 16))(v43, v99 + *(v101 + 72) * v40, v103);
        v44 = sub_22D8B0D8C();
        sub_22D84D7DC(v44);
        v46 = v45;
        v48 = *(v47 + 64);
        v49 = sub_22D84C584();
        sub_22D8B127C();
        v50 = v49;
        sub_22D8B0D1C();
        sub_22D8AF568();
        (*(v46 + 8))(v49, v44);
        v51 = *(v101 + 8);
        v52 = sub_22D84C538();
        v53(v52);

        v105 = v39;
        v55 = *(v39 + 16);
        v54 = *(v39 + 24);
        sub_22D8AFD58();
        if (v57)
        {
          v59 = sub_22D84C4D0(v56);
          sub_22D87B9A8(v59, v43, 1);
          v39 = v105;
        }

        ++v40;
        *(v39 + 16) = v43;
        v58 = v39 + 16 * v55;
        *(v58 + 32) = v50;
        *(v58 + 40) = v35;
      }

      while (v38 != v40);

      v0 = v97;
      v34 = MEMORY[0x277D84F90];
      v33 = v96;
    }

    else
    {

      v39 = v34;
    }

    ++v33;
    sub_22D851EAC(v39);
    sub_22D8AE06C();
    v61 = *(v60 + 16);

    v62 = (v0 + 72);
    if (v61)
    {
      sub_22D851550(v62, v0 + 112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v35 + 16);
        v64 = sub_22D8AFE48();
        sub_22D87BC68(v64, v65, v66);
      }

      v68 = *(v35 + 16);
      v67 = *(v35 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22D87BC68(v67 > 1, v68 + 1, 1);
      }

      *(v35 + 16) = v68 + 1;
      sub_22D851550((v0 + 112), v35 + 40 * v68 + 32);
    }

    else
    {
      sub_22D84D8A0(v62);
    }
  }

  v69 = *(v35 + 16);
  if (v69)
  {
    v70 = v35 + 32;
    v71 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22D84E298(v70, v97 + 152);
      sub_22D851550((v97 + 152), v97 + 272);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      v72 = sub_22D8AF220();
      sub_22D8580D8(v72, v73);
      if (swift_dynamicCast())
      {
        if (*(v97 + 256))
        {
          sub_22D851550((v97 + 232), v97 + 192);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = *(v71 + 16);
            sub_22D84C414();
            sub_22D84F408();
            v71 = v76;
          }

          v74 = *(v71 + 16);
          if (v74 >= *(v71 + 24) >> 1)
          {
            sub_22D8AF9B8();
            sub_22D84F408();
            v71 = v77;
          }

          *(v71 + 16) = v74 + 1;
          sub_22D851550((v97 + 192), v71 + 40 * v74 + 32);
          goto LABEL_40;
        }
      }

      else
      {
        *(v97 + 264) = 0;
        *(v97 + 248) = 0u;
        *(v97 + 232) = 0u;
      }

      sub_22D84D014(v97 + 232, &qword_27DA0D698, &qword_22D8B36C0);
LABEL_40:
      v70 += 40;
      if (!--v69)
      {

        v0 = v97;
        goto LABEL_43;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_43:
  v78 = 0;
  v79 = *(v71 + 16);
  v80 = v71 + 32;
  v81 = MEMORY[0x277D84F90];
  v2 = 40;
  while (1)
  {
    *(v0 + 752) = v81;
    if (v79 == v78)
    {
      break;
    }

    if (v78 >= *(v71 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    sub_22D84E298(v80, v0 + 312);
    v82 = *(v0 + 344);
    sub_22D851278((v0 + 312), *(v0 + 336));
    v83 = sub_22D8B0A6C();
    v85 = v84;
    if (v83 == MEMORY[0x2318D3170]() && v85 == v86)
    {
    }

    else
    {
      sub_22D8AFA0C();
      v88 = sub_22D8B1F8C();

      if ((v88 & 1) == 0)
      {
        v0 = v97;
        sub_22D84D8A0((v97 + 312));
        goto LABEL_58;
      }
    }

    v0 = v97;
    sub_22D851550((v97 + 312), v97 + 352);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22D87BC48(0, *(v81 + 16) + 1, 1);
      v81 = v105;
    }

    v91 = *(v81 + 16);
    v90 = *(v81 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_22D87BC48(v90 > 1, v91 + 1, 1);
      v81 = v105;
    }

    *(v81 + 16) = v91 + 1;
    sub_22D851550((v97 + 352), v81 + 40 * v91 + 32);
LABEL_58:
    v80 += 40;
    ++v78;
  }

  *(v0 + 760) = sub_22D8B193C();
  if (qword_281459018 != -1)
  {
    sub_22D84DB74();
  }

  *(v0 + 768) = qword_281459480;
  v92 = swift_task_alloc();
  *(v0 + 776) = v92;
  *v92 = v0;
  sub_22D84DD88(v92);

  return sub_22D869C90();
}

uint64_t sub_22D89C71C()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 776);
  *v4 = *v1;
  v3[98] = v7;
  v3[99] = v0;

  if (v0)
  {
    v8 = v3[94];
    v9 = v3[92];
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22D89C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22D852350();
  v16 = v14[94];
  v17 = *(v16 + 16);
  v14[100] = v17;
  if (v17)
  {
    v18 = 0;
    a10 = v14 + 85;
    v19 = (v14[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_resourceReadinessProvider);
    v14[101] = *v19;
    v14[102] = v19[1];
    v20 = v14[98];
    v21 = v14[95];
    while (1)
    {
      v14[115] = v20;
      v14[114] = v18;
      v14[113] = v21;
      v14[112] = v20;
      sub_22D84E298(v16 + 40 * v18 + 32, (v14 + 49));
      v23 = v14[52];
      v22 = v14[53];
      sub_22D84E4D0(v14 + 49);
      v24 = sub_22D8B0A4C();
      sub_22D84F9BC(v24, v25);
      v14[82] = 0x800000022D8B9210;
      sub_22D8ADEAC();
      sub_22D8ADF00();
      sub_22D84E0B0();
      LOBYTE(v22) = sub_22D8B198C();

      if (v22)
      {
        break;
      }

      v26 = v14[113];
      v27 = v14[102];
      v28 = v14[101];
      v29 = v14[53];
      sub_22D851278(v14 + 49, v14[52]);
      v15 = sub_22D8B0A5C();
      v31 = v30;
      v28(v14 + 49, v20);
      swift_isUniquelyReferenced_nonNull_native();
      v14[85] = v26;
      v32 = sub_22D85522C();
      sub_22D852D10(v32, v33);
      v34 = *(v26 + 16);
      sub_22D84F5B8();
      if (v37)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v38 = v35;
      v39 = v36;
      sub_22D8580D8(&qword_27DA0D620, &qword_22D8B3408);
      if (sub_22D8B1EAC())
      {
        v40 = *a10;
        v41 = sub_22D85522C();
        sub_22D852D10(v41, v42);
        sub_22D8AF248();
        if (!v44)
        {
          sub_22D8728C8();

          return sub_22D8B1FBC();
        }

        v38 = v43;
      }

      v21 = *a10;
      if (v39)
      {
        sub_22D8AFCD4();
        *(v45 + v38) = v46;
      }

      else
      {
        sub_22D8AF544();
        sub_22D84DDB0(v47);
        v48 = (*(v21 + 48) + 16 * v38);
        *v48 = v15;
        v48[1] = v31;
        sub_22D8AFCD4();
        *(v49 + v38) = v50;
        sub_22D8AF538();
        if (v37)
        {
          goto LABEL_27;
        }

        *(v21 + 16) = v51;
      }

      v52 = v14[100];
      v53 = v14[114] + 1;
      sub_22D84D8A0(v14 + 49);
      if (v53 == v52)
      {
        goto LABEL_16;
      }

      v18 = v14[114] + 1;
      v16 = v14[94];
    }

    sub_22D8AEEDC();
    v71 = sub_22D8B0C6C();
    v14[116] = v71;
    sub_22D84D7DC(v71);
    v14[117] = *(v72 + 64);
    v14[118] = sub_22D8AF5EC();
    sub_22D8538E0();
    sub_22D8B0E4C();
    v73 = sub_22D8B0C2C();
    v75 = sub_22D84CFEC(v73, v74);
    v15(v75);
    sub_22D8AEEDC();
    v14[123] = swift_task_alloc();
    sub_22D8538E0();
    sub_22D8B0E4C();
    sub_22D8B0C2C();
    sub_22D8AF7EC();
    v14[124] = v76;
    v77 = sub_22D85236C();
    v15(v77);
    v79 = v14[52];
    v78 = v14[53];
    sub_22D852330(v14 + 49);
    v14[125] = sub_22D8AFB78();
    v80 = swift_task_alloc();
    v14[126] = v80;
    *v80 = v14;
    sub_22D84CF64(v80);
    sub_22D8728C8();

    return sub_22D869A48();
  }

  else
  {
    v20 = v14[98];
    v21 = v14[95];
LABEL_16:
    v14[104] = v20;
    v14[103] = v21;
    v54 = sub_22D8B0FDC();
    v14[105] = v54;
    sub_22D84C5D0(v54);
    v14[106] = v55;
    v14[107] = *(v56 + 64);
    v14[108] = sub_22D84C584();
    if (qword_281459190 != -1)
    {
LABEL_28:
      sub_22D84DE40();
    }

    v57 = v14[89];
    sub_22D8AF3DC();
    v58 = swift_allocObject();
    sub_22D8AF8AC(v58);
    v83 = sub_22D854FB8(&dword_22D8B4E00);
    v59 = v57;
    swift_task_alloc();
    sub_22D84DDC0();
    v14[110] = v60;
    *v60 = v61;
    sub_22D84CEB0(v60);
    sub_22D855A60();
    sub_22D8728C8();

    return v65(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, v83, a12, a13, a14);
  }
}

uint64_t sub_22D89CCE0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 880);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 888) = v0;

  if (!v0)
  {
    v9 = *(v3 + 872);
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22D89CDE0()
{
  sub_22D84D77C();
  v2 = *v1;
  v3 = *v1;
  sub_22D84CED0();
  *v4 = v3;
  v5 = v2[126];
  v6 = *v1;
  sub_22D84F51C();
  *v7 = v6;
  v3[127] = v8;
  v3[128] = v0;

  v9 = v2[125];
  v10 = v2[124];
  if (v0)
  {
    v11 = v3[120];
  }

  else
  {
    v12 = v3[123];
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_22D89D56C()
{
  v289 = v0;
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = sub_22D84C584();
  v6 = *(v3 + 16);
  sub_22D8AF430();
  v6();
  v7 = *(v3 + 88);
  v8 = sub_22D84EB60();
  v10 = v9(v8);
  v278 = v0;
  if (!MEMORY[0x277D29BD8] || v10 != *MEMORY[0x277D29BD8])
  {
    goto LABEL_9;
  }

  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[105];
  v14 = sub_22D84C584();
  (v6)(v14, v5, v13);
  v15 = *(v12 + 96);
  v16 = sub_22D8AF574();
  v17(v16);
  v18 = sub_22D8B124C();
  v19 = *(v18 - 1);
  v20 = *(v19 + 88);
  v21 = sub_22D8AF574();
  v23 = v22(v21);
  if (!MEMORY[0x277D29CA0] || v23 != *MEMORY[0x277D29CA0])
  {
    v42 = *(v19 + 8);
    v43 = sub_22D8AF574();
    v44(v43);

LABEL_9:
    v45 = v0[93];
    v14 = sub_22D8B176C();
    v46 = sub_22D8B1C2C();
    v47 = os_log_type_enabled(v14, v46);
    v48 = v0[108];
    v49 = v0[106];
    v50 = v0[105];
    if (v47)
    {
      v51 = sub_22D85225C();
      *v51 = 0;
      _os_log_impl(&dword_22D84A000, v14, v46, "Model Catalog subscriptions have enough space", v51, 2u);
      sub_22D8728AC();
    }

    v52 = *(v49 + 8);
    v53 = sub_22D8AF448();
    v52(v53);
    v262 = 0;
    v54 = v0[111];
    HIDWORD(v261) = 1;
    goto LABEL_12;
  }

  v24 = v0[111];
  sub_22D8AF0E0((v0[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface), *(v0[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface + 24));
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0DAC();
  *(inited + 40) = v26;
  *(inited + 48) = MEMORY[0x277D84F90];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  sub_22D8B193C();
  v27 = *v18;
  v28 = sub_22D864D34();
  v274 = v24;
  if (v24)
  {
    v29 = *(v0[106] + 8);
    (v29)(v0[108], v0[105]);

    v30 = sub_22D8AF580();
    (v29)(v30);

    v31 = v0[108];
    v32 = v0[93];

    v33 = v274;
    v34 = sub_22D8B176C();
    v5 = sub_22D8B1C4C();

    if (sub_22D868510())
    {
      sub_22D84DD3C();
      v14 = sub_22D8AF4CC();
      *v29 = 138412290;
      v35 = v274;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v36;
      *v14 = v36;
      sub_22D84C460();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_22D84D014(v14, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84D6DC();
      sub_22D84DDE4();
    }

    else
    {
    }

    v54 = 0;
    v262 = 0;
    HIDWORD(v261) = 1;
    goto LABEL_13;
  }

  v242 = v28;
  v243 = v0[93];

  v244 = sub_22D8B176C();
  v245 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v245))
  {
    v246 = sub_22D84DD3C();
    *v246 = 134217984;
    *(v246 + 4) = v242;
    sub_22D8516B0();
    sub_22D8B0144(v247, v248, v249, v250);
    sub_22D84F8CC();
  }

  v262 = v242;
  v251 = v0[108];
  v252 = v0[106];
  v253 = v0[105];

  v52 = *(v252 + 8);
  v254 = sub_22D8AFA54();
  v52(v254);

  v54 = 0;
  HIDWORD(v261) = 0;
LABEL_12:
  v55 = v0[108];
  (v52)(v5, v0[105]);

LABEL_13:
  v56 = v0[100];
  v264 = sub_22D8B10EC();
  v57 = sub_22D8B193C();
  if (v56)
  {
    v59 = 0;
    v268 = (v0 + 83);
    v60 = v0[103];
    v260 = v0[94] + 32;
    *&v58 = 136315138;
    v256 = v58;
    v259 = v60;
    while (1)
    {
      if (v59 >= *(v0[94] + 16))
      {
        goto LABEL_88;
      }

      sub_22D84E298(v260 + 40 * v59, (v0 + 54));
      v62 = v0[57];
      v61 = v0[58];
      sub_22D84E4D0(v0 + 54);
      v63 = sub_22D8B0A5C();
      v14 = v64;
      if (!*(v60 + 16))
      {
        break;
      }

      v65 = v0[103];
      v66 = sub_22D852D10(v63, v64);
      v68 = v67;

      if ((v68 & 1) == 0)
      {
        goto LABEL_39;
      }

      HIDWORD(v263) = *(*(v60 + 56) + v66);
      v14 = v0[57];
      v69 = v0[58];
      sub_22D84E4D0(v0 + 54);
      v70 = sub_22D8B0A7C();
      v5 = *(v70 + 16);
      if (v5)
      {
        v258 = v59;
        v71 = sub_22D8B12BC();
        v72 = sub_22D8AF994(v71);
        v257 = v70;
        v74 = v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        v276 = *(v75 + 72);
        v272 = (v73 + 16);
        v275 = *(v75 + 64) + 15;
        v270 = v72;
        v271 = (v73 + 8);
        while (1)
        {
          v283 = v5;
          v76 = v278[92];
          v14 = swift_task_alloc();
          v77 = *v272;
          v281 = v74;
          sub_22D8AFE88();
          v78();
          v79 = sub_22D8B0D8C();
          sub_22D84D7DC(v79);
          v81 = v80;
          v83 = *(v82 + 64);
          v84 = sub_22D8AF5EC();
          sub_22D8B127C();
          sub_22D8B0D1C();
          sub_22D8AF424();
          v85 = *(v81 + 8);
          v86 = sub_22D8AFE3C();
          v279 = v87;
          (v87)(v86);
          v278[83] = v84;
          v278[84] = v5;
          v88 = swift_task_alloc();
          v89 = sub_22D8AF114(v88, v268);
          LOBYTE(v76) = sub_22D855C1C(v89, v90, v76);

          if (v76)
          {
            break;
          }

          sub_22D853B0C(v91, v92, v93, v94, v95, v96, v97, v98, v256, *(&v256 + 1), v257, v258, v259, v260, v261, v262, v263, v264, v265, v267, v268, v270, v271);
          v116 = sub_22D851E68();
          v117(v116);
LABEL_36:

          v74 = v281 + v276;
          v5 = (v283 - 1);
          if (v283 == 1)
          {

            v0 = v278;
            v59 = v258;
            v60 = v259;
            goto LABEL_43;
          }
        }

        v99 = sub_22D8B128C();
        v100 = swift_task_alloc();
        v266 = v14;
        sub_22D8B127C();
        sub_22D8B0D1C();
        sub_22D84C578();
        v14 = v279;
        v279(v100, v79);
        v101 = *(v57 + 16);
        if (v99)
        {
          if (v101)
          {
            v102 = sub_22D84F800();
            sub_22D852D10(v102, v103);
            v105 = v104;

            if (v105)
            {
              sub_22D853B0C(v106, v107, v108, v109, v110, v111, v112, v113, v256, *(&v256 + 1), v257, v258, v259, v260, v261, v262, v263, v264, v266, v54, v268, v270, v271);
              v14 = v265;
              v114 = sub_22D851E68();
              v115(v114);
              goto LABEL_34;
            }
          }

          else
          {
          }

          swift_task_alloc();
          sub_22D8AFAD8();
          sub_22D8B0D1C();
          v135 = sub_22D8AFDFC();
          v79(v135);
          v136 = objc_allocWithZone(v264);
          sub_22D853B64();
LABEL_33:
          sub_22D8B109C();
          swift_isUniquelyReferenced_nonNull_native();
          v288[0] = v57;
          sub_22D84C55C();
          sub_22D85236C();
          sub_22D8AD600();

          sub_22D853B0C(v139, v140, v141, v142, v143, v144, v145, v146, v256, *(&v256 + 1), v257, v258, v259, v260, v261, v262, v263, v264, v266, v54, v268, v270, v271);
          v147 = sub_22D851E68();
          v148(v147);
LABEL_34:

LABEL_35:
          v54 = v267;
          goto LABEL_36;
        }

        if (v101)
        {
          v118 = sub_22D84F800();
          v120 = sub_22D852D10(v118, v119);
          v122 = v121;

          if (v122)
          {
            v123 = *(*(v57 + 56) + 8 * v120);

            v124 = v123;
            sub_22D8B10AC();
            sub_22D8B10BC();
            sub_22D8B107C();
            sub_22D8B108C();
            sub_22D8B10CC();
            sub_22D8B10DC();

            sub_22D853B0C(v125, v126, v127, v128, v129, v130, v131, v132, v256, *(&v256 + 1), v257, v258, v259, v260, v261, v262, v263, v264, v266, v54, v268, v270, v271);
            v14 = v265;
            v133 = sub_22D851E68();
            v134(v133);
            goto LABEL_35;
          }
        }

        else
        {
        }

        swift_task_alloc();
        sub_22D8AFAD8();
        sub_22D8B0D1C();
        v137 = sub_22D8AFDFC();
        v79(v137);
        v138 = objc_allocWithZone(v264);
        goto LABEL_33;
      }

LABEL_43:
      ++v59;
      v163 = v0[100];
      sub_22D84D8A0(v0 + 54);
      if (v59 == v163)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    v149 = v0[93];
    sub_22D84E298((v0 + 54), (v0 + 59));
    v150 = sub_22D8B176C();
    v151 = sub_22D8B1C4C();
    if (sub_22D84F8E8(v151))
    {
      v14 = sub_22D84DD3C();
      v152 = sub_22D84CE7C();
      sub_22D8AF8E4(v152, v153, v154, v155, v156, v157, v158, v159, v256);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0(v278 + 59);
      v160 = sub_22D8AF220();
      sub_22D84C63C(v160, v161, v162);
      sub_22D84D0E8();
      v60 = v259;
      v0 = v278;

      *(v14 + 4) = v57;
      sub_22D8AF804(&dword_22D84A000, v150, v151, "could not find resource: %s inside resourceToReadinessMapping");
      sub_22D84D8A0(v5);
      sub_22D8AF038();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0(v0 + 59);
    }

    goto LABEL_43;
  }

LABEL_44:
  v164 = v0[94];
  v165 = v0[92];

  v167 = v57 + 64;
  v166 = *(v57 + 64);
  v168 = *(v57 + 32);
  sub_22D84E484();
  v171 = v170 & v169;
  sub_22D8AF3E8();
  v173 = v172 >> 6;
  v287 = v174;

  v175 = 0;
  v280 = v167;
  if (v171)
  {
    while (1)
    {
      v176 = v175;
LABEL_49:
      v177 = v0[93];
      sub_22D8AFD64();
      v179 = v178 | (v176 << 6);
      v180 = (*(v287 + 48) + 16 * v179);
      v181 = *v180;
      v182 = v180[1];
      v183 = *(*(v287 + 56) + 8 * v179);

      v184 = sub_22D8B176C();
      v185 = sub_22D8B1C6C();

      if (sub_22D8AFBCC())
      {
        v186 = sub_22D8AF4E8();
        sub_22D84E1FC();
        v284 = v184;
        v187 = sub_22D854F30();
        v288[0] = v187;
        *v186 = 136315394;
        v188 = sub_22D84C63C(v181, v182, v288);

        *(v186 + 4) = v188;
        *(v186 + 12) = 2112;
        *(v186 + 14) = v183;
        *v0 = v183;
        v189 = v183;
        _os_log_impl(&dword_22D84A000, v284, v185, "useCase: %s has availability: %@", v186, 0x16u);
        sub_22D84D014(v0, &qword_27DA0D4D0, &qword_22D8B3400);
        sub_22D8AF2DC();
        sub_22D84D8A0(v187);
        sub_22D85167C();
        sub_22D84C3D8();
      }

      else
      {
      }

      v175 = v176;
      v0 = v278;
    }
  }

  while (1)
  {
    v176 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v176 >= v173)
    {
      break;
    }

    ++v175;
    if (*(v167 + 8 * v176))
    {
      goto LABEL_49;
    }
  }

  v190 = v287;

  sub_22D8B113C();
  sub_22D8AF1BC(&qword_2814591E8);
  v273 = sub_22D8B193C();
  v191 = -1 << *(v287 + 32);
  v192 = *(v287 + 64);
  sub_22D8AFD30();
  v195 = v193 & v194;
  v197 = (63 - v196) >> 6;

  v198 = 0;
  v277 = v197;
LABEL_54:
  v199 = v198;
  if (!v195)
  {
    goto LABEL_56;
  }

  do
  {
    v198 = v199;
LABEL_59:
    v200 = __clz(__rbit64(v195));
    v195 &= v195 - 1;
    v201 = v200 | (v198 << 6);
    v202 = (*(v190 + 48) + 16 * v201);
    v203 = v202[1];
    v285 = *v202;
    v282 = *(*(v190 + 56) + 8 * v201);
    v204 = sub_22D8B0D8C();
    sub_22D84D7DC(v204);
    v206 = v205;
    v208 = *(v207 + 64);
    v209 = sub_22D8AFB20();
    v210 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
    sub_22D84C3FC(v210);
    v212 = *(v211 + 64);
    sub_22D84C584();
    sub_22D8AEFC8();
    swift_bridgeObjectRetain_n();
    v14 = v282;
    sub_22D8B0D7C();
    v213 = sub_22D8AF22C();
    sub_22D8AFBB4(v213, v214, v204);
    if (!v215)
    {
      v286 = v14;
      v216 = *(v206 + 32);
      sub_22D8AFE88();
      v217();

      swift_task_alloc();
      (*(v206 + 16))();
      v218 = sub_22D8B112C();

      v219 = v273;
      v220 = v209;
      v221 = v206;
      v269 = v220;
      if ((v273 & 0xC000000000000001) != 0)
      {
        if (v273 >= 0)
        {
          v219 = v273 & 0xFFFFFFFFFFFFFF8;
        }

        v222 = v286;
        v223 = v286;
        v224 = sub_22D8B1EDC();
        v190 = v287;
        if (__OFADD__(v224, 1))
        {
          goto LABEL_93;
        }

        v219 = sub_22D8ACE5C(v219, v224 + 1);
      }

      else
      {
        v222 = v286;
        v225 = v286;
        v190 = v287;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v288[0] = v219;
      sub_22D870F3C(v218);
      v226 = *(v219 + 16);
      sub_22D8AF02C();
      if (!__OFADD__(v229, v230))
      {
        v231 = v227;
        v14 = v228;
        sub_22D8580D8(&qword_27DA0DCA0, &qword_22D8B4E08);
        v232 = v288[0];
        if (sub_22D8B1EAC())
        {
          v233 = sub_22D870F3C(v218);
          if ((v14 & 1) != (v234 & 1))
          {
            goto LABEL_89;
          }

          v231 = v233;
        }

        v273 = v288[0];
        if (v14)
        {
          v235 = *(v288[0] + 56);
          v236 = *(v235 + 8 * v231);
          *(v235 + 8 * v231) = v222;

          (*(v221 + 8))(v269, v204);
LABEL_77:
          v197 = v277;

          v167 = v280;
          goto LABEL_54;
        }

        sub_22D8AF544();
        sub_22D84DDB0(v237);
        *(*(v288[0] + 48) + 8 * v231) = v218;
        *(*(v232 + 56) + 8 * v231) = v222;

        (*(v221 + 8))(v269, v204);
        sub_22D8AF538();
        if (!v239)
        {
          *(v232 + 16) = v238;
          goto LABEL_77;
        }

LABEL_94:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    sub_22D84D014(v197, qword_27DA0D9F0, &unk_22D8B4DE0);

    v199 = v198;
    v190 = v287;
    v167 = v280;
    v197 = v277;
  }

  while (v195);
LABEL_56:
  while (1)
  {
    v198 = v199 + 1;
    if (__OFADD__(v199, 1))
    {
      break;
    }

    if (v198 >= v197)
    {
      sub_22D8AFD10();

      (v14)(v273, 0);

      sub_22D84D800();
      sub_22D8AF90C();

      __asm { BRAA            X1, X16 }
    }

    v195 = *(v167 + 8 * v198);
    ++v199;
    if (v195)
    {
      goto LABEL_59;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  sub_22D8AF90C();

  sub_22D8B1FBC();
}