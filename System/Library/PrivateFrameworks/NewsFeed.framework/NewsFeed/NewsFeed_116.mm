uint64_t sub_1D661B838()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x73726F6C6F63;
  *(v5 + 40) = 0xE600000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6E6F697461636F6CLL;
  *(v7 + 40) = 0xE900000000000073;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x6F69746365726964;
  *(v12 + 40) = 0xE90000000000006ELL;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x74657366666FLL;
  *(v15 + 40) = 0xE600000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661BA14()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 15, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F8398[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1701667182;
        break;
      case 2:
        v3 = 0x7470697263736564;
        v2 = 0xEB000000006E6F69;
        break;
      case 3:
        v2 = 0xE800000000000000;
        v3 = 0x797469726F697270;
        break;
      case 4:
        v2 = 0xE700000000000000;
        v3 = 0x736E6D756C6F63;
        break;
      case 5:
        v3 = 0x79536E6D756C6F63;
        v2 = 0xEC0000006D657473;
        break;
      case 6:
        v2 = 0xE800000000000000;
        v3 = 0x6E6572646C696863;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x73656C797473;
        break;
      case 8:
        v2 = 0xE600000000000000;
        v3 = 0x794274726F73;
        break;
      case 9:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xA:
        v2 = 0xE700000000000000;
        v3 = 0x736E6F6974706FLL;
        break;
      case 0xB:
        v2 = 0xE500000000000000;
        v3 = 0x7365707974;
        break;
      case 0xC:
        v3 = 0xD000000000000013;
        v2 = 0x80000001D73B9680;
        break;
      case 0xD:
        v3 = 0x6D65726975716572;
        v2 = 0xEC00000073746E65;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_1D661BD60()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 15, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F87A0[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 5:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 6:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 7:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 8:
        v2 = 0xE800000000000000;
        v3 = 0x6E6572646C696863;
        break;
      case 9:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xA:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xB:
        v3 = 0x6F6974616D696E61;
        v2 = 0xE90000000000006ELL;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 1802723693;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_1D661C074()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x656C797473;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6F6974616D696E61;
  *(v7 + 40) = 0xE90000000000006ELL;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 1702521203;
  *(v12 + 40) = 0xE400000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x656D7473756A6461;
  *(v15 + 40) = 0xEB0000000073746ELL;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661C254()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F50FA940[v0 + 32];
    if (v2 == 5)
    {
      v3 = 0x776F64616873;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 5)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v5 = 1752457584;
    }

    else
    {
      v5 = 0x73726564726F62;
    }

    if (v2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (byte_1F50FA940[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x7373616C63;
    }

    else
    {
      v7 = 0x726F7463656C6573;
    }

    if (v2 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE900000000000073;
    }

    if (!byte_1F50FA940[v0 + 32])
    {
      v7 = 0x696669746E656469;
      v8 = 0xEA00000000007265;
    }

    if (byte_1F50FA940[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F50FA940[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D661C43C()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x726F7463656C6573;
  *(v5 + 40) = 0xE800000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1752457584;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x73726564726F62;
  *(v12 + 40) = 0xE700000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x776F64616873;
  *(v15 + 40) = 0xE600000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661C610()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50F85B0[v0 + 32];
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 1702521203;
      }

      else
      {
        v3 = 0x657A69736572;
      }

      if (v2 == 3)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v2 == 2)
      {
        v3 = 0x7470697263736564;
        v4 = 0xEB000000006E6F69;
      }

      if (byte_1F50F85B0[v0 + 32])
      {
        v5 = 1701667182;
      }

      else
      {
        v5 = 0x696669746E656469;
      }

      if (byte_1F50F85B0[v0 + 32])
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xEA00000000007265;
      }

      v7 = byte_1F50F85B0[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 2019912806;
      }

      else
      {
        v3 = 1885433183;
      }

      v4 = 0xE400000000000000;
      if (v2 == 8)
      {
        v3 = 0x65737265766572;
        v4 = 0xE700000000000000;
      }

      v5 = 0x6E6572646C696863;
      if (v2 != 6)
      {
        v5 = 0x6465737265766572;
      }

      v6 = 0xE800000000000000;
      if (v2 == 5)
      {
        v5 = 0x656D7473756A6461;
        v6 = 0xEB0000000073746ELL;
      }

      v7 = byte_1F50F85B0[v0 + 32] <= 7u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D661C89C()
{
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 12, 0);
  v0 = 0;
  result = v17;
  do
  {
    v2 = byte_1F50F8FF8[v0 + 32];
    if (v2 > 5)
    {
      if (v2 == 10)
      {
        v10 = 2019912806;
      }

      else
      {
        v10 = 1885433183;
      }

      v11 = 0xE400000000000000;
      if (v2 == 9)
      {
        v10 = 0x65737265766572;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6E6572646C696863;
      if (v2 != 7)
      {
        v12 = 0x6465737265766572;
      }

      v13 = 0xE800000000000000;
      if (v2 == 6)
      {
        v12 = 0x656D7473756A6461;
        v13 = 0xEB0000000073746ELL;
      }

      if (byte_1F50F8FF8[v0 + 32] <= 8u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }

      if (byte_1F50F8FF8[v0 + 32] <= 8u)
      {
        v9 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      v3 = 0xEA00000000007265;
      if (v2 == 4)
      {
        v4 = 0x7470697263736564;
      }

      else
      {
        v4 = 1702521203;
      }

      if (v2 == 4)
      {
        v5 = 0xEB000000006E6F69;
      }

      else
      {
        v5 = 0xE400000000000000;
      }

      if (v2 == 3)
      {
        v4 = 1701667182;
        v5 = 0xE400000000000000;
      }

      if (v2 == 1)
      {
        v6 = 0xD000000000000010;
      }

      else
      {
        v6 = 0x6150746567726174;
      }

      if (v2 == 1)
      {
        v7 = 0x80000001D73B7600;
      }

      else
      {
        v7 = 0xEA00000000006874;
      }

      if (byte_1F50F8FF8[v0 + 32])
      {
        v3 = v7;
      }

      else
      {
        v6 = 0x696669746E656469;
      }

      if (byte_1F50F8FF8[v0 + 32] <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }

      if (byte_1F50F8FF8[v0 + 32] <= 2u)
      {
        v9 = v3;
      }

      else
      {
        v9 = v5;
      }
    }

    v18 = result;
    v15 = *(result + 16);
    v14 = *(result + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D5BFC364((v14 > 1), v15 + 1, 1);
      result = v18;
    }

    ++v0;
    *(result + 16) = v15 + 1;
    v16 = result + 16 * v15;
    *(v16 + 32) = v8;
    *(v16 + 40) = v9;
  }

  while (v0 != 12);
  return result;
}

uint64_t sub_1D661CB58()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 16, 0);
  v0 = 0;
  result = v9;
  v2 = 0x80000001D73C0340;
  do
  {
    v3 = 0xEA00000000007265;
    v4 = 0x696669746E656469;
    switch(byte_1F50F87D0[v0 + 32])
    {
      case 1:
        v3 = 0xE400000000000000;
        v4 = 1702521203;
        break;
      case 2:
        v3 = 0xE600000000000000;
        v4 = 0x657A69736572;
        break;
      case 3:
        v4 = 0x656D7473756A6461;
        v3 = 0xEB0000000073746ELL;
        break;
      case 4:
        v3 = 0xE500000000000000;
        v4 = 0x656C797473;
        break;
      case 5:
        v4 = 0x6F6974616D696E61;
        v3 = 0xE90000000000006ELL;
        break;
      case 6:
        v3 = 0xE700000000000000;
        v4 = 0x746E65746E6F63;
        break;
      case 7:
        v3 = 0xE600000000000000;
        v4 = 0x7865646E497ALL;
        break;
      case 8:
        v3 = 0xEA00000000007974;
        v4 = 0x696C696269736976;
        break;
      case 9:
        v4 = 0xD000000000000018;
        v3 = 0x80000001D73C48A0;
        break;
      case 0xA:
        v4 = 0xD000000000000017;
        v3 = 0x80000001D73C0A40;
        break;
      case 0xB:
        v4 = 0xD000000000000011;
        v3 = v2;
        break;
      case 0xC:
        v3 = 0xE900000000000073;
        v4 = 0x726F7463656C6573;
        break;
      case 0xD:
        v3 = 0xE400000000000000;
        v4 = 1701667182;
        break;
      case 0xE:
        v3 = 0xE400000000000000;
        v4 = 2019912806;
        break;
      case 0xF:
        v3 = 0xE400000000000000;
        v4 = 1885433183;
        break;
      default:
        break;
    }

    v10 = result;
    v6 = *(result + 16);
    v5 = *(result + 24);
    if (v6 >= v5 >> 1)
    {
      v8 = v2;
      sub_1D5BFC364((v5 > 1), v6 + 1, 1);
      v2 = v8;
      result = v10;
    }

    ++v0;
    *(result + 16) = v6 + 1;
    v7 = result + 16 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
  }

  while (v0 != 16);
  return result;
}

uint64_t sub_1D661CE8C()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 18, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F9AE0[v0 + 32])
    {
      case 1:
        v2 = 0xE500000000000000;
        v3 = 0x7373616C63;
        break;
      case 2:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 3:
        v2 = 0xE500000000000000;
        v3 = 0x6168706C61;
        break;
      case 4:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 5:
        v3 = 0x756F72676B636162;
        v2 = 0xEA0000000000646ELL;
        break;
      case 6:
        v2 = 0xE700000000000000;
        v3 = 0x73726564726F62;
        break;
      case 7:
        v3 = 0x4D746E65746E6F63;
        v2 = 0xEB0000000065646FLL;
        break;
      case 8:
        v3 = 0x615272656E726F63;
        v2 = 0xEC00000073756964;
        break;
      case 9:
        v3 = 0x6E697265646E6572;
        v2 = 0xED000065646F4D67;
        break;
      case 0xA:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 0xB:
        v2 = 0xEA0000000000736DLL;
        v3 = 0x726F66736E617274;
        break;
      case 0xC:
        v2 = 0xE600000000000000;
        v3 = 0x776F64616873;
        break;
      case 0xD:
        v2 = 0xE900000000000072;
        v3 = 0x6F6C6F43746E6974;
        break;
      case 0xE:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73BAF80;
        break;
      case 0xF:
        v2 = 0xE700000000000000;
        v3 = 0x74736575716572;
        break;
      case 0x10:
        v3 = 0x73614D6567616D69;
        v2 = 0xE90000000000006BLL;
        break;
      case 0x11:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 18);
  return result;
}

uint64_t sub_1D661D26C()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 15, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xE800000000000000;
    v3 = 0x726F7463656C6573;
    switch(byte_1F50F9B18[v0 + 32])
    {
      case 1:
        v3 = 0x756F72676B636162;
        v2 = 0xEA0000000000646ELL;
        break;
      case 2:
        v2 = 0xE700000000000000;
        v3 = 0x73726564726F62;
        break;
      case 3:
        v3 = 0x615272656E726F63;
        v2 = 0xEC00000073756964;
        break;
      case 4:
        v2 = 0xE600000000000000;
        v3 = 0x776F64616873;
        break;
      case 5:
        v2 = 0xE900000000000072;
        v3 = 0x6F6C6F43746E6974;
        break;
      case 6:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73BAF80;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 8:
        v2 = 0xEA0000000000736DLL;
        v3 = 0x726F66736E617274;
        break;
      case 9:
        v3 = 0x4D746E65746E6F63;
        v2 = 0xEB0000000065646FLL;
        break;
      case 0xA:
        v3 = 0x6E697265646E6572;
        v2 = 0xED000065646F4D67;
        break;
      case 0xB:
        v2 = 0xE500000000000000;
        v3 = 0x6168706C61;
        break;
      case 0xC:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 0xD:
        v2 = 0xE700000000000000;
        v3 = 0x74736575716572;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_1D661D604()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 13, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F8318[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1701667182;
        break;
      case 2:
        v3 = 0x7470697263736564;
        v2 = 0xEB000000006E6F69;
        break;
      case 3:
        v2 = 0xE400000000000000;
        v3 = 1684957547;
        break;
      case 4:
        v2 = 0xE600000000000000;
        v3 = 0x737469617274;
        break;
      case 5:
        v2 = 0xE800000000000000;
        v3 = 0x6E6572646C696863;
        break;
      case 6:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x73656C797473;
        break;
      case 8:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 9:
        v2 = 0xE700000000000000;
        v3 = 0x736E6F6974706FLL;
        break;
      case 0xA:
        v2 = 0xE500000000000000;
        v3 = 0x7365707974;
        break;
      case 0xB:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 13);
  return result;
}

uint64_t sub_1D661D8A8()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F50FA2F8[v0 + 32];
    if (v2 == 5)
    {
      v3 = 0x6E6572646C696863;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 5)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x736E6F6974706FLL;
    }

    else
    {
      v5 = 0x73656C797473;
    }

    if (v2 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (byte_1F50FA2F8[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x6E6564496D657469;
    }

    else
    {
      v7 = 0x726F7463656C6573;
    }

    if (v2 == 1)
    {
      v8 = 0xEE00726569666974;
    }

    else
    {
      v8 = 0xE900000000000073;
    }

    if (!byte_1F50FA2F8[v0 + 32])
    {
      v7 = 0x696669746E656469;
      v8 = 0xEA00000000007265;
    }

    if (byte_1F50FA2F8[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F50FA2F8[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D661DABC()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 14, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F85E0[v0 + 32])
    {
      case 1:
        v3 = 0x6E6564496D657469;
        v2 = 0xEE00726569666974;
        break;
      case 2:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 3:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 4:
        v2 = 0xEB0000000073746ELL;
        v3 = 0x656D7473756A6461;
        break;
      case 5:
        v2 = 0xE600000000000000;
        v3 = 0x73656C797473;
        break;
      case 6:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 7:
        v2 = 0xE700000000000000;
        v3 = 0x736E6F6974706FLL;
        break;
      case 8:
        v2 = 0xE600000000000000;
        v3 = 0x736B636F6C62;
        break;
      case 9:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 0xA:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 0xB:
        v3 = 0x7449656372756F73;
        v2 = 0xEB00000000736D65;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 14);
  return result;
}

uint64_t sub_1D661DDB8()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 13, 0);
  v0 = 0;
  result = v15;
  v2 = 0x80000001D73D26D0;
  v3 = 0x80000001D73C0A40;
  v4 = 0x80000001D73D26B0;
  v5 = 0x80000001D73BAF80;
  do
  {
    v6 = 0xEA00000000007265;
    v7 = 0x696669746E656469;
    switch(byte_1F50F9568[v0 + 32])
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x7373616C63;
        break;
      case 2:
        v7 = 0xD000000000000011;
        v6 = 0x80000001D73D2690;
        break;
      case 3:
        v7 = 0x656C65536C6C6563;
        v6 = 0xED00006E6F697463;
        break;
      case 4:
        v7 = 0x697463416C6C6563;
        v6 = 0xEA00000000006E6FLL;
        break;
      case 5:
        v7 = 0x426F547370696C63;
        v6 = 0xED000073646E756FLL;
        break;
      case 6:
        v7 = 0xD000000000000018;
        v6 = v5;
        break;
      case 7:
        v7 = 0xD000000000000010;
        v6 = v4;
        break;
      case 8:
        v6 = 0xE900000000000073;
        v7 = 0x726F7463656C6573;
        break;
      case 9:
        v7 = 0x7261507375636F66;
        v6 = 0xEF73726574656D61;
        break;
      case 0xA:
        v7 = 0xD000000000000017;
        v6 = v3;
        break;
      case 0xB:
        v7 = 0xD000000000000010;
        v6 = v2;
        break;
      case 0xC:
        v6 = 0xE400000000000000;
        v7 = 1885433183;
        break;
      default:
        break;
    }

    v16 = result;
    v9 = *(result + 16);
    v8 = *(result + 24);
    if (v9 >= v8 >> 1)
    {
      v13 = v3;
      v14 = v2;
      v11 = v5;
      v12 = v4;
      sub_1D5BFC364((v8 > 1), v9 + 1, 1);
      v5 = v11;
      v4 = v12;
      v3 = v13;
      v2 = v14;
      result = v16;
    }

    ++v0;
    *(result + 16) = v9 + 1;
    v10 = result + 16 * v9;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
  }

  while (v0 != 13);
  return result;
}

uint64_t sub_1D661E0EC()
{
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v23;
  v2 = 0x80000001D73D26D0;
  v3 = 0x80000001D73C0A40;
  v4 = 0x80000001D73D2690;
  do
  {
    v5 = byte_1F50F9598[v0 + 32];
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = 0x697463416C6C6563;
      }

      else
      {
        v6 = 0x426F547370696C63;
      }

      if (v5 == 3)
      {
        v9 = 0xEA00000000006E6FLL;
      }

      else
      {
        v9 = 0xED000073646E756FLL;
      }

      if (v5 == 2)
      {
        v6 = 0x656C65536C6C6563;
        v9 = 0xED00006E6F697463;
      }

      if (byte_1F50F9598[v0 + 32])
      {
        v10 = 0xD000000000000011;
      }

      else
      {
        v10 = 0x726F7463656C6573;
      }

      if (byte_1F50F9598[v0 + 32])
      {
        v13 = v4;
      }

      else
      {
        v13 = 0xE800000000000000;
      }

      v14 = byte_1F50F9598[v0 + 32] <= 1u;
    }

    else
    {
      v6 = 0xD000000000000017;
      if (v5 == 9)
      {
        v7 = 0xD000000000000010;
      }

      else
      {
        v7 = 1885433183;
      }

      if (v5 == 9)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      if (v5 == 8)
      {
        v9 = v3;
      }

      else
      {
        v6 = v7;
        v9 = v8;
      }

      v10 = 0xD000000000000018;
      v11 = 0x7261507375636F66;
      if (v5 == 6)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEF73726574656D61;
      if (v5 == 6)
      {
        v12 = 0x80000001D73D26B0;
      }

      if (v5 == 5)
      {
        v13 = 0x80000001D73BAF80;
      }

      else
      {
        v10 = v11;
        v13 = v12;
      }

      v14 = byte_1F50F9598[v0 + 32] <= 7u;
    }

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v6;
    }

    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = v9;
    }

    v24 = result;
    v18 = *(result + 16);
    v17 = *(result + 24);
    if (v18 >= v17 >> 1)
    {
      v21 = v3;
      v22 = v2;
      v20 = v4;
      sub_1D5BFC364((v17 > 1), v18 + 1, 1);
      v4 = v20;
      v3 = v21;
      v2 = v22;
      result = v24;
    }

    ++v0;
    *(result + 16) = v18 + 1;
    v19 = result + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D661E3A4()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x726F6C6F63;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x746E756F6D61;
  *(v7 + 40) = 0xE600000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0xD000000000000014;
  *(v12 + 40) = 0x80000001D73D26F0;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661E530()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 14, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50FA320[v0 + 32])
    {
      case 1:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        break;
      case 2:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 3:
        v3 = 0x6F6974616D696E61;
        v2 = 0xE90000000000006ELL;
        break;
      case 4:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 5:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 6:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 8:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 9:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 0xA:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xB:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 14);
  return result;
}

uint64_t sub_1D661E834()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 13, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50FB050[v0 + 32])
    {
      case 1:
        v2 = 0xE500000000000000;
        v3 = 0x7373616C63;
        break;
      case 2:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 3:
        v2 = 0xE500000000000000;
        v3 = 0x6168706C61;
        break;
      case 4:
        v3 = 0x756F72676B636162;
        v2 = 0xEA0000000000646ELL;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v3 = 0x73726564726F62;
        break;
      case 6:
        v3 = 0x615272656E726F63;
        v2 = 0xEC00000073756964;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x776F64616873;
        break;
      case 8:
        v2 = 0xE500000000000000;
        v3 = 0x6F65646976;
        break;
      case 9:
        v2 = 0xE600000000000000;
        v3 = 0x6E6F69746F6DLL;
        break;
      case 0xA:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73BAF80;
        break;
      case 0xB:
        v2 = 0xE700000000000000;
        v3 = 0x737265746C6966;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 13);
  return result;
}

uint64_t sub_1D661EB1C()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50FB080[v0 + 32];
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 0x73726564726F62;
      }

      else
      {
        v3 = 0x615272656E726F63;
      }

      if (v2 == 3)
      {
        v4 = 0xE700000000000000;
      }

      else
      {
        v4 = 0xEC00000073756964;
      }

      if (v2 == 2)
      {
        v3 = 0x756F72676B636162;
        v4 = 0xEA0000000000646ELL;
      }

      if (byte_1F50FB080[v0 + 32])
      {
        v5 = 0x6168706C61;
      }

      else
      {
        v5 = 0x726F7463656C6573;
      }

      if (byte_1F50FB080[v0 + 32])
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE800000000000000;
      }

      v7 = byte_1F50FB080[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 0x737265746C6966;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 9)
      {
        v4 = 0xE700000000000000;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 8)
      {
        v3 = 0xD000000000000018;
        v4 = 0x80000001D73BAF80;
      }

      v5 = 0x6F65646976;
      if (v2 == 6)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v5 = 0x6E6F69746F6DLL;
        v6 = 0xE600000000000000;
      }

      if (v2 == 5)
      {
        v5 = 0x776F64616873;
        v6 = 0xE600000000000000;
      }

      v7 = byte_1F50FB080[v0 + 32] <= 7u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D661EDB8()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x7470697263736564;
  *(v7 + 40) = 0xEB000000006E6F69;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x726F7463656C6573;
  *(v12 + 40) = 0xE900000000000073;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661EF58()
{
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v17;
  do
  {
    v2 = byte_1F50F8D88[v0 + 32];
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v10 = 0x7366664F656D6974;
      }

      else
      {
        v10 = 0x65646F4D6C6C6966;
      }

      if (v2 == 3)
      {
        v11 = 0xEA00000000007465;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v2 == 2)
      {
        v10 = 0x6D69546E69676562;
        v11 = 0xE900000000000065;
      }

      if (byte_1F50F8D88[v0 + 32])
      {
        v12 = 0x6465657073;
      }

      else
      {
        v12 = 0x6E6F697461727564;
      }

      if (byte_1F50F8D88[v0 + 32])
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }

      if (byte_1F50F8D88[v0 + 32] <= 1u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }

      if (byte_1F50F8D88[v0 + 32] <= 1u)
      {
        v9 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      v3 = 0xEE006E6F6974636ELL;
      if (v2 == 9)
      {
        v4 = 0xD000000000000012;
      }

      else
      {
        v4 = 1885433183;
      }

      if (v2 == 9)
      {
        v5 = 0x80000001D73D2710;
      }

      else
      {
        v5 = 0xE400000000000000;
      }

      if (v2 == 8)
      {
        v4 = 0x7546676E696D6974;
      }

      else
      {
        v3 = v5;
      }

      v6 = 0x7544746165706572;
      if (v2 != 6)
      {
        v6 = 0x657665726F747561;
      }

      v7 = 0xEC00000073657372;
      if (v2 == 6)
      {
        v7 = 0xEE006E6F69746172;
      }

      if (v2 == 5)
      {
        v6 = 0x6F43746165706572;
        v7 = 0xEB00000000746E75;
      }

      if (byte_1F50F8D88[v0 + 32] <= 7u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }

      if (byte_1F50F8D88[v0 + 32] <= 7u)
      {
        v9 = v7;
      }

      else
      {
        v9 = v3;
      }
    }

    v18 = result;
    v15 = *(result + 16);
    v14 = *(result + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D5BFC364((v14 > 1), v15 + 1, 1);
      result = v18;
    }

    ++v0;
    *(result + 16) = v15 + 1;
    v16 = result + 16 * v15;
    *(v16 + 32) = v8;
    *(v16 + 40) = v9;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D661F230()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x31746E696F70;
  *(v5 + 40) = 0xE600000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x32746E696F70;
  *(v7 + 40) = 0xE600000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x33746E696F70;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x34746E696F70;
  *(v15 + 40) = 0xE600000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661F3F4()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x656C746974;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6567616D69;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x656C797473;
  *(v12 + 40) = 0xE500000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x736D657469;
  *(v15 + 40) = 0xE500000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661F5B8()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x656C746974;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6567616D69;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x6E6F69746361;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D661F738()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 15, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F8638[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        break;
      case 6:
        v3 = 0x6D6954616964656DLL;
        v2 = 0xEB00000000676E69;
        break;
      case 7:
        v2 = 0xE700000000000000;
        v3 = 0x65646F4D6E7572;
        break;
      case 8:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 9:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 0xA:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 0xB:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xC:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_1D661FA70()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 9, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50F95C8[v0 + 32];
    if (v2 <= 3)
    {
      if (v2 == 2)
      {
        v3 = 0x726F7463656C6573;
      }

      else
      {
        v3 = 0x6168706C61;
      }

      if (v2 == 2)
      {
        v4 = 0xE900000000000073;
      }

      else
      {
        v4 = 0xE500000000000000;
      }

      if (byte_1F50F95C8[v0 + 32])
      {
        v5 = 0x7373616C63;
      }

      else
      {
        v5 = 0x696669746E656469;
      }

      if (byte_1F50F95C8[v0 + 32])
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xEA00000000007265;
      }

      v7 = byte_1F50F95C8[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 7)
      {
        v3 = 0xD000000000000018;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 7)
      {
        v4 = 0x80000001D73BAF80;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 6)
      {
        v3 = 0x776F64616873;
        v4 = 0xE600000000000000;
      }

      if (v2 == 4)
      {
        v5 = 0x73726564726F62;
      }

      else
      {
        v5 = 0x615272656E726F63;
      }

      if (v2 == 4)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xEC00000073756964;
      }

      v7 = byte_1F50F95C8[v0 + 32] <= 5u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 9);
  return result;
}

uint64_t sub_1D661FCD0()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F50F95F8[v0 + 32];
    if (v2 == 5)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 5)
    {
      v4 = 0x80000001D73BAF80;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x615272656E726F63;
    }

    else
    {
      v5 = 0x776F64616873;
    }

    if (v2 == 3)
    {
      v6 = 0xEC00000073756964;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (byte_1F50F95F8[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x6168706C61;
    }

    else
    {
      v7 = 0x73726564726F62;
    }

    if (v2 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (!byte_1F50F95F8[v0 + 32])
    {
      v7 = 0x726F7463656C6573;
      v8 = 0xE800000000000000;
    }

    if (byte_1F50F95F8[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F50F95F8[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D661FED0()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x65756C6176;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x6E65646E65706564;
  *(v12 + 40) = 0xEA00000000007963;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = 0x80000001D73D2730;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66200B4()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x65756C6176;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x726F7463656C6573;
  *(v12 + 40) = 0xE900000000000073;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D662023C()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6E656D6574617473;
  *(v7 + 40) = 0xEA00000000007374;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x6E6572646C696863;
  *(v12 + 40) = 0xE800000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 2019912806;
  *(v15 + 40) = 0xE400000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6620414()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x65756C6176;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x7265696669646F6DLL;
  *(v12 + 40) = 0xE900000000000073;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66205A8()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v0 = v12;
  v2 = *(v12 + 16);
  v1 = *(v12 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v12;
    v1 = *(v12 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x80000001D73D2750;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v12;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001D73D2770;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v12;
  *(v12 + 16) = v9 + 1;
  v11 = v12 + 16 * v9;
  *(v11 + 32) = 1885433183;
  *(v11 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66206EC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 1701080941;
  *(v5 + 40) = 0xE400000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x746E65746E6F63;
  *(v7 + 40) = 0xE700000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x6E6F697469736F70;
  *(v12 + 40) = 0xE800000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6620874()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x756F72676B636162;
  *(v5 + 40) = 0xEF726F6C6F43646ELL;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x65736E4965676465;
  *(v7 + 40) = 0xEA00000000007374;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  strcpy((v12 + 32), "cornerRadius");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6620A1C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6567617373656DLL;
  *(v7 + 40) = 0xE700000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x7365756C6176;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6620BAC()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50FB0D8[v0 + 32];
    if (v2 == 5)
    {
      v3 = 0x706143656E696CLL;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 5)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x65637265506E696DLL;
    }

    else
    {
      v5 = 0x656372655078616DLL;
    }

    if (byte_1F50FB0D8[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = 0xED0000656761746ELL;
    }

    if (v2 == 1)
    {
      v6 = 0x7369776B636F6C63;
    }

    else
    {
      v6 = 0x6372655070657473;
    }

    if (v2 == 1)
    {
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xEE00656761746E65;
    }

    if (!byte_1F50FB0D8[v0 + 32])
    {
      v6 = 0x737569646172;
      v7 = 0xE600000000000000;
    }

    if (byte_1F50FB0D8[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (byte_1F50FB0D8[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D6620DC0()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 14, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50FA3A0[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        break;
      case 5:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 6:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 7:
        v2 = 0xE400000000000000;
        v3 = 1684957547;
        break;
      case 8:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 9:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xA:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xB:
        v2 = 0xE400000000000000;
        v3 = 1701667182;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 14);
  return result;
}

uint64_t sub_1D662106C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x676E69646E6962;
  *(v5 + 40) = 0xE700000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1702521203;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x656C797473;
  *(v12 + 40) = 0xE500000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66211F0()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v0 = v12;
  v2 = *(v12 + 16);
  v1 = *(v12 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v12;
    v1 = *(v12 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = 0x80000001D73B7680;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v12;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  strcpy((v7 + 32), "postPurchase");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v12;
  *(v12 + 16) = v9 + 1;
  v11 = v12 + 16 * v9;
  *(v11 + 32) = 1885433183;
  *(v11 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D662133C()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 16, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50FA148[v0 + 32])
    {
      case 1:
        v3 = 0xD000000000000016;
        v2 = 0x80000001D73B7620;
        break;
      case 2:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 3:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 4:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        break;
      case 6:
        v2 = 0xE600000000000000;
        v3 = 0x6769666E6F63;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 8:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 9:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 0xA:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xB:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 1701667182;
        break;
      case 0xD:
        v2 = 0xE800000000000000;
        v3 = 0x6E6F697461636F6CLL;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xF:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 16);
  return result;
}

uint64_t sub_1D6621664()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v12;
  do
  {
    v2 = byte_1F5116B68[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0x726F7463656C6573;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 4)
    {
      v4 = 0xE900000000000073;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0xD000000000000018;
      v4 = 0x80000001D73BAF80;
    }

    if (v2 == 1)
    {
      v5 = 0x7373616C63;
    }

    else
    {
      v5 = 0x615272656E726F63;
    }

    if (v2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEC00000073756964;
    }

    if (!byte_1F5116B68[v0 + 32])
    {
      v5 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
    }

    if (byte_1F5116B68[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F5116B68[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v13 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      result = v13;
    }

    ++v0;
    *(result + 16) = v10 + 1;
    v11 = result + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D6621840()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x726F7463656C6573;
  *(v5 + 40) = 0xE800000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  strcpy((v7 + 32), "cornerRadius");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0xD000000000000018;
  *(v12 + 40) = 0x80000001D73BAF80;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66219DC()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 6579570;
  *(v5 + 40) = 0xE300000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6E65657267;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 1702194274;
  *(v12 + 40) = 0xE400000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x6168706C61;
  *(v15 + 40) = 0xE500000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6621BA4()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 1836020326;
  *(v5 + 40) = 0xE400000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 28532;
  *(v7 + 40) = 0xE200000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x73726F6C6F63;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x6E6F697461636F6CLL;
  *(v15 + 40) = 0xE900000000000073;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6621D70()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 16, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x4C52553178;
    switch(byte_1F50F8E30[v0 + 32])
    {
      case 1:
        v3 = 0x4C52553278;
        break;
      case 2:
        v3 = 0x4C52553378;
        break;
      case 3:
        v2 = 0xE700000000000000;
        v3 = 0x365F4C52553178;
        break;
      case 4:
        v3 = 0x365F4C52553278;
        goto LABEL_18;
      case 5:
        v3 = 0x365F4C52553378;
        goto LABEL_18;
      case 6:
        v2 = 0xE700000000000000;
        v3 = 0x385F4C52553178;
        break;
      case 7:
        v3 = 0x385F4C52553278;
        goto LABEL_18;
      case 8:
        v3 = 0x385F4C52553378;
LABEL_18:
        v2 = 0xE700000000000000;
        break;
      case 9:
        v2 = 0xE800000000000000;
        v3 = 0x32315F4C52553178;
        break;
      case 0xA:
        v3 = 0x32315F4C52553278;
        v2 = 0xE800000000000000;
        break;
      case 0xB:
        v3 = 0x32315F4C52553378;
        v2 = 0xE800000000000000;
        break;
      case 0xC:
        v2 = 0xE800000000000000;
        v3 = 0x38315F4C52553178;
        break;
      case 0xD:
        v3 = 0x38315F4C52553278;
        v2 = 0xE800000000000000;
        break;
      case 0xE:
        v3 = 0x38315F4C52553378;
        v2 = 0xE800000000000000;
        break;
      case 0xF:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 16);
  return result;
}

uint64_t sub_1D6621F78()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 31, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000004C52;
    v3 = 0x556F656469563178;
    switch(byte_1F50F8E60[v0 + 32])
    {
      case 1:
        v3 = 0x556F656469563278;
        break;
      case 2:
        v3 = 0x556F656469563378;
        break;
      case 3:
        v3 = 0x556F656469563178;
        v2 = 0xEC000000365F4C52;
        break;
      case 4:
        v3 = 0x556F656469563278;
        v2 = 0xEC000000365F4C52;
        break;
      case 5:
        v3 = 0x556F656469563378;
        v2 = 0xEC000000365F4C52;
        break;
      case 6:
        v3 = 0x556F656469563178;
        v2 = 0xEC000000385F4C52;
        break;
      case 7:
        v3 = 0x556F656469563278;
        v2 = 0xEC000000385F4C52;
        break;
      case 8:
        v3 = 0x556F656469563378;
        v2 = 0xEC000000385F4C52;
        break;
      case 9:
        v3 = 0x556F656469563178;
        goto LABEL_33;
      case 0xA:
        v3 = 0x556F656469563278;
        goto LABEL_33;
      case 0xB:
        v3 = 0x556F656469563378;
        goto LABEL_33;
      case 0xC:
        v3 = 0x556F656469563178;
        v2 = 0xED000038315F4C52;
        break;
      case 0xD:
        v3 = 0x556F656469563278;
        v2 = 0xED000038315F4C52;
        break;
      case 0xE:
        v3 = 0x556F656469563378;
        v2 = 0xED000038315F4C52;
        break;
      case 0xF:
        v3 = 0x556567616D493178;
        break;
      case 0x10:
        v3 = 0x556567616D493278;
        break;
      case 0x11:
        v3 = 0x556567616D493378;
        break;
      case 0x12:
        v3 = 0x556567616D493178;
        v2 = 0xEC000000365F4C52;
        break;
      case 0x13:
        v3 = 0x556567616D493278;
        v2 = 0xEC000000365F4C52;
        break;
      case 0x14:
        v3 = 0x556567616D493378;
        v2 = 0xEC000000365F4C52;
        break;
      case 0x15:
        v3 = 0x556567616D493178;
        v2 = 0xEC000000385F4C52;
        break;
      case 0x16:
        v3 = 0x556567616D493278;
        v2 = 0xEC000000385F4C52;
        break;
      case 0x17:
        v3 = 0x556567616D493378;
        v2 = 0xEC000000385F4C52;
        break;
      case 0x18:
        v3 = 0x556567616D493178;
        goto LABEL_33;
      case 0x19:
        v3 = 0x556567616D493278;
        goto LABEL_33;
      case 0x1A:
        v3 = 0x556567616D493378;
LABEL_33:
        v2 = 0xED000032315F4C52;
        break;
      case 0x1B:
        v3 = 0x556567616D493178;
        v2 = 0xED000038315F4C52;
        break;
      case 0x1C:
        v3 = 0x556567616D493278;
        v2 = 0xED000038315F4C52;
        break;
      case 0x1D:
        v3 = 0x556567616D493378;
        v2 = 0xED000038315F4C52;
        break;
      case 0x1E:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 31);
  return result;
}

uint64_t sub_1D6622240()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F8B10[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0x6E6572646C696863;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 4)
    {
      v5 = 0x656469727473;
    }

    else
    {
      v5 = 0x65706F6373;
    }

    if (v2 == 4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (byte_1F50F8B10[v0 + 32] <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 2)
    {
      v7 = 7235949;
    }

    else
    {
      v7 = 7889261;
    }

    v8 = 0xE300000000000000;
    if (byte_1F50F8B10[v0 + 32])
    {
      v9 = 0x6F69746172657469;
    }

    else
    {
      v9 = 0x696669746E656469;
    }

    if (byte_1F50F8B10[v0 + 32])
    {
      v10 = 0xE90000000000006ELL;
    }

    else
    {
      v10 = 0xEA00000000007265;
    }

    if (byte_1F50F8B10[v0 + 32] <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (byte_1F50F8B10[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F50F8B10[v0 + 32] <= 3u)
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

  while (v0 != 8);
  return result;
}

uint64_t sub_1D6622448()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x726F7463656C6573;
  *(v7 + 40) = 0xE900000000000073;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  strcpy((v12 + 32), "regexSelectors");
  *(v12 + 47) = -18;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x6E6572646C696863;
  *(v15 + 40) = 0xE800000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D662263C()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v0 = v12;
  v2 = *(v12 + 16);
  v1 = *(v12 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v12;
    v1 = *(v12 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x6F69736E656D6964;
  *(v5 + 40) = 0xE90000000000006ELL;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v12;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001D73B7600;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v12;
  *(v12 + 16) = v9 + 1;
  v11 = v12 + 16 * v9;
  *(v11 + 32) = 1885433183;
  *(v11 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6622784()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v12;
  do
  {
    v2 = byte_1F5117130[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0x6E6F69746F6DLL;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 4)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0x726F6C6F63;
      v4 = 0xE500000000000000;
    }

    if (v2 == 1)
    {
      v5 = 0x7974696361706FLL;
    }

    else
    {
      v5 = 0x74657366666FLL;
    }

    if (v2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (!byte_1F5117130[v0 + 32])
    {
      v5 = 0x737569646172;
      v6 = 0xE600000000000000;
    }

    if (byte_1F5117130[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F5117130[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v13 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      result = v13;
    }

    ++v0;
    *(result + 16) = v10 + 1;
    v11 = result + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D662291C()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 12, 0);
  v0 = 0;
  result = v19;
  v2 = 0x80000001D73C0340;
  do
  {
    v3 = byte_1F50FAF20[v0 + 32];
    if (v3 > 5)
    {
      v10 = 2019912806;
      if (v3 != 10)
      {
        v10 = 1885433183;
      }

      v11 = 0xE400000000000000;
      if (v3 == 9)
      {
        v10 = 0x726F7463656C6573;
        v11 = 0xE900000000000073;
      }

      v12 = 0xEA00000000007974;
      v13 = 0xD000000000000018;
      if (v3 == 7)
      {
        v14 = 0x80000001D73C48A0;
      }

      else
      {
        v13 = 0xD000000000000011;
        v14 = v2;
      }

      if (v3 == 6)
      {
        v13 = 0x696C696269736976;
      }

      else
      {
        v12 = v14;
      }

      if (byte_1F50FAF20[v0 + 32] <= 8u)
      {
        v8 = v13;
      }

      else
      {
        v8 = v10;
      }

      if (byte_1F50FAF20[v0 + 32] <= 8u)
      {
        v9 = v12;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      if (v3 == 4)
      {
        v4 = 0x656D7473756A6461;
      }

      else
      {
        v4 = 0x7865646E497ALL;
      }

      if (v3 == 4)
      {
        v5 = 0xEB0000000073746ELL;
      }

      else
      {
        v5 = 0xE600000000000000;
      }

      if (v3 == 3)
      {
        v4 = 0x657A69736572;
        v5 = 0xE600000000000000;
      }

      if (v3 == 1)
      {
        v6 = 0x746E65746E6F63;
      }

      else
      {
        v6 = 1702521203;
      }

      if (v3 == 1)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xE400000000000000;
      }

      if (!byte_1F50FAF20[v0 + 32])
      {
        v6 = 0x696669746E656469;
        v7 = 0xEA00000000007265;
      }

      if (byte_1F50FAF20[v0 + 32] <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }

      if (byte_1F50FAF20[v0 + 32] <= 2u)
      {
        v9 = v7;
      }

      else
      {
        v9 = v5;
      }
    }

    v20 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v18 = v2;
      sub_1D5BFC364((v15 > 1), v16 + 1, 1);
      v2 = v18;
      result = v20;
    }

    ++v0;
    *(result + 16) = v16 + 1;
    v17 = result + 16 * v16;
    *(v17 + 32) = v8;
    *(v17 + 40) = v9;
  }

  while (v0 != 12);
  return result;
}

uint64_t sub_1D6622BD0()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v15;
  do
  {
    v2 = byte_1F50F91E0[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0x656C616373;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 4)
    {
      v5 = 0x6E6F69746F6DLL;
    }

    else
    {
      v5 = 0x73646E656C62;
    }

    if (byte_1F50F91E0[v0 + 32] <= 5u)
    {
      v3 = v5;
      v4 = 0xE600000000000000;
    }

    if (v2 == 2)
    {
      v6 = 0x72657A6973;
    }

    else
    {
      v6 = 0x6152657461746F72;
    }

    if (v2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000736E616964;
    }

    if (byte_1F50F91E0[v0 + 32])
    {
      v8 = 0x726F6C6F63;
    }

    else
    {
      v8 = 0x696669746E656469;
    }

    if (byte_1F50F91E0[v0 + 32])
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xEA00000000007265;
    }

    if (byte_1F50F91E0[v0 + 32] <= 1u)
    {
      v6 = v8;
      v7 = v9;
    }

    if (byte_1F50F91E0[v0 + 32] <= 3u)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3;
    }

    if (byte_1F50F91E0[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v4;
    }

    v16 = result;
    v13 = *(result + 16);
    v12 = *(result + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D5BFC364((v12 > 1), v13 + 1, 1);
      result = v16;
    }

    ++v0;
    *(result + 16) = v13 + 1;
    v14 = result + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  while (v0 != 8);
  return result;
}

uint64_t sub_1D6622DE0()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F9C10[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0x80000001D73B8F40;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    v5 = 0xEA0000000000736DLL;
    if (v2 == 4)
    {
      v6 = 0x726F66736E617274;
    }

    else
    {
      v6 = 0x69747265706F7270;
    }

    if (v2 != 4)
    {
      v5 = 0xEA00000000007365;
    }

    if (byte_1F50F9C10[v0 + 32] <= 5u)
    {
      v3 = v6;
      v4 = v5;
    }

    if (v2 == 2)
    {
      v7 = 0x7470697263736564;
    }

    else
    {
      v7 = 0x736D657469;
    }

    if (v2 == 2)
    {
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (byte_1F50F9C10[v0 + 32])
    {
      v9 = 1701667182;
    }

    else
    {
      v9 = 0x696669746E656469;
    }

    if (byte_1F50F9C10[v0 + 32])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xEA00000000007265;
    }

    if (byte_1F50F9C10[v0 + 32] <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (byte_1F50F9C10[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F50F9C10[v0 + 32] <= 3u)
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

  while (v0 != 8);
  return result;
}

uint64_t sub_1D662300C()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v12;
  do
  {
    v2 = byte_1F51174C8[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0x736E6F6974706FLL;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 4)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0x726F7463656C6573;
      v4 = 0xE900000000000073;
    }

    if (v2 == 1)
    {
      v5 = 0x6465646E65747865;
    }

    else
    {
      v5 = 0x6E6572646C696863;
    }

    v6 = 0xE800000000000000;
    if (!byte_1F51174C8[v0 + 32])
    {
      v5 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
    }

    if (byte_1F51174C8[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F51174C8[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v13 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      result = v13;
    }

    ++v0;
    *(result + 16) = v10 + 1;
    v11 = result + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D66231D8()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F8EA0[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0x736B636F6C62;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 4)
    {
      v5 = 0x726F7463656C6573;
    }

    else
    {
      v5 = 0x736E6F6974706FLL;
    }

    if (v2 == 4)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (byte_1F50F8EA0[v0 + 32] <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 2)
    {
      v7 = 1701667182;
    }

    else
    {
      v7 = 0x7470697263736564;
    }

    if (v2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xEB000000006E6F69;
    }

    if (byte_1F50F8EA0[v0 + 32])
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x696669746E656469;
    }

    if (byte_1F50F8EA0[v0 + 32])
    {
      v10 = 0x80000001D73B75C0;
    }

    else
    {
      v10 = 0xEA00000000007265;
    }

    if (byte_1F50F8EA0[v0 + 32] <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (byte_1F50F8EA0[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F50F8EA0[v0 + 32] <= 3u)
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

  while (v0 != 8);
  return result;
}

uint64_t sub_1D6623414()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x68746150656C6966;
  *(v5 + 40) = 0xE800000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1701734764;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x6E6D756C6F63;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6623598()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v18;
  do
  {
    v2 = byte_1F50FACB8[v0 + 32];
    if (v2 <= 4)
    {
      v11 = 0xEA00000000007974;
      if (v2 == 3)
      {
        v12 = 0x656D7473756A6461;
      }

      else
      {
        v12 = 0x696C696269736976;
      }

      if (v2 == 3)
      {
        v11 = 0xEB0000000073746ELL;
      }

      if (v2 == 2)
      {
        v12 = 0x657A69736572;
        v11 = 0xE600000000000000;
      }

      if (byte_1F50FACB8[v0 + 32])
      {
        v13 = 1702521203;
      }

      else
      {
        v13 = 0x696669746E656469;
      }

      if (byte_1F50FACB8[v0 + 32])
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xEA00000000007265;
      }

      if (byte_1F50FACB8[v0 + 32] <= 1u)
      {
        v9 = v13;
      }

      else
      {
        v9 = v12;
      }

      if (byte_1F50FACB8[v0 + 32] <= 1u)
      {
        v10 = v14;
      }

      else
      {
        v10 = v11;
      }
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 2019912806;
      }

      else
      {
        v3 = 1885433183;
      }

      v4 = 0xE400000000000000;
      if (v2 == 8)
      {
        v3 = 0x656C797473;
        v4 = 0xE500000000000000;
      }

      v5 = 0xD000000000000018;
      v6 = 0x726F7463656C6573;
      if (v2 == 6)
      {
        v6 = 0xD000000000000011;
      }

      v7 = 0xE900000000000073;
      if (v2 == 6)
      {
        v7 = 0x80000001D73C0340;
      }

      if (v2 == 5)
      {
        v8 = 0x80000001D73C48A0;
      }

      else
      {
        v5 = v6;
        v8 = v7;
      }

      if (byte_1F50FACB8[v0 + 32] <= 7u)
      {
        v9 = v5;
      }

      else
      {
        v9 = v3;
      }

      if (byte_1F50FACB8[v0 + 32] <= 7u)
      {
        v10 = v8;
      }

      else
      {
        v10 = v4;
      }
    }

    v19 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D5BFC364((v15 > 1), v16 + 1, 1);
      result = v19;
    }

    ++v0;
    *(result + 16) = v16 + 1;
    v17 = result + 16 * v16;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D6623828()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50FB4D0[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0x80000001D73D2790;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    v5 = 0xD000000000000018;
    if (v2 == 4)
    {
      v5 = 0x64656C6C69666E75;
      v6 = 0xED0000726F6C6F43;
    }

    else
    {
      v6 = 0x80000001D73BAF80;
    }

    if (byte_1F50FB4D0[v0 + 32] <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 2)
    {
      v7 = 0x726F7463656C6573;
    }

    else
    {
      v7 = 0x6F4364656C6C6966;
    }

    if (v2 == 2)
    {
      v8 = 0xE900000000000073;
    }

    else
    {
      v8 = 0xEB00000000726F6CLL;
    }

    if (byte_1F50FB4D0[v0 + 32])
    {
      v9 = 0x7373616C63;
    }

    else
    {
      v9 = 0x696669746E656469;
    }

    if (byte_1F50FB4D0[v0 + 32])
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xEA00000000007265;
    }

    if (byte_1F50FB4D0[v0 + 32] <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (byte_1F50FB4D0[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F50FB4D0[v0 + 32] <= 3u)
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

  while (v0 != 8);
  return result;
}

uint64_t sub_1D6623A84()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F5117770[v0 + 32];
    v3 = 0xD000000000000018;
    if (v2 == 4)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 1885433183;
    }

    if (v2 == 4)
    {
      v5 = 0x80000001D73D2790;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v6 = 0x80000001D73BAF80;
    }

    else
    {
      v3 = v4;
      v6 = v5;
    }

    if (v2 == 1)
    {
      v7 = 0x6F4364656C6C6966;
    }

    else
    {
      v7 = 0x64656C6C69666E75;
    }

    if (v2 == 1)
    {
      v8 = 0xEB00000000726F6CLL;
    }

    else
    {
      v8 = 0xED0000726F6C6F43;
    }

    if (!byte_1F5117770[v0 + 32])
    {
      v7 = 0x726F7463656C6573;
      v8 = 0xE800000000000000;
    }

    if (byte_1F5117770[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F5117770[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D6623C70()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x746174536D6F7266;
  *(v7 + 40) = 0xE900000000000065;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x65746174536F74;
  *(v12 + 40) = 0xE700000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6623E08()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 13, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F9800[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v3 = 0xD000000000000010;
        v2 = 0x80000001D73D27B0;
        break;
      case 5:
        v2 = 0xE600000000000000;
        v3 = 0x736574617473;
        break;
      case 6:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 7:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 8:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 9:
        v3 = 0x6F6974616D696E61;
        v2 = 0xE90000000000006ELL;
        break;
      case 0xA:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xB:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 13);
  return result;
}

uint64_t sub_1D66240E0()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F50F83F0[v0 + 32];
    if (v2 == 5)
    {
      v3 = 0x736E6F6974706FLL;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 5)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x73656C797473;
    }

    else
    {
      v5 = 0x7365707974;
    }

    if (v2 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (byte_1F50F83F0[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 1701667182;
    }

    else
    {
      v7 = 0x7470697263736564;
    }

    if (v2 == 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xEB000000006E6F69;
    }

    if (!byte_1F50F83F0[v0 + 32])
    {
      v7 = 0x696669746E656469;
      v8 = 0xEA00000000007265;
    }

    if (byte_1F50F83F0[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F50F83F0[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D66242CC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x746E65746E6F63;
  *(v5 + 40) = 0xE700000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x656C797473;
  *(v7 + 40) = 0xE500000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x726F7463656C6573;
  *(v12 + 40) = 0xE900000000000073;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D662445C()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v15;
  do
  {
    v2 = byte_1F50FB2F0[v0 + 32];
    v3 = 0xEA00000000007265;
    if (v2 == 5)
    {
      v4 = 0x6162726562627572;
    }

    else
    {
      v4 = 1885433183;
    }

    if (v2 == 5)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v6 = 0x726F7463656C6573;
    }

    else
    {
      v6 = 7235952;
    }

    if (v2 == 3)
    {
      v7 = 0xE900000000000073;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    if (byte_1F50FB2F0[v0 + 32] <= 4u)
    {
      v4 = v6;
      v5 = v7;
    }

    if (v2 == 1)
    {
      v8 = 0x7373616C63;
    }

    else
    {
      v8 = 0x426F547370696C63;
    }

    if (v2 == 1)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xED000073646E756FLL;
    }

    if (byte_1F50FB2F0[v0 + 32])
    {
      v3 = v9;
    }

    else
    {
      v8 = 0x696669746E656469;
    }

    if (byte_1F50FB2F0[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (byte_1F50FB2F0[v0 + 32] <= 2u)
    {
      v11 = v3;
    }

    else
    {
      v11 = v5;
    }

    v16 = result;
    v13 = *(result + 16);
    v12 = *(result + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D5BFC364((v12 > 1), v13 + 1, 1);
      result = v16;
    }

    ++v0;
    *(result + 16) = v13 + 1;
    v14 = result + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D662465C()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x726F7463656C6573;
  *(v5 + 40) = 0xE800000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  strcpy((v7 + 32), "clipsToBounds");
  *(v7 + 46) = -4864;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 7235952;
  *(v12 + 40) = 0xE300000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x6162726562627572;
  *(v15 + 40) = 0xEA0000000000646ELL;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6624844()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 7, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F50F8BB0[v0 + 32];
    if (v2 == 5)
    {
      v3 = 2019912806;
    }

    else
    {
      v3 = 1885433183;
    }

    v4 = 0xE400000000000000;
    if (v2 == 3)
    {
      v5 = 0x73776F726874;
    }

    else
    {
      v5 = 0x776F726874;
    }

    if (v2 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (byte_1F50F8BB0[v0 + 32] <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x7365736163;
    }

    else
    {
      v7 = 0x746C7561666564;
    }

    if (v2 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (!byte_1F50F8BB0[v0 + 32])
    {
      v7 = 0x696669746E656469;
      v8 = 0xEA00000000007265;
    }

    if (byte_1F50F8BB0[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F50F8BB0[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 7);
  return result;
}

uint64_t sub_1D6624A18()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 1702521203;
  *(v5 + 40) = 0xE400000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x746867696577;
  *(v7 + 40) = 0xE600000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x656C616373;
  *(v12 + 40) = 0xE500000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6624B98()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x656C797473;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1702521203;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x656C616373;
  *(v12 + 40) = 0xE500000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6624D18()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v12;
  do
  {
    v2 = byte_1F5117B58[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0x7475626972747461;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 4)
    {
      v4 = 0xEA00000000007365;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0x737469617274;
      v4 = 0xE600000000000000;
    }

    if (v2 == 1)
    {
      v5 = 0x676E696C616373;
    }

    else
    {
      v5 = 0x746867696577;
    }

    if (v2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (!byte_1F5117B58[v0 + 32])
    {
      v5 = 1702521203;
      v6 = 0xE400000000000000;
    }

    if (byte_1F5117B58[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F5117B58[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v13 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      result = v13;
    }

    ++v0;
    *(result + 16) = v10 + 1;
    v11 = result + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D6624EC4()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 2, 0);
  result = v8;
  v2 = *(v8 + 16);
  v1 = *(v8 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    result = v8;
    v1 = *(v8 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  v5 = result + 16 * v2;
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x80000001D73D27D0;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    result = v8;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v4;
  *(v7 + 32) = 1885433183;
  *(v7 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6624FB8()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  strcpy((v5 + 32), "prefersSource");
  *(v5 + 46) = -4864;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1953394534;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x676E6964646170;
  *(v12 + 40) = 0xE700000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  strcpy((v15 + 32), "cornerRadius");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66251A4(uint64_t a1)
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v2 = v14;
  v4 = *(v14 + 16);
  v3 = *(v14 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    sub_1D5BFC364((v3 > 1), v4 + 1, 1);
    v2 = v14;
    v3 = *(v14 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = v2 + 16 * v4;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001D73B7600;
  v8 = v4 + 2;
  if (v5 <= v6)
  {
    sub_1D5BFC364((v3 > 1), v8, 1);
    v2 = v14;
  }

  *(v2 + 16) = v8;
  v9 = v2 + 16 * v6;
  *(v9 + 32) = a1;
  *(v9 + 40) = 0xE500000000000000;
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1D5BFC364((v10 > 1), v11 + 1, 1);
  }

  result = v14;
  *(v14 + 16) = v11 + 1;
  v13 = v14 + 16 * v11;
  *(v13 + 32) = 1885433183;
  *(v13 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66252DC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x6567616D69;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x6E656D6E67696C61;
  *(v7 + 40) = 0xE900000000000074;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x64656C616373;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6625468()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 16, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F9860[v0 + 32])
    {
      case 1:
        v2 = 0xE500000000000000;
        v3 = 0x7373616C63;
        break;
      case 2:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 3:
        v2 = 0xE400000000000000;
        v3 = 1953394534;
        break;
      case 4:
        v2 = 0xE400000000000000;
        v3 = 1819044198;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v3 = 0x73726564726F62;
        break;
      case 6:
        v2 = 0xE600000000000000;
        v3 = 0x776F64616873;
        break;
      case 7:
        v2 = 0xEA0000000000736DLL;
        v3 = 0x726F66736E617274;
        break;
      case 8:
        v3 = 0x7061726761726170;
        v2 = 0xEE00656C79745368;
        break;
      case 9:
        v2 = 0xE800000000000000;
        v3 = 0x676E696B63617274;
        break;
      case 0xA:
        v2 = 0xE500000000000000;
        v3 = 0x6168706C61;
        break;
      case 0xB:
        v3 = 0x6874656B69727473;
        v2 = 0xED00006867756F72;
        break;
      case 0xC:
        v3 = 0x6E696C7265646E75;
        v2 = 0xE900000000000065;
        break;
      case 0xD:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73BAF80;
        break;
      case 0xE:
        v3 = 0x656E696C65736162;
        v2 = 0xEE0074657366664FLL;
        break;
      case 0xF:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 16);
  return result;
}

uint64_t sub_1D66257FC()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 14, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xE800000000000000;
    v3 = 0x726F7463656C6573;
    switch(byte_1F50F9890[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1953394534;
        break;
      case 2:
        v2 = 0xE400000000000000;
        v3 = 1819044198;
        break;
      case 3:
        v2 = 0xE700000000000000;
        v3 = 0x73726564726F62;
        break;
      case 4:
        v2 = 0xE600000000000000;
        v3 = 0x776F64616873;
        break;
      case 5:
        v2 = 0xEA0000000000736DLL;
        v3 = 0x726F66736E617274;
        break;
      case 6:
        v3 = 0x7061726761726170;
        v2 = 0xEE00656C79745368;
        break;
      case 7:
        v3 = 0x676E696B63617274;
        break;
      case 8:
        v2 = 0xE500000000000000;
        v3 = 0x6168706C61;
        break;
      case 9:
        v3 = 0x6874656B69727473;
        v2 = 0xED00006867756F72;
        break;
      case 0xA:
        v2 = 0xE900000000000065;
        v3 = 0x6E696C7265646E75;
        break;
      case 0xB:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73BAF80;
        break;
      case 0xC:
        v3 = 0x656E696C65736162;
        v2 = 0xEE0074657366664FLL;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 14);
  return result;
}

uint64_t sub_1D6625B1C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x7470697263736564;
  *(v12 + 40) = 0xEB000000006E6F69;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6625CB0()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50F86F0[v0 + 32];
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 1702521203;
      }

      else
      {
        v3 = 0x657A69736572;
      }

      if (v2 == 3)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v2 == 2)
      {
        v3 = 0x7470697263736564;
        v4 = 0xEB000000006E6F69;
      }

      if (byte_1F50F86F0[v0 + 32])
      {
        v5 = 1701667182;
      }

      else
      {
        v5 = 0x696669746E656469;
      }

      if (byte_1F50F86F0[v0 + 32])
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xEA00000000007265;
      }

      v7 = byte_1F50F86F0[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 2019912806;
      }

      else
      {
        v3 = 1885433183;
      }

      v4 = 0xE400000000000000;
      if (v2 == 8)
      {
        v3 = 0x65737265766572;
        v4 = 0xE700000000000000;
      }

      v5 = 0x6E6572646C696863;
      if (v2 != 6)
      {
        v5 = 0x6465737265766572;
      }

      v6 = 0xE800000000000000;
      if (v2 == 5)
      {
        v5 = 0x656D7473756A6461;
        v6 = 0xEB0000000073746ELL;
      }

      v7 = byte_1F50F86F0[v0 + 32] <= 7u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D6625F3C()
{
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 12, 0);
  v0 = 0;
  result = v17;
  do
  {
    v2 = byte_1F50F9348[v0 + 32];
    if (v2 > 5)
    {
      if (v2 == 10)
      {
        v10 = 2019912806;
      }

      else
      {
        v10 = 1885433183;
      }

      v11 = 0xE400000000000000;
      if (v2 == 9)
      {
        v10 = 0x65737265766572;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6E6572646C696863;
      if (v2 != 7)
      {
        v12 = 0x6465737265766572;
      }

      v13 = 0xE800000000000000;
      if (v2 == 6)
      {
        v12 = 0x656D7473756A6461;
        v13 = 0xEB0000000073746ELL;
      }

      if (byte_1F50F9348[v0 + 32] <= 8u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }

      if (byte_1F50F9348[v0 + 32] <= 8u)
      {
        v9 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      v3 = 0xEA00000000007265;
      if (v2 == 4)
      {
        v4 = 0x7470697263736564;
      }

      else
      {
        v4 = 1702521203;
      }

      if (v2 == 4)
      {
        v5 = 0xEB000000006E6F69;
      }

      else
      {
        v5 = 0xE400000000000000;
      }

      if (v2 == 3)
      {
        v4 = 1701667182;
        v5 = 0xE400000000000000;
      }

      if (v2 == 1)
      {
        v6 = 0xD000000000000010;
      }

      else
      {
        v6 = 0x6150746567726174;
      }

      if (v2 == 1)
      {
        v7 = 0x80000001D73B7600;
      }

      else
      {
        v7 = 0xEA00000000006874;
      }

      if (byte_1F50F9348[v0 + 32])
      {
        v3 = v7;
      }

      else
      {
        v6 = 0x696669746E656469;
      }

      if (byte_1F50F9348[v0 + 32] <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }

      if (byte_1F50F9348[v0 + 32] <= 2u)
      {
        v9 = v3;
      }

      else
      {
        v9 = v5;
      }
    }

    v18 = result;
    v15 = *(result + 16);
    v14 = *(result + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D5BFC364((v14 > 1), v15 + 1, 1);
      result = v18;
    }

    ++v0;
    *(result + 16) = v15 + 1;
    v16 = result + 16 * v15;
    *(v16 + 32) = v8;
    *(v16 + 40) = v9;
  }

  while (v0 != 12);
  return result;
}

uint64_t sub_1D66261F8()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 15, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F8940[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 5:
        v3 = 0x6F6974616D696E61;
        v2 = 0xE90000000000006ELL;
        break;
      case 6:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        break;
      case 7:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 8:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 9:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 0xA:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xB:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xC:
        v2 = 0xEA00000000007365;
        v3 = 0x69747265706F7270;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xE:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_1D6626528()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F9CD8[v0 + 32];
    if (v2 <= 4)
    {
      v9 = 0xEA00000000007265;
      if (v2 == 3)
      {
        v10 = 0x6168706C61;
      }

      else
      {
        v10 = 0x756F72676B636162;
      }

      if (v2 == 3)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xEA0000000000646ELL;
      }

      if (v2 == 2)
      {
        v10 = 0x726F7463656C6573;
        v11 = 0xE900000000000073;
      }

      if (byte_1F50F9CD8[v0 + 32])
      {
        v12 = 0x7373616C63;
      }

      else
      {
        v12 = 0x696669746E656469;
      }

      if (byte_1F50F9CD8[v0 + 32])
      {
        v9 = 0xE500000000000000;
      }

      if (byte_1F50F9CD8[v0 + 32] <= 1u)
      {
        v7 = v12;
      }

      else
      {
        v7 = v10;
      }

      if (byte_1F50F9CD8[v0 + 32] <= 1u)
      {
        v8 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 0xD000000000000018;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 9)
      {
        v4 = 0x80000001D73BAF80;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 8)
      {
        v3 = 0x6F6C6F43746E6974;
        v4 = 0xE900000000000072;
      }

      v5 = 0x776F64616873;
      if (v2 == 6)
      {
        v5 = 0x615272656E726F63;
      }

      v6 = 0xE600000000000000;
      if (v2 == 6)
      {
        v6 = 0xEC00000073756964;
      }

      if (v2 == 5)
      {
        v5 = 0x73726564726F62;
        v6 = 0xE700000000000000;
      }

      if (byte_1F50F9CD8[v0 + 32] <= 7u)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      if (byte_1F50F9CD8[v0 + 32] <= 7u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }
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
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D66267E4()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 9, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50F9D08[v0 + 32];
    if (v2 <= 3)
    {
      if (v2 == 2)
      {
        v3 = 0x756F72676B636162;
      }

      else
      {
        v3 = 0x73726564726F62;
      }

      if (v2 == 2)
      {
        v4 = 0xEA0000000000646ELL;
      }

      else
      {
        v4 = 0xE700000000000000;
      }

      if (byte_1F50F9D08[v0 + 32])
      {
        v5 = 0x6168706C61;
      }

      else
      {
        v5 = 0x726F7463656C6573;
      }

      if (byte_1F50F9D08[v0 + 32])
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE800000000000000;
      }

      v7 = byte_1F50F9D08[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 7)
      {
        v3 = 0xD000000000000018;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 7)
      {
        v4 = 0x80000001D73BAF80;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 6)
      {
        v3 = 0x6F6C6F43746E6974;
        v4 = 0xE900000000000072;
      }

      v5 = 0x615272656E726F63;
      if (v2 == 4)
      {
        v6 = 0xEC00000073756964;
      }

      else
      {
        v5 = 0x776F64616873;
        v6 = 0xE600000000000000;
      }

      v7 = byte_1F50F9D08[v0 + 32] <= 5u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 9);
  return result;
}

uint64_t sub_1D6626A48()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 20, 0);
  v0 = 0;
  result = v9;
  v2 = 0x80000001D73D27F0;
  do
  {
    v3 = 0xEA00000000007265;
    v4 = 0x696669746E656469;
    switch(byte_1F50FA1C8[v0 + 32])
    {
      case 1:
        v3 = 0xE400000000000000;
        v4 = 1702521203;
        break;
      case 2:
        v3 = 0xE600000000000000;
        v4 = 0x657A69736572;
        break;
      case 3:
        v4 = 0x656D7473756A6461;
        v3 = 0xEB0000000073746ELL;
        break;
      case 4:
        v3 = 0xE500000000000000;
        v4 = 0x656C797473;
        break;
      case 5:
        v4 = 0x6F6974616D696E61;
        v3 = 0xE90000000000006ELL;
        break;
      case 6:
        v3 = 0xE700000000000000;
        v4 = 0x746E65746E6F63;
        break;
      case 7:
        v4 = 0x6F43726574736F70;
        v3 = 0xED0000746E65746ELL;
        break;
      case 8:
        v4 = 0x7453726574736F70;
        v3 = 0xEB00000000656C79;
        break;
      case 9:
        v4 = 0x4379616C7265766FLL;
        v3 = 0xEE00746E65746E6FLL;
        break;
      case 0xA:
        v3 = 0xE600000000000000;
        v4 = 0x6576694C7369;
        break;
      case 0xB:
        v3 = 0xE600000000000000;
        v4 = 0x7865646E497ALL;
        break;
      case 0xC:
        v3 = 0xEA00000000007974;
        v4 = 0x696C696269736976;
        break;
      case 0xD:
        v4 = 0xD000000000000018;
        v3 = 0x80000001D73C48A0;
        break;
      case 0xE:
        v4 = 0xD000000000000011;
        v3 = 0x80000001D73C0340;
        break;
      case 0xF:
        v3 = 0xE900000000000073;
        v4 = 0x726F7463656C6573;
        break;
      case 0x10:
        v3 = 0xE400000000000000;
        v4 = 1701667182;
        break;
      case 0x11:
        v4 = 0xD000000000000010;
        v3 = v2;
        break;
      case 0x12:
        v3 = 0xE400000000000000;
        v4 = 2019912806;
        break;
      case 0x13:
        v3 = 0xE400000000000000;
        v4 = 1885433183;
        break;
      default:
        break;
    }

    v10 = result;
    v6 = *(result + 16);
    v5 = *(result + 24);
    if (v6 >= v5 >> 1)
    {
      v8 = v2;
      sub_1D5BFC364((v5 > 1), v6 + 1, 1);
      v2 = v8;
      result = v10;
    }

    ++v0;
    *(result + 16) = v6 + 1;
    v7 = result + 16 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
  }

  while (v0 != 20);
  return result;
}

uint64_t sub_1D6626E34()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 11, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50FAF78[v0 + 32];
    if (v2 <= 4)
    {
      v9 = 0xEA00000000007265;
      if (v2 == 3)
      {
        v10 = 0x6168706C61;
      }

      else
      {
        v10 = 0x756F72676B636162;
      }

      if (v2 == 3)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xEA0000000000646ELL;
      }

      if (v2 == 2)
      {
        v10 = 0x726F7463656C6573;
        v11 = 0xE900000000000073;
      }

      if (byte_1F50FAF78[v0 + 32])
      {
        v12 = 0x7373616C63;
      }

      else
      {
        v12 = 0x696669746E656469;
      }

      if (byte_1F50FAF78[v0 + 32])
      {
        v9 = 0xE500000000000000;
      }

      if (byte_1F50FAF78[v0 + 32] <= 1u)
      {
        v7 = v12;
      }

      else
      {
        v7 = v10;
      }

      if (byte_1F50FAF78[v0 + 32] <= 1u)
      {
        v8 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 0xD000000000000018;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 9)
      {
        v4 = 0x80000001D73BAF80;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 8)
      {
        v3 = 0x6F6C6F43746E6974;
        v4 = 0xE900000000000072;
      }

      v5 = 0x776F64616873;
      if (v2 == 6)
      {
        v5 = 0x615272656E726F63;
      }

      v6 = 0xE600000000000000;
      if (v2 == 6)
      {
        v6 = 0xEC00000073756964;
      }

      if (v2 == 5)
      {
        v5 = 0x73726564726F62;
        v6 = 0xE700000000000000;
      }

      if (byte_1F50FAF78[v0 + 32] <= 7u)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      if (byte_1F50FAF78[v0 + 32] <= 7u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }
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
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1D66270F0()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 9, 0);
  v0 = 0;
  result = v13;
  do
  {
    v2 = byte_1F50FAFA8[v0 + 32];
    if (v2 <= 3)
    {
      if (v2 == 2)
      {
        v3 = 0x756F72676B636162;
      }

      else
      {
        v3 = 0x73726564726F62;
      }

      if (v2 == 2)
      {
        v4 = 0xEA0000000000646ELL;
      }

      else
      {
        v4 = 0xE700000000000000;
      }

      if (byte_1F50FAFA8[v0 + 32])
      {
        v5 = 0x6168706C61;
      }

      else
      {
        v5 = 0x726F7463656C6573;
      }

      if (byte_1F50FAFA8[v0 + 32])
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE800000000000000;
      }

      v7 = byte_1F50FAFA8[v0 + 32] <= 1u;
    }

    else
    {
      if (v2 == 7)
      {
        v3 = 0xD000000000000018;
      }

      else
      {
        v3 = 1885433183;
      }

      if (v2 == 7)
      {
        v4 = 0x80000001D73BAF80;
      }

      else
      {
        v4 = 0xE400000000000000;
      }

      if (v2 == 6)
      {
        v3 = 0x6F6C6F43746E6974;
        v4 = 0xE900000000000072;
      }

      v5 = 0x615272656E726F63;
      if (v2 == 4)
      {
        v6 = 0xEC00000073756964;
      }

      else
      {
        v5 = 0x776F64616873;
        v6 = 0xE600000000000000;
      }

      v7 = byte_1F50FAFA8[v0 + 32] <= 5u;
    }

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v14 = result;
    v11 = *(result + 16);
    v10 = *(result + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    ++v0;
    *(result + 16) = v11 + 1;
    v12 = result + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while (v0 != 9);
  return result;
}

uint64_t sub_1D6627354()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 14, 0);
  v0 = 0;
  result = v7;
  do
  {
    v2 = 0xEA00000000007265;
    v3 = 0x696669746E656469;
    switch(byte_1F50F8720[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1702521203;
        break;
      case 2:
        v2 = 0xE600000000000000;
        v3 = 0x657A69736572;
        break;
      case 3:
        v3 = 0x656D7473756A6461;
        v2 = 0xEB0000000073746ELL;
        break;
      case 4:
        v2 = 0xE500000000000000;
        v3 = 0x656C797473;
        break;
      case 5:
        v3 = 0x6F6974616D696E61;
        v2 = 0xE90000000000006ELL;
        break;
      case 6:
        v2 = 0xE600000000000000;
        v3 = 0x7865646E497ALL;
        break;
      case 7:
        v2 = 0xEA00000000007974;
        v3 = 0x696C696269736976;
        break;
      case 8:
        v3 = 0xD000000000000018;
        v2 = 0x80000001D73C48A0;
        break;
      case 9:
        v3 = 0xD000000000000011;
        v2 = 0x80000001D73C0340;
        break;
      case 0xA:
        v2 = 0xE900000000000073;
        v3 = 0x726F7463656C6573;
        break;
      case 0xB:
        v2 = 0xE400000000000000;
        v3 = 1701667182;
        break;
      case 0xC:
        v2 = 0xE400000000000000;
        v3 = 2019912806;
        break;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1885433183;
        break;
      default:
        break;
    }

    v8 = result;
    v5 = *(result + 16);
    v4 = *(result + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1D5BFC364((v4 > 1), v5 + 1, 1);
      result = v8;
    }

    ++v0;
    *(result + 16) = v5 + 1;
    v6 = result + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }

  while (v0 != 14);
  return result;
}

uint64_t sub_1D662763C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F98E8[v0 + 32];
    if (v2 > 4)
    {
      if (v2 == 8)
      {
        v9 = 0xD000000000000018;
      }

      else
      {
        v9 = 1885433183;
      }

      if (v2 == 8)
      {
        v10 = 0x80000001D73BAF80;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v2 == 7)
      {
        v9 = 0x776F64616873;
        v10 = 0xE600000000000000;
      }

      v11 = 0x615272656E726F63;
      if (v2 == 5)
      {
        v11 = 0x73726564726F62;
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xEC00000073756964;
      }

      if (byte_1F50F98E8[v0 + 32] <= 6u)
      {
        v7 = v11;
      }

      else
      {
        v7 = v9;
      }

      if (byte_1F50F98E8[v0 + 32] <= 6u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    else
    {
      v3 = 0xEA00000000007265;
      if (v2 == 3)
      {
        v4 = 0x6168706C61;
      }

      else
      {
        v4 = 0x756F72676B636162;
      }

      if (v2 == 3)
      {
        v5 = 0xE500000000000000;
      }

      else
      {
        v5 = 0xEA0000000000646ELL;
      }

      if (v2 == 2)
      {
        v4 = 0x726F7463656C6573;
        v5 = 0xE900000000000073;
      }

      if (byte_1F50F98E8[v0 + 32])
      {
        v6 = 0x7373616C63;
      }

      else
      {
        v6 = 0x696669746E656469;
      }

      if (byte_1F50F98E8[v0 + 32])
      {
        v3 = 0xE500000000000000;
      }

      if (byte_1F50F98E8[v0 + 32] <= 1u)
      {
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (byte_1F50F98E8[v0 + 32] <= 1u)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }
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
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
  }

  while (v0 != 10);
  return result;
}

uint64_t sub_1D66278CC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 8, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F50F9918[v0 + 32];
    if (v2 == 6)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 6)
    {
      v4 = 0x80000001D73BAF80;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 4)
    {
      v5 = 0x776F64616873;
    }

    else
    {
      v5 = 0x6168706C61;
    }

    if (v2 == 4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (byte_1F50F9918[v0 + 32] <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x615272656E726F63;
    if (v2 == 2)
    {
      v7 = 0x73726564726F62;
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEC00000073756964;
    }

    if (byte_1F50F9918[v0 + 32])
    {
      v9 = 0x756F72676B636162;
    }

    else
    {
      v9 = 0x726F7463656C6573;
    }

    if (byte_1F50F9918[v0 + 32])
    {
      v10 = 0xEA0000000000646ELL;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (byte_1F50F9918[v0 + 32] <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (byte_1F50F9918[v0 + 32] <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F50F9918[v0 + 32] <= 3u)
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

  while (v0 != 8);
  return result;
}

uint64_t sub_1D6627AF4()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 17, 0);
  v0 = 0;
  result = v9;
  v2 = 0x80000001D73C0340;
  do
  {
    v3 = 0xEA00000000007265;
    v4 = 0x696669746E656469;
    switch(byte_1F50F93A0[v0 + 32])
    {
      case 1:
        v3 = 0xE700000000000000;
        v4 = 0x746E65746E6F63;
        break;
      case 2:
        v4 = 0xD000000000000016;
        v3 = 0x80000001D73B7620;
        break;
      case 3:
        v3 = 0xE600000000000000;
        v4 = 0x6769666E6F63;
        break;
      case 4:
        v3 = 0xE400000000000000;
        v4 = 1702521203;
        break;
      case 5:
        v3 = 0xE600000000000000;
        v4 = 0x657A69736572;
        break;
      case 6:
        v4 = 0x656D7473756A6461;
        v3 = 0xEB0000000073746ELL;
        break;
      case 7:
        v3 = 0xE500000000000000;
        v4 = 0x656C797473;
        break;
      case 8:
        v3 = 0xE600000000000000;
        v4 = 0x7865646E497ALL;
        break;
      case 9:
        v3 = 0xEA00000000007974;
        v4 = 0x696C696269736976;
        break;
      case 0xA:
        v4 = 0xD000000000000018;
        v3 = 0x80000001D73C48A0;
        break;
      case 0xB:
        v4 = 0xD000000000000011;
        v3 = v2;
        break;
      case 0xC:
        v3 = 0xE800000000000000;
        v4 = 0x6E6F697461636F6CLL;
        break;
      case 0xD:
        v3 = 0xE900000000000073;
        v4 = 0x726F7463656C6573;
        break;
      case 0xE:
        v3 = 0xE400000000000000;
        v4 = 2019912806;
        break;
      case 0xF:
        v4 = 0x6E697265646E6572;
        v3 = 0xE900000000000067;
        break;
      case 0x10:
        v3 = 0xE400000000000000;
        v4 = 1885433183;
        break;
      default:
        break;
    }

    v10 = result;
    v6 = *(result + 16);
    v5 = *(result + 24);
    if (v6 >= v5 >> 1)
    {
      v8 = v2;
      sub_1D5BFC364((v5 > 1), v6 + 1, 1);
      v2 = v8;
      result = v10;
    }

    ++v0;
    *(result + 16) = v6 + 1;
    v7 = result + 16 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
  }

  while (v0 != 17);
  return result;
}

uint64_t sub_1D6627E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v8 = v19;
  v10 = *(v19 + 16);
  v9 = *(v19 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_1D5BFC364((v9 > 1), v10 + 1, 1);
    v8 = v19;
    v9 = *(v19 + 24);
    v11 = v9 >> 1;
  }

  *(v8 + 16) = v12;
  v13 = v8 + 16 * v10;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  if (v11 <= v12)
  {
    sub_1D5BFC364((v9 > 1), v10 + 2, 1);
    v8 = v19;
  }

  *(v8 + 16) = v10 + 2;
  v14 = v8 + 16 * v12;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v16 = *(v8 + 16);
  v15 = *(v8 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_1D5BFC364((v15 > 1), v16 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v16 + 1;
  v18 = v19 + 16 * v16;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6627FA0()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 6, 0);
  v0 = 0;
  result = v12;
  do
  {
    v2 = byte_1F5118440[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 1885433183;
    }

    if (v2 == 4)
    {
      v4 = 0x80000001D73D2810;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0x72756769666E6F63;
      v4 = 0xED00006E6F697461;
    }

    if (v2 == 1)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 1684957547;
    }

    v6 = 0xE400000000000000;
    if (!byte_1F5118440[v0 + 32])
    {
      v5 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
    }

    if (byte_1F5118440[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F5118440[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v13 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      result = v13;
    }

    ++v0;
    *(result + 16) = v10 + 1;
    v11 = result + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D6628164()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0x74756F79616CLL;
  *(v7 + 40) = 0xE600000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0x70756F7267627573;
  *(v12 + 40) = 0xE800000000000000;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D66282F4()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 4, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x724F74756F79616CLL;
  *(v5 + 40) = 0xEB00000000726564;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0xD000000000000014;
  *(v7 + 40) = 0x80000001D73CCEA0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v16;
  *(v16 + 16) = v10;
  v12 = v16 + 16 * v9;
  *(v12 + 32) = 0xD000000000000019;
  *(v12 + 40) = 0x80000001D73D23C0;
  v13 = *(v16 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v16;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 1885433183;
  *(v15 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D6628490(uint64_t a1, uint64_t a2)
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 2, 0);
  result = v11;
  v6 = *(v11 + 16);
  v5 = *(v11 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1D5BFC364((v5 > 1), v6 + 1, 1);
    result = v11;
    v5 = *(v11 + 24);
    v7 = v5 >> 1;
  }

  *(result + 16) = v8;
  v9 = result + 16 * v6;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  if (v7 <= v8)
  {
    sub_1D5BFC364((v5 > 1), v6 + 2, 1);
    result = v11;
  }

  *(result + 16) = v6 + 2;
  v10 = result + 16 * v8;
  *(v10 + 32) = 1885433183;
  *(v10 + 40) = 0xE400000000000000;
  return result;
}

uint64_t sub_1D662857C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F51167C8[v0 + 32];
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

    if (byte_1F51167C8[v0 + 32] <= 6u)
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
    if (!byte_1F51167C8[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F51167C8[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F51167C8[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F51167C8[v0 + 32] <= 4u)
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

uint64_t sub_1D66287FC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116798[v0 + 32];
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

    if (byte_1F5116798[v0 + 32] <= 6u)
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
    if (!byte_1F5116798[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116798[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116798[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116798[v0 + 32] <= 4u)
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

uint64_t sub_1D6628A7C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116768[v0 + 32];
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

    if (byte_1F5116768[v0 + 32] <= 6u)
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
    if (!byte_1F5116768[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116768[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116768[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116768[v0 + 32] <= 4u)
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

uint64_t sub_1D6628CFC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116738[v0 + 32];
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

    if (byte_1F5116738[v0 + 32] <= 6u)
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
    if (!byte_1F5116738[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116738[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116738[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116738[v0 + 32] <= 4u)
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

uint64_t sub_1D6628F7C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116708[v0 + 32];
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

    if (byte_1F5116708[v0 + 32] <= 6u)
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
    if (!byte_1F5116708[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116708[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116708[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116708[v0 + 32] <= 4u)
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

uint64_t sub_1D66291FC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F51166D8[v0 + 32];
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

    if (byte_1F51166D8[v0 + 32] <= 6u)
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
    if (!byte_1F51166D8[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F51166D8[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F51166D8[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F51166D8[v0 + 32] <= 4u)
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

uint64_t sub_1D662947C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F51166A8[v0 + 32];
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

    if (byte_1F51166A8[v0 + 32] <= 6u)
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
    if (!byte_1F51166A8[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F51166A8[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F51166A8[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F51166A8[v0 + 32] <= 4u)
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

uint64_t sub_1D66296FC()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 10, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = byte_1F5116678[v0 + 32];
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

    if (byte_1F5116678[v0 + 32] <= 6u)
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
    if (!byte_1F5116678[v0 + 32])
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    if (byte_1F5116678[v0 + 32] <= 1u)
    {
      v7 = v10;
      v8 = v9;
    }

    if (byte_1F5116678[v0 + 32] <= 4u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F5116678[v0 + 32] <= 4u)
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