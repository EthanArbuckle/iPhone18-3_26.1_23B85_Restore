uint64_t sub_1D6DD3C2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74616F6C66;
    }

    else
    {
      v4 = 1819242338;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1954047348;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656D695465746164;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x74616F6C66;
    }

    else
    {
      v9 = 1819242338;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7107189;
    if (a2 != 3)
    {
      v6 = 0x656D695465746164;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1954047348;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DD3D88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x64656C6261736964;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x7265766F6C6C6F72;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64657373657270;
  }

  else
  {
    v4 = 0x7250796C70656564;
    v3 = 0xED00006465737365;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64656C6261736964;
    }

    else
    {
      v9 = 1701602409;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64657373657270;
    if (a2 != 3)
    {
      v6 = 0x7250796C70656564;
      v5 = 0xED00006465737365;
    }

    if (a2 == 2)
    {
      v7 = 0x7265766F6C6C6F72;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DD3F24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064496C616369;
  v3 = 0x6E6F6E6143636D75;
  v4 = a1;
  v5 = 0x696669746E656469;
  v6 = 0xEA00000000007265;
  if (a1 != 6)
  {
    v5 = 0xD000000000000012;
    v6 = 0x80000001D73B7A30;
  }

  v7 = 0x726574736F72;
  if (a1 != 4)
  {
    v7 = 0x6769666E6F63;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = 0xE600000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6C72556465626D65;
  if (a1 != 2)
  {
    v9 = 0x53617461446C7275;
    v8 = 0xEE0073656372756FLL;
  }

  v10 = 0xE500000000000000;
  v11 = 0x746E657665;
  if (!a1)
  {
    v11 = 0x6E6F6E6143636D75;
    v10 = 0xEE0064496C616369;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (v4 <= 3)
  {
    v13 = v8;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEA00000000007265;
        if (v12 != 0x696669746E656469)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001D73B7A30;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v12 != 0x726574736F72)
        {
          goto LABEL_41;
        }
      }

      else if (v12 != 0x6769666E6F63)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x6C72556465626D65)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x53617461446C7275;
      v2 = 0xEE0073656372756FLL;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v12 != 0x746E657665)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v12 != v3)
    {
LABEL_41:
      v14 = sub_1D72646CC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_1D6DD4194(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064496C616369;
  v3 = 0x6E6F6E6143636D75;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x726574736F72;
  if (a1 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6769666E6F63;
  if (a1 != 4)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C72556465626D65;
  if (a1 != 2)
  {
    v10 = 0x53617461446C7275;
    v9 = 0xEE0073656372756FLL;
  }

  v11 = 0xE500000000000000;
  v12 = 0x746E657665;
  if (!a1)
  {
    v12 = 0x6E6F6E6143636D75;
    v11 = 0xEE0064496C616369;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x726574736F72)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001D73B7A30;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6769666E6F63)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xEA00000000007265;
      if (v13 != 0x696669746E656469)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6C72556465626D65)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x53617461446C7275;
      v2 = 0xEE0073656372756FLL;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1D72646CC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1D6DD4408(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 29295;
  if (a1 != 5)
  {
    v5 = 7630702;
    v4 = 0xE300000000000000;
  }

  v6 = 0x776F6C6C6F666E75;
  v7 = 0xEA00000000006465;
  if (a1 != 3)
  {
    v6 = 6581857;
    v7 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x67615470756F7267;
  if (a1 != 1)
  {
    v8 = 0x6465776F6C6C6F66;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x67615464656566;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x67615470756F7267)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6465776F6C6C6F66)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x67615464656566)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE200000000000000;
      if (v9 != 29295)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 7630702)
      {
LABEL_39:
        v12 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xEA00000000006465;
    if (v9 != 0x776F6C6C6F666E75)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 6581857)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1D6DD4604(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x657261706D6F63;
  if (a1 != 6)
  {
    v5 = 0x676E69646E6962;
    v4 = 0xE700000000000000;
  }

  v6 = 0x6966667553736168;
  v7 = 0xE900000000000078;
  if (a1 != 4)
  {
    v6 = 0x6874676E656CLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x736E6961746E6F63;
  if (a1 != 2)
  {
    v9 = 0x6966657250736168;
    v8 = 0xE900000000000078;
  }

  v10 = 0x7974706D45746F6ELL;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x7974706D457369;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x7974706D45746F6ELL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x7974706D457369)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x736E6961746E6F63)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x657250736168;
LABEL_40:
    v13 = 0xE900000000000078;
    if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x6966000000000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6874676E656CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x667553736168;
    goto LABEL_40;
  }

  v13 = 0xE700000000000000;
  if (a2 == 6)
  {
    if (v11 != 0x657261706D6F63)
    {
      goto LABEL_45;
    }
  }

  else if (v11 != 0x676E69646E6962)
  {
LABEL_45:
    v15 = sub_1D72646CC();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1D6DD486C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0073676154726FLL;
  v3 = 0x74697465706D6F63;
  if (a1 <= 3u)
  {
    v4 = 0xE800000000000000;
    v5 = 0x6C72556465626D65;
    if (a1 != 2)
    {
      v5 = 0x53617461446C7275;
      v4 = 0xEE0073656372756FLL;
    }

    v8 = 0x6E6F6E6143636D75;
    v9 = 0xEE0064496C616369;
    if (!a1)
    {
      v8 = 0x74697465706D6F63;
      v9 = 0xEE0073676154726FLL;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x6769666E6F63;
    v6 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
    if (a1 != 7)
    {
      v6 = 0xD000000000000012;
      v7 = 0x80000001D73B7A30;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x615465756761656CLL;
    v9 = 0xE900000000000067;
    if (a1 != 4)
    {
      v8 = 0x617461646174656DLL;
      v9 = 0xE800000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6C72556465626D65)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v13 = 0x53617461446C7275;
      v14 = 0x73656372756FLL;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_41;
      }

      v13 = 0x6E6F6E6143636D75;
      v14 = 0x64496C616369;
    }

    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000067;
      if (v11 != 0x615465756761656CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x617461646174656DLL)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v2 = 0xE600000000000000;
    if (v11 != 0x6769666E6F63)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 == 7)
  {
    v2 = 0xEA00000000007265;
    if (v11 != 0x696669746E656469)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v3 = 0xD000000000000012;
  v2 = 0x80000001D73B7A30;
LABEL_41:
  if (v11 != v3)
  {
LABEL_45:
    v15 = sub_1D72646CC();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1D6DD4B50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064496C616369;
  v3 = 0x6E6F6E6143636D75;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x726574736F72;
  if (a1 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (a1 != 4)
  {
    v7 = 0x6769666E6F63;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C72556465626D65;
  if (a1 != 2)
  {
    v10 = 0x53617461446C7275;
    v9 = 0xEE0073656372756FLL;
  }

  v11 = 0xE500000000000000;
  v12 = 0x746E657665;
  if (!a1)
  {
    v12 = 0x6E6F6E6143636D75;
    v11 = 0xEE0064496C616369;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x726574736F72)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001D73B7A30;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000007265;
      if (v13 != 0x696669746E656469)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6769666E6F63)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6C72556465626D65)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x53617461446C7275;
      v2 = 0xEE0073656372756FLL;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1D72646CC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1D6DD4DC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  v6 = 0x7261446172747865;
  v7 = 0xE90000000000006BLL;
  if (a1 != 4)
  {
    v6 = 0x6E656E696D6F7270;
    v7 = 0xE900000000000074;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x67694C6172747865;
  v9 = 0xEA00000000007468;
  if (a1 != 1)
  {
    v8 = 0x72616C75676572;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746867696CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802658148)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE90000000000006BLL;
      if (v10 != 0x7261446172747865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656E696D6F7270)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007468;
      if (v10 != 0x67694C6172747865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x72616C75676572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x746867696CLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D6DD4FB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69646E6962;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x74616F6C66;
    if (a1 != 2)
    {
      v12 = 0x6E6F6974706FLL;
      v11 = 0xE600000000000000;
    }

    v13 = 0x72656765746E69;
    if (!a1)
    {
      v13 = 0x676E69646E6962;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1836412517;
    v6 = 0xE400000000000000;
    v7 = 1702125924;
    if (a1 != 7)
    {
      v7 = 7107189;
      v6 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x686374697773;
    if (a1 != 4)
    {
      v8 = 0x676E69727473;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE500000000000000;
        if (v9 != 0x74616F6C66)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        if (v9 != 0x6E6F6974706FLL)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x72656765746E69)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v14 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v9 != 0x686374697773)
        {
          goto LABEL_49;
        }
      }

      else if (v9 != 0x676E69727473)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1836412517)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1702125924)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v14 = 0xE300000000000000;
    v2 = 7107189;
  }

  if (v9 != v2)
  {
LABEL_49:
    v15 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v10 != v14)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_1D6DD5208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7261745378656C66;
  v4 = a1;
  v5 = 0x7465426563617073;
  v6 = 0xEC0000006E656577;
  v7 = 0x6F72416563617073;
  v8 = 0xEB00000000646E75;
  if (a1 != 4)
  {
    v7 = 0x6576456563617073;
    v8 = 0xEB00000000796C6ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x646E4578656C66;
  if (a1 != 1)
  {
    v10 = 0x7265746E6563;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x7261745378656C66;
    v9 = 0xE900000000000074;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEC0000006E656577;
      if (v11 != 0x7465426563617073)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0x6F72416563617073;
        v14 = 6581877;
      }

      else
      {
        v13 = 0x6576456563617073;
        v14 = 7957614;
      }

      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v11 != v13)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_30;
  }

  if (!a2)
  {
LABEL_26:
    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 != 1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x7265746E6563;
    goto LABEL_26;
  }

  v2 = 0xE700000000000000;
  if (v11 != 0x646E4578656C66)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v12 != v2)
  {
LABEL_32:
    v15 = sub_1D72646CC();
    goto LABEL_33;
  }

  v15 = 1;
LABEL_33:

  return v15 & 1;
}

uint64_t sub_1D6DD5400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7974706D457369;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E7265746E497369;
    }

    else
    {
      v4 = 0x6E72657478457369;
    }

    v5 = 0xEA00000000006C61;
  }

  else
  {
    if (a1)
    {
      v4 = 0x7974706D45746F6ELL;
    }

    else
    {
      v4 = 0x7974706D457369;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6E7265746E497369;
  if (a2 != 2)
  {
    v7 = 0x6E72657478457369;
  }

  if (a2)
  {
    v2 = 0x7974706D45746F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xEA00000000006C61;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D6DD5554(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736563;
  v3 = 0x6170736574696877;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001D73BCB20;
    if (a1 != 6)
    {
      v11 = 0x80000001D73BCB40;
    }

    v12 = 0x446C616D69636564;
    v13 = 0xED00007374696769;
    if (a1 != 4)
    {
      v12 = 0x7372657474656CLL;
      v13 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x73656E696C77656ELL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x80000001D73BCAF0;
    }

    v7 = 0x80000001D73BCAD0;
    v8 = 0xD000000000000016;
    if (!a1)
    {
      v8 = 0x6170736574696877;
      v7 = 0xEB00000000736563;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v3 = 0xD000000000000010;
      if (a2 == 6)
      {
        v14 = "lowercaseLetters";
      }

      else
      {
        v14 = "uppercaseLetters";
      }

      v2 = (v14 - 32) | 0x8000000000000000;
    }

    else if (a2 == 4)
    {
      v3 = 0x446C616D69636564;
      v2 = 0xED00007374696769;
    }

    else
    {
      v2 = 0xE700000000000000;
      v3 = 0x7372657474656CLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE800000000000000;
      v3 = 0x73656E696C77656ELL;
    }

    else
    {
      v2 = 0x80000001D73BCAF0;
      v3 = 0xD000000000000011;
    }
  }

  else if (a2)
  {
    v2 = 0x80000001D73BCAD0;
    v3 = 0xD000000000000016;
  }

  if (v9 == v3 && v10 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D72646CC();
  }

  return v15 & 1;
}

uint64_t sub_1D6DD57C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65636E65746E6573;
    }

    else
    {
      v4 = 0x61726168436C6C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xED00007372657463;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7364726F77;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x65636E65746E6573;
  v8 = 0xE900000000000073;
  if (a2 != 2)
  {
    v7 = 0x61726168436C6C61;
    v8 = 0xED00007372657463;
  }

  if (a2)
  {
    v2 = 0x7364726F77;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD5918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7374756F79616CLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0x73656D656874;
  v6 = 0xE700000000000000;
  v7 = 0x6C6C6177796170;
  if (a1 != 4)
  {
    v7 = 0x756F72676B636162;
    v6 = 0xEB0000000073646ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x73726564616568;
  if (a1 != 1)
  {
    v8 = 0x737265746F6F66;
  }

  if (!a1)
  {
    v8 = 0x7374756F79616CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x73656D656874)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6C6C6177796170)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = 0xEB0000000073646ELL;
      if (v9 != 0x756F72676B636162)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x73726564616568)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x737265746F6F66;
    }

    if (v9 != v2)
    {
LABEL_31:
      v12 = sub_1D72646CC();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v11)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D6DD5AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7629921;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6581857;
    }

    else
    {
      v4 = 29295;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E694C74786574;
    }

    else
    {
      v4 = 7629921;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 6581857;
  if (a2 != 2)
  {
    v8 = 29295;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 0x656E694C74786574;
    v6 = 0xE900000000000073;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD5C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6575737369;
    }

    else
    {
      v4 = 0x656E696C64616568;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6775156;
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 3)
    {
      v4 = 0x656C7A7A7570;
    }

    else
    {
      v4 = 0x657069636572;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6575737369;
    }

    else
    {
      v8 = 0x656E696C64616568;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656C7A7A7570;
    if (a2 != 3)
    {
      v5 = 0x657069636572;
    }

    if (a2 == 2)
    {
      v6 = 6775156;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1D72646CC();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1D6DD5D6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656C6261736964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746C7561666564;
    }

    else
    {
      v4 = 0x6F69736E656D6964;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE90000000000006ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65736E65646E6F63;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (a2 != 2)
  {
    v8 = 0x6F69736E656D6964;
    v7 = 0xE90000000000006ELL;
  }

  if (a2)
  {
    v2 = 0x65736E65646E6F63;
    v6 = 0xE900000000000064;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD5ED0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
  v6 = 0xE400000000000000;
  v7 = 1633905005;
  if (a1 != 4)
  {
    v7 = 0x66456C6175736976;
    v6 = 0xEC00000074636566;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x72476C6169646172;
  v9 = 0xEE00746E65696461;
  if (a1 != 1)
  {
    v8 = 0x65695674696C7073;
    v9 = 0xE900000000000077;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746E656964617267;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6567616D69)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1633905005)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000074636566;
      if (v10 != 0x66456C6175736976)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEE00746E65696461;
      if (v10 != 0x72476C6169646172)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000077;
      if (v10 != 0x65695674696C7073)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x746E656964617267)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D6DD60D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006761;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x54676E696B636162;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA00000000006761;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x726F7463656C6573;
    v6 = 0xE900000000000073;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x736E6F6974706FLL;
    }

    else
    {
      v5 = 0x6574656D61726170;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000007372;
    }
  }

  v7 = 0x726F7463656C6573;
  v8 = 0xE900000000000073;
  v9 = 0xE700000000000000;
  v10 = 0x736E6F6974706FLL;
  if (a2 != 3)
  {
    v10 = 0x6574656D61726170;
    v9 = 0xEA00000000007372;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x54676E696B636162;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DD625C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006D756D696ELL;
  v3 = 0x694D746365746564;
  v4 = a1;
  v5 = 0xEF746E6572727543;
  v6 = 0x80000001D73BC8D0;
  v7 = 0xD00000000000001CLL;
  if (a1 != 4)
  {
    v7 = 0x6465786966;
    v6 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v7 = 0x6E6F4E6465786966;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x7275436465786966;
  v9 = 0xEC000000746E6572;
  if (a1 != 1)
  {
    v8 = 0xD000000000000019;
    v9 = 0x80000001D73BC8A0;
  }

  if (!a1)
  {
    v8 = 0x694D746365746564;
    v9 = 0xED00006D756D696ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF746E6572727543;
      if (v10 != 0x6E6F4E6465786966)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000001D73BC8D0;
      if (v10 != 0xD00000000000001CLL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x6465786966)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC000000746E6572;
        if (v10 != 0x7275436465786966)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000019;
      v2 = 0x80000001D73BC8A0;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1D72646CC();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_1D6DD645C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 2003134838;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656E6961746E6F63;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = 0xED00007765695672;
    }

    else
    {
      v5 = 0x80000001D73BC860;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6566615377656976;
    }

    else
    {
      v4 = 2003134838;
    }

    if (v3)
    {
      v5 = 0xEC00000061657241;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x656E6961746E6F63;
  v8 = 0x80000001D73BC860;
  if (a2 == 2)
  {
    v8 = 0xED00007765695672;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (a2)
  {
    v2 = 0x6566615377656976;
    v6 = 0xEC00000061657241;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD65C0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x6E4965736165;
    }

    else
    {
      v2 = 0x7261656E696CLL;
    }

    v3 = 0xE600000000000000;
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x754F65736165;
    }

    else
    {
      if (a1 == 3)
      {
        v2 = 0x61456E4965736165;
        v3 = 0xED000074754F6573;
        goto LABEL_12;
      }

      v3 = 0xE700000000000000;
      v4 = 0x6C7561666564;
    }

    v2 = v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E4965736165;
    }

    else
    {
      v9 = 0x7261656E696CLL;
    }

    v8 = 0xE600000000000000;
    if (v2 != v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0x61456E4965736165;
    v6 = 0xED000074754F6573;
    if (a2 != 3)
    {
      v5 = 0x746C7561666564;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x74754F65736165;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v2 != v7)
    {
      goto LABEL_29;
    }
  }

  if (v3 != v8)
  {
LABEL_29:
    v10 = sub_1D72646CC();
    goto LABEL_30;
  }

  v10 = 1;
LABEL_30:

  return v10 & 1;
}

uint64_t sub_1D6DD6754(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7261745378656C66;
  v4 = a1;
  v5 = 0x6F72416563617073;
  v6 = 0xEB00000000646E75;
  if (a1 != 5)
  {
    v5 = 0x6576456563617073;
    v6 = 0xEB00000000796C6ELL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x68637465727473;
  if (a1 != 3)
  {
    v8 = 0x7465426563617073;
    v7 = 0xEC0000006E656577;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x646E4578656C66;
  if (a1 != 1)
  {
    v10 = 0x7265746E6563;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x7261745378656C66;
    v9 = 0xE900000000000074;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x646E4578656C66)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x7265746E6563)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0x6F72416563617073;
      v14 = 6581877;
    }

    else
    {
      v13 = 0x6576456563617073;
      v14 = 7957614;
    }

    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v13)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 != 3)
  {
    v3 = 0x7465426563617073;
    v2 = 0xEC0000006E656577;
    goto LABEL_31;
  }

  v2 = 0xE700000000000000;
  if (v11 != 0x68637465727473)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v15 = sub_1D72646CC();
    goto LABEL_38;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_1D6DD6994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0xE400000000000000;
    v13 = 1835365481;
    if (a1 != 2)
    {
      v13 = 0x656D656C70707573;
      v12 = 0xED0000797261746ELL;
    }

    v14 = 1953459315;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x70756F7267;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x7261696C69787561;
    v4 = 0xE900000000000079;
    v5 = 0xE600000000000000;
    v6 = 0x6E6F6974706FLL;
    if (a1 != 7)
    {
      v6 = 0x646E69426D657469;
      v5 = 0xEC00000073676E69;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE500000000000000;
    v8 = 0x656C797473;
    if (a1 != 4)
    {
      v8 = 0x697461726F636564;
      v7 = 0xEA00000000006E6FLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v9 != 1835365481)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xED0000797261746ELL;
        if (v9 != 0x656D656C70707573)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1953459315)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x70756F7267)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x656C797473)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA00000000006E6FLL;
      if (v9 != 0x697461726F636564)
      {
LABEL_52:
        v16 = sub_1D72646CC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE900000000000079;
    if (v9 != 0x7261696C69787561)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x6E6F6974706FLL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEC00000073676E69;
    if (v9 != 0x646E69426D657469)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D6DD6C58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065756C61;
  v3 = 0x567972616D697270;
  v4 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x7261646E6F636573;
    v10 = 0xEE0065756C615679;
    if (a1 != 1)
    {
      v9 = 0x7972616974726574;
      v10 = 0xED000065756C6156;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0x567972616D697270;
    }

    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xEC00000065756C61;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v5 = 0x80000001D73BC720;
      v6 = 0x80000001D73BC740;
      v7 = a1 == 5;
      if (a1 == 5)
      {
        v8 = 0xD000000000000015;
      }

      else
      {
        v8 = 0xD00000000000002BLL;
      }
    }

    else
    {
      v5 = 0x80000001D73BC6E0;
      v6 = 0x80000001D73BC700;
      v7 = a1 == 3;
      if (a1 == 3)
      {
        v8 = 0xD000000000000016;
      }

      else
      {
        v8 = 0xD000000000000015;
      }
    }

    if (v7)
    {
      v11 = v5;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE0065756C615679;
        if (v8 != 0x7261646E6F636573)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xED000065756C6156;
        if (v8 != 0x7972616974726574)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v12 = 0xD000000000000016;
      }

      else
      {
        v12 = 0xD000000000000015;
      }

      if (a2 == 3)
      {
        v2 = 0x80000001D73BC6E0;
      }

      else
      {
        v2 = 0x80000001D73BC700;
      }

      if (v8 != v12)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (a2 == 5)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001D73BC720;
    }

    else
    {
      v2 = 0x80000001D73BC740;
    }
  }

  if (v8 != v3)
  {
LABEL_44:
    v13 = sub_1D72646CC();
    goto LABEL_45;
  }

LABEL_41:
  if (v11 != v2)
  {
    goto LABEL_44;
  }

  v13 = 1;
LABEL_45:

  return v13 & 1;
}

uint64_t sub_1D6DD6E88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = a1;
  if (a1 <= 4u)
  {
    v13 = 0x80000001D73BC540;
    v14 = 0xD000000000000013;
    v15 = 0x80000001D73BC560;
    v16 = 0xD000000000000015;
    if (a1 != 3)
    {
      v16 = 0xD000000000000014;
      v15 = 0x80000001D73BC580;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x6974736974617473;
    v18 = 0xED00006570795463;
    if (!a1)
    {
      v17 = 0x696669746E656469;
      v18 = 0xEA00000000007265;
    }

    if (a1 <= 1u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v14;
    }

    if (v3 <= 1)
    {
      v12 = v18;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v4 = 0x80000001D73BC630;
    v5 = 0xD000000000000020;
    v6 = 0x80000001D73BC660;
    v7 = 0xD000000000000037;
    if (a1 != 9)
    {
      v7 = 0x6F6272656461656CLL;
      v6 = 0xEF656D614E647261;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x80000001D73BC5A0;
    v9 = 0x80000001D73BC5D0;
    if (a1 != 6)
    {
      v9 = 0x80000001D73BC600;
    }

    if (a1 == 5)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD000000000000021;
    }

    if (a1 != 5)
    {
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v3 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xED00006570795463;
        if (v11 != 0x6974736974617473)
        {
          goto LABEL_64;
        }
      }

      else if (v11 != 0x696669746E656469)
      {
        goto LABEL_64;
      }
    }

    else if (a2 == 2)
    {
      v2 = 0x80000001D73BC540;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_64;
      }
    }

    else if (a2 == 3)
    {
      v2 = 0x80000001D73BC560;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v2 = 0x80000001D73BC580;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_64;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v2 = 0x80000001D73BC630;
      if (v11 != 0xD000000000000020)
      {
        goto LABEL_64;
      }
    }

    else if (a2 == 9)
    {
      v2 = 0x80000001D73BC660;
      if (v11 != 0xD000000000000037)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v2 = 0xEF656D614E647261;
      if (v11 != 0x6F6272656461656CLL)
      {
LABEL_64:
        v20 = sub_1D72646CC();
        goto LABEL_65;
      }
    }
  }

  else if (a2 == 5)
  {
    v2 = 0x80000001D73BC5A0;
    if (v11 != 0xD000000000000022)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (a2 == 6)
    {
      v19 = "leaderboardPlayerRankDisplayValue";
    }

    else
    {
      v19 = "leaderboardNumEntriesDisplayValue";
    }

    v2 = (v19 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000021)
    {
      goto LABEL_64;
    }
  }

  if (v12 != v2)
  {
    goto LABEL_64;
  }

  v20 = 1;
LABEL_65:

  return v20 & 1;
}

uint64_t sub_1D6DD71EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001D73BC510;
    }

    else
    {
      v3 = 0x656461654C736168;
      v4 = 0xEE006472616F6272;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x616D697250736168;
    }

    if (v2)
    {
      v4 = 0x80000001D73BC4F0;
    }

    else
    {
      v4 = 0xEF65756C61567972;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001D73BC510;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE006472616F6272;
      if (v3 != 0x656461654C736168)
      {
LABEL_26:
        v7 = sub_1D72646CC();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x616D697250736168;
    }

    if (a2)
    {
      v6 = 0x80000001D73BC4F0;
    }

    else
    {
      v6 = 0xEF65756C61567972;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1D6DD7370(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62615461746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6B72616D646E616CLL;
    }

    else
    {
      v5 = 0x6369746E616D6573;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xED000070756F7247;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1953720684;
    }

    else
    {
      v5 = 0x6C62615461746164;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6B72616D646E616CLL;
  if (a2 != 2)
  {
    v8 = 0x6369746E616D6573;
    v7 = 0xED000070756F7247;
  }

  if (a2)
  {
    v3 = 1953720684;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD74BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x65527972756A6E69;
  v5 = 0xEC00000074726F70;
  if (a1 != 5)
  {
    v4 = 0x6579616C5079656BLL;
    v5 = 0xE900000000000072;
  }

  v6 = 0x65726F6353786F62;
  v7 = 0xE900000000000073;
  if (a1 != 3)
  {
    v6 = 0x726F6353656E696CLL;
    v7 = 0xEA00000000007365;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x676E69646E617473;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x7374656B63617262;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7365726F6373;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE600000000000000;
      if (v10 != 0x7365726F6373)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 != 1)
    {
      v13 = 0xE800000000000000;
      if (v10 != 0x7374656B63617262)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0x676E69646E617473;
    goto LABEL_25;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v13 = 0xEA00000000007365;
      if (v10 != 0x726F6353656E696CLL)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0x65726F6353786F62;
LABEL_25:
    v13 = 0xE900000000000073;
    if (v10 != v12)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v13 = 0xEC00000074726F70;
    if (v10 != 0x65527972756A6E69)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0xE900000000000072;
    if (v10 != 0x6579616C5079656BLL)
    {
LABEL_39:
      v14 = sub_1D72646CC();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v13)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_1D6DD7710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6564646968;
  if (a1 == 2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x74756F6B61657262;
    v5 = 0xEF746E656D656C45;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0x746E656D656C65;
  }

  else
  {
    v3 = 0x80000001D73BB7B0;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E6564646968;
    }

    else
    {
      v11 = 0x74756F6B61657262;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEF746E656D656C45;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x746E656D656C65;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0x80000001D73BB7B0;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1D72646CC();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D6DD7868(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7261745378656C66;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x68637465727473;
    }

    else
    {
      v5 = 0x7265746E6563;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E4578656C66;
    }

    else
    {
      v5 = 0x7261745378656C66;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x68637465727473;
  if (a2 != 2)
  {
    v8 = 0x7265746E6563;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x646E4578656C66;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD79A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006573;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE600000000000000;
    v13 = 0x6E6F6974706FLL;
    v14 = 0xE600000000000000;
    v15 = 0x746165706572;
    if (a1 != 8)
    {
      v15 = 0x7261696C69787561;
      v14 = 0xE900000000000079;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0x6143686374697773;
    v17 = 0xE400000000000000;
    if (a1 == 5)
    {
      v17 = 0xEA00000000006573;
    }

    else
    {
      v16 = 1835365481;
    }

    if (a1 <= 6u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v17;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = 0xE400000000000000;
    v6 = 1953459315;
    v7 = 0xE500000000000000;
    v8 = 0x656C797473;
    if (a1 != 3)
    {
      v8 = 0x686374697773;
      v7 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x70756F7267;
    if (a1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v9 = 0x697461726F636564;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        if (v10 != 0x6143686374697773)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v10 != 1835365481)
        {
LABEL_58:
          v18 = sub_1D72646CC();
          goto LABEL_59;
        }
      }
    }

    else if (a2 == 7)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x6E6F6974706FLL)
      {
        goto LABEL_58;
      }
    }

    else if (a2 == 8)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x746165706572)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v2 = 0xE900000000000079;
      if (v10 != 0x7261696C69787561)
      {
        goto LABEL_58;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x70756F7267)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v2 = 0xEA00000000006E6FLL;
      if (v10 != 0x697461726F636564)
      {
        goto LABEL_58;
      }
    }
  }

  else if (a2 == 2)
  {
    v2 = 0xE400000000000000;
    if (v10 != 1953459315)
    {
      goto LABEL_58;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE500000000000000;
    if (v10 != 0x656C797473)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    if (v10 != 0x686374697773)
    {
      goto LABEL_58;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_58;
  }

  v18 = 1;
LABEL_59:

  return v18 & 1;
}

uint64_t sub_1D6DD7C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x65676175676E616CLL;
  if (a1 != 5)
  {
    v6 = 0x7469617274;
    v5 = 0xE500000000000000;
  }

  v7 = 1886152040;
  if (a1 != 3)
  {
    v7 = 1953393000;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6C6562616CLL;
  if (a1 != 1)
  {
    v9 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x696669746E656469;
    v8 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE500000000000000;
      if (a2 == 1)
      {
        if (v10 != 0x6C6562616CLL)
        {
          goto LABEL_36;
        }
      }

      else if (v10 != 0x65756C6176)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x65676175676E616CLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x7469617274)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    v2 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v10 != 1886152040)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 1953393000;
  }

  if (v10 != v3)
  {
LABEL_36:
    v12 = sub_1D72646CC();
    goto LABEL_37;
  }

LABEL_33:
  if (v11 != v2)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1D6DD7E4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74756F79616CLL;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x7972617262696CLL;
  if (a1 != 5)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C6C6177796170;
  if (a1 != 3)
  {
    v7 = 0x656D656874;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x726564616568;
  if (a1 != 1)
  {
    v8 = 0x7265746F6F66;
  }

  if (!a1)
  {
    v8 = 0x74756F79616CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 1684104552;
      }

      else
      {
        v12 = 1953460070;
      }

      if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x7972617262696CLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xEA0000000000646ELL;
        if (v9 != 0x756F72676B636162)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6C6C6177796170)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE500000000000000;
    v2 = 0x656D656874;
  }

  if (v9 != v2)
  {
LABEL_36:
    v13 = sub_1D72646CC();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1D6DD8044(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x647541664F646E65;
  v5 = 0xEF6B636172546F69;
  v6 = 0x7474656C7377656ELL;
  v7 = 0xEA00000000007265;
  if (a1 != 4)
  {
    v6 = 0x7374726F7073;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x657573734977656ELL;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x6E6974656B72616DLL;
    v9 = 0xE900000000000067;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73656C7A7A7570;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF6B636172546F69;
      if (v10 != 0x647541664F646E65)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000007265;
      if (v10 != 0x7474656C7377656ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7374726F7073)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x657573734977656ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E6974656B72616DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73656C7A7A7570)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D6DD825C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x70756F7267;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6775156;
    }

    else
    {
      v4 = 0x6465626D45626577;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E696C64616568;
    }

    else
    {
      v4 = 0x70756F7267;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (a2 != 2)
  {
    v8 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x656E696C64616568;
    v6 = 0xE800000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD8388(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x80000001D73BAB30;
      v5 = 0xD000000000000011;
    }

    else if (a1 == 4)
    {
      v6 = 0xEE00746867696548;
      v5 = 0x656C626978656C66;
    }

    else
    {
      v6 = 0x80000001D73BAB60;
      v5 = 0xD000000000000014;
    }
  }

  else
  {
    v3 = 0x80000001D73BAB10;
    v4 = 0xD000000000000013;
    if (a1 == 1)
    {
      v4 = 0x656C626978656C66;
      v3 = 0xED00006874646957;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000001D73BAAE0;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x80000001D73BAB30;
      if (v5 != 0xD000000000000011)
      {
        goto LABEL_36;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xEE00746867696548;
      if (v5 != 0x656C626978656C66)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v8 = 0x80000001D73BAB60;
      if (v5 != 0xD000000000000014)
      {
LABEL_36:
        v9 = sub_1D72646CC();
        goto LABEL_37;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x656C626978656C66;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 1)
    {
      v8 = 0xED00006874646957;
    }

    else
    {
      v8 = 0x80000001D73BAB10;
    }

    if (v5 != v7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0x80000001D73BAAE0;
    if (v5 != 0xD000000000000012)
    {
      goto LABEL_36;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_36;
  }

  v9 = 1;
LABEL_37:

  return v9 & 1;
}

uint64_t sub_1D6DD8574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827314;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6D756C6F63;
    }

    else
    {
      v4 = 0x65526E6D756C6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xED00006573726576;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265766552776F72;
    }

    else
    {
      v4 = 7827314;
    }

    if (v3)
    {
      v5 = 0xEA00000000006573;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6E6D756C6F63;
  if (a2 != 2)
  {
    v8 = 0x65526E6D756C6F63;
    v7 = 0xED00006573726576;
  }

  if (a2)
  {
    v2 = 0x7265766552776F72;
    v6 = 0xEA00000000006573;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD86C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x7972616974726574;
  v5 = 0xEC0000006C6C6946;
  if (a1 != 6)
  {
    v4 = 0x6F74617261706573;
    v5 = 0xE900000000000072;
  }

  v6 = 0xE400000000000000;
  v7 = 1819044198;
  if (a1 != 4)
  {
    v7 = 0x7261646E6F636573;
    v6 = 0xED00006C6C694679;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x7972616974726574;
  v9 = 0xED00006C6562614CLL;
  if (a1 != 2)
  {
    v8 = 0x616E726574617571;
    v9 = 0xEF6C6562614C7972;
  }

  v10 = 0x7261646E6F636573;
  if (a1)
  {
    v3 = 0xEE006C6562614C79;
  }

  else
  {
    v10 = 0x6C6562616CLL;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xEE006C6562614C79;
        if (v11 != 0x7261646E6F636573)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C6562616CLL)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 != 2)
    {
      v13 = 0xEF6C6562614C7972;
      if (v11 != 0x616E726574617571)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x7972616974726574;
    v15 = 1700946252;
LABEL_38:
    v13 = v15 | 0xED00006C00000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1819044198)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x7261646E6F636573;
    v15 = 1818838649;
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v13 = 0xEC0000006C6C6946;
    if (v11 != 0x7972616974726574)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE900000000000072;
    if (v11 != 0x6F74617261706573)
    {
LABEL_45:
      v16 = sub_1D72646CC();
      goto LABEL_46;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1D6DD8994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1768843629;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x746963696C707865;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 1768843629;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (a2 != 2)
  {
    v8 = 0x746963696C707865;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6C616D73;
    v6 = 0xE500000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD8AC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656C6261736964;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB00000000646574;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6867696C68676968;
    }

    else
    {
      v6 = 0x64657463656C6573;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x64657375636F66;
    }

    else
    {
      v6 = 0x64656C6261736964;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6867696C68676968;
  v10 = 0xEB00000000646574;
  if (a2 != 2)
  {
    v9 = 0x64657463656C6573;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x64657375636F66;
    v8 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DD8C10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7672754364617571;
  v5 = 0xE900000000000065;
  v6 = 0xE300000000000000;
  v7 = 6517345;
  if (a1 != 4)
  {
    v7 = 0x65736F6C63;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701734764;
  if (a1 != 1)
  {
    v9 = 0x6576727563;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1702260589;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x7672754364617571)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6517345)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE500000000000000;
    v13 = 1936682083;
  }

  else
  {
    if (!a2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702260589)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701734764)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE500000000000000;
    v13 = 1987212643;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
  {
LABEL_34:
    v14 = sub_1D72646CC();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_1D6DD8DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E657665;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65756761656CLL;
    }

    else
    {
      v4 = 0x746E657665;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x74697465706D6F63;
    v5 = 0xEA0000000000726FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001D73BBC40;
    }

    else
    {
      v5 = 0x80000001D73BBC60;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE600000000000000;
    v8 = 0x65756761656CLL;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000010;
    v6 = 0x80000001D73BBC40;
    v7 = 0x80000001D73BBC60;
    v8 = 0xD000000000000011;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xEA0000000000726FLL;
  if (v4 != 0x74697465706D6F63)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = sub_1D72646CC();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1D6DD8F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616E696769726FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6974616D6F747561;
    }

    else
    {
      v4 = 0x65746E4972657375;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000063;
    }

    else
    {
      v5 = 0xED00006563616672;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6574616C706D6574;
    }

    else
    {
      v4 = 0x6C616E696769726FLL;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0x6974616D6F747561;
  v7 = 0xE900000000000063;
  if (a2 != 2)
  {
    v6 = 0x65746E4972657375;
    v7 = 0xED00006563616672;
  }

  if (a2)
  {
    v2 = 0x6574616C706D6574;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D6DD90A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x697461726F636564;
  v5 = 0xEA00000000006E6FLL;
  if (a1 != 6)
  {
    v4 = 0x6567616B636170;
    v5 = 0xE700000000000000;
  }

  v6 = 0x656D656C70707573;
  v7 = 0xED0000797261746ELL;
  if (a1 != 4)
  {
    v6 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x74657070696E73;
  if (a1 != 2)
  {
    v9 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  v10 = 1835365481;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x70756F7267;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000006E6FLL;
        if (v11 != 0x697461726F636564)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6567616B636170)
        {
LABEL_45:
          v14 = sub_1D72646CC();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xED0000797261746ELL;
      if (v11 != 0x656D656C70707573)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701869940)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x74657070696E73)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x656C797473)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1835365481)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x70756F7267)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1D6DD930C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C626967696C65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265626D656DLL;
    }

    else
    {
      v4 = 0x657A696E6167726FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x626967696C656E69;
    }

    else
    {
      v4 = 0x656C626967696C65;
    }

    if (v3)
    {
      v5 = 0xEA0000000000656CLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x7265626D656DLL;
  if (a2 != 2)
  {
    v8 = 0x657A696E6167726FLL;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v2 = 0x626967696C656E69;
    v6 = 0xEA0000000000656CLL;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD9458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x65527972756A6E69;
  v5 = 0xEC00000074726F70;
  if (a1 != 5)
  {
    v4 = 0x6579616C5079656BLL;
    v5 = 0xE900000000000072;
  }

  v6 = 0xE800000000000000;
  v7 = 0x65726F6353786F62;
  if (a1 != 3)
  {
    v7 = 0x726F6353656E696CLL;
    v6 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E69646E617473;
  if (a1 != 1)
  {
    v9 = 0x74656B63617262;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65726F6373;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x676E69646E617473)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x74656B63617262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65726F6373)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC00000074726F70;
      if (v10 != 0x65527972756A6E69)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x6579616C5079656BLL)
      {
LABEL_39:
        v13 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65726F6353786F62)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x726F6353656E696CLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1D6DD96AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1952867692;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7468676972;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6472616F6279656BLL;
    }

    else
    {
      v4 = 1952867692;
    }

    if (v3)
    {
      v5 = 0xEF7373696D736944;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7468676972;
  if (a2 != 2)
  {
    v8 = 1954047348;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6472616F6279656BLL;
    v6 = 0xEF7373696D736944;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD97E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000726FLL;
  v3 = 0x6C6F43656D656874;
  v4 = a1;
  v5 = 0x6152656C7A7A7570;
  v6 = 0xEF726F6C6F436B6ELL;
  if (a1 != 4)
  {
    v5 = 0xD000000000000013;
    v6 = 0x80000001D73BB990;
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0x80000001D73BB960;
  }

  v8 = 0x80000001D73BB920;
  if (a1 == 1)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (a1 != 1)
  {
    v8 = 0x80000001D73BB940;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6C6F43656D656874;
  }

  if (!v4)
  {
    v8 = 0xEA0000000000726FLL;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v10 = v7;
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001D73BB960;
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001D73BB990;
        goto LABEL_31;
      }

      v3 = 0x6152656C7A7A7570;
      v2 = 0xEF726F6C6F436B6ELL;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001D73BB920;
LABEL_31:
      v3 = 0xD000000000000013;
      goto LABEL_32;
    }

    v2 = 0x80000001D73BB940;
    v3 = 0xD000000000000012;
  }

LABEL_32:
  if (v10 == v3 && v11 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D6DD998C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073756964;
  v3 = 0x615272656E726F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1818326639;
    }

    else
    {
      v5 = 0x746E656964617267;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61507265697A6562;
    }

    else
    {
      v5 = 0x615272656E726F63;
    }

    if (v4)
    {
      v6 = 0xEA00000000006874;
    }

    else
    {
      v6 = 0xEC00000073756964;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1818326639;
  if (a2 != 2)
  {
    v8 = 0x746E656964617267;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x61507265697A6562;
    v2 = 0xEA00000000006874;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD9ACC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF776F6461685367;
  v3 = 0x6E6964756C637865;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001D73BB880;
    v12 = 0xD000000000000017;
    if (a1 != 6)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001D73BB8A0;
    }

    v13 = 0x6275536563726F66;
    v14 = 0xEC00000064657564;
    if (a1 != 4)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000001D73BB860;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
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
    v5 = 0x7263536563726F66;
    v6 = 0xEA00000000006D69;
    if (a1 == 2)
    {
      v5 = 0x6E6964756C637865;
      v6 = 0xEF776F6461685367;
    }

    v7 = 0x80000001D73BB800;
    v8 = 0xD000000000000013;
    if (a1)
    {
      v7 = 0x80000001D73BB820;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001D73BB880;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001D73BB8A0;
        if (v9 != 0xD00000000000001CLL)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0xEC00000064657564;
      if (v9 != 0x6275536563726F66)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x80000001D73BB860;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001D73BB820;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001D73BB800;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0xEA00000000006D69;
      if (v9 != 0x7263536563726F66)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_1D72646CC();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1D6DD9D5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7974706D65;
  v3 = a1;
  v4 = 0xE500000000000000;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x746E656964617267;
    if (a1 != 2)
    {
      v13 = 0x72476C6169646172;
      v12 = 0xEE00746E65696461;
    }

    v14 = 0x726F6C6F63;
    if (!a1)
    {
      v14 = 0x7974706D65;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = 0x656E696873;
    v6 = 0xE800000000000000;
    v7 = 0x726F7463656C6573;
    if (a1 != 7)
    {
      v7 = 0x7463656C65736E75;
      v6 = 0xEA0000000000726FLL;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6E726574746170;
    if (a1 != 4)
    {
      v9 = 1633905005;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v10 != 0x746E656964617267)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xEE00746E65696461;
        if (v10 != 0x72476C6169646172)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v15 = 0xE500000000000000;
    if (a2)
    {
      if (v10 != 0x726F6C6F63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0xE700000000000000;
        if (v10 != 0x6E726574746170)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v10 != 1633905005)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0xE500000000000000;
      if (v10 != 0x656E696873)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0xE800000000000000;
      if (v10 != 0x726F7463656C6573)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0x7463656C65736E75;
    v15 = 0xEA0000000000726FLL;
  }

  if (v10 != v2)
  {
LABEL_49:
    v16 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_1D6DDA000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C64616568;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465626D45626577;
    }

    else
    {
      v4 = 0x656C7A7A7570;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6575737369;
    }

    else
    {
      v4 = 0x656E696C64616568;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6465626D45626577;
  if (a2 != 2)
  {
    v8 = 0x656C7A7A7570;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6575737369;
    v6 = 0xE500000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDA134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0xE400000000000000;
    v13 = 1819242338;
    if (a1 != 2)
    {
      v13 = 0x4D6465726579616CLL;
      v12 = 0xEC00000061696465;
    }

    v14 = 1954047348;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x6567616D69;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656D695465746164;
    v5 = 0xE500000000000000;
    v6 = 0x74616F6C66;
    if (a1 != 7)
    {
      v6 = 0x73726F736E6F7073;
      v5 = 0xEB00000000706968;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE500000000000000;
    v8 = 0x6572616873;
    if (a1 != 4)
    {
      v8 = 7107189;
      v7 = 0xE300000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v9 != 1819242338)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEC00000061696465;
        if (v9 != 0x4D6465726579616CLL)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1954047348)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6567616D69)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6572616873)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 7107189)
      {
LABEL_52:
        v16 = sub_1D72646CC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x656D695465746164)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x74616F6C66)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEB00000000706968;
    if (v9 != 0x73726F736E6F7073)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D6DDA3D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x4E65727574616566;
    }

    else
    {
      v5 = 0x6E6F697461727564;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000656D61;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656C746974;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x4E65727574616566;
  v8 = 0xEB00000000656D61;
  if (a2 != 2)
  {
    v7 = 0x6E6F697461727564;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDA51C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x746E656D656C65;
  if (a1 == 2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v3 = 0x74756F6B61657262;
    v4 = 0xEF746E656D656C45;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001D73BB7B0;
  if (!a1)
  {
    v5 = 0x656E6961746E6F63;
    v6 = 0xE900000000000072;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x746E656D656C65;
    }

    else
    {
      v11 = 0x74756F6B61657262;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xEF746E656D656C45;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x656E6961746E6F63;
    }

    if (a2)
    {
      v10 = 0x80000001D73BB7B0;
    }

    else
    {
      v10 = 0xE900000000000072;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_1D72646CC();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1D6DDA67C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1497648962;
    }

    else
    {
      v4 = 0x524544414548;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x5245544F4F46;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x4C4C4157594150;
  }

  else
  {
    v4 = 0x554F52474B434142;
    v3 = 0xEA0000000000444ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1497648962;
    }

    else
    {
      v9 = 0x524544414548;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x4C4C4157594150;
    if (a2 != 3)
    {
      v6 = 0x554F52474B434142;
      v5 = 0xEA0000000000444ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x5245544F4F46;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DDA7F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65746F6D6572;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x686374697773;
    }

    else
    {
      v4 = 0x65746F6D6572;
    }

    v3 = 0xE600000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x65746E4972657375;
    v3 = 0xED00006563616672;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x726F7463656C6573;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE600000000000000;
    v6 = 0xE600000000000000;
    v7 = 0x686374697773;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x65746E4972657375;
    v5 = 0xED00006563616672;
    v6 = 0xE700000000000000;
    v7 = 0x676E69646E6962;
    if (a2 != 3)
    {
      v7 = 0x726F7463656C6573;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDA97C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657474656C6170;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6863726172656968;
    }

    else
    {
      v4 = 0x657474656C6170;
    }

    if (v3)
    {
      v5 = 0xEC0000006C616369;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6C6F6369746C756DLL;
    v5 = 0xEA0000000000726FLL;
  }

  else if (a1 == 3)
  {
    v4 = 0x6F7268636F6E6F6DLL;
    v5 = 0xEA0000000000656DLL;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x726F7463656C6573;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6863726172656968;
    v8 = 0xEC0000006C616369;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6C6F6369746C756DLL;
    v6 = 0xEA0000000000726FLL;
    v7 = 0x6F7268636F6E6F6DLL;
    v8 = 0xEA0000000000656DLL;
    if (a2 != 3)
    {
      v7 = 0x726F7463656C6573;
      v8 = 0xE800000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D6DDAB20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726F74617265706FLL;
    }

    else
    {
      v5 = 0x6E6F6974706FLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65756C6176;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x726F74617265706FLL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6974706FLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x65756C6176;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDAC54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7261696C69787561;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0xE600000000000000;
  v7 = 0x746165706572;
  if (a1 != 6)
  {
    v7 = 0x646E69426D657469;
    v6 = 0xEC00000073676E69;
  }

  v8 = 0xE600000000000000;
  v9 = 0x686374697773;
  if (a1 != 4)
  {
    v9 = 0x6143686374697773;
    v8 = 0xEA00000000006573;
  }

  if (a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 1953459315;
  if (a1 == 2)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x63617073656D616ELL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x6E6F6974706FLL;
  if (!a1)
  {
    v12 = 0x7261696C69787561;
    v11 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v2 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  if (v5 <= 3)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v4 = 0xE600000000000000;
        if (v13 != 0x746165706572)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0xEC00000073676E69;
        if (v13 != 0x646E69426D657469)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x686374697773)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xEA00000000006573;
      if (v13 != 0x6143686374697773)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE400000000000000;
        if (v13 != 1953459315)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x63617073656D616ELL;
      v4 = 0xE900000000000065;
    }

    else if (a2)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x6E6F6974706FLL)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_1D72646CC();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v4)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_1D6DDAEB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x69706F6C65766564;
  v5 = 0xEA0000000000676ELL;
  v6 = 0xE700000000000000;
  v7 = 0x64657461647075;
  if (a1 != 4)
  {
    v7 = 0x6C61636F6CLL;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x79726F7453706F74;
  if (a1 != 1)
  {
    v8 = 0x676E696B61657262;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x6C616D726F6ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA0000000000676ELL;
      if (v9 != 0x69706F6C65766564)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x64657461647075)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x6C61636F6CLL)
      {
LABEL_34:
        v12 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE800000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x79726F7453706F74)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x676E696B61657262)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x6C616D726F6ELL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1D6DDB090(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6E696C7265646E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7263737265707573;
    }

    else
    {
      v5 = 0x6E696C7265646E75;
    }

    if (v4)
    {
      v6 = 0xEB00000000747069;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7069726373627573;
    v6 = 0xE900000000000074;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72656C6C616D73;
    }

    else
    {
      v5 = 0x726567676962;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0x7069726373627573;
  v8 = 0xE900000000000074;
  v9 = 0xE700000000000000;
  v10 = 0x72656C6C616D73;
  if (a2 != 3)
  {
    v10 = 0x726567676962;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x7263737265707573;
    v2 = 0xEB00000000747069;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DDB21C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0xD000000000000023;
  if (a1 > 4u)
  {
    v4 = 0x80000001D73BB370;
    v5 = 0xD000000000000026;
    v11 = 0x80000001D73BB3A0;
    v12 = 0x74726F7053736168;
    if (a1 == 8)
    {
      v12 = 0xD000000000000023;
    }

    else
    {
      v11 = 0xEE00746E65764573;
    }

    if (a1 != 7)
    {
      v5 = v12;
      v4 = v11;
    }

    v8 = 0x80000001D73BB310;
    v9 = 0xD000000000000022;
    if (a1 != 5)
    {
      v9 = 0xD000000000000023;
      v8 = 0x80000001D73BB340;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v4 = 0x80000001D73BB290;
    v5 = 0xD00000000000001FLL;
    v6 = 0x80000001D73BB2B0;
    v7 = 0xD000000000000021;
    if (a1 == 3)
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v6 = 0x80000001D73BB2E0;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x80000001D73BB270;
    v9 = 0xD00000000000001ALL;
    if (!a1)
    {
      v9 = 0x6369747241736168;
      v8 = 0xEA0000000000656CLL;
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v15 = "hasSportsDataVisualizationLineScore";
        goto LABEL_43;
      }

      v2 = 0x80000001D73BB310;
      v3 = 0xD000000000000022;
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001D73BB370;
      v3 = 0xD000000000000026;
    }

    else
    {
      if (a2 == 8)
      {
        v15 = "hasSportsDataVisualizationKeyPlayer";
        goto LABEL_43;
      }

      v3 = 0x74726F7053736168;
      v2 = 0xEE00746E65764573;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x80000001D73BB270;
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x6369747241736168;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0x80000001D73BB290;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    if (a2 == 3)
    {
      v15 = "hasSportsDataVisualizationStandings";
LABEL_43:
      v2 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_44;
    }

    v2 = 0x80000001D73BB2E0;
    v3 = 0xD000000000000021;
  }

LABEL_44:
  if (v13 == v3 && v14 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1D72646CC();
  }

  return v16 & 1;
}

uint64_t sub_1D6DDB4D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657461;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x4479616C70736964;
    }

    else
    {
      v6 = 0x446873696C627570;
    }

    v7 = 0xEB00000000657461;
  }

  else
  {
    v4 = 0x80000001D73B6E80;
    v5 = 0xD000000000000014;
    if (a1 != 3)
    {
      v5 = 0x637465467473616CLL;
      v4 = 0xEF65746144646568;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0x80000001D73B6E60;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x4479616C70736964;
    }

    else
    {
      v8 = 0x446873696C627570;
    }

    if (v6 != v8)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0x80000001D73B6E60;
    if (v6 != 0xD000000000000010)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0x80000001D73B6E80;
    if (v6 != 0xD000000000000014)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v2 = 0xEF65746144646568;
    if (v6 != 0x637465467473616CLL)
    {
LABEL_29:
      v9 = sub_1D72646CC();
      goto LABEL_30;
    }
  }

  if (v7 != v2)
  {
    goto LABEL_29;
  }

  v9 = 1;
LABEL_30:

  return v9 & 1;
}

uint64_t sub_1D6DDB68C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656873696C627570;
    }

    else
    {
      v3 = 0x69616E626D756874;
    }

    if (v2)
    {
      v4 = 0xED00006F676F4C72;
    }

    else
    {
      v4 = 0xE90000000000006CLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6974536F65646976;
    v4 = 0xEA00000000006C6CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D73BB1A0;
    }

    else
    {
      v4 = 0x80000001D73BB1C0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x656873696C627570;
    }

    else
    {
      v7 = 0x69616E626D756874;
    }

    if (a2)
    {
      v6 = 0xED00006F676F4C72;
    }

    else
    {
      v6 = 0xE90000000000006CLL;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEA00000000006C6CLL;
    if (v3 != 0x6974536F65646976)
    {
LABEL_37:
      v8 = sub_1D72646CC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001D73BB1A0;
    }

    else
    {
      v6 = 0x80000001D73BB1C0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1D6DDB850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x70795479726F7473;
    }

    if (v2)
    {
      v4 = 0x80000001D73B7220;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D73B7240;
    v3 = 0xD000000000000018;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D73B7260;
    }

    else
    {
      v4 = 0x80000001D73B7280;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x70795479726F7473;
    }

    if (a2)
    {
      v6 = 0x80000001D73B7220;
    }

    else
    {
      v6 = 0xE900000000000065;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x80000001D73B7240;
    if (v3 != 0xD000000000000018)
    {
LABEL_37:
      v8 = sub_1D72646CC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001D73B7260;
    }

    else
    {
      v6 = 0x80000001D73B7280;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1D6DDB9E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4C52556F65646976;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4C52556574756F72;
    }

    else
    {
      v4 = 0x55746E65746E6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000004C52;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6174436F65646976;
    }

    else
    {
      v4 = 0x4C52556F65646976;
    }

    if (v3)
    {
      v5 = 0xEB000000004C5255;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556574756F72;
  if (a2 != 2)
  {
    v8 = 0x55746E65746E6F63;
    v7 = 0xEA00000000004C52;
  }

  if (a2)
  {
    v2 = 0x6174436F65646976;
    v6 = 0xEB000000004C5255;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDBB40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x63696D616E7964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 0x656772616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 0x63696D616E7964;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6C616D73;
    v6 = 0xE500000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDBC68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F6974706FLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0x76457374726F7073;
  v6 = 0xEB00000000746E65;
  if (a1 != 6)
  {
    v5 = 0x657069636572;
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (a1 != 4)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (a1 != 2)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
  }

  v11 = 0x656C7A7A7570;
  if (a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6E6F6974706FLL;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0xEB00000000746E65;
        if (v12 != 0x76457374726F7073)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        if (v12 != 0x657069636572)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE300000000000000;
      if (v12 != 6775156)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v12 != 0x70756F7267)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE800000000000000;
        if (v12 != 0x656E696C64616568)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v14 = 0xE500000000000000;
      v2 = 0x6575737369;
    }

    else
    {
      v14 = 0xE600000000000000;
      if (a2)
      {
        if (v12 != 0x656C7A7A7570)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v12 != v2)
    {
LABEL_43:
      v15 = sub_1D72646CC();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v13 != v14)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_1D6DDBEA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7373616C63;
    }

    else
    {
      v4 = 0x696669746E656469;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001D73BAF80;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x736E6F6974706FLL;
  }

  else
  {
    v4 = 0x726F7463656C6573;
    v3 = 0xE900000000000073;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7373616C63;
    }

    else
    {
      v9 = 0x696669746E656469;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xEA00000000007265;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x736E6F6974706FLL;
    if (a2 != 3)
    {
      v6 = 0x726F7463656C6573;
      v5 = 0xE900000000000073;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001D73BAF80;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DDC038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x69747265706F7270;
    v14 = 0xEA00000000007365;
    if (a1 != 2)
    {
      v13 = 0x726F7463656C6573;
      v14 = 0xE900000000000073;
    }

    v15 = 0xE700000000000000;
    v16 = 0x7374756F79616CLL;
    if (!a1)
    {
      v16 = 0x696669746E656469;
      v15 = 0xEA00000000007265;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x736E6F6974636573;
    v7 = 0xE800000000000000;
    v8 = 0x617461646174656DLL;
    if (a1 != 7)
    {
      v8 = 0x737265746C6966;
      v7 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6C6F686563616C70;
    v10 = 0xEC00000073726564;
    if (a1 != 4)
    {
      v9 = 0x73746E65746E6F63;
      v10 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x69747265706F7270)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000073;
        if (v11 != 0x726F7463656C6573)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x7374756F79616CLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000073726564;
        if (v11 != 0x6C6F686563616C70)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x73746E65746E6F63)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x736E6F6974636573)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x617461646174656DLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE700000000000000;
    v3 = 0x737265746C6966;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_1D6DDC300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 29295;
    }

    else
    {
      v3 = 6581857;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 7630702;
  }

  else if (a1 == 3)
  {
    v3 = 0x6E656E6F706D6F63;
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x726F6C6F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 29295;
    }

    else
    {
      v9 = 6581857;
    }

    if (a2)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6E656E6F706D6F63;
    v6 = 0xE900000000000074;
    if (a2 != 3)
    {
      v5 = 0x726F6C6F63;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7630702;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}