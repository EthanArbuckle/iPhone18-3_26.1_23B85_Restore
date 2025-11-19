uint64_t sub_1D662997C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116648[v0 + 32];
    if (v2 == 8)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 8)
    {
      v4 = 0x80000001D73B8F40;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 7)
    {
      v3 = 0x72656C69706D6F63;
      v4 = 0xED00007367616C46;
    }

    if (v2 == 5)
    {
      v5 = 0x746C7561666564;
    }

    else
    {
      v5 = 0x7461636572706564;
    }

    if (v2 == 5)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }

    if (byte_1F5116648[v0 + 32] <= 6u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6465726975716572;
    if (v2 == 3)
    {
      v7 = 0x7470697263736564;
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v2 == 2)
    {
      v7 = 1701667182;
      v8 = 0xE400000000000000;
    }

    v9 = 0xEA00000000007265;
    v10 = 0x696669746E656469;
    if (!byte_1F5116648[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116648[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116648[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116648[v0 + 32] <= 4u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v17 = result;
    v14 = *(result + 16);
    v13 = *(result + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D5BFC364((v13 > 1), v14 + 1, 1);
      result = v17;
    }

    ++v0;
    *(result + 16) = v14 + 1;
    v15 = result + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v0 != 10);
  return result;
}

uint64_t sub_1D6629BFC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116618[v0 + 32];
    if (v2 == 8)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 8)
    {
      v4 = 0x80000001D73B8F40;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 7)
    {
      v3 = 0x72656C69706D6F63;
      v4 = 0xED00007367616C46;
    }

    if (v2 == 5)
    {
      v5 = 0x746C7561666564;
    }

    else
    {
      v5 = 0x7461636572706564;
    }

    if (v2 == 5)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }

    if (byte_1F5116618[v0 + 32] <= 6u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6465726975716572;
    if (v2 == 3)
    {
      v7 = 0x7470697263736564;
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v2 == 2)
    {
      v7 = 1701667182;
      v8 = 0xE400000000000000;
    }

    v9 = 0xEA00000000007265;
    v10 = 0x696669746E656469;
    if (!byte_1F5116618[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116618[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116618[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116618[v0 + 32] <= 4u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v17 = result;
    v14 = *(result + 16);
    v13 = *(result + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D5BFC364((v13 > 1), v14 + 1, 1);
      result = v17;
    }

    ++v0;
    *(result + 16) = v14 + 1;
    v15 = result + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v0 != 10);
  return result;
}

uint64_t sub_1D6629E7C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F51165E8[v0 + 32];
    if (v2 == 8)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 8)
    {
      v4 = 0x80000001D73B8F40;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 7)
    {
      v3 = 0x72656C69706D6F63;
      v4 = 0xED00007367616C46;
    }

    if (v2 == 5)
    {
      v5 = 0x746C7561666564;
    }

    else
    {
      v5 = 0x7461636572706564;
    }

    if (v2 == 5)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }

    if (byte_1F51165E8[v0 + 32] <= 6u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6465726975716572;
    if (v2 == 3)
    {
      v7 = 0x7470697263736564;
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v2 == 2)
    {
      v7 = 1701667182;
      v8 = 0xE400000000000000;
    }

    v9 = 0xEA00000000007265;
    v10 = 0x696669746E656469;
    if (!byte_1F51165E8[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F51165E8[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F51165E8[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F51165E8[v0 + 32] <= 4u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v17 = result;
    v14 = *(result + 16);
    v13 = *(result + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D5BFC364((v13 > 1), v14 + 1, 1);
      result = v17;
    }

    ++v0;
    *(result + 16) = v14 + 1;
    v15 = result + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v0 != 10);
  return result;
}

uint64_t sub_1D662A0FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1D66B2474();
  v11 = v10;
  v12 = (v6 + *(v10 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = a4 & 1;
  v31 = a4 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = v31;
  *(v16 + 40) = v14;
  *(v16 + 48) = v13;

  sub_1D5C75A4C(a2, a3, a4 & 1);
  sub_1D66B2508();
  sub_1D5B58B84(&qword_1EC8871A8, sub_1D66B2508);
  v17 = sub_1D72647CC();
  v31 = a4 & 1;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = v31;
  __swift_project_boxed_opaque_existential_1((v6 + *(v11 + 36)), *(v6 + *(v11 + 36) + 24));
  v29 = sub_1D670904C;
  v30 = v18;
  v24 = a5;
  v25 = a6;
  v26 = sub_1D6708B50;
  v27 = v16;
  sub_1D5C75A4C(a2, a3, v15);
  sub_1D5D2BC70(a1, sub_1D615B49C, v28, sub_1D615B4A4, v23);
}

uint64_t sub_1D662A2E4(uint64_t (*a1)(void))
{
  v1 = a1();
  if (v2)
  {
    MEMORY[0x1DA6F9910](v1);

    v3 = 46;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 0x2065736163;
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v3, v4);
  sub_1D7263F9C();
  return 0;
}

uint64_t sub_1D662A38C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  if (v3)
  {
    MEMORY[0x1DA6F9910](v2);

    v4 = 46;
    v5 = 0xE100000000000000;
  }

  else
  {
    v4 = 0x2065736163;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v4, v5);
  sub_1D7263F9C();
  return 0;
}

uint64_t sub_1D662A444(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  if (v3)
  {
    MEMORY[0x1DA6F9910](v2);

    v4 = 46;
    v5 = 0xE100000000000000;
  }

  else
  {
    v4 = 0x2065736163;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v4, v5);
  sub_1D7263F9C();
  return 0;
}

uint64_t sub_1D662A4F8(uint64_t a1, int64_t a2, uint64_t (*a3)(void))
{
  v5 = 1701869940;
  v6 = a3();
  if (v7)
  {
    v10 = v6;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a2 <= 1)
    {
      if (!a2)
      {
        v8 = 0xE400000000000000;
        goto LABEL_19;
      }

      if (a2 == 1)
      {
        v8 = 0xE400000000000000;
LABEL_9:
        v5 = 1635017060;
        goto LABEL_19;
      }

LABEL_16:
      v5 = a1;
      v8 = a2;
      goto LABEL_19;
    }

    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_16;
      }

      v8 = 0xE400000000000000;
LABEL_15:
      v5 = 1885433183;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = 0xE400000000000000;
  v10 = 544366966;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_17:
    v8 = 0xE800000000000000;
    v5 = 0x617461646174656DLL;
    goto LABEL_19;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_19:
  sub_1D5C30618(a1, a2);
  MEMORY[0x1DA6F9910](v5, v8);

  return v10;
}

uint64_t sub_1D662A630(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x69747265706F7270;
      v10 = 0xEA00000000007365;
      v11 = a1;
      v12 = 0xD000000000000010;
      v13 = 0x80000001D73B8F40;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x736D657469;
        v10 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0xD000000000000010;
    v16 = 0x80000001D73B8F40;
  }

  v17 = 0x69747265706F7270;
  v18 = 0xEA00000000007365;
  if (a1)
  {
    v17 = 0x736D657469;
    v18 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662A7B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656D695465746164;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F74617265706FLL;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656D695465746164;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x726F74617265706FLL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662A8F0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65756C6176;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F74617265706FLL;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x65756C6176;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x726F74617265706FLL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662AA20(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x57616572416E696DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEC00000068746469;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x69536E6F74747562;
      a2 = 0xEA0000000000657ALL;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x57616572416E696DLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xEC00000068746469;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662AB54(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x31746E696F70;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x33746E696F70;
      v13 = 0xE600000000000000;
      v14 = 0x34746E696F70;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v11 = v13;
      }

      if (a1)
      {
        v9 = 0x32746E696F70;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = 0xE600000000000000;
      }

      else
      {
        a2 = v11;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 1885433183;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 == 3)
  {
    v15 = 0x34746E696F70;
    v17 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x33746E696F70;
    v17 = 0xE600000000000000;
  }

  v18 = 0x31746E696F70;
  if (a1)
  {
    v18 = 0x32746E696F70;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = 0xE600000000000000;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662ACEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x736D657469;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x69747265706F7270;
      a2 = 0xEA00000000007365;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x736D657469;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662AE08(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6F697469646E6F63;
      }

      if (v9)
      {
        a2 = 0xE90000000000006ELL;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6F697469646E6F63;
  }

  if (v10)
  {
    a2 = 0xE90000000000006ELL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662AF04(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x65756C6176;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0xE500000000000000;
      v13 = 0x656C797473;
      v14 = 0xE800000000000000;
      v15 = 0x6C61726765746E69;
      if (a1 != 3)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v15;
        v12 = v14;
      }

      if (a1)
      {
        v9 = 0x726F74617265706FLL;
        v11 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0xE500000000000000;
  if (a1 == 3)
  {
    v16 = 0x6C61726765746E69;
    v18 = 0xE800000000000000;
  }

  if (a1 == 2)
  {
    v16 = 0x656C797473;
    v18 = 0xE500000000000000;
  }

  v20 = 0x65756C6176;
  if (a1)
  {
    v20 = 0x726F74617265706FLL;
    v19 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D662B0AC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x65756C6176;
      }

      if (v9)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x65756C6176;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B198(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x69747265706F7270;
      v10 = 0xEA00000000007365;
      v11 = a1;
      v12 = 0xD000000000000010;
      v13 = 0x80000001D73B8F40;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x7261696C69787561;
        v10 = 0xE900000000000079;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0xD000000000000010;
    v16 = 0x80000001D73B8F40;
  }

  v17 = 0x69747265706F7270;
  v18 = 0xEA00000000007365;
  if (a1)
  {
    v17 = 0x7261696C69787561;
    v18 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662B330(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65756C6176;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6E656E6F706D6F63;
      a2 = 0xE900000000000074;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x65756C6176;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B44C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      a2 = 0xEC0000006E6F6974;
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x69646E6F43736872;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 != 1)
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x69646E6F4373686CLL;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x69646E6F43736872;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEC0000006E6F6974;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 0x69646E6F4373686CLL;
    a2 = 0xEC0000006E6F6974;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B594(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x506C6F72746E6F63;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEC000000746E696FLL;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746E696F70;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x506C6F72746E6F63;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEC000000746E696FLL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x746E696F70;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B6D4(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      if (a1)
      {
        v9 = a1 == 1;
        if (a1 == 1)
        {
          a1 = 0x656C797473;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0xD000000000000010;
      a2 = 0x80000001D73B7600;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = a1 == 1;
  if (a1 == 1)
  {
    a1 = 0x656C797473;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B7F0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6C6C6F726373;
      }

      if (v9)
      {
        a2 = 0xE600000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6C6C6F726373;
  }

  if (v10)
  {
    a2 = 0xE600000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662B8DC(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0xD000000000000010;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0x80000001D73D2770;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0x80000001D73D2750;
    a1 = 0xD000000000000016;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D662B9D0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x73776F726874;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x73776F726874;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE600000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662BAEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x726F74617265706FLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x676E69646E6962;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x726F74617265706FLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x676E69646E6962;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662BC24(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x746E6F436F676F6CLL;
      v10 = 0xEB00000000746E65;
      v11 = a1;
      v12 = 0x697365526F676F6CLL;
      v13 = 0xEA0000000000657ALL;
      v14 = 0x61727544776F6873;
      v15 = 0xEC0000006E6F6974;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE800000000000000;
      v17 = 0x657A69536F676F6CLL;
      if (a1 != 1)
      {
        v17 = 0x6C7974536F676F6CLL;
        v16 = 0xE900000000000065;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x61727544776F6873;
    v20 = 0xEC0000006E6F6974;
  }

  if (a1 == 3)
  {
    v18 = 0x697365526F676F6CLL;
    v20 = 0xEA0000000000657ALL;
  }

  v21 = 0x746E6F436F676F6CLL;
  v22 = 0xEB00000000746E65;
  v23 = 0xE800000000000000;
  v24 = 0x657A69536F676F6CLL;
  if (a1 != 1)
  {
    v24 = 0x6C7974536F676F6CLL;
    v23 = 0xE900000000000065;
  }

  if (a1)
  {
    v21 = v24;
    v22 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v22;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662BE54(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x6973736572707865;
  v5 = a2();
  if (v6)
  {
    v9 = v5;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    v7 = a1;
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 544366966;
    v7 = a1;
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  v4 = 0x6F737365636F7270;
  if (v7 == 1)
  {
    v3 = 0xEA00000000007372;
  }

  else
  {
    v3 = 0xE900000000000072;
  }

LABEL_6:
  MEMORY[0x1DA6F9910](v4, v3);

  return v9;
}

uint64_t sub_1D662BF38(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6369676F6CLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x656D695465746164;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6369676F6CLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x656D695465746164;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662C068(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {

      v9 = a1;
    }

    else
    {
      v9 = 7563372;
      if (a1)
      {
        if (a1 == 1)
        {
          v9 = 7563378;
        }

        else
        {
          v9 = 1885433183;
        }

        if (a1 == 1)
        {
          a2 = 0xE300000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a2 = 0xE300000000000000;
      }
    }
  }

  else
  {
    v12 = 544366966;
    if (a3)
    {
    }

    else
    {
      v10 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 7563378;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v10 == 1)
        {
          a2 = 0xE300000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a2 = 0xE300000000000000;
        a1 = 7563372;
      }
    }

    v9 = a1;
  }

  MEMORY[0x1DA6F9910](v9, a2);

  return v12;
}

uint64_t sub_1D662C19C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6369676F6CLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x6369676F6CLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662C2B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x726F74617265706FLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x65756C6176;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x726F74617265706FLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x65756C6176;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662C3E8(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0x80000001D73BAF80;
      v13 = 0xD000000000000018;
      v14 = 0xD000000000000012;
      v15 = 0x80000001D73D2790;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v14;
        v12 = v15;
      }

      v16 = 0x6F4364656C6C6966;
      v17 = 0xEB00000000726F6CLL;
      if (a1 != 1)
      {
        v16 = 0x64656C6C69666E75;
        v17 = 0xED0000726F6C6F43;
      }

      if (a1)
      {
        v9 = v16;
        v11 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0xD000000000000012;
    v20 = 0x80000001D73D2790;
  }

  if (a1 == 3)
  {
    v18 = 0xD000000000000018;
    v20 = 0x80000001D73BAF80;
  }

  v21 = 0xE800000000000000;
  v22 = 0x726F7463656C6573;
  v23 = 0x6F4364656C6C6966;
  v24 = 0xEB00000000726F6CLL;
  if (a1 != 1)
  {
    v23 = 0x64656C6C69666E75;
    v24 = 0xED0000726F6C6F43;
  }

  if (a1)
  {
    v22 = v23;
    v21 = v24;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662C628(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x6E656E6F706D6F63;
      v10 = 0xE900000000000074;
      v11 = a1;
      v12 = 0xE500000000000000;
      v13 = 0x65756C6176;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x726F74617265706FLL;
        v10 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x65756C6176;
    v16 = 0xE500000000000000;
  }

  v17 = 0x6E656E6F706D6F63;
  v18 = 0xE900000000000074;
  if (a1)
  {
    v17 = 0x726F74617265706FLL;
    v18 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662C7A8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x746E696F70;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x506C6F72746E6F63;
      v13 = 0xED000032746E696FLL;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x506C6F72746E6F63;
        v11 = 0xED000031746E696FLL;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x506C6F72746E6F63;
    v16 = 0xED000032746E696FLL;
  }

  v17 = 0xE500000000000000;
  v18 = 0x746E696F70;
  if (a1)
  {
    v18 = 0x506C6F72746E6F63;
    v17 = 0xED000031746E696FLL;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662C950(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65756C6176;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x65756C6176;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662CA6C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65706F6373;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x536C616974696E69;
      a2 = 0xEC00000065746174;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x65706F6373;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662CB8C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656449746E657665;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xEF7265696669746ELL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1701667182;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D662CC78(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x73776F726874;
      }

      if (v9)
      {
        a2 = 0xE600000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x73776F726874;
  }

  if (v10)
  {
    a2 = 0xE600000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662CD64(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x73736572676F7270;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x6E6F697461727564;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x73736572676F7270;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x6E6F697461727564;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662CE9C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x656C797473;
      }

      if (v9)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x656C797473;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662CF88(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA0000000000646ELL;
      v10 = 0x696669746E656469;
      v11 = 0xEA00000000007265;
      v12 = a1;
      v13 = 0x6162726562627572;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v9 = 0xE400000000000000;
      }

      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
      if (a1 != 3)
      {
        v14 = 7235952;
        v15 = 0xE300000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v14;
        v9 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7373616C63;
      if (a1 != 1)
      {
        v17 = 0x426F547370696C63;
        v16 = 0xED000073646E756FLL;
      }

      if (a1)
      {
        v10 = v17;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v12 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v9;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 5)
  {
    v18 = 0x6162726562627572;
    v20 = 0xEA0000000000646ELL;
  }

  v21 = 0x726F7463656C6573;
  v22 = 0xE900000000000073;
  if (a1 != 3)
  {
    v21 = 7235952;
    v22 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v20 = v22;
  }

  v23 = 0x696669746E656469;
  v24 = 0xEA00000000007265;
  v25 = 0xE500000000000000;
  v26 = 0x7373616C63;
  if (a1 != 1)
  {
    v26 = 0x426F547370696C63;
    v25 = 0xED000073646E756FLL;
  }

  if (a1)
  {
    v23 = v26;
    v24 = v25;
  }

  if (a1 <= 2u)
  {
    a1 = v23;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v24;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D662D1D8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0xE300000000000000;
      v13 = 7235952;
      v14 = 0x6162726562627572;
      v15 = 0xEA0000000000646ELL;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 0x426F547370696C63;
        v11 = 0xED000073646E756FLL;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x6162726562627572;
    v18 = 0xEA0000000000646ELL;
  }

  if (a1 == 2)
  {
    v16 = 7235952;
    v18 = 0xE300000000000000;
  }

  v19 = 0xE800000000000000;
  v20 = 0x726F7463656C6573;
  if (a1)
  {
    v20 = 0x426F547370696C63;
    v19 = 0xED000073646E756FLL;
  }

  if (a1 <= 1u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D662D3A8(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = 0x736574617473;
  v4 = a2();
  if (!v5)
  {
    v9 = 544366966;
    v6 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0xE600000000000000;
    goto LABEL_11;
  }

  v9 = v4;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  v6 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == 1)
  {
    v3 = 0x73746E657665;
  }

  else
  {
    v3 = 0x7475706E69;
  }

  if (v6 == 1)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

LABEL_11:
  MEMORY[0x1DA6F9910](v3, v7);

  return v9;
}

uint64_t sub_1D662D478(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void))
{
  v10 = a4();
  if (v11)
  {
    v14 = v10;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v14 = 544366966;
  }

  v12 = a6(a1, a2, a3 & 1);
  MEMORY[0x1DA6F9910](v12);

  return v14;
}

uint64_t sub_1D662D520(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x7265746E6563;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0xE800000000000000;
      v13 = 0x656C676E41646E65;
      v14 = 0x7369776B636F6C63;
      v15 = 0xE900000000000065;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v14;
        v12 = v15;
      }

      v16 = 0xE600000000000000;
      v17 = 0x737569646172;
      if (a1 != 1)
      {
        v17 = 0x676E417472617473;
        v16 = 0xEA0000000000656CLL;
      }

      if (a1)
      {
        v9 = v17;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x7369776B636F6C63;
    v20 = 0xE900000000000065;
  }

  if (a1 == 3)
  {
    v18 = 0x656C676E41646E65;
    v20 = 0xE800000000000000;
  }

  v21 = 0xE600000000000000;
  v22 = 0x7265746E6563;
  v23 = 0xE600000000000000;
  v24 = 0x737569646172;
  if (a1 != 1)
  {
    v24 = 0x676E417472617473;
    v23 = 0xEA0000000000656CLL;
  }

  if (a1)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662D720(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x64656C6C69666E75;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x64656C6C6966;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x64656C6C69666E75;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x64656C6C6966;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662D850(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x7468676972;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1952867692;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D662D92C(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0x6C6F436B63617274;
      v13 = 0xEA0000000000726FLL;
      v14 = 0xD000000000000018;
      v15 = 0x80000001D73BAF80;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x6168706C61;
      if (a1 != 1)
      {
        v17 = 0x73736572676F7270;
        v16 = 0xED0000726F6C6F43;
      }

      if (a1)
      {
        v9 = v17;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0xD000000000000018;
    v20 = 0x80000001D73BAF80;
  }

  if (a1 == 3)
  {
    v18 = 0x6C6F436B63617274;
    v20 = 0xEA0000000000726FLL;
  }

  v21 = 0xE800000000000000;
  v22 = 0x726F7463656C6573;
  v23 = 0xE500000000000000;
  v24 = 0x6168706C61;
  if (a1 != 1)
  {
    v24 = 0x73736572676F7270;
    v23 = 0xED0000726F6C6F43;
  }

  if (a1)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662DB4C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737569646172;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0xE700000000000000;
      v13 = 0x706143656E696CLL;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0x65637265506E696DLL;
      if (a1 != 3)
      {
        v14 = 0x656372655078616DLL;
      }

      if (a1 <= 4u)
      {
        v13 = v14;
        v12 = 0xED0000656761746ELL;
      }

      v15 = 0x7369776B636F6C63;
      v16 = 0xE900000000000065;
      if (a1 != 1)
      {
        v15 = 0x6372655070657473;
        v16 = 0xEE00656761746E65;
      }

      if (a1)
      {
        v9 = v15;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v17 = 1885433183;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 == 5)
  {
    v17 = 0x706143656E696CLL;
    v19 = 0xE700000000000000;
  }

  v20 = 0x65637265506E696DLL;
  if (a1 != 3)
  {
    v20 = 0x656372655078616DLL;
  }

  if (a1 <= 4u)
  {
    v17 = v20;
    v19 = 0xED0000656761746ELL;
  }

  v21 = 0xE600000000000000;
  v22 = 0x737569646172;
  v23 = 0x7369776B636F6C63;
  v24 = 0xE900000000000065;
  if (a1 != 1)
  {
    v23 = 0x6372655070657473;
    v24 = 0xEE00656761746E65;
  }

  if (a1)
  {
    v22 = v23;
    v21 = v24;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v17;
  }

  if (v18 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v19;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662DDD4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6E6F697469736F70;
      }

      if (v9)
      {
        a2 = 0xE800000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6E6F697469736F70;
  }

  if (v10)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662DEC8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65756C6176;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x676E69646E6962;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x65756C6176;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x676E69646E6962;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662DFF8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void))
{
  v10 = a4();
  if (v11)
  {
    v14 = v10;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v14 = 544366966;
  }

  v12 = a6(a1, a2, a3 & 1);
  MEMORY[0x1DA6F9910](v12);

  return v14;
}

uint64_t sub_1D662E0A0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x63697274656DLL;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x656D7473756A6461;
      v13 = 0xEA0000000000746ELL;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x656C797473;
        v11 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x656D7473756A6461;
    v16 = 0xEA0000000000746ELL;
  }

  v17 = 0xE600000000000000;
  v18 = 0x63697274656DLL;
  if (a1)
  {
    v18 = 0x656C797473;
    v17 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662E218(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x737569646172;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x7265746E6563;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x737569646172;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE600000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x7265746E6563;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662E340(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xD000000000000018;
      v13 = 0x80000001D73BAF80;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7373616C63;
      if (a1 != 1)
      {
        v17 = 0x615272656E726F63;
        v16 = 0xEC00000073756964;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x726F7463656C6573;
    v20 = 0xE900000000000073;
  }

  if (a1 == 3)
  {
    v18 = 0xD000000000000018;
    v20 = 0x80000001D73BAF80;
  }

  v21 = 0x696669746E656469;
  v22 = 0xEA00000000007265;
  v23 = 0xE500000000000000;
  v24 = 0x7373616C63;
  if (a1 != 1)
  {
    v24 = 0x615272656E726F63;
    v23 = 0xEC00000073756964;
  }

  if (a1)
  {
    v21 = v24;
    v22 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v22;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662E560(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0xD000000000000018;
      v13 = 0x80000001D73BAF80;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x615272656E726F63;
        v11 = 0xEC00000073756964;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0xD000000000000018;
    v16 = 0x80000001D73BAF80;
  }

  v17 = 0xE800000000000000;
  v18 = 0x726F7463656C6573;
  if (a1)
  {
    v18 = 0x615272656E726F63;
    v17 = 0xEC00000073756964;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662E6F8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x7265696669646F6DLL;
      v13 = 0xE900000000000073;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x65756C6176;
        v10 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x7265696669646F6DLL;
    v16 = 0xE900000000000073;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x65756C6176;
    v18 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662E880(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x73656572676564;
      }

      if (v9)
      {
        a2 = 0xE700000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x73656572676564;
  }

  if (v10)
  {
    a2 = 0xE700000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662E974(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x656D7473756A6461;
      }

      if (v9)
      {
        a2 = 0xEB0000000073746ELL;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x656D7473756A6461;
  }

  if (v10)
  {
    a2 = 0xEB0000000073746ELL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662EA78(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x646F4D646E656C62;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE900000000000065;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F6C6F63;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x646F4D646E656C62;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE900000000000065;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x726F6C6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662EBB0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x646F4D646E656C62;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE900000000000065;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746E656964617267;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x646F4D646E656C62;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE900000000000065;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x746E656964617267;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662ECF0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6369676F6CLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x676E69646E6962;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6369676F6CLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x676E69646E6962;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662EE20(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE500000000000000;
      v13 = 0x6369676F6CLL;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x746E65746E6F63;
        v10 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x6369676F6CLL;
    v16 = 0xE500000000000000;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x746E65746E6F63;
    v18 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662EFA0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x726F7463656C6573;
      }

      if (v9)
      {
        a2 = 0xE900000000000073;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x726F7463656C6573;
  }

  if (v10)
  {
    a2 = 0xE900000000000073;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F09C(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      if (a1)
      {
        v9 = a1 == 1;
        if (a1 == 1)
        {
          a1 = 0x6372755074736F70;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9)
        {
          a2 = 0xEC00000065736168;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0xD000000000000011;
      a2 = 0x80000001D73B7680;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = a1 == 1;
  if (a1 == 1)
  {
    a1 = 0x6372755074736F70;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10)
  {
    a2 = 0xEC00000065736168;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F1D0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x73646E696BLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x73646E696BLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F2EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6168706C61;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F6C6F63;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6168706C61;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x726F6C6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F414(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x736574617473;
      }

      if (v9)
      {
        a2 = 0xE600000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x736574617473;
  }

  if (v10)
  {
    a2 = 0xE600000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F500(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x6567616D69;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x64656C616373;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x6E656D6E67696C61;
        v11 = 0xE900000000000074;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x64656C616373;
    v16 = 0xE600000000000000;
  }

  v17 = 0xE500000000000000;
  v18 = 0x6567616D69;
  if (a1)
  {
    v18 = 0x6E656D6E67696C61;
    v17 = 0xE900000000000074;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662F678(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x726F7463656C6573;
      }

      if (v9)
      {
        a2 = 0xE800000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x726F7463656C6573;
  }

  if (v10)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662F76C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737569646172;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x65637265506E696DLL;
      v13 = 0xED0000656761746ELL;
      v14 = 0x656372655078616DLL;
      v15 = 0xED0000656761746ELL;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7369776B636F6C63;
      v17 = 0xE900000000000065;
      if (a1 != 1)
      {
        v16 = 0x6372655070657473;
        v17 = 0xEE00656761746E65;
      }

      if (a1)
      {
        v9 = v16;
        v11 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x656372655078616DLL;
    v20 = 0xED0000656761746ELL;
  }

  if (a1 == 3)
  {
    v18 = 0x65637265506E696DLL;
    v20 = 0xED0000656761746ELL;
  }

  v21 = 0xE600000000000000;
  v22 = 0x737569646172;
  v23 = 0x7369776B636F6C63;
  v24 = 0xE900000000000065;
  if (a1 != 1)
  {
    v23 = 0x6372655070657473;
    v24 = 0xEE00656761746E65;
  }

  if (a1)
  {
    v22 = v23;
    v21 = v24;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D662F9B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x7470697263736564;
        v10 = 0xEB000000006E6F69;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x726F7463656C6573;
    v16 = 0xE900000000000073;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x7470697263736564;
    v18 = 0xEB000000006E6F69;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662FB54(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x65756C6176;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F7463656C6573;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x65756C6176;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x726F7463656C6573;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D662FC84(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F6C6F63;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0xD000000000000014;
      v13 = 0x80000001D73D26F0;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x746E756F6D61;
        v11 = 0xE600000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0xD000000000000014;
    v16 = 0x80000001D73D26F0;
  }

  v17 = 0xE500000000000000;
  v18 = 0x726F6C6F63;
  if (a1)
  {
    v18 = 0x746E756F6D61;
    v17 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D662FDFC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE600000000000000;
      v13 = 0x776F64616873;
      v14 = 0xE400000000000000;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v15 = 1752457584;
      if (a1 != 3)
      {
        v15 = 0x73726564726F62;
        v14 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7373616C63;
      if (a1 != 1)
      {
        v17 = 0x726F7463656C6573;
        v16 = 0xE900000000000073;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1752457584;
  v19 = a1;
  v20 = 0xE400000000000000;
  v21 = 0xE600000000000000;
  v22 = 0x776F64616873;
  if (a1 != 5)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v18 = 0x73726564726F62;
    v20 = 0xE700000000000000;
  }

  if (a1 > 4u)
  {
    v18 = v22;
    v20 = v21;
  }

  v23 = 0x696669746E656469;
  v24 = 0xEA00000000007265;
  v25 = 0xE500000000000000;
  v26 = 0x7373616C63;
  if (a1 != 1)
  {
    v26 = 0x726F7463656C6573;
    v25 = 0xE900000000000073;
  }

  if (a1)
  {
    v23 = v26;
    v24 = v25;
  }

  if (a1 <= 2u)
  {
    a1 = v23;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v24;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6630028(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v19 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1752457584;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE700000000000000;
      v13 = 0x73726564726F62;
      v16 = 0xE600000000000000;
      v17 = 0x776F64616873;
      if (a1 != 3)
      {
        v17 = 1885433183;
        v16 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v17;
        v12 = v16;
      }

      if (!a1)
      {
        v9 = 0x726F7463656C6573;
        v11 = 0xE800000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_23;
  }

  v19 = v7;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if (a3)
  {
    goto LABEL_10;
  }

  v9 = 0x726F7463656C6573;
  v10 = a1;
  v11 = 0xE800000000000000;
  v12 = 0xE700000000000000;
  v13 = 0x73726564726F62;
  v14 = 0xE600000000000000;
  v15 = 0x776F64616873;
  if (a1 != 3)
  {
    v15 = 1885433183;
    v14 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (a1)
  {
    v9 = 1752457584;
    v11 = 0xE400000000000000;
  }

LABEL_17:
  if (v10 <= 1)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_23:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D66301C4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      v10 = 120;
      v11 = 0xE500000000000000;
      v12 = 0x6874646977;
      v13 = 0xE600000000000000;
      v14 = 0x746867696568;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v11 = v13;
      }

      if (a1)
      {
        v10 = 121;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v9 <= 1)
      {
        a2 = 0xE100000000000000;
      }

      else
      {
        a2 = v11;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 1885433183;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 == 3)
  {
    v15 = 0x746867696568;
    v17 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6874646977;
    v17 = 0xE500000000000000;
  }

  v18 = 120;
  if (a1)
  {
    v18 = 121;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = 0xE100000000000000;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6630344(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6F69746365726964;
      }

      if (v9)
      {
        a2 = 0xE90000000000006ELL;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6F69746365726964;
  }

  if (v10)
  {
    a2 = 0xE90000000000006ELL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6630440(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x79636E6172626976;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1920298082;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D6630520(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
      if (a1 != 5)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      v14 = 0x6F6974616D696E61;
      v15 = 0xEA0000000000736ELL;
      if (a1 != 3)
      {
        v14 = 0x65646F4D6E7572;
        v15 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7373616C63;
      if (a1 != 1)
      {
        v17 = 0x6F50726F68636E61;
        v16 = 0xEB00000000746E69;
      }

      if (a1)
      {
        v10 = v17;
        v9 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 2)
      {
        a2 = v9;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 5)
  {
    v18 = 0x726F7463656C6573;
    v20 = 0xE900000000000073;
  }

  v21 = 0x6F6974616D696E61;
  v22 = 0xEA0000000000736ELL;
  if (a1 != 3)
  {
    v21 = 0x65646F4D6E7572;
    v22 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v20 = v22;
  }

  v23 = 0x696669746E656469;
  v24 = 0xEA00000000007265;
  v25 = 0xE500000000000000;
  v26 = 0x7373616C63;
  if (a1 != 1)
  {
    v26 = 0x6F50726F68636E61;
    v25 = 0xEB00000000746E69;
  }

  if (a1)
  {
    v23 = v26;
    v24 = v25;
  }

  if (a1 <= 2u)
  {
    a1 = v23;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v24;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6630780(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0x6F6974616D696E61;
      v13 = 0xEA0000000000736ELL;
      v14 = 0xE700000000000000;
      v15 = 0x65646F4D6E7572;
      if (a1 != 3)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (a1)
      {
        v9 = 0x6F50726F68636E61;
        v11 = 0xEB00000000746E69;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x65646F4D6E7572;
    v18 = 0xE700000000000000;
  }

  if (a1 == 2)
  {
    v16 = 0x6F6974616D696E61;
    v18 = 0xEA0000000000736ELL;
  }

  v19 = 0xE800000000000000;
  v20 = 0x726F7463656C6573;
  if (a1)
  {
    v20 = 0x6F50726F68636E61;
    v19 = 0xEB00000000746E69;
  }

  if (a1 <= 1u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6630958(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x724F74756F79616CLL;
      v10 = 0xEB00000000726564;
      v11 = a1;
      v12 = 0x80000001D73D23C0;
      v13 = 0xD000000000000019;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0xD000000000000014;
        v10 = 0x80000001D73CCEA0;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0xD000000000000019;
    v16 = 0x80000001D73D23C0;
  }

  v17 = 0x724F74756F79616CLL;
  v18 = 0xEB00000000726564;
  if (a1)
  {
    v17 = 0xD000000000000014;
    v18 = 0x80000001D73CCEA0;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6630B00(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v25 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0x80000001D73BAF80;
      v13 = 0x80000001D73CA950;
      v14 = 0xD000000000000013;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0xD000000000000018;
      }

      else
      {
        v12 = v13;
      }

      v15 = 0x615272656E726F63;
      v16 = 0xEC00000073756964;
      if (a1 != 1)
      {
        v15 = 0xD000000000000011;
        v16 = 0x80000001D73CCDF0;
      }

      if (a1)
      {
        v9 = v15;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v14;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_34;
    }

LABEL_19:

    goto LABEL_34;
  }

  v25 = 544366966;
  if (a3)
  {
    goto LABEL_19;
  }

  v17 = 1885433183;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 == 4)
  {
    v17 = 0xD000000000000013;
    v19 = 0x80000001D73CA950;
  }

  if (a1 == 3)
  {
    v17 = 0xD000000000000018;
    v19 = 0x80000001D73BAF80;
  }

  v20 = 0xE800000000000000;
  v21 = 0x726F7463656C6573;
  v22 = 0x615272656E726F63;
  v23 = 0xEC00000073756964;
  if (a1 != 1)
  {
    v22 = 0xD000000000000011;
    v23 = 0x80000001D73CCDF0;
  }

  if (a1)
  {
    v21 = v22;
    v20 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v17;
  }

  if (v18 <= 2)
  {
    a2 = v20;
  }

  else
  {
    a2 = v19;
  }

LABEL_34:
  MEMORY[0x1DA6F9910](a1, a2);

  return v25;
}

uint64_t sub_1D6630D28(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6E6572646C696863;
      }

      if (v9)
      {
        a2 = 0xE800000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6E6572646C696863;
  }

  if (v10)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6630E1C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x65746174536F74;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x746174536D6F7266;
        v10 = 0xE900000000000065;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x65746174536F74;
    v16 = 0xE700000000000000;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x746174536D6F7266;
    v18 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6630FAC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v15 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1702521203;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE500000000000000;
      v13 = 0x656C797473;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (!a1)
      {
        v9 = 0x676E69646E6962;
        v11 = 0xE700000000000000;
      }

      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_19;
  }

  v15 = v7;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if (a3)
  {
    goto LABEL_8;
  }

  v9 = 0x676E69646E6962;
  v10 = a1;
  v11 = 0xE700000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x656C797473;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1702521203;
    v11 = 0xE400000000000000;
  }

LABEL_13:
  if (v10 <= 1)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6631104(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x756F72676B636162;
      v10 = 0xEF726F6C6F43646ELL;
      v11 = a1;
      v12 = 0x615272656E726F63;
      v13 = 0xEC00000073756964;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x65736E4965676465;
        v10 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x615272656E726F63;
    v16 = 0xEC00000073756964;
  }

  v17 = 0x756F72676B636162;
  v18 = 0xEF726F6C6F43646ELL;
  if (a1)
  {
    v17 = 0x65736E4965676465;
    v18 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D66312B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x676E6963617073;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE700000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x61746E6563726570;
      a2 = 0xEA00000000006567;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x676E6963617073;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE700000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66313D8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x676E69646E6962;
      }

      if (v9)
      {
        a2 = 0xE700000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x676E69646E6962;
  }

  if (v10)
  {
    a2 = 0xE700000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66314CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 6581861;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE300000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x7472617473;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 6581861;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE300000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x7472617473;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66315EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x746E65746E6F63;
      }

      if (v9)
      {
        a2 = 0xE700000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x746E65746E6F63;
  }

  if (v10)
  {
    a2 = 0xE700000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66316E0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v21 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x6164696C61766E69;
      v13 = 0xEC0000006E6F6974;
      v14 = 2019912806;
      if (a1 != 3)
      {
        v14 = 1885433183;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x79747265706F7270;
        v10 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v21 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 2019912806;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 != 3)
  {
    v15 = 1885433183;
    v17 = 0xE400000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6164696C61766E69;
    v17 = 0xEC0000006E6F6974;
  }

  v18 = 0x696669746E656469;
  v19 = 0xEA00000000007265;
  if (a1)
  {
    v18 = 0x79747265706F7270;
    v19 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v21;
}

uint64_t sub_1D66318A8(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:

    goto LABEL_12;
  }

  v11 = 544366966;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0xD000000000000013;
  }

  if (v9)
  {
    a2 = 0x80000001D73D27D0;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D6631980(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0xD000000000000010;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0x80000001D73B7600;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6F69736E656D6964;
      a2 = 0xE90000000000006ELL;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0xD000000000000010;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0x80000001D73B7600;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6631AAC(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v12 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v12 = 544366966;
  }

  v5 = 0xE800000000000000;
  v6 = 0x726F74617265706FLL;
  if (a1 != 2)
  {
    v6 = 0x6E6F6974706FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (!a1)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (a1 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x1DA6F9910](v9, v10);

  return v12;
}

uint64_t sub_1D6631BA0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x726F74617265706FLL;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 1701869940;
        v10 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1701869940;
  v15 = a1;
  v16 = 0xE400000000000000;
  v17 = 0xE800000000000000;
  v18 = 0x726F74617265706FLL;
  if (a1 != 2)
  {
    v18 = 1885433183;
    v17 = 0xE400000000000000;
  }

  if (!a1)
  {
    v14 = 0x696669746E656469;
    v16 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v14;
  }

  else
  {
    a1 = v18;
  }

  if (v15 <= 1)
  {
    a2 = v16;
  }

  else
  {
    a2 = v17;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6631D14(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x726F74617265706FLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x6E6F6974706FLL;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x726F74617265706FLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE800000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x6E6F6974706FLL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6631E44(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x6E6572646C696863;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE700000000000000;
      v15 = 0x736E6F6974706FLL;
      if (a1 != 3)
      {
        v15 = 0x73656C797473;
        v14 = 0xE600000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0x6E6564496D657469;
      v17 = 0xEE00726569666974;
      if (a1 != 1)
      {
        v16 = 0x726F7463656C6573;
        v17 = 0xE900000000000073;
      }

      if (a1)
      {
        v9 = v16;
        v10 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 5)
  {
    v18 = 0x6E6572646C696863;
    v20 = 0xE800000000000000;
  }

  v21 = 0xE700000000000000;
  v22 = 0x736E6F6974706FLL;
  if (a1 != 3)
  {
    v22 = 0x73656C797473;
    v21 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v22;
    v20 = v21;
  }

  v23 = 0x696669746E656469;
  v24 = 0xEA00000000007265;
  v25 = 0x6E6564496D657469;
  v26 = 0xEE00726569666974;
  if (a1 != 1)
  {
    v25 = 0x726F7463656C6573;
    v26 = 0xE900000000000073;
  }

  if (a1)
  {
    v23 = v25;
    v24 = v26;
  }

  if (a1 <= 2u)
  {
    a1 = v23;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v24;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D66320A4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v10 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 1752457584;
    }

    else
    {
      a1 = 1885433183;
    }

    a2 = 0xE400000000000000;
  }

  else
  {
    a1 = 1702521203;
    a2 = 0xE400000000000000;
  }

LABEL_11:
  MEMORY[0x1DA6F9910](a1, a2);

  return v10;
}

uint64_t sub_1D663217C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656C797473;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1702521203;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D6632258(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6F436C6F626D7973;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEB00000000726F6CLL;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6F6C6F436C6C6966;
      a2 = 0xE900000000000072;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x6F436C6F626D7973;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xEB00000000726F6CLL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663238C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737465736E4978;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0x656469537466656CLL;
      v13 = 0x6469537468676972;
      v14 = 0xE900000000000065;
      if (a1 != 4)
      {
        v13 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v13;
        v11 = v14;
      }

      v15 = 0x726F68636E4178;
      if (a1 != 1)
      {
        v15 = 0x73656572676564;
      }

      if (a1)
      {
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 2)
      {
        a2 = 0xE700000000000000;
      }

      else
      {
        a2 = v11;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 4)
  {
    v16 = 0x6469537468676972;
    v18 = 0xE900000000000065;
  }

  if (a1 == 3)
  {
    v16 = 0x656469537466656CLL;
    v18 = 0xE800000000000000;
  }

  v19 = 0x737465736E4978;
  v20 = 0x726F68636E4178;
  if (a1 != 1)
  {
    v20 = 0x73656572676564;
  }

  if (a1)
  {
    v19 = v20;
  }

  if (a1 <= 2u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 2)
  {
    a2 = 0xE700000000000000;
  }

  else
  {
    a2 = v18;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6632594(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656D7473756A6461;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA0000000000746ELL;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x65766974616C6572;
        a2 = 0xE800000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656D7473756A6461;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA0000000000746ELL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE800000000000000;
    a1 = 0x65766974616C6572;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66326D4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656C797473;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746E65746E6F63;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656C797473;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x746E65746E6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6632804(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      if (a1)
      {
        v9 = a1 == 1;
        if (a1 == 1)
        {
          a1 = 0x6369676F6CLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0xD000000000000010;
      a2 = 0x80000001D73B7600;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = a1 == 1;
  if (a1 == 1)
  {
    a1 = 0x6369676F6CLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6632920(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656C797473;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x657A695378616DLL;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656C797473;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x657A695378616DLL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6632A50(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6E6F697469736F70;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x65736E4965676465;
      a2 = 0xEA00000000007374;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x6E6F697469736F70;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6632B74(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v18 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726564726FLL;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 2019912806;
      if (a1 != 2)
      {
        v12 = 1885433183;
      }

      if (a1)
      {
        v9 = 0x797469726F697270;
        v11 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v18 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v13 = 2019912806;
  v14 = a1;
  if (a1 != 2)
  {
    v13 = 1885433183;
  }

  v15 = 0xE500000000000000;
  v16 = 0x726564726FLL;
  if (a1)
  {
    v16 = 0x797469726F697270;
    v15 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v13;
  }

  if (v14 <= 1)
  {
    a2 = v15;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v18;
}

uint64_t sub_1D6632CDC(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v14 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v14 = 544366966;
  }

  v5 = 0xD000000000000018;
  v6 = 0x80000001D73BAF80;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (a1 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE900000000000073;
  }

  if (a1 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7373616C63;
  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (a1 <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x1DA6F9910](v11, v12);

  return v14;
}

uint64_t sub_1D6632DFC(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0xD000000000000018;
        v11 = 0x80000001D73BAF80;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x736E6F6974706FLL;
    v16 = 0xE700000000000000;
  }

  v17 = 0xE800000000000000;
  v18 = 0x726F7463656C6573;
  if (a1)
  {
    v18 = 0xD000000000000018;
    v17 = 0x80000001D73BAF80;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}