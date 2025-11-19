uint64_t sub_1D6632F84(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x69747265706F7270;
      v10 = 0xEA00000000007365;
      v11 = a1;
      v12 = 0xD000000000000010;
      v13 = 0x80000001D73B8F40;
      v14 = 0x72656C69706D6F63;
      v15 = 0xED00007367616C46;
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
      v17 = 0x73746F6C73;
      if (a1 != 1)
      {
        v17 = 0x6D6F6F727377656ELL;
        v16 = 0xE800000000000000;
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
    v18 = 0x72656C69706D6F63;
    v20 = 0xED00007367616C46;
  }

  if (a1 == 3)
  {
    v18 = 0xD000000000000010;
    v20 = 0x80000001D73B8F40;
  }

  v21 = 0x69747265706F7270;
  v22 = 0xEA00000000007365;
  v23 = 0xE500000000000000;
  v24 = 0x73746F6C73;
  if (a1 != 1)
  {
    v24 = 0x6D6F6F727377656ELL;
    v23 = 0xE800000000000000;
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

uint64_t sub_1D66331A4(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a2 = 0x80000001D73B8F40;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6D6E6F7269766E65;
      a2 = 0xEC00000073746E65;
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
    a2 = 0x80000001D73B8F40;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66332D4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      v10 = 0xE200000000000000;
      v11 = 24945;
      v12 = 0x69746375646F7270;
      v13 = 0xEA00000000006E6FLL;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v11 = 0x676E6967617473;
        v10 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v11;
      }

      else
      {
        a1 = v12;
      }

      if (v9 <= 1)
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
    v14 = 0x69746375646F7270;
    v16 = 0xEA00000000006E6FLL;
  }

  v17 = 0xE200000000000000;
  v18 = 24945;
  if (a1)
  {
    v18 = 0x676E6967617473;
    v17 = 0xE700000000000000;
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

uint64_t sub_1D6633444(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6564496B636F6C62;
      }

      if (v9)
      {
        a2 = 0xEF7265696669746ELL;
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
    a1 = 0x6564496B636F6C62;
  }

  if (v10)
  {
    a2 = 0xEF7265696669746ELL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6633550(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      a1 = 0x676E696C616373;
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

uint64_t sub_1D6633630(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v13 = 0x70756F7267627573;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x74756F79616CLL;
        v10 = 0xE600000000000000;
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
    v14 = 0x70756F7267627573;
    v16 = 0xE800000000000000;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x74756F79616CLL;
    v18 = 0xE600000000000000;
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

uint64_t sub_1D66337B0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x7365736163;
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
    a1 = 0x7365736163;
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

uint64_t sub_1D663389C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0x7470697263736564;
      v13 = 0xEB000000006E6F69;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 1701667182;
        v10 = 0xE400000000000000;
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

  v14 = 1701667182;
  v15 = a1;
  v16 = 0xE400000000000000;
  v17 = 0x7470697263736564;
  v18 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v17 = 1885433183;
    v18 = 0xE400000000000000;
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
    a1 = v17;
  }

  if (v15 <= 1)
  {
    a2 = v16;
  }

  else
  {
    a2 = v18;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6633A20(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x74616D726F66;
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
        a1 = 0x7265626D756ELL;
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
      a1 = 0x74616D726F66;
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
    a1 = 0x7265626D756ELL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6633B48(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6E6572646C696863;
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
      a1 = 0x6973736572707865;
      a2 = 0xEA00000000006E6FLL;
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
    a1 = 0x6E6572646C696863;
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

uint64_t sub_1D6633C6C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v17 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_17;
    }
  }

  else
  {
    v17 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1836020326;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x73726F6C6F63;
  v14 = 0x6E6F697461636F6CLL;
  v15 = 0xE900000000000073;
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
    v9 = 28532;
    v11 = 0xE200000000000000;
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

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v17;
}

uint64_t sub_1D6633D84(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
    a1 = 1701667182;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D6633E60(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6F737365636F7270;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000007372;
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
      a1 = 0x6F737365636F7270;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000007372;
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

uint64_t sub_1D6633F98(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6D6954616964656DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEB00000000676E69;
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
      a1 = 0x6D6954616964656DLL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEB00000000676E69;
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

uint64_t sub_1D66340E0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6574696877;
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
    a1 = 0x6574696877;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634208(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x664F7265626D756ELL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xED000073656E694CLL;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x656C797473;
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
      a1 = 0x664F7265626D756ELL;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xED000073656E694CLL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x656C797473;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634350(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x6874646977;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x6564617267;
      v13 = 0xE600000000000000;
      v14 = 0x6E6769736564;
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
        v9 = 0x746E616C73;
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
        a2 = 0xE500000000000000;
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
    v15 = 0x6E6769736564;
    v17 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6564617267;
    v17 = 0xE500000000000000;
  }

  v18 = 0x6874646977;
  if (a1)
  {
    v18 = 0x746E616C73;
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
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D66344EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x73646E6F636573;
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
    a2 = 0xE700000000000000;
    a1 = 0x73646E6F636573;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634624(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE800000000000000;
      v13 = 0x68746150656C6966;
      v14 = 0xE500000000000000;
      v15 = 0x646C696863;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE400000000000000;
      v17 = 1701734764;
      if (a1 != 1)
      {
        v17 = 0x6E6D756C6F63;
        v16 = 0xE600000000000000;
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

  v18 = 1701734764;
  v19 = a1;
  v20 = 0xE400000000000000;
  v21 = 0xE800000000000000;
  v22 = 0x68746150656C6966;
  v23 = 0xE500000000000000;
  v24 = 0x646C696863;
  if (a1 != 4)
  {
    v24 = 1885433183;
    v23 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 != 1)
  {
    v18 = 0x6E6D756C6F63;
    v20 = 0xE600000000000000;
  }

  if (!a1)
  {
    v18 = 0x696669746E656469;
    v20 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v22;
  }

  if (v19 <= 2)
  {
    a2 = v20;
  }

  else
  {
    a2 = v21;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D663480C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x7470697263736564;
      v13 = 0xEB000000006E6F69;
      v14 = 0xE700000000000000;
      v15 = 0x746E65746E6F63;
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
        v9 = 1701667182;
        v10 = 0xE400000000000000;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1701667182;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0x7470697263736564;
  v20 = 0xEB000000006E6F69;
  v21 = 0xE700000000000000;
  v22 = 0x746E65746E6F63;
  if (a1 != 3)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v19 = v22;
    v20 = v21;
  }

  if (!a1)
  {
    v16 = 0x696669746E656469;
    v18 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v19;
  }

  if (v17 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v20;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D66349D4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE500000000000000;
      v13 = 0x746E756F63;
      v14 = 0xE600000000000000;
      v15 = 0x737469617274;
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
        v9 = 0x73646E696BLL;
        v10 = 0xE500000000000000;
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
    v16 = 0x737469617274;
    v18 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v16 = 0x746E756F63;
    v18 = 0xE500000000000000;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x73646E696BLL;
    v20 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6634B84(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6E656E6F706D6F63;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000007374;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x4C525565736162;
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
      a1 = 0x6E656E6F706D6F63;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000007374;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x4C525565736162;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634CC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x737469617274;
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
        a1 = 7367028;
        a2 = 0xE300000000000000;
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
      a1 = 0x737469617274;
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
    a2 = 0xE300000000000000;
    a1 = 7367028;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634DE4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x7265696669646F6DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE900000000000073;
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
    a1 = 0x7265696669646F6DLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE900000000000073;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634F10(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6973736572707865;
      }

      if (v9)
      {
        a2 = 0xEA00000000006E6FLL;
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
    a1 = 0x6973736572707865;
  }

  if (v10)
  {
    a2 = 0xEA00000000006E6FLL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663500C(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0xD000000000000018;
      v13 = 0x80000001D73BAF80;
      if (a1 != 5)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      v14 = 0x615272656E726F63;
      v15 = 0xEC00000073756964;
      if (a1 != 3)
      {
        v14 = 0x776F64616873;
        v15 = 0xE600000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x6168706C61;
      if (a1 != 1)
      {
        v17 = 0x73726564726F62;
        v16 = 0xE700000000000000;
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
    v18 = 0xD000000000000018;
    v20 = 0x80000001D73BAF80;
  }

  v21 = 0x615272656E726F63;
  v22 = 0xEC00000073756964;
  if (a1 != 3)
  {
    v21 = 0x776F64616873;
    v22 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v20 = v22;
  }

  v23 = 0xE800000000000000;
  v24 = 0x726F7463656C6573;
  v25 = 0xE500000000000000;
  v26 = 0x6168706C61;
  if (a1 != 1)
  {
    v26 = 0x73726564726F62;
    v25 = 0xE700000000000000;
  }

  if (a1)
  {
    v24 = v26;
    v23 = v25;
  }

  if (a1 <= 2u)
  {
    a1 = v24;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v23;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6635254(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C797473;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0xE400000000000000;
      v13 = 1702521203;
      v14 = 0x656D7473756A6461;
      v15 = 0xEB0000000073746ELL;
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
        v9 = 0x6F6974616D696E61;
        v11 = 0xE90000000000006ELL;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1702521203;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0x656D7473756A6461;
  v20 = 0xEB0000000073746ELL;
  if (a1 != 3)
  {
    v19 = 1885433183;
    v20 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v16 = v19;
    v18 = v20;
  }

  v21 = 0xE500000000000000;
  v22 = 0x656C797473;
  if (a1)
  {
    v22 = 0x6F6974616D696E61;
    v21 = 0xE90000000000006ELL;
  }

  if (a1 <= 1u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v21;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6635414(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
    a1 = 0xD000000000000014;
  }

  if (v9)
  {
    a2 = 0x80000001D73C1570;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D66354EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      a1 = 0x6F69746172;
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
    a1 = 1937207154;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D66355C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6168706C61;
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
    a1 = 0x6168706C61;
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

uint64_t sub_1D66356B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        v11 = 0xEA00000000007374;
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
    v14 = 0x615272656E726F63;
    v16 = 0xEC00000073756964;
  }

  v17 = 0xE500000000000000;
  v18 = 0x726F6C6F63;
  if (a1)
  {
    v18 = 0x65736E4965676465;
    v17 = 0xEA00000000007374;
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

uint64_t sub_1D6635844(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0xE600000000000000;
      v15 = 0x73776F726874;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE800000000000000;
      v17 = 0x6E6572646C696863;
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
    v18 = 0x73776F726874;
    v20 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x736E6F6974706FLL;
    v20 = 0xE700000000000000;
  }

  v21 = 0x696669746E656469;
  v22 = 0xEA00000000007265;
  v23 = 0xE800000000000000;
  v24 = 0x6E6572646C696863;
  if (a1 != 1)
  {
    v24 = 0x726F7463656C6573;
    v23 = 0xE900000000000073;
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

uint64_t sub_1D6635A4C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v18 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 2019912806;
      if (a1 != 2)
      {
        v12 = 1885433183;
      }

      if (a1)
      {
        v10 = 0x6E656D6574617473;
        v9 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v9;
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

  v15 = 0x696669746E656469;
  v16 = 0xEA00000000007265;
  if (a1)
  {
    v15 = 0x6E656D6574617473;
    v16 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    a1 = v15;
  }

  else
  {
    a1 = v13;
  }

  if (v14 <= 1)
  {
    a2 = v16;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v18;
}

uint64_t sub_1D6635BC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 7107189;
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
      a1 = 7107189;
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
    a2 = 0xE700000000000000;
    a1 = 0x746E65746E6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6635CEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x5373726566657270;
      v10 = 0xED0000656372756FLL;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x676E6964646170;
      v14 = 0x615272656E726F63;
      v15 = 0xEC00000073756964;
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
        v9 = 1953394534;
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

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1953394534;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0xE700000000000000;
  v20 = 0x676E6964646170;
  v21 = 0x615272656E726F63;
  v22 = 0xEC00000073756964;
  if (a1 != 3)
  {
    v21 = 1885433183;
    v22 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v20 = v21;
    v19 = v22;
  }

  if (!a1)
  {
    v16 = 0x5373726566657270;
    v18 = 0xED0000656372756FLL;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v20;
  }

  if (v17 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v19;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6635EC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v13 = 0x656C616373;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (!a1)
      {
        v9 = 0x656C797473;
        v11 = 0xE500000000000000;
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

  v9 = 0x656C797473;
  v10 = a1;
  v11 = 0xE500000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x656C616373;
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

uint64_t sub_1D6636014(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x656C616373;
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
        a1 = 0x746867696577;
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
      a1 = 0x656C616373;
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
    a2 = 0xE600000000000000;
    a1 = 0x746867696577;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663613C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x746867696577;
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
        a1 = 0x656C616373;
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
      a1 = 0x746867696577;
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
    a2 = 0xE500000000000000;
    a1 = 0x656C616373;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636264(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1702521203;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x656C616373;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x746867696577;
    v11 = 0xE600000000000000;
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

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6636360(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      a1 = 0x656C616373;
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
    a1 = 1953394534;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D663643C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x746867696568;
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
        a1 = 0x6874646977;
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
      a1 = 0x746867696568;
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
    a2 = 0xE500000000000000;
    a1 = 0x6874646977;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636564(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      a2 = 0xED00006E6F697373;
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6572707845736872;
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
        a1 = 0x657270784573686CLL;
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
      a1 = 0x6572707845736872;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xED00006E6F697373;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 0x657270784573686CLL;
    a2 = 0xED00006E6F697373;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66366B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x7470697263736564;
      v13 = 0xEB000000006E6F69;
      v14 = 0xE700000000000000;
      v15 = 0x73676E69727473;
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
        v9 = 1701667182;
        v10 = 0xE400000000000000;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1701667182;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0x7470697263736564;
  v20 = 0xEB000000006E6F69;
  v21 = 0xE700000000000000;
  v22 = 0x73676E69727473;
  if (a1 != 3)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v19 = v22;
    v20 = v21;
  }

  if (!a1)
  {
    v16 = 0x696669746E656469;
    v18 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v19;
  }

  if (v17 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v20;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6636880(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v25 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x6E6572646C696863;
      v14 = 2019912806;
      if (a1 != 4)
      {
        v14 = 1885433183;
      }

      if (a1 != 3)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      v15 = 0xE500000000000000;
      v16 = 0x65706F6373;
      if (a1 != 1)
      {
        v16 = 0x636E657265666572;
        v15 = 0xEA00000000007365;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v9;
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

  v25 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 2019912806;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 != 4)
  {
    v17 = 1885433183;
    v19 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v17 = 0x6E6572646C696863;
    v19 = 0xE800000000000000;
  }

  v20 = 0x696669746E656469;
  v21 = 0xEA00000000007265;
  v22 = 0xE500000000000000;
  v23 = 0x65706F6373;
  if (a1 != 1)
  {
    v23 = 0x636E657265666572;
    v22 = 0xEA00000000007365;
  }

  if (a1)
  {
    v20 = v23;
    v21 = v22;
  }

  if (a1 <= 2u)
  {
    a1 = v20;
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

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v25;
}

uint64_t sub_1D6636A70(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737569646172;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6F756E69746E6F63;
      v13 = 0xEA00000000007375;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x7372656E726F63;
        v11 = 0xE700000000000000;
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
    v14 = 0x6F756E69746E6F63;
    v16 = 0xEA00000000007375;
  }

  v17 = 0xE600000000000000;
  v18 = 0x737569646172;
  if (a1)
  {
    v18 = 0x7372656E726F63;
    v17 = 0xE700000000000000;
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

uint64_t sub_1D6636BF0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6F756E69746E6F63;
      }

      if (v9)
      {
        a2 = 0xEA00000000007375;
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
    a1 = 0x6F756E69746E6F63;
  }

  if (v10)
  {
    a2 = 0xEA00000000007375;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636CEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6574656D61726170;
      }

      if (v9)
      {
        a2 = 0xEA00000000007372;
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
    a1 = 0x6574656D61726170;
  }

  if (v10)
  {
    a2 = 0xEA00000000007372;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636DE8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v19 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_19;
    }
  }

  else
  {
    v19 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE800000000000000;
  v13 = 0x6C616E7265746E69;
  v14 = 0xE500000000000000;
  v15 = 0x726F6C6F63;
  if (a1 != 4)
  {
    v15 = 1885433183;
    v14 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE600000000000000;
  v17 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v17 = 1819044198;
    v16 = 0xE400000000000000;
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

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D6636F18(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x736567616B636170;
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
    a1 = 0x736567616B636170;
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

uint64_t sub_1D663703C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v21 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x6E6572646C696863;
      v14 = 2019912806;
      if (a1 != 3)
      {
        v14 = 1885433183;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v10 = 0x6E656D6574617473;
        v9 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v9;
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
    v15 = 0x6E6572646C696863;
    v17 = 0xE800000000000000;
  }

  v18 = 0x696669746E656469;
  v19 = 0xEA00000000007265;
  if (a1)
  {
    v18 = 0x6E656D6574617473;
    v19 = 0xEA00000000007374;
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

uint64_t sub_1D66371F4(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v14 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 1702521203;
  if (a1 != 2)
  {
    v12 = 1885433183;
  }

  if (a1)
  {
    v9 = 0xD000000000000010;
    v11 = 0x80000001D73BD6B0;
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

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D66372F4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v19 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_19;
    }
  }

  else
  {
    v19 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1702521203;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x737469617274;
  v14 = 0x7475626972747461;
  v15 = 0xEA00000000007365;
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

  v16 = 0xE700000000000000;
  v17 = 0x676E696C616373;
  if (a1 != 1)
  {
    v17 = 0x746867696577;
    v16 = 0xE600000000000000;
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

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D6637434(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE400000000000000;
      v13 = 2019912806;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE600000000000000;
      v15 = 0x73776F726874;
      if (a1 != 3)
      {
        v15 = 0x776F726874;
        v14 = 0xE500000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7365736163;
      if (a1 != 1)
      {
        v17 = 0x746C7561666564;
        v16 = 0xE700000000000000;
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

  v18 = 2019912806;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 != 5)
  {
    v18 = 1885433183;
    v20 = 0xE400000000000000;
  }

  v21 = 0xE600000000000000;
  v22 = 0x73776F726874;
  v23 = 0xE500000000000000;
  if (a1 != 3)
  {
    v22 = 0x776F726874;
    v21 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v22;
    v20 = v21;
  }

  v24 = 0x696669746E656469;
  v25 = 0xEA00000000007265;
  v26 = 0x7365736163;
  if (a1 != 1)
  {
    v26 = 0x746C7561666564;
    v23 = 0xE700000000000000;
  }

  if (a1)
  {
    v24 = v26;
    v25 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v24;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v25;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6637650(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x746E65746E6F63;
      v10 = a1;
      v11 = 0xE700000000000000;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
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
    v14 = 0x726F7463656C6573;
    v16 = 0xE900000000000073;
  }

  v17 = 0xE700000000000000;
  v18 = 0x746E65746E6F63;
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

uint64_t sub_1D66377D0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0x6F72506168706C61;
      v13 = 0xEE00726F73736563;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x646F4D646E656C62;
        v11 = 0xE900000000000065;
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
    v14 = 0x6F72506168706C61;
    v16 = 0xEE00726F73736563;
  }

  v17 = 0xE500000000000000;
  v18 = 0x726F6C6F63;
  if (a1)
  {
    v18 = 0x646F4D646E656C62;
    v17 = 0xE900000000000065;
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

uint64_t sub_1D6637968(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v10 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_9;
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
    a1 = 1885433183;
  }

  else
  {
    a1 = 1802723693;
  }

  a2 = 0xE400000000000000;
LABEL_9:
  MEMORY[0x1DA6F9910](a1, a2);

  return v10;
}

uint64_t sub_1D6637A20(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v17 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_17;
    }
  }

  else
  {
    v17 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE400000000000000;
  v13 = 1702521203;
  v14 = 0xE700000000000000;
  v15 = 0x676E696C616373;
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
    v9 = 7107189;
    v11 = 0xE300000000000000;
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

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v17;
}

uint64_t sub_1D6637B34(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x61746E6563726570;
      }

      if (v9)
      {
        a2 = 0xEA00000000006567;
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
    a1 = 0x61746E6563726570;
  }

  if (v10)
  {
    a2 = 0xEA00000000006567;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6637C30(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0x726F7463656C6573;
  v13 = 0xE900000000000073;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v13 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x65756C6176;
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

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6637D34(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v10 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_9;
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
    a1 = 1885433183;
  }

  else
  {
    a1 = 1937335659;
  }

  a2 = 0xE400000000000000;
LABEL_9:
  MEMORY[0x1DA6F9910](a1, a2);

  return v10;
}

uint64_t sub_1D6637DEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v19 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1952867692;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x6D6F74746F62;
      v16 = 0xE500000000000000;
      v17 = 0x7468676972;
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
        v9 = 7368564;
        v11 = 0xE300000000000000;
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

  v9 = 7368564;
  v10 = a1;
  v11 = 0xE300000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x6D6F74746F62;
  v14 = 0xE500000000000000;
  v15 = 0x7468676972;
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
    v9 = 1952867692;
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

uint64_t sub_1D6637F70(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v14 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE700000000000000;
  v12 = 0x676E696C616373;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v11 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1702521203;
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
    a2 = 0xE400000000000000;
  }

  else
  {
    a2 = v11;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D6638068(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v7 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v7 = 544366966;
  }

  if (a1)
  {
    v5 = 0x6D756D6978616DLL;
  }

  else
  {
    v5 = 0x6D756D696E696DLL;
  }

  MEMORY[0x1DA6F9910](v5, 0xE700000000000000);

  return v7;
}

uint64_t sub_1D6638110(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v10 = a4();
  if (!v11)
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    a1 = a6(a1);
    a2 = v12;
    goto LABEL_6;
  }

  v14 = v10;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if ((a3 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D66381CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x6E656E6F706D6F63;
      }

      if (v9)
      {
        a2 = 0xEA00000000007374;
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
    a1 = 0x6E656E6F706D6F63;
  }

  if (v10)
  {
    a2 = 0xEA00000000007374;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66382C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x7865646E69;
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
    a1 = 0x7865646E69;
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

uint64_t sub_1D66383B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x726F6C6F63;
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
        a1 = 0x656C797473;
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
      a1 = 0x726F6C6F63;
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
    a1 = 0x656C797473;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66384DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v15 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1701734764;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x6E6D756C6F63;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (!a1)
      {
        v9 = 0x68746150656C6966;
        v11 = 0xE800000000000000;
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

  v9 = 0x68746150656C6966;
  v10 = a1;
  v11 = 0xE800000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x6E6D756C6F63;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1701734764;
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

uint64_t sub_1D6638634(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      a2 = 0xEA0000000000646ELL;
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x756F72676B636162;
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
        a1 = 0x756F726765726F66;
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
      a1 = 0x756F72676B636162;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA0000000000646ELL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 0x756F726765726F66;
    a2 = 0xEA0000000000646ELL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6638774(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x6C65537865676572;
      v13 = 0xEE0073726F746365;
      v14 = 0xE800000000000000;
      v15 = 0x6E6572646C696863;
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
        v9 = 0x726F7463656C6573;
        v10 = 0xE900000000000073;
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
    v16 = 0x6E6572646C696863;
    v18 = 0xE800000000000000;
  }

  if (a1 == 2)
  {
    v16 = 0x6C65537865676572;
    v18 = 0xEE0073726F746365;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x726F7463656C6573;
    v20 = 0xE900000000000073;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663895C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 6579570;
      v10 = a1;
      v11 = 0xE300000000000000;
      v12 = 0xE400000000000000;
      v13 = 1702194274;
      v14 = 0xE500000000000000;
      v15 = 0x6168706C61;
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
        v9 = 0x6E65657267;
        v11 = 0xE500000000000000;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1702194274;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0xE500000000000000;
  v20 = 0x6168706C61;
  if (a1 != 3)
  {
    v20 = 1885433183;
    v19 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v16 = v20;
    v18 = v19;
  }

  v21 = 0xE300000000000000;
  v22 = 6579570;
  if (a1)
  {
    v22 = 0x6E65657267;
    v21 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v21;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6638AEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE600000000000000;
      v13 = 0x7365756C6176;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x6567617373656DLL;
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
    v14 = 0x7365756C6176;
    v16 = 0xE600000000000000;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x6567617373656DLL;
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

uint64_t sub_1D6638C6C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C746974;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x656C797473;
      v13 = 0xE500000000000000;
      v14 = 0x736D657469;
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
        v9 = 0x6567616D69;
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
        a2 = 0xE500000000000000;
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
    v15 = 0x736D657469;
    v17 = 0xE500000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x656C797473;
    v17 = 0xE500000000000000;
  }

  v18 = 0x656C746974;
  if (a1)
  {
    v18 = 0x6567616D69;
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
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6638E04(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x656D7473756A6461;
      v13 = 0xEB0000000073746ELL;
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
        v9 = 1702521203;
        v10 = 0xE400000000000000;
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

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 1702521203;
  v16 = a1;
  v17 = 0xE400000000000000;
  v18 = 0x656D7473756A6461;
  v19 = 0xEB0000000073746ELL;
  v20 = 2019912806;
  if (a1 != 3)
  {
    v20 = 1885433183;
  }

  if (a1 != 2)
  {
    v18 = v20;
    v19 = 0xE400000000000000;
  }

  if (!a1)
  {
    v15 = 0x696669746E656469;
    v17 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v15;
  }

  else
  {
    a1 = v18;
  }

  if (v16 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v19;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6638FBC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
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

      v16 = 0x6564496B636F6C62;
      v17 = 0xEF7265696669746ELL;
      if (a1 != 1)
      {
        v16 = 0x73776F726874;
        v17 = 0xE600000000000000;
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
    v18 = 0x736E6F6974706FLL;
    v20 = 0xE700000000000000;
  }

  v21 = 0x696669746E656469;
  v22 = 0xEA00000000007265;
  v23 = 0x6564496B636F6C62;
  v24 = 0xEF7265696669746ELL;
  if (a1 != 1)
  {
    v23 = 0x73776F726874;
    v24 = 0xE600000000000000;
  }

  if (a1)
  {
    v21 = v23;
    v22 = v24;
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

uint64_t sub_1D66391DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
      v14 = 0xE700000000000000;
      v15 = 0x736E6F6974706FLL;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0x6465646E65747865;
      if (a1 != 1)
      {
        v16 = 0x6E6572646C696863;
      }

      if (a1)
      {
        v9 = v16;
        v10 = 0xE800000000000000;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 1885433183;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 == 4)
  {
    v17 = 0x736E6F6974706FLL;
    v19 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v17 = 0x726F7463656C6573;
    v19 = 0xE900000000000073;
  }

  v20 = 0x696669746E656469;
  v21 = 0xEA00000000007265;
  v22 = 0x6465646E65747865;
  if (a1 != 1)
  {
    v22 = 0x6E6572646C696863;
  }

  if (a1)
  {
    v20 = v22;
    v21 = 0xE800000000000000;
  }

  if (a1 <= 2u)
  {
    a1 = v20;
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

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D66393EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v18 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C746974;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6E6F69746361;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v11 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x6567616D69;
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
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = v11;
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

  v13 = 1885433183;
  v14 = a1;
  v15 = 0xE400000000000000;
  if (a1 == 2)
  {
    v13 = 0x6E6F69746361;
    v15 = 0xE600000000000000;
  }

  v16 = 0x656C746974;
  if (a1)
  {
    v16 = 0x6567616D69;
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
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v15;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v18;
}

uint64_t sub_1D6639554(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v21 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x73726F6C6F63;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6F69746365726964;
      v13 = 0xE600000000000000;
      v14 = 0x74657366666FLL;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 == 2)
      {
        v13 = 0xE90000000000006ELL;
      }

      else
      {
        v12 = v14;
      }

      if (a1)
      {
        v9 = 0x6E6F697461636F6CLL;
        v11 = 0xE900000000000073;
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

      goto LABEL_30;
    }

LABEL_17:

    goto LABEL_30;
  }

  v21 = 544366966;
  if (a3)
  {
    goto LABEL_17;
  }

  v15 = 1885433183;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 == 3)
  {
    v15 = 0x74657366666FLL;
    v17 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6F69746365726964;
    v17 = 0xE90000000000006ELL;
  }

  v18 = 0xE600000000000000;
  v19 = 0x73726F6C6F63;
  if (a1)
  {
    v19 = 0x6E6F697461636F6CLL;
    v18 = 0xE900000000000073;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v17;
  }

LABEL_30:
  MEMORY[0x1DA6F9910](a1, a2);

  return v21;
}

uint64_t sub_1D663970C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6574656D61726170;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000007372;
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
      a1 = 0x6574656D61726170;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000007372;
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

uint64_t sub_1D6639844(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701080941;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE800000000000000;
  v13 = 0x6E6F697469736F70;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x746E65746E6F63;
    v11 = 0xE700000000000000;
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

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6639948(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v7 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v7 = 544366966;
  }

  v5 = sub_1D68823EC(a1);
  MEMORY[0x1DA6F9910](v5);

  return v7;
}

uint64_t sub_1D66399C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE500000000000000;
      v13 = 0x726F6C6F63;
      v14 = 0xE600000000000000;
      v15 = 0x6E6F69746F6DLL;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE700000000000000;
      v17 = 0x7974696361706FLL;
      if (a1 != 1)
      {
        v17 = 0x74657366666FLL;
        v16 = 0xE600000000000000;
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
    v18 = 0x6E6F69746F6DLL;
    v20 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x726F6C6F63;
    v20 = 0xE500000000000000;
  }

  v21 = 0xE600000000000000;
  v22 = 0x737569646172;
  v23 = 0xE700000000000000;
  v24 = 0x7974696361706FLL;
  if (a1 != 1)
  {
    v24 = 0x74657366666FLL;
    v23 = 0xE600000000000000;
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

uint64_t sub_1D6639BA8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6874646977;
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
        a1 = 0x746867696568;
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
      a1 = 0x6874646977;
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
    a2 = 0xE600000000000000;
    a1 = 0x746867696568;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6639CD0(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0x6E65646E65706564;
      v13 = 0xEA00000000007963;
      v14 = 0xD000000000000012;
      v15 = 0x80000001D73D2730;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v13 = v15;
      }

      if (a1)
      {
        v10 = 0x65756C6176;
        v9 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v9;
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
    v16 = 0xD000000000000012;
    v18 = 0x80000001D73D2730;
  }

  if (a1 == 2)
  {
    v16 = 0x6E65646E65706564;
    v18 = 0xEA00000000007963;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x65756C6176;
    v20 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6639EA0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x656C616373;
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
      a1 = 0x74616C736E617274;
      a2 = 0xE900000000000065;
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
    a1 = 0x656C616373;
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

uint64_t sub_1D6639FBC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x696669746E656469;
      }

      if (v9)
      {
        a2 = 0xEA00000000007265;
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
    a1 = 0x696669746E656469;
  }

  if (v10)
  {
    a2 = 0xEA00000000007265;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663A0B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x7365676465;
      v10 = a1;
      v11 = 0x74746150656E696CLL;
      v12 = 0xEB000000006E7265;
      if (a1 != 5)
      {
        v11 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v13 = 0xE500000000000000;
      v14 = 0x7465736E69;
      if (a1 != 3)
      {
        v14 = 0x706143656E696CLL;
        v13 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v11 = v14;
        v12 = v13;
      }

      v15 = 0x726F6C6F63;
      if (a1 != 1)
      {
        v15 = 0x6874646977;
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
        a1 = v11;
      }

      if (v10 <= 2)
      {
        a2 = 0xE500000000000000;
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

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 5)
  {
    v16 = 0x74746150656E696CLL;
    v18 = 0xEB000000006E7265;
  }

  v19 = 0xE500000000000000;
  v20 = 0x7465736E69;
  if (a1 != 3)
  {
    v20 = 0x706143656E696CLL;
    v19 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v16 = v20;
    v18 = v19;
  }

  v21 = 0x7365676465;
  v22 = 0x726F6C6F63;
  if (a1 != 1)
  {
    v22 = 0x6874646977;
  }

  if (a1)
  {
    v21 = v22;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 2)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v18;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D663A2E8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE600000000000000;
      v15 = 0x73656C797473;
      if (a1 != 3)
      {
        v15 = 0x7365707974;
        v14 = 0xE500000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE400000000000000;
      v17 = 1701667182;
      if (a1 != 1)
      {
        v17 = 0x7470697263736564;
        v16 = 0xEB000000006E6F69;
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

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1701667182;
  v19 = a1;
  v20 = 0xE400000000000000;
  v21 = 0xE700000000000000;
  v22 = 0x736E6F6974706FLL;
  if (a1 != 5)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  v23 = 0xE600000000000000;
  v24 = 0x73656C797473;
  if (a1 != 3)
  {
    v24 = 0x7365707974;
    v23 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 != 1)
  {
    v18 = 0x7470697263736564;
    v20 = 0xEB000000006E6F69;
  }

  if (!a1)
  {
    v18 = 0x696669746E656469;
    v20 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v22;
  }

  if (v19 <= 2)
  {
    a2 = v20;
  }

  else
  {
    a2 = v21;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D663A520(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 121;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE100000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a2 = 0xE100000000000000;
      a1 = 120;
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
    a1 = 121;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE100000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663A61C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
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
        v9 = 0x6E6572646C696863;
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
    v16 = 0x726F7463656C6573;
    v18 = 0xE900000000000073;
  }

  if (a1 == 2)
  {
    v16 = 0x736E6F6974706FLL;
    v18 = 0xE700000000000000;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x6E6572646C696863;
    v20 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663A7EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0x6974696E69666564;
  v13 = 0xEA00000000006E6FLL;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v13 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x7470697263736564;
    v11 = 0xEB000000006E6F69;
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

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D663A8FC(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = 0x7370756F7267;
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
    v3 = 0x736D657469;
  }

  else
  {
    v3 = 0x7974697669746361;
  }

  if (v6 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xED0000736D657449;
  }

LABEL_11:
  MEMORY[0x1DA6F9910](v3, v7);

  return v9;
}

uint64_t sub_1D663A9DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x69747265706F7270;
      }

      if (v9)
      {
        a2 = 0xEA00000000007365;
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
    a1 = 0x69747265706F7270;
  }

  if (v10)
  {
    a2 = 0xEA00000000007365;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AAD8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6D6954616964656DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEB00000000676E69;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6F6974616D696E61;
      a2 = 0xEA0000000000736ELL;
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
    a1 = 0x6D6954616964656DLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xEB00000000676E69;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AC0C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x6874615079656BLL;
      v10 = a1;
      v11 = 0xE700000000000000;
      v12 = 0xE800000000000000;
      v13 = 0x6576697469646461;
      v14 = 0x6D6954616964656DLL;
      v15 = 0xEB00000000676E69;
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
        v9 = 0x6974616C756D7563;
        v11 = 0xEA00000000006576;
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
    v16 = 0x6D6954616964656DLL;
    v18 = 0xEB00000000676E69;
  }

  if (a1 == 2)
  {
    v16 = 0x6576697469646461;
    v18 = 0xE800000000000000;
  }

  v19 = 0xE700000000000000;
  v20 = 0x6874615079656BLL;
  if (a1)
  {
    v20 = 0x6974616C756D7563;
    v19 = 0xEA00000000006576;
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

uint64_t sub_1D663ADE4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x74616D726F66;
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
      a1 = 0x74616D726F66;
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
    a2 = 0xE700000000000000;
    a1 = 0x676E69646E6962;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AF14(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v8 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v8 = 544366966;
  }

  if (a1)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 0x6574617473;
  }

  if (a1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v6);

  return v8;
}

uint64_t sub_1D663AFC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
        a1 = 0x74696E55776F6873;
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
    a1 = 0x74696E55776F6873;
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

uint64_t sub_1D663B0B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v25 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x72756769666E6F63;
      v13 = 0xED00006E6F697461;
      v14 = 0xD000000000000011;
      v15 = 0x80000001D73D2810;
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

      v16 = 1701667182;
      if (a1 != 1)
      {
        v16 = 1684957547;
      }

      if (a1)
      {
        v9 = v16;
        v10 = 0xE400000000000000;
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

  v25 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 1701667182;
  v18 = a1;
  v19 = 0xE400000000000000;
  v20 = 0x72756769666E6F63;
  v21 = 0xED00006E6F697461;
  v22 = 0xD000000000000011;
  v23 = 0x80000001D73D2810;
  if (a1 != 4)
  {
    v22 = 1885433183;
    v23 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v20 = v22;
    v21 = v23;
  }

  if (a1 != 1)
  {
    v17 = 1684957547;
    v19 = 0xE400000000000000;
  }

  if (!a1)
  {
    v17 = 0x696669746E656469;
    v19 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v20;
  }

  if (v18 <= 2)
  {
    a2 = v19;
  }

  else
  {
    a2 = v21;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v25;
}

uint64_t sub_1D663B2B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
      a1 = 0x6373654464656566;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xEE00726F74706972;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1684366694;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D663B3A4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x736E656B6F74;
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
        a1 = 0x74616D726F66;
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
      a1 = 0x736E656B6F74;
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
    a1 = 0x74616D726F66;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663B4CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE500000000000000;
      v13 = 0x656C797473;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
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
    v16 = 0x726F7463656C6573;
    v18 = 0xE900000000000073;
  }

  if (a1 == 2)
  {
    v16 = 0x656C797473;
    v18 = 0xE500000000000000;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x746E65746E6F63;
    v20 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663B694(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
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
          a1 = 0x6973736572707865;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000006E6FLL;
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
      a1 = 0x6973736572707865;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000006E6FLL;
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

uint64_t sub_1D663B7CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xE900000000000065;
      v10 = 0x6C79745365746164;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x747865746E6F63;
      v14 = 0xE800000000000000;
      v15 = 0x656E6F5A656D6974;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0x6C797453656D6974;
      v17 = 0xE800000000000000;
      if (a1 == 1)
      {
        v17 = 0xE900000000000065;
      }

      else
      {
        v16 = 0x6574616C706D6574;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v9;
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

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_19;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x656E6F5A656D6974;
    v20 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x747865746E6F63;
    v20 = 0xE700000000000000;
  }

  v21 = 0x6C79745365746164;
  v22 = 0xE900000000000065;
  v23 = 0x6C797453656D6974;
  v24 = 0xE900000000000065;
  if (a1 != 1)
  {
    v23 = 0x6574616C706D6574;
    v24 = 0xE800000000000000;
  }

  if (a1)
  {
    v21 = v23;
    v22 = v24;
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

LABEL_34:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D663B9D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
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
  v29 = sub_1D66F97DC;
  v30 = v18;
  v24 = a5;
  v25 = a6;
  v26 = sub_1D66F97C4;
  v27 = v16;
  sub_1D5C75A4C(a2, a3, v15);
  LOBYTE(v11) = sub_1D5D2F7A4(a1, sub_1D615B49C, v28, sub_1D615B4A4, v23);

  return v11 & 1;
}

uint64_t sub_1D663BC38(uint64_t result, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      v5 = a2;
      v6 = a3;
      v7 = a4;
      sub_1D5C30060(0, a2, a3, a4, type metadata accessor for FormatObject);
      v8 = sub_1D726276C();
      a2 = v5;
      a3 = v6;
      a4 = v7;
      v9 = v8;
      *(v8 + 16) = v4;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    sub_1D5C30060(0, a2, a3, a4, type metadata accessor for FormatObject);
    return v9;
  }

  return result;
}

uint64_t sub_1D663BD7C(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      a2(0);
      v4 = sub_1D726276C();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    (a2)(0);
    return v4;
  }

  return result;
}

uint64_t sub_1D663BE60(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1D5C34074(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      result = sub_1D726276C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D663BF10(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v1 = result;
    result = sub_1D726276C();
    *(result + 16) = v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D663BF74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      result = sub_1D726276C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D663BFF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D5B5BF78(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCodingKeys;
  *(inited + 64) = sub_1D5C30408();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_1D5C30618(v3, v4);

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t sub_1D663C0BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  sub_1D5B5BF78(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = a3(0);
  *(inited + 64) = sub_1D5B58B84(a4, a5);
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  a6(v11, v12, v13);

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D635AC6C(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 56));
    sub_1D5D04BD4(v12);
    if ((~v12 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v11);
      goto LABEL_19;
    }

LABEL_17:
    sub_1D5C8500C(v11);
    sub_1D5C8500C(v12);
    goto LABEL_27;
  }

  *&v163 = *(a1 + 56);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v11);
    sub_1D5D04BD4(v12);
    sub_1D5D04BD4(v11);

    goto LABEL_17;
  }

  *v185 = v12;
  sub_1D5D04BD4(v11);
  sub_1D5D04BD4(v12);
  sub_1D5D04BD4(v11);
  v13 = static FormatFont.== infix(_:_:)(&v163, v185);

  sub_1D5C8500C(v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v14 = *(a1 + 112);
  v15 = *(a1 + 144);
  v199 = *(a1 + 128);
  v200 = v15;
  v16 = *(a1 + 144);
  v17 = *(a1 + 176);
  v201 = *(a1 + 160);
  v202 = v17;
  v18 = *(a1 + 80);
  v196[0] = *(a1 + 64);
  v196[1] = v18;
  v19 = *(a1 + 112);
  v21 = *(a1 + 64);
  v20 = *(a1 + 80);
  v197 = *(a1 + 96);
  v198 = v19;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v24 = *(a2 + 96);
  v203[3] = *(a2 + 112);
  v203[2] = v24;
  v25 = *(a2 + 96);
  v26 = *(a2 + 64);
  v203[1] = *(a2 + 80);
  v203[0] = v22;
  v28 = *(a2 + 144);
  v27 = *(a2 + 160);
  v29 = v27;
  v203[7] = *(a2 + 176);
  v203[6] = v27;
  v31 = *(a2 + 112);
  v30 = *(a2 + 128);
  v203[5] = *(a2 + 144);
  v203[4] = v30;
  v32 = *(a1 + 144);
  v167 = *(a1 + 128);
  *v168 = v32;
  v33 = *(a1 + 176);
  *&v168[16] = *(a1 + 160);
  *&v168[32] = v33;
  v34 = *(a1 + 80);
  v163 = *(a1 + 64);
  v164 = v34;
  v35 = *(a1 + 112);
  v165 = *(a1 + 96);
  v166 = v35;
  v169 = v31;
  *&v168[80] = v25;
  *&v168[64] = v23;
  *&v168[48] = v26;
  *&v170[48] = *(a2 + 176);
  *&v170[32] = v29;
  *&v170[16] = v28;
  *v170 = v30;
  v204[3] = v14;
  v204[2] = v197;
  v204[1] = v20;
  v204[0] = v21;
  v204[7] = *(a1 + 176);
  v204[6] = v201;
  v204[5] = v16;
  v204[4] = v199;
  if (sub_1D5CFD0B8(v204) == 1)
  {
    *&v185[64] = *v170;
    *&v185[80] = *&v170[16];
    v186 = *&v170[32];
    v187 = *&v170[48];
    *v185 = *&v168[48];
    *&v185[16] = *&v168[64];
    *&v185[32] = *&v168[80];
    *&v185[48] = v169;
    if (sub_1D5CFD0B8(v185) == 1)
    {
      v154 = v167;
      v155 = *v168;
      v156 = *&v168[16];
      v157 = *&v168[32];
      v150 = v163;
      v151 = v164;
      v152 = v165;
      v153 = v166;
      v36 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v196, &v137, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v203, &v137, &qword_1EDF34688, &type metadata for FormatFill, v36, sub_1D5C34D84);
      sub_1D66615F8(&v150, &qword_1EDF34688, &type metadata for FormatFill, v36, sub_1D5C34D84);
      goto LABEL_30;
    }

    v38 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v196, &v150, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v203, &v150, &qword_1EDF34688, &type metadata for FormatFill, v38, sub_1D5C34D84);
LABEL_25:
    v192 = *v170;
    v193 = *&v170[16];
    v194 = *&v170[32];
    v195 = *&v170[48];
    v188 = *&v168[48];
    v189 = *&v168[64];
    v190 = *&v168[80];
    v191 = v169;
    *&v185[64] = v167;
    *&v185[80] = *v168;
    v186 = *&v168[16];
    v187 = *&v168[32];
    *v185 = v163;
    *&v185[16] = v164;
    *&v185[32] = v165;
    *&v185[48] = v166;
    v39 = &unk_1EC88A048;
    v40 = &qword_1EDF34688;
    v41 = &type metadata for FormatFill;
    v42 = v185;
LABEL_26:
    sub_1D5D35558(v42, v39, v40, v41, sub_1D66F49B8);
    goto LABEL_27;
  }

  v154 = v167;
  v155 = *v168;
  v156 = *&v168[16];
  v157 = *&v168[32];
  v150 = v163;
  v151 = v164;
  v152 = v165;
  v153 = v166;
  v139 = v165;
  v140 = v166;
  v137 = v163;
  v138 = v164;
  v143 = *&v168[16];
  v144 = *&v168[32];
  v141 = v167;
  v142 = *v168;
  *&v185[48] = v169;
  *&v185[32] = *&v168[80];
  *&v185[16] = *&v168[64];
  *v185 = *&v168[48];
  v187 = *&v170[48];
  v186 = *&v170[32];
  *&v185[80] = *&v170[16];
  *&v185[64] = *v170;
  if (sub_1D5CFD0B8(v185) == 1)
  {
    v128 = v167;
    v129 = *v168;
    v130 = *&v168[16];
    v131 = *&v168[32];
    v124 = v163;
    v125 = v164;
    v126 = v165;
    v127 = v166;
    v37 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v196, &v114, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v203, &v114, &qword_1EDF34688, &type metadata for FormatFill, v37, sub_1D5C34D84);
    sub_1D5D355B8(&v150, &v114, &qword_1EDF34688, &type metadata for FormatFill, v37, sub_1D5C34D84);
    sub_1D5CFD368(&v124);
    goto LABEL_25;
  }

  v128 = *v170;
  v129 = *&v170[16];
  v130 = *&v170[32];
  v131 = *&v170[48];
  v124 = *&v168[48];
  v125 = *&v168[64];
  v126 = *&v168[80];
  v127 = v169;
  v45 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v196, &v114, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v203, &v114, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  sub_1D5D355B8(&v150, &v114, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  v46 = _s8NewsFeed10FormatFillO2eeoiySbAC_ACtFZ_0(&v137, &v124);
  v110 = v128;
  v111 = v129;
  v112 = v130;
  v113 = v131;
  v106 = v124;
  v107 = v125;
  v108 = v126;
  v109 = v127;
  sub_1D5CFD368(&v106);
  v118 = v141;
  v119 = v142;
  v120 = v143;
  v121 = v144;
  v114 = v137;
  v115 = v138;
  v116 = v139;
  v117 = v140;
  sub_1D5CFD368(&v114);
  v128 = v167;
  v129 = *v168;
  v130 = *&v168[16];
  v131 = *&v168[32];
  v124 = v163;
  v125 = v164;
  v126 = v165;
  v127 = v166;
  sub_1D66615F8(&v124, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v47 = *(a1 + 192);
  v48 = *(a2 + 192);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_27;
    }

    v49 = sub_1D633C9E8(v47, v48);

    if ((v49 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v48)
  {
    goto LABEL_27;
  }

  v50 = (a1 + 200);
  v51 = *(a1 + 248);
  v108 = *(a1 + 232);
  v109 = v51;
  v110 = *(a1 + 264);
  LOBYTE(v111) = *(a1 + 280);
  v52 = *(a1 + 216);
  v106 = *(a1 + 200);
  v107 = v52;
  v53 = *(a2 + 248);
  v116 = *(a2 + 232);
  v117 = v53;
  v118 = *(a2 + 264);
  LOBYTE(v119) = *(a2 + 280);
  v54 = *(a2 + 216);
  v114 = *(a2 + 200);
  v115 = v54;
  v55 = *(a1 + 216);
  v56 = *(a1 + 248);
  v182 = *(a1 + 232);
  v183 = v56;
  v184 = *(a1 + 264);
  v57 = *(a1 + 200);
  v181 = v55;
  v180 = v57;
  v58 = v111;
  *&v185[23] = *(a2 + 216);
  *&v185[39] = *(a2 + 232);
  *&v185[55] = *(a2 + 248);
  *&v185[71] = *(a2 + 264);
  *&v185[7] = *(a2 + 200);
  v59 = v119;
  if (v111 == 254)
  {
    if (v119 == 254)
    {
      v60 = *(a1 + 248);
      v165 = *(a1 + 232);
      v166 = v60;
      v167 = *(a1 + 264);
      v61 = *(a1 + 216);
      v163 = *v50;
      v164 = v61;
      v168[0] = -2;
      v62 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v106, &v150, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v114, &v150, &qword_1EDF33718, &type metadata for FormatShadow, v62, sub_1D5C34D84);
      sub_1D66615F8(&v163, &qword_1EDF33718, &type metadata for FormatShadow, v62, sub_1D5C34D84);
      goto LABEL_43;
    }

    v66 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v106, &v163, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v114, &v163, &qword_1EDF33718, &type metadata for FormatShadow, v66, sub_1D5C34D84);
    goto LABEL_41;
  }

  v63 = *(a1 + 248);
  v165 = *(a1 + 232);
  v166 = v63;
  v167 = *(a1 + 264);
  v64 = *(a1 + 216);
  v163 = *v50;
  v164 = v64;
  v168[0] = v111;
  LOBYTE(v155) = v111;
  v152 = v165;
  v153 = v63;
  v154 = v167;
  v150 = v163;
  v151 = v64;
  if (v119 == 254)
  {
    v139 = v165;
    v140 = v166;
    v141 = v167;
    LOBYTE(v142) = v168[0];
    v137 = v163;
    v138 = v164;
    v65 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v106, &v124, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v114, &v124, &qword_1EDF33718, &type metadata for FormatShadow, v65, sub_1D5C34D84);
    sub_1D5D355B8(&v163, &v124, &qword_1EDF33718, &type metadata for FormatShadow, v65, sub_1D5C34D84);
    sub_1D601144C(&v137);
LABEL_41:
    v165 = v182;
    v166 = v183;
    v167 = v184;
    v163 = v180;
    v164 = v181;
    *&v168[33] = *&v185[32];
    *&v168[49] = *&v185[48];
    *&v168[65] = *&v185[64];
    *&v168[1] = *v185;
    v168[0] = v58;
    *&v168[80] = *&v185[79];
    *&v168[17] = *&v185[16];
    v168[88] = v59;
    v39 = &qword_1EC8822D8;
    v40 = &qword_1EDF33718;
    v41 = &type metadata for FormatShadow;
    v42 = &v163;
    goto LABEL_26;
  }

  v67 = *(a2 + 248);
  v139 = *(a2 + 232);
  v140 = v67;
  v141 = *(a2 + 264);
  v68 = *(a2 + 216);
  v137 = *(a2 + 200);
  v138 = v68;
  LOBYTE(v142) = v119;
  v69 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v106, &v124, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(&v114, &v124, &qword_1EDF33718, &type metadata for FormatShadow, v69, sub_1D5C34D84);
  sub_1D5D355B8(&v163, &v124, &qword_1EDF33718, &type metadata for FormatShadow, v69, sub_1D5C34D84);
  v70 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v150, &v137);
  v122[2] = v139;
  v122[3] = v140;
  v122[4] = v141;
  v123 = v142;
  v122[0] = v137;
  v122[1] = v138;
  sub_1D601144C(v122);
  v126 = v152;
  v127 = v153;
  v128 = v154;
  LOBYTE(v129) = v155;
  v124 = v150;
  v125 = v151;
  sub_1D601144C(&v124);
  v139 = v182;
  v140 = v183;
  v141 = v184;
  v137 = v180;
  v138 = v181;
  LOBYTE(v142) = v58;
  sub_1D66615F8(&v137, &qword_1EDF33718, &type metadata for FormatShadow, v69, sub_1D5C34D84);
  if ((v70 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_43:
  v71 = *(a1 + 288);
  v72 = *(a2 + 288);
  if (v71)
  {
    if (!v72 || (sub_1D6349160(v71, v72) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v72)
  {
    goto LABEL_27;
  }

  v73 = *(a1 + 440);
  v74 = *(a1 + 472);
  *&v168[80] = *(a1 + 456);
  v169 = v74;
  v75 = *(a1 + 376);
  v76 = *(a1 + 408);
  *&v168[16] = *(a1 + 392);
  *&v168[32] = v76;
  v78 = *(a1 + 408);
  v77 = *(a1 + 424);
  v79 = v77;
  *&v168[64] = *(a1 + 440);
  *&v168[48] = v77;
  v80 = *(a1 + 312);
  v81 = *(a1 + 344);
  v165 = *(a1 + 328);
  v166 = v81;
  v83 = *(a1 + 344);
  v82 = *(a1 + 360);
  v84 = v82;
  *v168 = *(a1 + 376);
  v167 = v82;
  v85 = *(a1 + 312);
  v163 = *(a1 + 296);
  v164 = v85;
  v86 = *(a2 + 472);
  v177 = *(a2 + 456);
  v178 = v86;
  v87 = *(a2 + 408);
  v173 = *(a2 + 392);
  v174 = v87;
  v88 = *(a2 + 440);
  v175 = *(a2 + 424);
  v176 = v88;
  v89 = *(a2 + 376);
  v171 = *(a2 + 360);
  v172 = v89;
  v90 = *(a2 + 296);
  *&v170[24] = *(a2 + 312);
  v91 = *(a2 + 344);
  *&v170[40] = *(a2 + 328);
  *&v170[56] = v91;
  *&v170[8] = v90;
  v92 = *(a1 + 472);
  v190 = *&v168[80];
  v191 = v92;
  v186 = *&v168[16];
  v187 = v78;
  v189 = v73;
  v188 = v79;
  *&v185[32] = v165;
  *&v185[48] = v83;
  *&v185[80] = v75;
  *&v185[64] = v84;
  *v170 = *(a1 + 488);
  v179 = *(a2 + 488);
  LOWORD(v192) = *(a1 + 488);
  *&v185[16] = v80;
  *v185 = v163;
  if (sub_1D5D39FB4(v185) == 1)
  {
    v160 = v177;
    v161 = v178;
    v162 = v179;
    v156 = v173;
    v157 = v174;
    v158 = v175;
    v159 = v176;
    v152 = *&v170[40];
    v153 = *&v170[56];
    v154 = v171;
    v155 = v172;
    v150 = *&v170[8];
    v151 = *&v170[24];
    if (sub_1D5D39FB4(&v150) != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v147 = *&v168[80];
    v148 = v169;
    v149 = *v170;
    v143 = *&v168[16];
    v144 = *&v168[32];
    v145 = *&v168[48];
    v146 = *&v168[64];
    v139 = v165;
    v140 = v166;
    v141 = v167;
    v142 = *v168;
    v137 = v163;
    v138 = v164;
    v160 = v177;
    v161 = v178;
    v162 = v179;
    v156 = v173;
    v157 = v174;
    v158 = v175;
    v159 = v176;
    v152 = *&v170[40];
    v153 = *&v170[56];
    v154 = v171;
    v155 = v172;
    v150 = *&v170[8];
    v151 = *&v170[24];
    if (sub_1D5D39FB4(&v150) == 1)
    {
      goto LABEL_27;
    }

    v134 = v177;
    v135 = v178;
    v136 = v179;
    v130 = v173;
    v131 = v174;
    v132 = v175;
    v133 = v176;
    v126 = *&v170[40];
    v127 = *&v170[56];
    v128 = v171;
    v129 = v172;
    v124 = *&v170[8];
    v125 = *&v170[24];
    if ((_s8NewsFeed20FormatParagraphStyleV2eeoiySbAC_ACtFZ_0(&v137, &v124) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 504))
  {
    if ((*(a2 + 504) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((*(a2 + 504) & 1) != 0 || *(a1 + 496) != *(a2 + 496))
  {
    goto LABEL_27;
  }

  v93 = *(a1 + 512);
  v94 = *(a2 + 512);
  if (v93)
  {
    if (!v94)
    {
      goto LABEL_27;
    }

    v95 = sub_1D633A310(v93, v94);

    if ((v95 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v94)
    {
      goto LABEL_27;
    }
  }

  v96 = *(a1 + 520);
  v97 = *(a1 + 528);
  v98 = *(a2 + 520);
  v99 = *(a2 + 528);
  if (v96 == 9)
  {
    sub_1D62B5D18(*(a1 + 520), *(a1 + 528));
    sub_1D62B5D18(v98, v99);
    if (v98 != 9)
    {
LABEL_74:
      sub_1D62B5D00(v96, v97);
      sub_1D62B5D00(v98, v99);
      goto LABEL_27;
    }

    sub_1D62B5D00(v96, v97);
  }

  else
  {
    *&v163 = *(a1 + 520);
    *(&v163 + 1) = v97;
    if (v98 == 9)
    {
LABEL_73:
      sub_1D62B5D18(v96, v97);
      sub_1D62B5D18(v98, v99);
      sub_1D62B5D18(v96, v97);
      sub_1D5C84FF4(v97);
      goto LABEL_74;
    }

    LOBYTE(v150) = v98;
    *(&v150 + 1) = v99;
    sub_1D62B5D18(v96, v97);
    sub_1D62B5D18(v98, v99);
    sub_1D62B5D18(v96, v97);
    v100 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(&v163, &v150);
    sub_1D5C84FF4(*(&v150 + 1));
    sub_1D5C84FF4(*(&v163 + 1));
    sub_1D62B5D00(v96, v97);
    if (!v100)
    {
      goto LABEL_27;
    }
  }

  v96 = *(a1 + 536);
  v97 = *(a1 + 544);
  v98 = *(a2 + 536);
  v99 = *(a2 + 544);
  if (v96 != 9)
  {
    *&v163 = *(a1 + 536);
    *(&v163 + 1) = v97;
    if (v98 != 9)
    {
      LOBYTE(v150) = v98;
      *(&v150 + 1) = v99;
      sub_1D62B5D18(v96, v97);
      sub_1D62B5D18(v98, v99);
      sub_1D62B5D18(v96, v97);
      v101 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(&v163, &v150);
      sub_1D5C84FF4(*(&v150 + 1));
      sub_1D5C84FF4(*(&v163 + 1));
      sub_1D62B5D00(v96, v97);
      if (!v101)
      {
        goto LABEL_27;
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  sub_1D62B5D18(*(a1 + 536), *(a1 + 544));
  sub_1D62B5D18(v98, v99);
  if (v98 != 9)
  {
    goto LABEL_74;
  }

  sub_1D62B5D00(v96, v97);
LABEL_76:
  v102 = *(a1 + 552);
  v103 = *(a2 + 552);
  if (v102 == 2)
  {
    if (v103 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v103 == 2 || ((v103 ^ v102) & 1) != 0)
  {
    goto LABEL_27;
  }

  v104 = *(a1 + 560);
  v105 = *(a2 + 560);
  if (v104)
  {
    if (v105)
    {

      v43 = sub_1D633A310(v104, v105);

      return v43 & 1;
    }
  }

  else if (!v105)
  {

    v43 = 1;
    return v43 & 1;
  }

LABEL_27:
  v43 = 0;
  return v43 & 1;
}