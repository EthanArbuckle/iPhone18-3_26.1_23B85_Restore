void *sub_1DD70A24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
    v8 = v5 + *(a4 + 28);

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD70A2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v5 = type metadata accessor for RGPluginModel(v4);

  return sub_1DD6E5ED0(v2, a2, v5);
}

uint64_t sub_1DD70A324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v5 = type metadata accessor for RGPluginModel(v4);

  return sub_1DD6E5E68(v2, a2, a2, v5);
}

uint64_t sub_1DD70A594()
{
  result = sub_1DD792A4C();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = sub_1DD6FA400();
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD70A63C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD78F448();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70A6B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1DD6E0CA8();
  v6 = sub_1DD8746A0();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    v10 = sub_1DD710A9C(&qword_1ECD104F0, &qword_1DD884F38);
    v11 = sub_1DD6E0A68(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1DD710A9C(&qword_1ECD104F8, &qword_1DD884F40);
      v15 = sub_1DD6E0A68(v14);
      if (*(v16 + 84) != v3)
      {
        return sub_1DD79277C(*(v4 + a3[7] + 8));
      }

      v9 = v15;
      v13 = a3[6];
    }

    v8 = v4 + v13;
  }

  return sub_1DD6E5ED0(v8, v3, v9);
}

uint64_t sub_1DD70A7E0()
{
  sub_1DD6FA73C();
  v4 = sub_1DD8746A0();
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v6 = sub_1DD710A9C(&qword_1ECD104F0, &qword_1DD884F38);
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) == v3)
    {
      v8 = v2[5];
    }

    else
    {
      v9 = sub_1DD710A9C(&qword_1ECD104F8, &qword_1DD884F40);
      result = sub_1DD6E0A68(v9);
      if (*(v11 + 84) != v3)
      {
        *(v1 + v2[7] + 8) = v0;
        return result;
      }

      v12 = v2[6];
    }
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v13, v14, v15, v16);
}

uint64_t sub_1DD70A91C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    v10 = sub_1DD874820();
    v11 = sub_1DD6E0A68(v10);
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 2147483646)
      {
        sub_1DD792B2C();
        return sub_1DD79277C(*(v15 + 16));
      }

      v16 = sub_1DD8746A0();
      v17 = sub_1DD6E0A68(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v13 = a3[7];
      }

      else
      {
        v9 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
        v13 = a3[11];
      }
    }

    v8 = a1 + v13;
  }

  return sub_1DD6E5ED0(v8, a2, v9);
}

void sub_1DD70AA70()
{
  sub_1DD6FA73C();
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v2)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v5 = sub_1DD874820();
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v2)
    {
      v7 = v1[5];
    }

    else
    {
      if (v2 == 2147483646)
      {
        sub_1DD792B2C();
        *(v12 + 16) = v0;
        return;
      }

      v13 = sub_1DD8746A0();
      sub_1DD6E0A68(v13);
      if (*(v14 + 84) == v2)
      {
        v15 = v1[7];
      }

      else
      {
        sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
        v16 = v1[11];
      }
    }
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v8, v9, v10, v11);
}

uint64_t sub_1DD70ABBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    v10 = sub_1DD874820();
    v11 = sub_1DD6E0A68(v10);
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 2147483646)
      {
        sub_1DD792B2C();
        return sub_1DD79277C(*(v15 + 16));
      }

      v16 = sub_1DD8746A0();
      v17 = sub_1DD6E0A68(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v13 = a3[7];
      }

      else
      {
        v9 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
        v13 = a3[10];
      }
    }

    v8 = a1 + v13;
  }

  return sub_1DD6E5ED0(v8, a2, v9);
}

void sub_1DD70AD10()
{
  sub_1DD6FA73C();
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v2)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v5 = sub_1DD874820();
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v2)
    {
      v7 = v1[5];
    }

    else
    {
      if (v2 == 2147483646)
      {
        sub_1DD792B2C();
        *(v12 + 16) = v0;
        return;
      }

      v13 = sub_1DD8746A0();
      sub_1DD6E0A68(v13);
      if (*(v14 + 84) == v2)
      {
        v15 = v1[7];
      }

      else
      {
        sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
        v16 = v1[10];
      }
    }
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v8, v9, v10, v11);
}

uint64_t sub_1DD70AE5C()
{
  sub_1DD6E0CA8();
  sub_1DD875020();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD70AE98()
{
  sub_1DD6E0CA8();
  sub_1DD875020();
  sub_1DD6FF79C();
  sub_1DD6DE310();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70B170(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0x63696C7078457369;
  }

  return 0x72656E74726170;
}

uint64_t sub_1DD70B1D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7A42C8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70B3A4(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6465696E6564;
}

uint64_t sub_1DD70B408@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7EBA68();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70B430(char a1)
{
  if (a1)
  {
    return 0x655374706D6F7270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD70B478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7EB494();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70B514(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_1DD70B554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7FB218();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E0CA8();
  v6 = sub_1DD874820();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    v10 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v10);
    if (*(v11 + 84) == v3)
    {
      sub_1DD6EE76C();
    }

    else
    {
      sub_1DD826F18();
      if (v14)
      {
        return sub_1DD6DDFD0(*(v4 + *(a3 + 28) + 8));
      }

      v15 = type metadata accessor for MessagePayload(0);
      sub_1DD6E0A68(v15);
      if (*(v16 + 84) == v3)
      {
        sub_1DD8276D4();
      }

      else
      {
        v9 = sub_1DD874790();
        v12 = *(a3 + 40);
      }
    }

    v8 = v4 + v12;
  }

  return sub_1DD6E5ED0(v8, v3, v9);
}

void sub_1DD70C038()
{
  sub_1DD6E615C();
  v2 = sub_1DD874820();
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1DD700BF0();
    }

    else
    {
      sub_1DD827438();
      if (v10)
      {
        sub_1DD825600(*(v0 + 28));
        return;
      }

      v11 = type metadata accessor for MessagePayload(0);
      sub_1DD6E0A68(v11);
      if (*(v12 + 84) == v1)
      {
        sub_1DD827614();
      }

      else
      {
        sub_1DD874790();
        v13 = *(v0 + 40);
      }
    }
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v6, v7, v8, v9);
}

uint64_t sub_1DD70C168(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    return sub_1DD79277C(*(a1 + 8));
  }

  sub_1DD7598B0();
  sub_1DD874FA0();
  v3 = sub_1DD6E0890();

  return sub_1DD6E5ED0(v3, v4, v5);
}

uint64_t sub_1DD70C1D8(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1DD874FA0();
    v4 = sub_1DD6E0890();

    return sub_1DD6E5E68(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1DD70C258()
{
  sub_1DD6DDFA8();
  if (v1)
  {
    return sub_1DD6DDFD0(*(v0 + 16));
  }

  sub_1DD7598B0();
  sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6EE76C();
  v4 = sub_1DD6E6C88(v3);

  return sub_1DD6E5ED0(v4, v5, v6);
}

void sub_1DD70C2CC()
{
  sub_1DD6E6A60();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
    sub_1DD700BF0();
    v4 = sub_1DD6DE524(v3);

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

uint64_t sub_1DD70C368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD6E0CA8();
  v7 = type metadata accessor for MessagePayload.RequestContent(v6);
  sub_1DD6E0A68(v7);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_1DD6E492C();
  }

  else
  {
    if (v3 == 2147483646)
    {
      return sub_1DD79277C(*(v4 + *(a3 + 20)));
    }

    v12 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v12);
    if (*(v13 + 84) == v3)
    {
      sub_1DD8276D4();
    }

    else
    {
      v10 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
      v14 = *(a3 + 44);
    }

    v9 = v4 + v14;
  }

  return sub_1DD6E5ED0(v9, v3, v10);
}

uint64_t sub_1DD70C470()
{
  v4 = sub_1DD6E615C();
  v5 = type metadata accessor for MessagePayload.RequestContent(v4);
  result = sub_1DD6E0A68(v5);
  if (*(v7 + 84) == v3)
  {
    sub_1DD6FF79C();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return result;
    }

    v8 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v8);
    if (*(v9 + 84) == v3)
    {
      sub_1DD827614();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
      v10 = *(v2 + 44);
    }
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v11, v12, v13, v14);
}

uint64_t sub_1DD70C594()
{
  sub_1DD824BA8();
  v1 = sub_1DD874820();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v3, v4, v5);
  }

  else
  {
    sub_1DD826ED0();
    return sub_1DD6DDFD0(*(v7 + 8));
  }
}

void sub_1DD70C61C()
{
  sub_1DD6E615C();
  v2 = sub_1DD874820();
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_1DD6DF188();

    sub_1DD6E5E68(v4, v5, v6, v7);
  }

  else
  {
    sub_1DD825600(*(v0 + 24));
  }
}

uint64_t sub_1DD70C6A0()
{
  sub_1DD824BA8();
  v3 = sub_1DD874FA0();
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) != v1)
  {
    return sub_1DD6DDFD0(*(v0 + *(v2 + 20)));
  }

  v5 = sub_1DD6F8CD0();

  return sub_1DD6E5ED0(v5, v6, v7);
}

uint64_t sub_1DD70C748()
{
  sub_1DD6E0CA8();
  sub_1DD874FA0();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD70C784()
{
  sub_1DD6E0CA8();
  sub_1DD874FA0();
  v0 = sub_1DD6DF188();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70C7BC()
{
  v1 = sub_1DD824BA8();
  v2 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(v1);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v4, v5, v6);
  }

  else
  {
    sub_1DD6E1CD0();
    v9 = *(v8 + 8);
    if (v9 <= 2)
    {
      return 0;
    }

    else
    {
      return v9 ^ 0xFF;
    }
  }
}

void sub_1DD70C84C()
{
  v2 = sub_1DD6E615C();
  v3 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(v2);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = sub_1DD6DF188();

    sub_1DD6E5E68(v5, v6, v7, v8);
  }

  else
  {
    sub_1DD8268D8();
    *(v9 + 8) = ~v0;
  }
}

uint64_t sub_1DD70C8D4()
{
  sub_1DD6E0CA8();
  v1 = sub_1DD874820();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1DD6E492C();
  }

  else
  {
    type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
    v3 = sub_1DD6ED46C();
  }

  return sub_1DD6E5ED0(v3, v0, v4);
}

uint64_t sub_1DD70C95C()
{
  sub_1DD6E615C();
  v1 = sub_1DD874820();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1DD6FF79C();
  }

  else
  {
    type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
    sub_1DD6ED46C();
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v3, v4, v5, v6);
}

uint64_t sub_1DD70C9E0()
{
  sub_1DD6E0CA8();
  v2 = sub_1DD874820();
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1DD6E492C();
  }

  else
  {
    v6 = type metadata accessor for StatementOutcome(0);
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) == v0)
    {
      sub_1DD8263DC();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
      sub_1DD6EE76C();
    }

    v4 = v1 + v8;
  }

  return sub_1DD6E5ED0(v4, v0, v5);
}

uint64_t sub_1DD70CAB0()
{
  sub_1DD6E615C();
  v1 = sub_1DD874820();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v3 = type metadata accessor for StatementOutcome(0);
    sub_1DD6E0A68(v3);
    if (*(v4 + 84) == v0)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
      sub_1DD700BF0();
    }
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v5, v6, v7, v8);
}

uint64_t sub_1DD70CB7C()
{
  v1 = sub_1DD6E0CA8();
  v2 = type metadata accessor for MessagePayload.RequestContent(v1);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1DD6E492C();
  }

  else
  {
    v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) != v0)
    {
      sub_1DD792B2C();
      return sub_1DD79277C(*(v9 + 8));
    }

    v4 = sub_1DD6ED46C();
  }

  return sub_1DD6E5ED0(v4, v0, v5);
}

void sub_1DD70CC58()
{
  v2 = sub_1DD6E615C();
  v3 = type metadata accessor for MessagePayload.RequestContent(v2);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v1)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v5 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) != v1)
    {
      sub_1DD792B2C();
      *(v11 + 8) = v0;
      return;
    }

    sub_1DD6ED46C();
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v7, v8, v9, v10);
}

uint64_t sub_1DD70CD58()
{
  sub_1DD6DDFA8();
  if (v1)
  {
    return sub_1DD6DDFD0(*v0);
  }

  sub_1DD7598B0();
  sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  v3 = sub_1DD6E0890();

  return sub_1DD6E5ED0(v3, v4, v5);
}

void sub_1DD70CDCC()
{
  sub_1DD6E6A60();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    v3 = sub_1DD6E0890();

    sub_1DD6E5E68(v3, v4, v0, v5);
  }
}

uint64_t sub_1DD70CE44()
{
  v3 = sub_1DD824BA8();
  v4 = type metadata accessor for StatementOutcome(v3);
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) != v1)
  {
    return sub_1DD6DDFD0(*(v0 + *(v2 + 20)));
  }

  v6 = sub_1DD6F8CD0();

  return sub_1DD6E5ED0(v6, v7, v8);
}

uint64_t sub_1DD70CEE4()
{
  sub_1DD824BA8();
  v1 = sub_1DD874820();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v3, v4, v5);
  }

  else
  {
    sub_1DD826ED0();
    return sub_1DD79277C(*(v7 + 16));
  }
}

void sub_1DD70CF6C()
{
  sub_1DD6E615C();
  v2 = sub_1DD874820();
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_1DD6DF188();

    sub_1DD6E5E68(v4, v5, v6, v7);
  }

  else
  {
    sub_1DD792B2C();
    *(v8 + 16) = v0;
  }
}

uint64_t sub_1DD70D028()
{
  sub_1DD701434();
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1DD6E492C();
  }

  else
  {
    v7 = sub_1DD874820();
    sub_1DD6E0A68(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1DD8263DC();
    }

    else
    {
      v10 = type metadata accessor for SystemPromptResolution.UserAction(0);
      sub_1DD6E0A68(v10);
      if (*(v11 + 84) != v0)
      {
        return sub_1DD79277C(*(v1 + *(v2 + 28) + 16));
      }

      sub_1DD6EE76C();
    }

    v5 = v1 + v9;
  }

  return sub_1DD6E5ED0(v5, v0, v6);
}

uint64_t sub_1DD70D144()
{
  sub_1DD6FA73C();
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v6 = sub_1DD874820();
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      v8 = type metadata accessor for SystemPromptResolution.UserAction(0);
      result = sub_1DD6E0A68(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28) + 16) = v0;
        return result;
      }

      sub_1DD700BF0();
    }
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v11, v12, v13, v14);
}

uint64_t sub_1DD70D288()
{
  sub_1DD701434();
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1DD6E492C();
  }

  else
  {
    sub_1DD826F18();
    if (v7)
    {
      sub_1DD792B2C();
      return sub_1DD6DDFD0(*(v8 + 8));
    }

    v10 = type metadata accessor for ActionOutcome(0);
    sub_1DD6E0A68(v10);
    if (*(v11 + 84) == v0)
    {
      sub_1DD827020();
    }

    else
    {
      v13 = type metadata accessor for ResponseManifest(0);
      sub_1DD6E0A68(v13);
      if (*(v14 + 84) == v0)
      {
        sub_1DD8276D4();
      }

      else
      {
        v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
        v12 = *(v2 + 36);
      }
    }

    v5 = v1 + v12;
  }

  return sub_1DD6E5ED0(v5, v0, v6);
}

void sub_1DD70D3C8()
{
  sub_1DD6FA73C();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1DD6FF79C();
  }

  else
  {
    sub_1DD827438();
    if (v4)
    {
      sub_1DD825600(*(v0 + 24));
      return;
    }

    v5 = type metadata accessor for ActionOutcome(0);
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v1)
    {
      sub_1DD826F9C();
    }

    else
    {
      v7 = type metadata accessor for ResponseManifest(0);
      sub_1DD6E0A68(v7);
      if (*(v8 + 84) == v1)
      {
        sub_1DD827614();
      }

      else
      {
        sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
        v9 = *(v0 + 36);
      }
    }
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v10, v11, v12, v13);
}

uint64_t sub_1DD70D504()
{
  sub_1DD701434();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1DD6E492C();
  }

  else
  {
    sub_1DD826F18();
    if (v6)
    {
      sub_1DD792B2C();
      return sub_1DD6DDFD0(*(v7 + 8));
    }

    v9 = type metadata accessor for StatementOutcome(0);
    sub_1DD6E0A68(v9);
    if (*(v10 + 84) == v0)
    {
      sub_1DD827020();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
      sub_1DD8276D4();
    }

    v4 = v1 + v11;
  }

  return sub_1DD6E5ED0(v4, v0, v5);
}

void sub_1DD70D604()
{
  sub_1DD6FA73C();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1DD6FF79C();
  }

  else
  {
    sub_1DD827438();
    if (v4)
    {
      sub_1DD825600(*(v0 + 24));
      return;
    }

    v5 = type metadata accessor for StatementOutcome(0);
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v1)
    {
      sub_1DD826F9C();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
      sub_1DD827614();
    }
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v7, v8, v9, v10);
}

uint64_t sub_1DD70D700()
{
  sub_1DD701434();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1DD6E492C();
  }

  else
  {
    sub_1DD826F18();
    if (v6)
    {
      sub_1DD792B2C();
      return sub_1DD6DDFD0(*(v7 + 8));
    }

    sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
    sub_1DD827020();
    v4 = v1 + v9;
  }

  return sub_1DD6E5ED0(v4, v0, v5);
}

void sub_1DD70D7C4()
{
  sub_1DD6FA73C();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1DD6FF79C();
  }

  else
  {
    sub_1DD827438();
    if (v4)
    {
      sub_1DD825600(*(v0 + 24));
      return;
    }

    sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
    sub_1DD826F9C();
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v5, v6, v7, v8);
}

uint64_t sub_1DD70D884(uint64_t a1, int a2)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v5, v6, v7);
  }

  else
  {
    sub_1DD826ED0();
    return sub_1DD79277C(*(v9 + 8));
  }
}

void sub_1DD70D924()
{
  sub_1DD6FA73C();
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_1DD6DF188();

    sub_1DD6E5E68(v4, v5, v6, v7);
  }

  else
  {
    sub_1DD792B2C();
    *(v8 + 8) = v0;
  }
}

uint64_t sub_1DD70D9BC()
{
  sub_1DD701434();
  v3 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1DD6E492C();
  }

  else
  {
    if (v0 == 2147483646)
    {
      sub_1DD8268D8();
      return sub_1DD79277C(*(v7 + 16));
    }

    v6 = type metadata accessor for StatementOutcome(0);
    v5 = v1 + *(v2 + 36);
  }

  return sub_1DD6E5ED0(v5, v0, v6);
}

void sub_1DD70DA7C()
{
  sub_1DD6FA73C();
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1DD6FF79C();
  }

  else
  {
    if (v3 == 2147483646)
    {
      sub_1DD8268D8();
      *(v6 + 16) = v0;
      return;
    }

    type metadata accessor for StatementOutcome(0);
    v7 = v1 + *(v2 + 36);
  }

  sub_1DD6DE310();

  sub_1DD6E5E68(v8, v9, v10, v11);
}

uint64_t sub_1DD70DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E0CA8();
  v6 = sub_1DD874FA0();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    v10 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
    sub_1DD6E0A68(v10);
    if (*(v11 + 84) == v3)
    {
      sub_1DD8263DC();
    }

    else
    {
      v13 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
      sub_1DD6E0A68(v13);
      if (*(v14 + 84) != v3)
      {
        return sub_1DD79277C(*(v4 + *(a3 + 36) + 8));
      }

      sub_1DD827020();
    }

    v8 = v4 + v12;
  }

  return sub_1DD6E5ED0(v8, v3, v9);
}

uint64_t sub_1DD70DC68()
{
  sub_1DD6E615C();
  v4 = sub_1DD874FA0();
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1DD6FF79C();
  }

  else
  {
    v6 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      v8 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
      result = sub_1DD6E0A68(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 36) + 8) = v0;
        return result;
      }

      sub_1DD826F9C();
    }
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v11, v12, v13, v14);
}

uint64_t sub_1DD70DDD0()
{
  sub_1DD6DDFA8();
  if (v2)
  {
    return sub_1DD6DDFD0(*(v1 + 8));
  }

  sub_1DD7598B0();
  v4 = sub_1DD874FA0();
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v0)
  {
    sub_1DD8263DC();
  }

  else
  {
    sub_1DD874FC0();
    sub_1DD6EE76C();
  }

  v7 = sub_1DD6E6C88(v6);

  return sub_1DD6E5ED0(v7, v8, v9);
}

void sub_1DD70DE74()
{
  sub_1DD6E6A60();
  if (v1)
  {
    sub_1DD826F0C();
  }

  else
  {
    v2 = v0;
    v3 = sub_1DD874FA0();
    sub_1DD6E0A68(v3);
    if (*(v4 + 84) == v2)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      sub_1DD874FC0();
      sub_1DD700BF0();
    }

    v6 = sub_1DD6DE524(v5);

    sub_1DD6E5E68(v6, v7, v8, v9);
  }
}

uint64_t sub_1DD70DF18()
{
  sub_1DD824BA8();
  v1 = sub_1DD874FA0();
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v3, v4, v5);
  }

  else
  {
    sub_1DD6E1CD0();
    v8 = *(v7 + 16);
    sub_1DD6F9A8C();
    if (v11 ^ v12 | v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }
}

void sub_1DD70DFA4()
{
  sub_1DD6E615C();
  v2 = sub_1DD874FA0();
  sub_1DD6E0A68(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_1DD6DF188();

    sub_1DD6E5E68(v4, v5, v6, v7);
  }

  else
  {
    sub_1DD8268D8();
    *(v8 + 16) = (v0 + 1);
  }
}

uint64_t sub_1DD70E02C()
{
  sub_1DD6DDFA8();
  if (v2)
  {
    return sub_1DD6DDFD0(*(v1 + 8));
  }

  sub_1DD7598B0();
  v4 = type metadata accessor for AttributedValue(0);
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) == v0)
  {
    sub_1DD6EE76C();
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
    sub_1DD827020();
  }

  v7 = sub_1DD6E6C88(v6);

  return sub_1DD6E5ED0(v7, v8, v9);
}

void sub_1DD70E0DC()
{
  sub_1DD6E6A60();
  if (v1)
  {
    sub_1DD826F0C();
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for AttributedValue(0);
    sub_1DD6E0A68(v3);
    if (*(v4 + 84) == v2)
    {
      sub_1DD700BF0();
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
      sub_1DD826F9C();
    }

    v6 = sub_1DD6DE524(v5);

    sub_1DD6E5E68(v6, v7, v8, v9);
  }
}

uint64_t sub_1DD70E194()
{
  sub_1DD824BA8();
  v3 = sub_1DD874FA0();
  sub_1DD6E0A68(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20));
    if (v9 >= 7)
    {
      return v9 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DD70E224()
{
  sub_1DD6E615C();
  v4 = sub_1DD874FA0();
  result = sub_1DD6E0A68(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1DD6DF188();

    return sub_1DD6E5E68(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 6;
  }

  return result;
}

uint64_t sub_1DD70E2AC()
{
  v1 = sub_1DD6E0CA8();
  type metadata accessor for PlannerPromptData.Tool.Definition(v1);
  v2 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v2, v0, v3);
}

uint64_t sub_1DD70E2E8()
{
  v0 = sub_1DD6E0CA8();
  type metadata accessor for PlannerPromptData.Tool.Definition(v0);
  v1 = sub_1DD6DF188();

  return sub_1DD6E5E68(v1, v2, v3, v4);
}

uint64_t sub_1DD70E320()
{
  sub_1DD6E0CA8();
  sub_1DD874F10();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD70E35C()
{
  sub_1DD6E0CA8();
  sub_1DD874F10();
  v0 = sub_1DD6DF188();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70E3AC()
{
  sub_1DD6E0CA8();
  sub_1DD875050();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD70E3E8()
{
  sub_1DD6E0CA8();
  sub_1DD875050();
  v0 = sub_1DD6DF188();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70E420()
{
  sub_1DD6DDFA8();
  if (v1)
  {
    return sub_1DD6DDFD0(*(v0 + 8));
  }

  sub_1DD7598B0();
  sub_1DD874F10();
  sub_1DD6EE76C();
  v4 = sub_1DD6E6C88(v3);

  return sub_1DD6E5ED0(v4, v5, v6);
}

void sub_1DD70E488()
{
  sub_1DD6E6A60();
  if (v0)
  {
    sub_1DD826F0C();
  }

  else
  {
    sub_1DD874F10();
    sub_1DD700BF0();
    v2 = sub_1DD6DE524(v1);

    sub_1DD6E5E68(v2, v3, v4, v5);
  }
}

uint64_t sub_1DD70E804(char a1)
{
  if (a1)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD70E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8367A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD70E880(char a1)
{
  if (a1)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x64496E617073;
  }
}

uint64_t sub_1DD70E8C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD8356F0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70E8F0@<X0>(uint64_t *a1@<X8>)
{
  result = SessionServerDebuggerEvent.SpanStarted.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70E928@<X0>(uint64_t *a1@<X8>)
{
  result = SessionServerDebuggerEvent.FinalTransactionPosted.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD70E9F8()
{
  v1 = sub_1DD6E0CA8();
  type metadata accessor for SessionClientDebuggerEvent.Payload(v1);
  v2 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v2, v0, v3);
}

uint64_t sub_1DD70EA34()
{
  v0 = sub_1DD6E0CA8();
  type metadata accessor for SessionClientDebuggerEvent.Payload(v0);
  v1 = sub_1DD6DF188();

  return sub_1DD6E5E68(v1, v2, v3, v4);
}

uint64_t sub_1DD70EA6C()
{
  v1 = sub_1DD6E0CA8();
  type metadata accessor for SessionServerDebuggerEvent.Payload(v1);
  v2 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v2, v0, v3);
}

uint64_t sub_1DD70EAA8()
{
  v0 = sub_1DD6E0CA8();
  type metadata accessor for SessionServerDebuggerEvent.Payload(v0);
  v1 = sub_1DD6DF188();

  return sub_1DD6E5E68(v1, v2, v3, v4);
}

uint64_t sub_1DD70EAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E0CA8();
  v6 = sub_1DD874820();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1DD6E492C();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_1DD6DDFD0(*(v4 + *(a3 + 20)));
    }

    v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    v8 = v4 + *(a3 + 28);
  }

  return sub_1DD6E5ED0(v8, v3, v9);
}

uint64_t sub_1DD70EBB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E0CA8();
  v8 = sub_1DD874820();
  result = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20)) = (v4 - 1);
      return result;
    }

    v11 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
    v12 = v5 + *(a4 + 28);
  }

  return sub_1DD6E5E68(v12, v4, v4, v11);
}

uint64_t sub_1DD70EC8C()
{
  sub_1DD6E0CA8();
  sub_1DD874820();
  v0 = sub_1DD6DF188();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70ECC4()
{
  sub_1DD6E0CA8();
  sub_1DD874820();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD70ED00(uint64_t a1, int a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = sub_1DD874820();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24) + 8) >> 60;
    v13 = ((4 * v12) & 0xC) == 0;
    v14 = ((4 * v12) & 0xC | (v12 >> 2)) ^ 0xF;
    if (v13)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t sub_1DD70EDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E0CA8();
  v8 = sub_1DD874820();
  result = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1DD6DF188();

    return sub_1DD6E5E68(v11, v12, v13, v14);
  }

  else
  {
    v15 = (v5 + *(a4 + 24));
    *v15 = 0;
    v15[1] = ((~v4 >> 2) & 3 | (4 * ~v4)) << 60;
  }

  return result;
}

uint64_t sub_1DD70EE60(uint64_t a1, int a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = sub_1DD874820();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 >= 4)
    {
      return v12 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DD70EEF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E0CA8();
  v8 = sub_1DD874820();
  result = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1DD6DF188();

    return sub_1DD6E5E68(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 3;
  }

  return result;
}

uint64_t sub_1DD70EF88(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1DD6DDFD0(*(a1 + 16));
  }

  sub_1DD874820();
  v5 = sub_1DD6E6C88(*(a3 + 36));

  return sub_1DD6E5ED0(v5, v6, v7);
}

void sub_1DD70F000()
{
  sub_1DD6E6A60();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1DD874820();
    v5 = sub_1DD6E6C88(*(v4 + 36));

    sub_1DD6E5E68(v5, v6, v0, v7);
  }
}

uint64_t sub_1DD70F070(uint64_t a1, int a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = sub_1DD874820();
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1DD6F8CD0();

    return sub_1DD6E5ED0(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DD70F11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E0CA8();
  v8 = sub_1DD874820();
  result = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1DD6DF188();

    return sub_1DD6E5E68(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1DD70F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = sub_1DD875010();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1DD6E5ED0(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD70F58C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD875010();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1DD6E5E68(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD70F65C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD70F694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientAction.Definition(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1DD6DDFD0(*(a1 + *(a3 + 20)));
  }

  return sub_1DD6E5ED0(a1, a2, v6);
}

uint64_t sub_1DD70F734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientAction.Definition(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1DD6E5E68(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD70F7DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1DD6DDFD0(*(a1 + 8));
  }

  sub_1DD874FC0();
  v5 = sub_1DD6E6C88(*(a3 + 28));

  return sub_1DD6E5ED0(v5, v6, v7);
}

void sub_1DD70F854()
{
  sub_1DD6E6A60();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1DD874FC0();
    v5 = sub_1DD6E6C88(*(v4 + 28));

    sub_1DD6E5E68(v5, v6, v0, v7);
  }
}

uint64_t sub_1DD70F8C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1DD6DDFD0(*(a1 + 8));
  }

  sub_1DD874FC0();
  v5 = sub_1DD6E6C88(*(a3 + 24));

  return sub_1DD6E5ED0(v5, v6, v7);
}

void sub_1DD70F93C()
{
  sub_1DD6E6A60();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1DD874FC0();
    v5 = sub_1DD6E6C88(*(v4 + 24));

    sub_1DD6E5E68(v5, v6, v0, v7);
  }
}

uint64_t sub_1DD70FB60()
{
  v0 = sub_1DD8757F0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD70FBAC(char a1)
{
  result = 0x7961727261;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6F6974706FLL;
      break;
    case 2:
      result = 0x7463656A626FLL;
      break;
    case 3:
      result = 1836412517;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD70FC30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD70FC78()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD70FCD0()
{
  sub_1DD718F6C(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD70FE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD70FED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

uint64_t sub_1DD70FF5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD70FFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8665F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD71007C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_1DD6DEAA4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD71011C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD7102D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD7103A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
    v11 = &a1[*(a3 + 20)];

    return sub_1DD6E5ED0(v11, a2, v10);
  }
}

_BYTE *sub_1DD710438(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
    v8 = &v5[*(a4 + 20)];

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD7104C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD874820();
  v7 = sub_1DD6E0A68(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1DD874790();
    v12 = sub_1DD6E0A68(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1DD874FA0();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_1DD6E5ED0(v10, a2, v9);
}

uint64_t sub_1DD710598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DD874820();
  v9 = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1DD874790();
    v14 = sub_1DD6E0A68(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_1DD874FA0();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return sub_1DD6E5E68(v12, a2, a2, v11);
}

uint64_t sub_1DD7106F8()
{
  v1 = *(v0 + 24);

  v2 = sub_1DD6E6088();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t CrossAPIAssociationKey.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrossAPIAssociationKey.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static CrossAPIAssociationKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD7108A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD710918()
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

uint64_t sub_1DD710970()
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

uint64_t sub_1DD7109B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7108A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7109F8@<X0>(_BYTE *a1@<X8>)
{
  result = _ss5NeverO16IntelligenceFlowE11loadFromOtaABSgyFZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD710A24(uint64_t a1)
{
  v2 = sub_1DD6EF42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD710A60(uint64_t a1)
{
  v2 = sub_1DD6EF42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD710A9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CrossAPIAssociationKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t CrossAPIAssociationKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t sub_1DD710B44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

unint64_t sub_1DD710BA0()
{
  result = qword_1ECD0E028;
  if (!qword_1ECD0E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrossAPIAssociationKey.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1DD710C88()
{
  result = qword_1ECD0E040;
  if (!qword_1ECD0E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E040);
  }

  return result;
}

unint64_t sub_1DD710CE0()
{
  result = qword_1EE017008;
  if (!qword_1EE017008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017008);
  }

  return result;
}

unint64_t sub_1DD710D38()
{
  result = qword_1EE017010;
  if (!qword_1EE017010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceDetails.DeviceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceDetails.DeviceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1DD710DF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SiriXResponse.siriXOutputCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_1DD6E5EF8();
  return sub_1DD711154(v4, v5, v6, v7);
}

uint64_t sub_1DD710E74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static SiriXResponse.SiriXOutputCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v7 >> 60) & 3 | v11;
  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      if (v12 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    case 2uLL:
      if (v12 != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    case 3uLL:
      if (v12 != 3)
      {
        goto LABEL_23;
      }

LABEL_17:
      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v29);
      v30 = sub_1DD6E1F14();
      sub_1DD711154(v30, v31, v32, v2);
      v17 = sub_1DD6E10C8();
      goto LABEL_18;
    case 4uLL:
      if (v12 != 4)
      {
        goto LABEL_23;
      }

      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v18);
      v19 = sub_1DD6E1F14();
      sub_1DD711154(v19, v20, v21, v2);
      v22 = sub_1DD6ED214();
      sub_1DD711154(v22, v23, v24, v2);
      v25 = sub_1DD6E1F14();
      sub_1DD711154(v25, v26, v27, v2);
      v28 = sub_1DD6DDEDC();
      goto LABEL_21;
    case 5uLL:
      if (v12 != 5)
      {
        goto LABEL_23;
      }

      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v37);
      v38 = sub_1DD6E1F14();
      sub_1DD711154(v38, v39, v40, v2);
      v41 = sub_1DD6ED214();
      sub_1DD711154(v41, v42, v43, v2);
      v44 = sub_1DD6E1F14();
      sub_1DD711154(v44, v45, v46, v2);
      v28 = sub_1DD6E10C8();
LABEL_21:
      MEMORY[0x1E12B41A0](v28);
      sub_1DD6EE1E0();
      sub_1DD711154(v5, v4, v6, v47);
      v48 = sub_1DD6ED214();
      sub_1DD711154(v48, v49, v50, v3);
      v51 = sub_1DD6ED214();
      sub_1DD711154(v51, v52, v53, v3);
      v34 = sub_1DD6E1F14();
      goto LABEL_22;
    default:
      if (v12)
      {
LABEL_23:
        sub_1DD6DF268();
        sub_1DD711154(v8, v7, v9, v55);
        v56 = sub_1DD6E1F14();
        sub_1DD711154(v56, v57, v58, v2);
        sub_1DD711154(v5, v4, v6, sub_1DD6E6658);
        v59 = sub_1DD6ED214();
        sub_1DD711154(v59, v60, v61, sub_1DD6E6658);
        return 0;
      }

      else
      {
        sub_1DD6DF268();
        sub_1DD711154(v8, v7, v9, v13);
        v14 = sub_1DD6E1F14();
        sub_1DD711154(v14, v15, v16, v2);
        v17 = sub_1DD6DDEDC();
LABEL_18:
        MEMORY[0x1E12B41A0](v17);
        sub_1DD6EE1E0();
        sub_1DD711154(v5, v4, v6, v33);
        v34 = sub_1DD6ED214();
LABEL_22:
        sub_1DD711154(v34, v35, v36, v3);
        return v2 & 1;
      }
  }
}

void static SiriXResponse.RequestEndedData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x1E12B41A0);
}

uint64_t sub_1DD711154(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((a2 >> 60) & 3 | v4)
  {
    case 0uLL:
    case 4uLL:
      goto LABEL_6;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
LABEL_6:
      result = a4(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7111A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7377656956646461 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944646461 && a2 == 0xEA00000000007367;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7449796173 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7449746165706572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD71139C(char a1)
{
  result = 0x7377656956646461;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944646461;
      break;
    case 2:
      result = 0x7449796173;
      break;
    case 3:
      result = 0x7449746165706572;
      break;
    case 4:
      result = 0x73736563637573;
      break;
    case 5:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD71144C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD6FF778();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7114B4(uint64_t a1)
{
  v2 = sub_1DD712118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7114F0(uint64_t a1)
{
  v2 = sub_1DD712118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD71152C(uint64_t a1)
{
  v2 = sub_1DD71216C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711568(uint64_t a1)
{
  v2 = sub_1DD71216C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7115AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7111A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7115F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD711394();
  *a1 = result;
  return result;
}

uint64_t sub_1DD71161C(uint64_t a1)
{
  v2 = sub_1DD711ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711658(uint64_t a1)
{
  v2 = sub_1DD711ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD711694(uint64_t a1)
{
  v2 = sub_1DD711F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7116D0(uint64_t a1)
{
  v2 = sub_1DD711F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD71170C(uint64_t a1)
{
  v2 = sub_1DD71201C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711748(uint64_t a1)
{
  v2 = sub_1DD71201C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD711784(uint64_t a1)
{
  v2 = sub_1DD7120C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7117C0(uint64_t a1)
{
  v2 = sub_1DD7120C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7117FC(uint64_t a1)
{
  v2 = sub_1DD711FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711838(uint64_t a1)
{
  v2 = sub_1DD711FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.SiriXOutputCommand.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0E0A8, &qword_1DD876E50);
  v4 = sub_1DD6DDEAC(v3);
  v81 = v5;
  v82 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v80 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD0E0B0, &qword_1DD876E58);
  v11 = sub_1DD6DDEAC(v10);
  v78 = v12;
  v79 = v11;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v77 = v16;
  v17 = sub_1DD710A9C(&qword_1ECD0E0B8, &qword_1DD876E60);
  v18 = sub_1DD6DDEAC(v17);
  v75 = v19;
  v76 = v18;
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E0C6C();
  v74 = v23;
  v24 = sub_1DD710A9C(&qword_1ECD0E0C0, &qword_1DD876E68);
  v25 = sub_1DD6DDEAC(v24);
  v72 = v26;
  v73 = v25;
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E0C6C();
  v71 = v30;
  v31 = sub_1DD710A9C(&qword_1ECD0E0C8, &qword_1DD876E70);
  v32 = sub_1DD6DDEAC(v31);
  v69 = v33;
  v70 = v32;
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v67 - v37;
  v39 = sub_1DD710A9C(&qword_1ECD0E0D0, &qword_1DD876E78);
  v40 = sub_1DD6DDEAC(v39);
  v67 = v41;
  v68 = v40;
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v67 - v45;
  v47 = sub_1DD710A9C(&qword_1ECD0E0D8, &qword_1DD876E80);
  v84 = sub_1DD6DDEAC(v47);
  v85 = v48;
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  v52 = v0[1];
  v83 = *v0;
  v53 = *(v0 + 16);
  v54 = v2[4];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD711ECC();
  sub_1DD875BB0();
  if (v53)
  {
    v55 = 4;
  }

  else
  {
    v55 = 0;
  }

  switch((v52 >> 60) & 3 | v55)
  {
    case 1uLL:
      LOBYTE(v86) = 1;
      sub_1DD712118();
      sub_1DD719298();
      sub_1DD6ED754();
      sub_1DD712070();
      v65 = v70;
      sub_1DD8759D0();
      (*(v69 + 8))(v38, v65);
      goto LABEL_13;
    case 2uLL:
      LOBYTE(v86) = 2;
      sub_1DD7120C4();
      v62 = v71;
      sub_1DD719298();
      sub_1DD6ED754();
      sub_1DD712070();
      v63 = v73;
      sub_1DD6E6098();
      v64 = v72;
      goto LABEL_12;
    case 3uLL:
      LOBYTE(v86) = 3;
      sub_1DD71201C();
      v62 = v74;
      sub_1DD719298();
      sub_1DD6ED754();
      sub_1DD712070();
      v63 = v76;
      sub_1DD6E6098();
      v64 = v75;
      goto LABEL_12;
    case 4uLL:
      LOBYTE(v86) = 4;
      sub_1DD711FC8();
      v57 = v77;
      sub_1DD6E710C();
      sub_1DD875910();
      v86 = v83;
      v87 = v52;
      sub_1DD711F74();
      v58 = v79;
      sub_1DD8759D0();
      (*(v78 + 8))(v57, v58);
      goto LABEL_7;
    case 5uLL:
      LOBYTE(v86) = 5;
      sub_1DD711F20();
      v62 = v80;
      sub_1DD719298();
      sub_1DD6ED754();
      sub_1DD711F74();
      v63 = v82;
      sub_1DD6E6098();
      v64 = v81;
LABEL_12:
      (*(v64 + 8))(v62, v63);
LABEL_13:
      v66 = *(v85 + 8);
      v60 = sub_1DD6E0F70();
      break;
    default:
      LOBYTE(v86) = 0;
      sub_1DD71216C();
      sub_1DD6E710C();
      sub_1DD875910();
      v86 = v83;
      v87 = v52;
      sub_1DD712070();
      v56 = v68;
      sub_1DD8759D0();
      (*(v67 + 8))(v46, v56);
LABEL_7:
      v59 = *(v85 + 8);
      v60 = sub_1DD6DDEDC();
      break;
  }

  v61(v60);
  sub_1DD6E0C78();
}

unint64_t sub_1DD711ECC()
{
  result = qword_1ECD0E0E0;
  if (!qword_1ECD0E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0E0);
  }

  return result;
}

unint64_t sub_1DD711F20()
{
  result = qword_1ECD0E0E8;
  if (!qword_1ECD0E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0E8);
  }

  return result;
}

unint64_t sub_1DD711F74()
{
  result = qword_1ECD0E0F0;
  if (!qword_1ECD0E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0F0);
  }

  return result;
}

unint64_t sub_1DD711FC8()
{
  result = qword_1ECD0E0F8;
  if (!qword_1ECD0E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0F8);
  }

  return result;
}

unint64_t sub_1DD71201C()
{
  result = qword_1ECD0E100;
  if (!qword_1ECD0E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E100);
  }

  return result;
}

unint64_t sub_1DD712070()
{
  result = qword_1ECD0F4B0;
  if (!qword_1ECD0F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4B0);
  }

  return result;
}

unint64_t sub_1DD7120C4()
{
  result = qword_1ECD0E108;
  if (!qword_1ECD0E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E108);
  }

  return result;
}

unint64_t sub_1DD712118()
{
  result = qword_1ECD0E110;
  if (!qword_1ECD0E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E110);
  }

  return result;
}

unint64_t sub_1DD71216C()
{
  result = qword_1ECD0E118;
  if (!qword_1ECD0E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E118);
  }

  return result;
}

void SiriXResponse.SiriXOutputCommand.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v114 = v3;
  v103 = sub_1DD710A9C(&qword_1ECD0E120, &qword_1DD876E88);
  sub_1DD6DDEAC(v103);
  v110 = v4;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v112 = v8;
  v105 = sub_1DD710A9C(&qword_1ECD0E128, &qword_1DD876E90);
  sub_1DD6DDEAC(v105);
  v113 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v116 = v13;
  v104 = sub_1DD710A9C(&qword_1ECD0E130, &qword_1DD876E98);
  sub_1DD6DDEAC(v104);
  v109 = v14;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v115 = v18;
  v102 = sub_1DD710A9C(&qword_1ECD0E138, &qword_1DD876EA0);
  sub_1DD6DDEAC(v102);
  v108 = v19;
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E0C6C();
  v111 = v23;
  v101 = sub_1DD710A9C(&qword_1ECD0E140, &qword_1DD876EA8);
  sub_1DD6DDEAC(v101);
  v107 = v24;
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v100 - v28;
  v30 = sub_1DD710A9C(&qword_1ECD0E148, &qword_1DD876EB0);
  sub_1DD6DDEAC(v30);
  v106 = v31;
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v100 - v35;
  v37 = sub_1DD710A9C(&qword_1ECD0E150, &qword_1DD876EB8);
  sub_1DD6DDEAC(v37);
  v39 = *(v38 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  v41 = v2[3];
  v42 = v2[4];
  v117 = v2;
  sub_1DD6DF224(v2, v41);
  sub_1DD711ECC();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_8;
  }

  v100[2] = v36;
  v100[1] = v30;
  v100[3] = v29;
  v43 = sub_1DD875900();
  sub_1DD717CAC(v43, 0);
  if (v46 == v47 >> 1)
  {
LABEL_7:
    v55 = sub_1DD875740();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v57 = &type metadata for SiriXResponse.SiriXOutputCommand;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = sub_1DD703234();
    v60(v59);
LABEL_8:
    sub_1DD6E1EC8(v117);
LABEL_9:
    sub_1DD6E0C78();
    return;
  }

  v100[0] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    sub_1DD718EB8(v46 + 1, v47 >> 1, v44, v45, v46, v47);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      v54 = v113;
      v53 = v114;
      switch(v48)
      {
        case 1:
          LOBYTE(v118) = 1;
          sub_1DD712118();
          sub_1DD6E64D4();
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v89 = *(v107 + 8);
          v90 = sub_1DD6DDEDC();
          v91(v90);
          v92 = sub_1DD6FC3CC();
          v93(v92);
          sub_1DD700BD8();
          v88 = v94 | 0x1000000000000000;
          goto LABEL_15;
        case 2:
          LOBYTE(v118) = 2;
          sub_1DD7120C4();
          sub_1DD6E64D4();
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v69 = *(v108 + 8);
          v70 = sub_1DD6DDEDC();
          v71(v70);
          v72 = sub_1DD6FC3CC();
          v73(v72);
          sub_1DD700BD8();
          v88 = v74 | 0x2000000000000000;
          goto LABEL_15;
        case 3:
          LOBYTE(v118) = 3;
          sub_1DD71201C();
          sub_1DD6E64D4();
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v75 = *(v109 + 8);
          v76 = sub_1DD6DDEDC();
          v77(v76);
          v78 = sub_1DD6FC3CC();
          v79(v78);
          sub_1DD700BD8();
          v88 = v80 | 0x3000000000000000;
          goto LABEL_15;
        case 4:
          v61 = v114;
          LOBYTE(v118) = 4;
          sub_1DD711FC8();
          sub_1DD6E64D4();
          sub_1DD717CE4();
          sub_1DD6E710C();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v63 = *(v54 + 8);
          v64 = sub_1DD7029A8();
          v65(v64);
          v66 = sub_1DD6FC3CC();
          v67(v66);
          v86 = v118;
          v88 = v119;
          v87 = 1;
          v68 = v117;
          v53 = v61;
          goto LABEL_16;
        case 5:
          v62 = v114;
          LOBYTE(v118) = 5;
          sub_1DD711F20();
          sub_1DD6E64D4();
          sub_1DD717CE4();
          sub_1DD6E710C();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v95 = *(v110 + 8);
          v96 = sub_1DD7029A8();
          v97(v96);
          v98 = sub_1DD6FC3CC();
          v99(v98);
          v86 = v118;
          v88 = v119 | 0x1000000000000000;
          v87 = 1;
          v68 = v117;
          v53 = v62;
          goto LABEL_16;
        default:
          LOBYTE(v118) = 0;
          sub_1DD71216C();
          sub_1DD6E64D4();
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v81 = *(v106 + 8);
          v82 = sub_1DD6DDEDC();
          v83(v82);
          v84 = sub_1DD6FC3CC();
          v85(v84);
          sub_1DD700BD8();
LABEL_15:
          v68 = v117;
LABEL_16:
          *v53 = v86;
          *(v53 + 8) = v88;
          *(v53 + 16) = v87;
          sub_1DD6E1EC8(v68);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t SiriXResponse.RequestEndedData.command.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t SiriXResponse.RequestEndedData.init(command:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DD712BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD712C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD712BB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD712C78(uint64_t a1)
{
  v2 = sub_1DD717D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD712CB4(uint64_t a1)
{
  v2 = sub_1DD717D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.RequestEndedData.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0E168, &qword_1DD876EC8);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD710E74(v11, v12);
  sub_1DD717D8C();
  sub_1DD875BB0();
  v14 = v11;
  v15 = v12;
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v14, v15);
  (*(v5 + 8))(v10, v3);
  sub_1DD6E0C78();
}

void SiriXResponse.RequestEndedData.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0E178, &qword_1DD876ED0);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD717D8C();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD717D38();
    sub_1DD6E1F24();
    sub_1DD8758D0();
    v12 = *(v7 + 8);
    v13 = sub_1DD6DDEDC();
    v14(v13);
    *v4 = v15;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

__n128 SiriXResponse.init(isFinal:siriXOutputCommand:outcome:)@<Q0>(char a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  *a4 = a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = a3;
  return result;
}

void static SiriXResponse.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = a2[24];
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  v7 = a1[24];
  v9 = *(a1 + 1);
  v8 = *(a1 + 2);
  v18[0] = v9;
  v18[1] = v8;
  v19 = v7;
  v16[0] = v6;
  v16[1] = v5;
  v17 = v4;
  sub_1DD711154(v9, v8, v7, sub_1DD710E74);
  v10 = sub_1DD6E0F70();
  sub_1DD711154(v10, v11, v4, sub_1DD710E74);
  v12 = static SiriXResponse.SiriXOutputCommand.== infix(_:_:)(v18, v16);
  sub_1DD711154(v6, v5, v4, sub_1DD6E6658);
  sub_1DD711154(v9, v8, v7, sub_1DD6E6658);
  if (v12)
  {
    sub_1DD6DDEFC();
    sub_1DD6F37CC();

    sub_1DD716D5C(v13, v14);
  }

  else
  {
LABEL_6:
    sub_1DD6F37CC();
  }
}

void sub_1DD7130EC()
{
  sub_1DD6DEB38();
  v2 = sub_1DD6F09D0();
  v3 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(v2);
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v125 - v13;
  v15 = sub_1DD710A9C(&qword_1ECD0E2D8, &qword_1DD8781E8);
  sub_1DD6DE1C4(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E0C6C();
  v135 = v19;
  v145 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  v20 = sub_1DD6DE1C4(v145);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDEE8();
  v144 = v23;
  v24 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  sub_1DD6DEA10(v24);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E0C6C();
  v136 = v28;
  v137 = sub_1DD710A9C(&qword_1ECD0E2E8, &qword_1DD8781F8);
  sub_1DD6DE1C4(v137);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E0C6C();
  v149 = v32;
  v134 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  v33 = sub_1DD6DE1C4(v134);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDEE8();
  v131 = v36;
  v37 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD6DEA10(v37);
  v39 = *(v38 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6E0C6C();
  v139 = v41;
  v132 = sub_1DD710A9C(&qword_1ECD0E2F8, &qword_1DD878208);
  sub_1DD6DE1C4(v132);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E0C6C();
  v133 = v45;
  v143 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  v46 = sub_1DD6DE1C4(v143);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DDEE8();
  v138 = v49;
  v50 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  sub_1DD6DEA10(v50);
  v52 = *(v51 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6E0C6C();
  v140 = v54;
  v141 = sub_1DD710A9C(&qword_1ECD0E308, qword_1DD878218);
  sub_1DD6DE1C4(v141);
  v56 = *(v55 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v125 - v58;
  v146 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  v60 = sub_1DD6E046C(v146);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DDEC0();
  v148 = v63 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v125 - v67;
  v69 = *(v1 + 16);
  if (v69 != *(v0 + 16) || !v69 || v1 == v0)
  {
    goto LABEL_51;
  }

  v127 = v15;
  v126 = v14;
  v125 = v8;
  v128 = v3;
  sub_1DD6DE1EC(v66);
  v71 = v1 + v70;
  v147 = v0 + v70;
  v73 = *(v72 + 72);
  v129 = v68;
  v130 = v73;
  v74 = v143;
  while (1)
  {
    sub_1DD6ED118();
    sub_1DD7191C0();
    v142 = v71;
    sub_1DD7191C0();
    v75 = *(v141 + 48);
    sub_1DD719110();
    sub_1DD719110();
    sub_1DD6DE1FC(v59, 1, v74);
    if (v77)
    {
      sub_1DD6DE1FC(&v59[v75], 1, v74);
      if (!v77)
      {
        goto LABEL_38;
      }

      sub_1DD6FC560(v59, &qword_1ECD0E300, &qword_1DD878210);
    }

    else
    {
      v76 = v140;
      sub_1DD719110();
      sub_1DD6DE1FC(&v59[v75], 1, v74);
      v78 = v139;
      if (v77)
      {
        sub_1DD719218(v76, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
LABEL_38:
        v120 = &qword_1ECD0E308;
        v121 = qword_1DD878218;
        goto LABEL_44;
      }

      sub_1DD719168();
      v79 = *(v132 + 48);
      v80 = v133;
      sub_1DD719110();
      sub_1DD719110();
      v81 = v134;
      sub_1DD6DE1FC(v80, 1, v134);
      if (v77)
      {
        sub_1DD6DE1FC(v80 + v79, 1, v81);
        if (!v77)
        {
          goto LABEL_42;
        }

        sub_1DD6FC560(v80, &qword_1ECD0E2F0, &qword_1DD878200);
        v68 = v129;
      }

      else
      {
        sub_1DD719110();
        sub_1DD6DE1FC(v80 + v79, 1, v81);
        if (v82)
        {
          sub_1DD719218(v78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
LABEL_42:
          sub_1DD6FC560(v80, &qword_1ECD0E2F8, &qword_1DD878208);
LABEL_43:
          sub_1DD719218(v138, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
          sub_1DD719218(v140, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
          v120 = &qword_1ECD0E300;
          v121 = &qword_1DD878210;
LABEL_44:
          v122 = v59;
          goto LABEL_49;
        }

        v83 = v131;
        sub_1DD719168();
        static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum.== infix(_:_:)();
        v85 = v84;
        sub_1DD719218(v83, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
        sub_1DD719218(v139, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
        sub_1DD6FC560(v80, &qword_1ECD0E2F0, &qword_1DD878200);
        v68 = v129;
        if ((v85 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v86 = *(v74 + 20);
      sub_1DD874910();
      sub_1DD6E1274();
      sub_1DD7190C8(&qword_1ECD0E2C8, v87);
      v88 = v140;
      v89 = v138;
      v90 = sub_1DD8750F0();
      sub_1DD719218(v89, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
      v74 = v143;
      sub_1DD719218(v88, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
      sub_1DD6FC560(v59, &qword_1ECD0E300, &qword_1DD878210);
      if ((v90 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v91 = *(v146 + 20);
    v92 = *(v137 + 48);
    v93 = v149;
    sub_1DD6FAD88();
    sub_1DD719110();
    sub_1DD6FAD88();
    sub_1DD719110();
    v94 = v93;
    v95 = v145;
    sub_1DD6DE1FC(v94, 1, v145);
    if (!v77)
    {
      break;
    }

    sub_1DD6DE1FC(v149 + v92, 1, v95);
    if (!v77)
    {
      goto LABEL_40;
    }

    sub_1DD6FC560(v149, &qword_1ECD0E2E0, &qword_1DD8781F0);
LABEL_33:
    v116 = *(v146 + 24);
    sub_1DD874910();
    sub_1DD6E1274();
    sub_1DD7190C8(&qword_1ECD0E2C8, v117);
    v118 = v148;
    v119 = sub_1DD8750F0();
    sub_1DD719218(v118, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
    sub_1DD719218(v68, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
    if (v119)
    {
      v147 += v130;
      v71 = v142 + v130;
      if (--v69)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  v96 = v149;
  v97 = v136;
  sub_1DD6FAD88();
  sub_1DD719110();
  sub_1DD6DE1FC(v96 + v92, 1, v95);
  if (v98)
  {
    sub_1DD719218(v97, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
LABEL_40:
    v120 = &qword_1ECD0E2E8;
    v121 = &qword_1DD8781F8;
    goto LABEL_48;
  }

  sub_1DD719168();
  v99 = *(v127 + 48);
  v100 = v135;
  sub_1DD719110();
  sub_1DD719110();
  v101 = v128;
  sub_1DD6DE1FC(v100, 1, v128);
  if (v77)
  {
    sub_1DD6DE1FC(v100 + v99, 1, v101);
    if (!v77)
    {
      goto LABEL_46;
    }

    sub_1DD6FC560(v100, &qword_1ECD0E2D0, &qword_1DD8781E0);
    v103 = v144;
    v102 = v145;
LABEL_32:
    v111 = *(v102 + 20);
    sub_1DD874910();
    sub_1DD6E1274();
    sub_1DD7190C8(&qword_1ECD0E2C8, v112);
    v113 = sub_1DD8750F0();
    sub_1DD719218(v103, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
    v114 = sub_1DD6E0C60();
    sub_1DD719218(v114, v115);
    sub_1DD6FC560(v149, &qword_1ECD0E2E0, &qword_1DD8781F0);
    v74 = v143;
    if ((v113 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v104 = v126;
  sub_1DD719110();
  sub_1DD6DE1FC(v100 + v99, 1, v101);
  if (!v105)
  {
    v106 = v125;
    sub_1DD719168();
    static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum.== infix(_:_:)();
    v108 = v107;
    sub_1DD719218(v106, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    v109 = sub_1DD6E0C60();
    sub_1DD719218(v109, v110);
    sub_1DD6FC560(v135, &qword_1ECD0E2D0, &qword_1DD8781E0);
    v103 = v144;
    v102 = v145;
    if ((v108 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  sub_1DD719218(v104, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
LABEL_46:
  sub_1DD6FC560(v100, &qword_1ECD0E2D8, &qword_1DD8781E8);
  v103 = v144;
LABEL_47:
  sub_1DD719218(v103, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD719218(v136, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  v120 = &qword_1ECD0E2E0;
  v121 = &qword_1DD8781F0;
LABEL_48:
  v122 = v149;
LABEL_49:
  sub_1DD6FC560(v122, v120, v121);
LABEL_50:
  sub_1DD719218(v148, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
  v123 = sub_1DD6DDEFC();
  sub_1DD719218(v123, v124);
LABEL_51:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

void sub_1DD713D3C()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6F09D0();
  v5 = type metadata accessor for OverridesCommon_StringPredicate(v4);
  v6 = sub_1DD6E046C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEC0();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6EED34();
  if (v19 && v3 && v2 != v0)
  {
    sub_1DD6DE1EC(v13);
    v15 = v2 + v14;
    v16 = v0 + v14;
    v18 = *(v17 + 72);
    while (1)
    {
      sub_1DD6E0F70();
      sub_1DD7191C0();
      sub_1DD7191C0();
      if (*v1 != *v11)
      {
        break;
      }

      v19 = *(v1 + 1) == *(v11 + 1) && *(v1 + 2) == *(v11 + 2);
      if (!v19 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v20 = *(v5 + 24);
      sub_1DD874910();
      sub_1DD6E1274();
      sub_1DD7190C8(&qword_1ECD0E2C8, v21);
      v22 = sub_1DD7192BC();
      sub_1DD719218(v11, type metadata accessor for OverridesCommon_StringPredicate);
      v23 = sub_1DD6FAA88();
      sub_1DD719218(v23, v24);
      if (v22)
      {
        v16 += v18;
        v15 += v18;
        sub_1DD6E6314();
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1DD719218(v11, type metadata accessor for OverridesCommon_StringPredicate);
    v25 = sub_1DD6DEA04();
    sub_1DD719218(v25, v26);
  }

LABEL_18:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

void sub_1DD71435C()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 64);
    v4 = (v0 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) != *(v3 - 4) || *(v4 - 3) != *(v3 - 3))
      {
        v12 = *(v4 - 3);
        v23 = *(v4 - 2);
        v13 = v2;
        v14 = *(v3 - 2);
        v15 = *(v4 - 1);
        v16 = *(v3 - 3);
        v17 = *(v3 - 1);
        v18 = *v4;
        v19 = sub_1DD875A30();
        v7 = v18;
        v8 = v17;
        v5 = v15;
        v9 = v14;
        v2 = v13;
        v6 = v23;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if (v7)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }

        sub_1DD718FA4();
        sub_1DD6E09C4();
        sub_1DD718FA4();
        sub_1DD6E07BC();
        sub_1DD718FA4();
        sub_1DD6E09C4();
        sub_1DD718FA4();

        sub_1DD6E09C4();
        sub_1DD718FA4();

        sub_1DD6E07BC();
        sub_1DD718FA4();
        v20 = sub_1DD714590(v6, v9);
        sub_1DD6E09C4();
        sub_1DD718FB0();
        sub_1DD6E07BC();
        sub_1DD718FB0();
        sub_1DD6E07BC();
        sub_1DD718FB0();
        sub_1DD6E09C4();
        sub_1DD718FB0();

        sub_1DD6E07BC();
        sub_1DD718FB0();

        sub_1DD6E09C4();
        sub_1DD718FB0();
        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v10)
        {
LABEL_24:
          sub_1DD6E0C60();
          sub_1DD6E699C();
          sub_1DD6E699C();
          sub_1DD718FB0();
          sub_1DD6E0C60();
          sub_1DD718FB0();
          break;
        }

        if (v6 == v9 && v5 == v8)
        {
          sub_1DD718FA4();
          sub_1DD6DE464();
          sub_1DD718FA4();
          sub_1DD6DE464();
          sub_1DD718FB0();
          sub_1DD6DE464();
          sub_1DD718FB0();
        }

        else
        {
          sub_1DD6E1BC4();
          v22 = sub_1DD875A30();
          sub_1DD6E0C60();
          sub_1DD718FA4();
          sub_1DD6DE464();
          sub_1DD718FA4();
          sub_1DD6DE464();
          sub_1DD718FB0();
          sub_1DD6E0C60();
          sub_1DD718FB0();
          if ((v22 & 1) == 0)
          {
            break;
          }
        }
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_1DD6E58C4();
}

uint64_t sub_1DD714590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(v3 - 2);
      if (*i)
      {
        break;
      }

      if (*v3)
      {
LABEL_19:
        sub_1DD6E0C60();
        sub_1DD6E699C();
        sub_1DD6E699C();
        sub_1DD718FB0();
        sub_1DD6E0C60();
        sub_1DD718FB0();
        return 0;
      }

      v8 = *(i - 2);
      v9 = *(i - 1);
      if (v5 != v6 || *(i - 1) != *(v3 - 1))
      {
        sub_1DD6E1BC4();
        v7 = sub_1DD875A30();
        sub_1DD6E0C60();
        sub_1DD718FA4();
        sub_1DD6DE464();
        sub_1DD718FA4();
        sub_1DD6DE464();
        sub_1DD718FB0();
        sub_1DD6E0C60();
LABEL_14:
        sub_1DD718FB0();
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      sub_1DD718FA4();
      sub_1DD6DE464();
      sub_1DD718FA4();
      sub_1DD6DE464();
      sub_1DD718FB0();
      sub_1DD6DE464();
      sub_1DD718FB0();
LABEL_17:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if ((*v3 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1DD6E07BC();
    sub_1DD718FA4();
    sub_1DD6E09C4();
    sub_1DD718FA4();
    sub_1DD6E07BC();
    sub_1DD718FA4();
    sub_1DD6E09C4();
    sub_1DD718FA4();
    sub_1DD6E07BC();
    sub_1DD718FA4();
    sub_1DD6E09C4();
    sub_1DD718FA4();
    v7 = sub_1DD714590(v5, v6);
    sub_1DD6E09C4();
    sub_1DD718FB0();
    sub_1DD6E07BC();
    sub_1DD718FB0();
    sub_1DD6E07BC();
    sub_1DD718FB0();
    sub_1DD6E09C4();
    sub_1DD718FB0();
    sub_1DD6E07BC();
    sub_1DD718FB0();
    sub_1DD6E09C4();
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1DD714734(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = a1 == a2;
      if (a1 != a2)
      {
        v4 = (a1 + 40);
        v5 = (a2 + 40);
        do
        {
          v7 = *(v4 - 1);
          v6 = *v4;
          v8 = *v4 >> 62;
          v10 = *(v5 - 1);
          v9 = *v5;
          v11 = *v5 >> 62;
          if (v3)
          {
            v12 = *v4 >> 62;
            if (v7)
            {
              v14 = *v4 >> 62;
              v13 = 0;
            }

            else
            {
              v14 = *v4 >> 62;
              v13 = v6 == 0xC000000000000000;
            }

            v15 = *v4 >> 62;
            v24 = 0;
            if (v13)
            {
              v17 = *v4 >> 62;
              v16 = *v5 >> 62 == 3;
            }

            else
            {
              v17 = *v4 >> 62;
              v16 = 0;
            }

            v18 = *v4 >> 62;
            if (v16)
            {
              v19 = *v4 >> 62;
              if (!v10)
              {
                v20 = *v4 >> 62;
                if (v9 == 0xC000000000000000)
                {
                  v21 = *v4 >> 62;
                  goto LABEL_88;
                }

                v22 = *v4 >> 62;
              }
            }

            else
            {
              v114 = *v4 >> 62;
            }
          }

          else
          {
            v23 = *v4 >> 62;
            v24 = 0;
            v25 = *v4 >> 62;
            switch(v8)
            {
              case 0uLL:
                v24 = BYTE6(v6);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v7), v7))
                {
                  goto LABEL_94;
                }

                v24 = HIDWORD(v7) - v7;
                break;
              case 2uLL:
                v27 = *(v7 + 16);
                v26 = *(v7 + 24);
                v28 = __OFSUB__(v26, v27);
                v24 = v26 - v27;
                if (!v28)
                {
                  break;
                }

                goto LABEL_95;
              case 3uLL:
                break;
              default:
                goto LABEL_112;
            }
          }

          v29 = *v5 >> 62;
          v30 = *v4 >> 62;
          switch(v11)
          {
            case 1uLL:
              LODWORD(v31) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
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
              }

              v31 = v31;
LABEL_33:
              v35 = *v4 >> 62;
              if (v24 != v31)
              {
                v36 = *v4 >> 62;
                goto LABEL_90;
              }

              v37 = *v4 >> 62;
              if (v24 >= 1)
              {
                v39 = *v4 >> 62;
                v40 = v10 >> 32;
                switch(v8)
                {
                  case 1:
                    if (v7 >> 32 < v7)
                    {
                      goto LABEL_96;
                    }

                    v66 = sub_1DD6DEA04();
                    sub_1DD710E74(v66, v67);
                    v68 = sub_1DD6DEA04();
                    sub_1DD710E74(v68, v69);
                    v70 = sub_1DD6DEA04();
                    sub_1DD710E74(v70, v71);
                    v72 = sub_1DD6DEA04();
                    sub_1DD710E74(v72, v73);
                    v74 = sub_1DD6DDEDC();
                    sub_1DD710E74(v74, v75);
                    v58 = sub_1DD874640();
                    if (!v58)
                    {
                      goto LABEL_62;
                    }

                    v76 = sub_1DD874660();
                    if (__OFSUB__(v7, v76))
                    {
                      goto LABEL_99;
                    }

                    v58 += v7 - v76;
LABEL_62:
                    sub_1DD874650();
                    sub_1DD717A88(v58, v10, v9, __s1);
                    v77 = sub_1DD6DEA04();
                    sub_1DD6E6658(v77, v78);
                    v79 = sub_1DD6DEA04();
                    sub_1DD6E6658(v79, v80);
                    v81 = sub_1DD6DDEDC();
                    sub_1DD6E6658(v81, v82);
                    v83 = __s1[0];
                    v84 = sub_1DD6DEA04();
                    sub_1DD6E6658(v84, v85);
                    v86 = sub_1DD6DEA04();
                    sub_1DD6E6658(v86, v87);
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_88;
                  case 2:
                    v47 = *(v7 + 16);
                    v117 = *(v7 + 24);
                    v48 = sub_1DD6DEA04();
                    sub_1DD710E74(v48, v49);
                    v50 = sub_1DD6DEA04();
                    sub_1DD710E74(v50, v51);
                    v52 = sub_1DD6DEA04();
                    sub_1DD710E74(v52, v53);
                    v54 = sub_1DD6DEA04();
                    sub_1DD710E74(v54, v55);
                    v56 = sub_1DD6DDEDC();
                    sub_1DD710E74(v56, v57);
                    v58 = sub_1DD874640();
                    if (!v58)
                    {
                      goto LABEL_47;
                    }

                    v59 = sub_1DD874660();
                    if (__OFSUB__(v47, v59))
                    {
                      goto LABEL_98;
                    }

                    v58 += v47 - v59;
LABEL_47:
                    if (!__OFSUB__(v117, v47))
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_97;
                  case 3:
                    memset(__s1, 0, 14);
                    if (v11 == 2)
                    {
                      v88 = *(v10 + 16);
                      v120 = *(v10 + 24);
                      v89 = sub_1DD6DEA04();
                      sub_1DD710E74(v89, v90);
                      v91 = sub_1DD6DDEDC();
                      sub_1DD710E74(v91, v92);
                      v93 = sub_1DD874640();
                      if (v93)
                      {
                        v94 = sub_1DD874660();
                        if (__OFSUB__(v88, v94))
                        {
                          goto LABEL_104;
                        }

                        v93 += v88 - v94;
                      }

                      v28 = __OFSUB__(v120, v88);
                      v95 = &v120[-v88];
                      if (v28)
                      {
                        goto LABEL_103;
                      }

                      v96 = sub_1DD874650();
                      if (!v93)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_75;
                    }

                    if (v11 != 1)
                    {
LABEL_60:
                      __s2 = v10;
                      v123 = v9;
                      v124 = BYTE2(v9);
                      v125 = BYTE3(v9);
                      v126 = BYTE4(v9);
                      v127 = BYTE5(v9);
                      if (memcmp(__s1, &__s2, BYTE6(v9)))
                      {
                        goto LABEL_90;
                      }

                      goto LABEL_88;
                    }

                    if (v40 < v10)
                    {
                      goto LABEL_100;
                    }

                    v60 = sub_1DD6DEA04();
                    sub_1DD710E74(v60, v61);
                    v62 = sub_1DD6DDEDC();
                    sub_1DD710E74(v62, v63);
                    v64 = sub_1DD874640();
                    if (v64)
                    {
                      v118 = v64;
                      v65 = sub_1DD874660();
                      if (__OFSUB__(v10, v65))
                      {
                        goto LABEL_107;
                      }

                      v119 = &v118[v10 - v65];
                    }

                    else
                    {
                      v119 = 0;
                    }

                    v105 = sub_1DD874650();
                    v104 = v119;
                    if (!v119)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_84;
                  default:
                    LOWORD(__s1[0]) = *(v4 - 1);
                    BYTE2(__s1[0]) = BYTE2(v7);
                    BYTE3(__s1[0]) = BYTE3(v7);
                    BYTE4(__s1[0]) = BYTE4(v7);
                    BYTE5(__s1[0]) = BYTE5(v7);
                    BYTE6(__s1[0]) = BYTE6(v7);
                    HIBYTE(__s1[0]) = HIBYTE(v7);
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    if (!v11)
                    {
                      goto LABEL_60;
                    }

                    if (v11 == 1)
                    {
                      if (v40 < v10)
                      {
                        goto LABEL_101;
                      }

                      v41 = sub_1DD6DEA04();
                      sub_1DD710E74(v41, v42);
                      v43 = sub_1DD6DDEDC();
                      sub_1DD710E74(v43, v44);
                      v45 = sub_1DD874640();
                      if (v45)
                      {
                        v115 = v45;
                        v46 = sub_1DD874660();
                        if (__OFSUB__(v10, v46))
                        {
                          goto LABEL_106;
                        }

                        v116 = &v115[v10 - v46];
                      }

                      else
                      {
                        v116 = 0;
                      }

                      v105 = sub_1DD874650();
                      v104 = v116;
                      if (!v116)
                      {
                        goto LABEL_110;
                      }

LABEL_84:
                      if (v105 >= v40 - v10)
                      {
                        v103 = v40 - v10;
                      }

                      else
                      {
                        v103 = v105;
                      }
                    }

                    else
                    {
                      v97 = *(v10 + 16);
                      v121 = *(v10 + 24);
                      v98 = sub_1DD6DEA04();
                      sub_1DD710E74(v98, v99);
                      v100 = sub_1DD6DDEDC();
                      sub_1DD710E74(v100, v101);
                      v93 = sub_1DD874640();
                      if (v93)
                      {
                        v102 = sub_1DD874660();
                        if (__OFSUB__(v97, v102))
                        {
                          goto LABEL_105;
                        }

                        v93 += v97 - v102;
                      }

                      v28 = __OFSUB__(v121, v97);
                      v95 = &v121[-v97];
                      if (v28)
                      {
                        goto LABEL_102;
                      }

                      v96 = sub_1DD874650();
                      if (!v93)
                      {
                        __break(1u);
LABEL_109:
                        __break(1u);
LABEL_110:
                        __break(1u);
LABEL_111:
                        __break(1u);
                        v112 = sub_1DD6DEA04();
                        sub_1DD6E6658(v112, v113);

                        __break(1u);
LABEL_112:
                        JUMPOUT(0);
                      }

LABEL_75:
                      if (v96 >= v95)
                      {
                        v103 = v95;
                      }

                      else
                      {
                        v103 = v96;
                      }

                      v104 = v93;
                    }

                    v106 = memcmp(__s1, v104, v103);
                    v107 = sub_1DD6DDEDC();
                    sub_1DD6E6658(v107, v108);
                    v109 = sub_1DD6DEA04();
                    sub_1DD6E6658(v109, v110);
                    if (v106)
                    {
                      goto LABEL_90;
                    }

                    break;
                }
              }

              else
              {
                v38 = *v4 >> 62;
              }

              break;
            case 2uLL:
              v34 = *(v10 + 16);
              v33 = *(v10 + 24);
              v28 = __OFSUB__(v33, v34);
              v31 = v33 - v34;
              if (!v28)
              {
                goto LABEL_33;
              }

              goto LABEL_93;
            case 3uLL:
              if (v24)
              {
                goto LABEL_90;
              }

              break;
            default:
              v32 = *v4 >> 62;
              v31 = BYTE6(v9);
              goto LABEL_33;
          }

LABEL_88:
          v4 += 2;
          v5 += 2;
          v3 = --v2 == 0;
        }

        while (v2);
      }
    }

    result = 1;
  }

  else
  {
LABEL_90:
    result = 0;
  }

  *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DD714FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v23;
  a20 = v24;
  v25 = sub_1DD6DF08C();
  v26 = type metadata accessor for ClientAction.Definition.ParameterDefinition(v25);
  v27 = sub_1DD6E046C(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DDEC0();
  sub_1DD6ED108();
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&a9 - v32);
  v34 = *(v21 + 16);
  if (v34 == *(v22 + 16) && v34 && v21 != v22)
  {
    sub_1DD6DE1EC(v31);
    v36 = v21 + v35;
    v37 = v22 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      sub_1DD6E0C60();
      sub_1DD7191C0();
      sub_1DD6F4498();
      sub_1DD7191C0();
      v40 = *v33 == *v20 && v33[1] == v20[1];
      if (!v40 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v41 = v33[2] == v20[2] && v33[3] == v20[3];
      if (!v41 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v42 = *(v26 + 24);
      v43 = sub_1DD874FB0();
      sub_1DD719218(v20, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      sub_1DD719218(v33, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      if (v43)
      {
        v37 += v39;
        v36 += v39;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_1DD719218(v20, type metadata accessor for ClientAction.Definition.ParameterDefinition);
    v44 = sub_1DD6ED118();
    sub_1DD719218(v44, v45);
  }

LABEL_20:
  sub_1DD6DFED0();
}

void sub_1DD715190()
{
  sub_1DD6FF8A8();
  v3 = sub_1DD6E3808(v1, v2);
  if (v16 && v0 && v3 != v4)
  {
    v5 = 0;
    v21 = v3 + 32;
    v6 = v4 + 32;
    while (v5 != v0)
    {
      v7 = (v21 + 24 * v5);
      v8 = *v7;
      v9 = (v6 + 24 * v5);
      v10 = *v9;
      v11 = *(*v7 + 16);
      if (v11 != *(*v9 + 16))
      {
        goto LABEL_30;
      }

      v12 = v7[1];
      v13 = v7[2];
      v15 = v9[1];
      v14 = v9[2];
      if (v11)
      {
        v16 = v8 == v10;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = (v8 + 40);
        v18 = (v10 + 40);
        while (v11)
        {
          v19 = *(v17 - 1) == *(v18 - 1) && *v17 == *v18;
          if (!v19 && (sub_1DD875A30() & 1) == 0)
          {
            goto LABEL_30;
          }

          v17 += 2;
          v18 += 2;
          if (!--v11)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_30;
        }

        v20 = v12 == v15 && v13 == v14;
        if (!v20 && (sub_1DD6FF778() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v14)
      {
        goto LABEL_30;
      }

      if (++v5 == v0)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_1DD6E58C4();
  }
}

uint64_t sub_1DD7152B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E8860(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 40);
    for (i = (v4 + 40); ; i += 2)
    {
      v7 = *(v5 - 1) == *(i - 1) && *v5 == *i;
      if (!v7 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v5 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD715384()
{
  sub_1DD6DEB38();
  v5 = sub_1DD6DF08C();
  v6 = type metadata accessor for PlannerPromptData.OnScreenContextValue(v5);
  v7 = sub_1DD6E046C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEC0();
  sub_1DD6ED108();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F1758();
  if (v19 && v4 && v2 != v3)
  {
    sub_1DD6DE1EC(v11);
    v13 = v2 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      sub_1DD6E0C60();
      sub_1DD7191C0();
      if (!v4)
      {
        break;
      }

      sub_1DD6F4498();
      sub_1DD7191C0();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        sub_1DD719218(v0, type metadata accessor for PlannerPromptData.OnScreenContextValue);
        v20 = sub_1DD6ED118();
        sub_1DD719218(v20, v21);
        goto LABEL_16;
      }

      v17 = *(v1 + *(v6 + 20));
      sub_1DD719218(v1, type metadata accessor for PlannerPromptData.OnScreenContextValue);
      v18 = *(v0 + *(v6 + 20));
      sub_1DD719218(v0, type metadata accessor for PlannerPromptData.OnScreenContextValue);
      v19 = v17 != v18 || v4-- == 1;
      v14 += v16;
      v13 += v16;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1DD6DFED0();
  }
}

void sub_1DD71557C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *v3;
      v9 = v4[1];
      v10 = v4[2];
      v12 = v4[3];
      v11 = v4[4];
      v18 = v11;
      v19 = *(v3 - 1);
      v13 = *(v3 - 6) == *(v4 - 1) && *(v3 - 5) == *v4;
      v20 = v4[5];
      v21 = *(v3 - 3);
      v22 = *(v3 - 5);
      if (!v13)
      {
        v14 = sub_1DD875A30();
        v5 = v21;
        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      v15 = v6 == v9 && v5 == v10;
      if (!v15 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      sub_1DD718F34(v7);

      sub_1DD718F34(v12);

      if ((static TypeDefinition.== infix(_:_:)(v7, v12) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v8)
      {
        if (!v20)
        {
LABEL_29:

          sub_1DD6EE70C();

          sub_1DD718F6C(v7);

          break;
        }

        if (v19 == v18 && v8 == v20)
        {

          sub_1DD6EE70C();

          sub_1DD718F6C(v7);
        }

        else
        {
          v17 = sub_1DD875A30();

          sub_1DD6EE70C();

          sub_1DD718F6C(v7);

          if ((v17 & 1) == 0)
          {
            break;
          }
        }
      }

      else
      {

        sub_1DD6EE70C();

        sub_1DD718F6C(v7);

        if (v20)
        {
          break;
        }
      }

      v3 += 7;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  sub_1DD6F37CC();
}

uint64_t sub_1DD7157E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v5 = *(a1 + i + 48);
      v4 = *(a1 + i + 56);
      v6 = *(a1 + i + 72);
      v21 = *(a1 + i + 80);
      v8 = *(a2 + i + 48);
      v7 = *(a2 + i + 56);
      v9 = *(a2 + i + 64);
      v10 = *(a2 + i + 72);
      v11 = *(a2 + i + 80);
      v22 = *(a1 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      v23 = *(a2 + i + 56);
      if (!v12)
      {
        v13 = sub_1DD6FF778();
        v7 = v23;
        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      v14 = v5 == v8 && v4 == v7;
      if (!v14 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v15 = v22 == v9 && v6 == v10;
      if (!v15 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v16 = sub_1DD6FAA88();
      v17 = sub_1DD71557C(v16);

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD715A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  sub_1DD6DDEC0();
  MEMORY[0x1EEE9AC00](v33);
  v36 = &a9 - v35;
  v37 = *(v29 + 16);
  if (v37 == *(v27 + 16) && v37 && v29 != v27)
  {
    sub_1DD6DE1EC(v34);
    v39 = v29 + v38;
    v40 = v27 + v38;
    v42 = *(v41 + 72);
    do
    {
      sub_1DD6DDEDC();
      sub_1DD7191C0();
      sub_1DD7191C0();
      v43 = sub_1DD6E0F70();
      v44 = v25(v43);
      v45 = sub_1DD6DEA04();
      sub_1DD719218(v45, v46);
      sub_1DD719218(v36, v23);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v40 += v42;
      v39 += v42;
      sub_1DD6E6314();
    }

    while (!v47);
  }

  sub_1DD6DFED0();
}

uint64_t sub_1DD715B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E8860(a1, a2);
  if (v8)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 48);
    for (i = (v4 + 48); *(v5 - 4) == *(i - 4); i += 3)
    {
      v7 = *i;
      if (*v5)
      {
        if (!v7)
        {
          return 0;
        }

        v8 = *(v5 - 1) == *(i - 1) && *v5 == v7;
        if (!v8 && (sub_1DD875A30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v5 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD715C80()
{
  sub_1DD6DEB38();
  v37 = v0;
  v38 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = sub_1DD6DDEAC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = *(v6 + 16);
  if (v20 == *(v4 + 16) && v20 && v6 != v4)
  {
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = v6 + v21;
    v23 = v4 + v21;
    v25 = *(v11 + 16);
    v24 = v11 + 16;
    v26 = (v24 - 8);
    v34 = *(v24 + 56);
    v35 = v25;
    while (1)
    {
      v27 = v35;
      (v35)(v19, v22, v8, v17);
      if (!v20)
      {
        break;
      }

      v28 = v24;
      v27(v15, v23, v8);
      sub_1DD7190C8(v36, v37);
      sub_1DD6DDEDC();
      v29 = sub_1DD8750F0();
      v30 = *v26;
      v31 = sub_1DD6F4498();
      v30(v31);
      (v30)(v19, v8);
      if (v29)
      {
        v23 += v34;
        v22 += v34;
        v32 = v20-- == 1;
        v24 = v28;
        if (!v32)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_1DD6DFED0();
  }
}

void sub_1DD715EA8()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E3808(v1, v2);
  if (v13 && v0 && v3 != v4)
  {
    v5 = (v4 + 64);
    v6 = (v3 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v5 - 4);
      v12 = *(v5 - 1);
      v11 = *v5;
      v13 = *(v6 - 4) == *(v5 - 4) && *(v6 - 3) == *(v5 - 3);
      if (v13)
      {
        if (v7 != v10)
        {
          break;
        }
      }

      else if ((sub_1DD875A30() & 1) == 0 || v7 != v10)
      {
        break;
      }

      if (v9)
      {
        if (!v11)
        {
          break;
        }

        if (v8 != v12 || v9 != v11)
        {
          sub_1DD6DDEFC();
          sub_1DD6E1BC4();
          if ((sub_1DD875A30() & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v11)
      {
        break;
      }

      v6 += 5;
      v5 += 5;
      --v0;
    }

    while (v0);
  }

  sub_1DD6DFED0();
}

void sub_1DD715F90()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 64);
    v4 = (v1 + 64);
    do
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v14 = *v4;
      v10 = *(v3 - 4) == *(v4 - 4) && *(v3 - 3) == *(v4 - 3);
      if (!v10 && (sub_1DD6FF778() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      sub_1DD71435C();
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  sub_1DD6E58C4();
}

uint64_t sub_1DD71612C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E3808(a1, a2);
  if (v11)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 56);
    for (i = (v4 + 56); ; i += 4)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(v5 - 3) == *(i - 3) && *(v5 - 2) == *(i - 2);
      if (!v11 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      if (v7 != v9 || v8 != v10)
      {
        sub_1DD6DDEFC();
        if ((sub_1DD875A30() & 1) == 0)
        {
          break;
        }
      }

      v5 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7161EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 80)
    {
      memcpy(__dst, v3, 0x49uLL);
      memcpy(v9, v3, 0x49uLL);
      memcpy(v11, i, 0x49uLL);
      memcpy(__src, i, 0x49uLL);
      sub_1DD719018(__dst, v7);
      sub_1DD719018(v11, v7);
      v5 = static ResponseParameter.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x49uLL);
      sub_1DD719074(v12);
      memcpy(v13, v9, 0x49uLL);
      sub_1DD719074(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 80;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD7162FC()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v120 = type metadata accessor for AttributedValue(0);
  v4 = sub_1DD6E046C(v120);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEC0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v110 - v12;
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    sub_1DD6DE1EC(v11);
    v16 = v3 + v15;
    v17 = v1 + v15;
    v113 = *(v18 + 72);
    v116 = v9;
    v117 = v13;
    while (1)
    {
      sub_1DD7191C0();
      sub_1DD7191C0();
      sub_1DD7029A8();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
LABEL_38:
        sub_1DD719218(v9, type metadata accessor for AttributedValue);
        v108 = sub_1DD6DEA04();
        sub_1DD719218(v108, v109);
        goto LABEL_39;
      }

      v19 = *(v120 + 20);
      v20 = &v13[v19];
      v22 = *&v13[v19];
      v21 = *(v20 + 1);
      v23 = *(v20 + 2);
      v24 = *(v20 + 3);
      v25 = v20[32];
      v26 = v9 + v19;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v121 = *(v26 + 24);
      v30 = *(v26 + 32);
      if (v23 != 1)
      {
        break;
      }

      v119 = v14;
      v112 = v17;
      v31 = v29;
      sub_1DD703958(v22, v21, 1);
      if (v31 != 1)
      {
        v87 = v28;
        v88 = sub_1DD6E9594();
        v110 = v89;
        sub_1DD703958(v88, v90, v89);
        v82 = 1;
        v81 = v87;
        v84 = v110;
        goto LABEL_33;
      }

      v32 = sub_1DD6E9594();
      sub_1DD703958(v32, v33, v34);
      v35 = sub_1DD6FAA88();
      sub_1DD70148C(v35, v36, 1);
      sub_1DD6E5D58();
      v9 = v116;
      sub_1DD719218(v116, v37);
      v13 = v117;
      v38 = sub_1DD6DEA04();
      sub_1DD719218(v38, v39);
      v17 = v112;
      v14 = v119;
LABEL_27:
      v17 += v113;
      v16 += v113;
      if (!--v14)
      {
        goto LABEL_39;
      }
    }

    if (v29 == 1)
    {
      v81 = v28;
      v82 = v23;
      v83 = *(v26 + 32);
      sub_1DD703958(v22, v21, v23);
      v84 = 1;
      sub_1DD703958(v81, v27, 1);
      v85 = sub_1DD6FAA88();
      sub_1DD703958(v85, v86, v82);

LABEL_33:
      v91 = sub_1DD6FAA88();
      sub_1DD70148C(v91, v92, v82);
      v93 = v81;
      v94 = v27;
      v95 = v84;
      goto LABEL_37;
    }

    if (v22 != v28)
    {
      v96 = *(v26 + 32);
LABEL_35:
      v97 = v23;
LABEL_36:
      v120 = v23;
      v98 = v22;
      v99 = v22;
      v100 = v21;
      sub_1DD703958(v99, v21, v97);
      sub_1DD6E9594();
      sub_1DD6FF964();
      sub_1DD703958(v101, v102, v103);
      sub_1DD703958(v98, v100, v97);
      sub_1DD6FAD88();
      sub_1DD70148C(v104, v105, v106);
      v107 = v120;

      v93 = v98;
      v94 = v100;
      v95 = v107;
LABEL_37:
      sub_1DD70148C(v93, v94, v95);
      v9 = v116;
      goto LABEL_38;
    }

    v118 = v24;
    v114 = v21;
    v115 = v22;
    v111 = v28;
    if (v23)
    {
      if (!v29)
      {
        goto LABEL_35;
      }

      LODWORD(v119) = v30;
      v40 = v21 == v27 && v23 == v29;
      v41 = v23;
      if (!v40)
      {
        v110 = v29;
        v42 = v25;
        LODWORD(v112) = sub_1DD875A30();
        sub_1DD700D18();
        sub_1DD703958(v43, v44, v45);
        sub_1DD6E9594();
        sub_1DD6FF964();
        LOBYTE(v30) = v119;
        sub_1DD703958(v46, v47, v48);
        sub_1DD700D18();
        v49 = v28;
        sub_1DD703958(v50, v51, v52);
        sub_1DD70148C(v111, v27, v110);
        v53 = v112 & v42 & v30;
        if ((v112 & 1) == 0)
        {
          v9 = v116;
          goto LABEL_26;
        }

        v9 = v116;
        if (v42)
        {
LABEL_26:

          sub_1DD70148C(v115, v114, v41);
          sub_1DD6E5D58();
          sub_1DD719218(v9, v78);
          v13 = v117;
          v79 = sub_1DD6DEA04();
          sub_1DD719218(v79, v80);
          if ((v53 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_27;
        }

LABEL_24:
        if ((v30 & 1) == 0)
        {
          v53 = v118 == v49;
        }

        goto LABEL_26;
      }

      v67 = v21;
      sub_1DD700D18();
      v60 = v68;
      sub_1DD703958(v69, v70, v71);
      sub_1DD6E0F70();
      sub_1DD6FF964();
      LOBYTE(v30) = v119;
      sub_1DD703958(v72, v73, v74);
      sub_1DD700D18();
      v49 = v28;
      sub_1DD703958(v75, v76, v77);
      v64 = v111;
      v65 = v67;
      v66 = v41;
    }

    else
    {
      if (v29)
      {
        v97 = 0;
        goto LABEL_36;
      }

      v119 = v14;
      v54 = v17;
      v55 = v16;
      v56 = v27;
      v57 = v22;
      v58 = v22;
      v41 = 0;
      v59 = v21;
      v60 = v25;
      sub_1DD703958(v58, v21, 0);
      sub_1DD6FF964();
      sub_1DD703958(v61, v62, v63);
      v49 = v28;
      sub_1DD703958(v57, v59, 0);
      v64 = v111;
      v65 = v56;
      v16 = v55;
      v17 = v54;
      v14 = v119;
      v66 = 0;
    }

    sub_1DD70148C(v64, v65, v66);
    v53 = v60 & v30;
    v9 = v116;
    if (v60)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_39:
  sub_1DD6DFED0();
}

uint64_t sub_1DD716910(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E8860(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      v11 = 1;
    }

    else
    {
      v6 = (v3 + 32);
      v7 = (v4 + 32);
      do
      {
        v9 = *v6++;
        v8 = v9;
        v10 = *v7++;
        v11 = sub_1DD71698C(v8, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1DD71698C(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E8860(a1, a2);
  if (!v12)
  {
    return 0;
  }

  if (!v2 || result == v4)
  {
    return 1;
  }

  v5 = 0;
  v30 = result + 32;
  v6 = v4 + 32;
  while (v5 != v2)
  {
    v7 = *(v30 + 8 * v5);
    v8 = *(v6 + 8 * v5);
    v9 = *(v7 + 16);
    v10 = *(v8 + 16);
    v11 = v9 == v10;
    if (v9 != v10)
    {
      return 0;
    }

    if (v9)
    {
      v12 = v7 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = 0;
      while (v9)
      {
        result = *(v7 + v13 + 32);
        v14 = *(v7 + v13 + 48);
        v16 = *(v7 + v13 + 56);
        v15 = *(v7 + v13 + 64);
        v17 = *(v7 + v13 + 72);
        v18 = *(v8 + v13 + 48);
        v20 = *(v8 + v13 + 56);
        v19 = *(v8 + v13 + 64);
        v21 = *(v8 + v13 + 72);
        if (result == *(v8 + v13 + 32) && *(v7 + v13 + 40) == *(v8 + v13 + 40))
        {
          if (v14 != v18 || v16 != v20 || v15 != v19 || v17 != v21)
          {
            return 0;
          }
        }

        else
        {
          v23 = sub_1DD875A30();
          result = 0;
          if ((v23 & 1) == 0)
          {
            return result;
          }

          v24 = v14 == v18 && v16 == v20;
          v25 = v24 && v15 == v19;
          if (!v25 || v17 != v21)
          {
            return result;
          }
        }

        v13 += 48;
        if (!--v9)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      break;
    }

LABEL_43:
    ++v5;
    result = v11;
    if (v5 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD716AF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      sub_1DD6E1F34();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = *(v3 + v7 + 48);
          v10 = *(v3 + v7 + 56);
          v9 = *(v3 + v7 + 64);
          v11 = *(v3 + v7 + 72);
          v12 = *(v2 + v7 + 48);
          v14 = *(v2 + v7 + 56);
          v13 = *(v2 + v7 + 64);
          v15 = *(v2 + v7 + 72);
          if (*(v3 + v7 + 32) == *(v2 + v7 + 32) && *(v3 + v7 + 40) == *(v2 + v7 + 40))
          {
            if (v8 != v12 || v10 != v14 || v9 != v13 || v11 != v15)
            {
              return;
            }
          }

          else
          {
            if ((sub_1DD875A30() & 1) == 0)
            {
              return;
            }

            v17 = v8 == v12 && v10 == v14;
            v18 = v17 && v9 == v13;
            if (!v18 || v11 != v15)
            {
              return;
            }
          }

          v7 += 48;
          --v4;
        }

        while (v4);
      }
    }
  }
}

void sub_1DD716BF4()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16))
  {
    if (v2)
    {
      v3 = v1;
      v4 = v0;
      if (v0 != v1)
      {
        sub_1DD718FBC();
        v5 = (v4 + 40);
        v6 = (v3 + 40);
        do
        {
          v7 = *(v5 - 1);
          v8 = *(v6 - 1);
          v9 = *v6;
          if (*v5)
          {
            sub_1DD719000(v7);
            sub_1DD719000(v8);
            sub_1DD719000(v7);
            v10 = v7;
          }

          else
          {
            sub_1DD719000(v8);
            sub_1DD719000(v7);
            v10 = sub_1DD874670();
          }

          sub_1DD719000(v8);
          if (v9)
          {
            v11 = v8;
          }

          else
          {
            v11 = sub_1DD874670();
            sub_1DD71900C(v8);
          }

          v12 = sub_1DD8755A0();

          sub_1DD71900C(v8);
          sub_1DD71900C(v7);
          if ((v12 & 1) == 0)
          {
            break;
          }

          v5 += 16;
          v6 += 16;
          sub_1DD6E6314();
        }

        while (!v13);
      }
    }
  }

  sub_1DD6E58C4();
}

void sub_1DD716D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = 0;
    v24[1] = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1DD7191C0();
      if (v13 == v12)
      {
        break;
      }

      sub_1DD7191C0();
      static StatementOutcome.== infix(_:_:)();
      if ((v15 & 1) == 0 || (v16 = *(v4 + 20), v17 = *&v11[v16], v18 = *&v7[v16], v19 = *(v17 + 16), v19 != *(v18 + 16)))
      {
LABEL_23:
        sub_1DD719218(v7, type metadata accessor for MessagePayload.ExternalAgentOutcome);
        sub_1DD719218(v11, type metadata accessor for MessagePayload.ExternalAgentOutcome);
        return;
      }

      if (v19)
      {
        v20 = v17 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v17 + 40);
        v22 = (v18 + 40);
        while (v19)
        {
          v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
          if (!v23 && (sub_1DD875A30() & 1) == 0)
          {
            goto LABEL_23;
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      ++v13;
      sub_1DD719218(v7, type metadata accessor for MessagePayload.ExternalAgentOutcome);
      sub_1DD719218(v11, type metadata accessor for MessagePayload.ExternalAgentOutcome);
      if (v13 == v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1DD71705C()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6F09D0();
  v5 = type metadata accessor for ResponseGenerationOverrides_Rule(v4);
  v6 = sub_1DD6E046C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEC0();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6EED34();
  if (v14 && v3 && v2 != v0)
  {
    sub_1DD6DE1EC(v13);
    v16 = v2 + v15;
    v17 = v0 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      sub_1DD6E0F70();
      sub_1DD7191C0();
      sub_1DD7191C0();
      if ((sub_1DD713F30(*v1, *v11) & 1) == 0 || (sub_1DD713F30(v1[1], v11[1]) & 1) == 0 || (sub_1DD713F30(v1[2], v11[2]) & 1) == 0 || (sub_1DD713F30(v1[3], v11[3]) & 1) == 0)
      {
        break;
      }

      v20 = *(v5 + 32);
      sub_1DD874910();
      sub_1DD6E1274();
      sub_1DD7190C8(&qword_1ECD0E2C8, v21);
      v22 = sub_1DD7192BC();
      sub_1DD719218(v11, type metadata accessor for ResponseGenerationOverrides_Rule);
      v23 = sub_1DD6FAA88();
      sub_1DD719218(v23, v24);
      if (v22)
      {
        v17 += v19;
        v16 += v19;
        sub_1DD6E6314();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    sub_1DD719218(v11, type metadata accessor for ResponseGenerationOverrides_Rule);
    v25 = sub_1DD6DEA04();
    sub_1DD719218(v25, v26);
  }

LABEL_16:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

uint64_t sub_1DD7172B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E69467369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001DD8B47C0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7173D4(unsigned __int8 a1)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](a1);
  return sub_1DD875B60();
}

uint64_t sub_1DD71741C(char a1)
{
  if (!a1)
  {
    return 0x6C616E69467369;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x656D6F6374756FLL;
}

uint64_t sub_1DD717478()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

uint64_t sub_1DD7174C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7172B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7174EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7173CC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD717514(uint64_t a1)
{
  v2 = sub_1DD717DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD717550(uint64_t a1)
{
  v2 = sub_1DD717DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0E180, &qword_1DD876ED8);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *v0;
  v24 = *(v0 + 2);
  v25 = *(v0 + 1);
  v11 = v0[24];
  v23 = *(v0 + 4);
  v12 = v3[4];
  sub_1DD6DF224(v3, v3[3]);
  sub_1DD717DE0();
  sub_1DD875BB0();
  sub_1DD875980();
  if (!v1)
  {
    sub_1DD6E5EF8();
    sub_1DD711154(v13, v14, v11, v15);
    sub_1DD717E34();
    sub_1DD8759D0();
    sub_1DD6DE1D4();
    sub_1DD711154(v16, v17, v18, v19);
    sub_1DD710A9C(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD717F24(&qword_1ECD0E1A0, &qword_1EE0180C8);
    sub_1DD8759D0();
  }

  v20 = *(v6 + 8);
  v21 = sub_1DD6DEA04();
  v22(v21);
  sub_1DD6E0C78();
}

void SiriXResponse.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0E1A8, &qword_1DD876EE8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = v2[4];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD717DE0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    LOBYTE(v21) = 0;
    v14 = sub_1DD875880();
    sub_1DD717ED0();
    sub_1DD8758D0();
    v15 = v21;
    v20 = v22;
    v24 = v23;
    sub_1DD710A9C(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD717F24(&qword_1ECD0E1B8, &qword_1EE0180C0);
    sub_1DD8758D0();
    (*(v7 + 8))(v12, v5);
    v17 = v20;
    v16 = v21;
    *v4 = v14 & 1;
    *(v4 + 8) = v15;
    *(v4 + 16) = v17;
    *(v4 + 24) = v24;
    *(v4 + 32) = v16;
    sub_1DD6E5EF8();
    sub_1DD711154(v15, v17, v24, v18);

    sub_1DD6E1EC8(v2);
    sub_1DD6DE1D4();
    sub_1DD711154(v15, v17, v24, v19);
  }

  sub_1DD6E0C78();
}

void sub_1DD717A88(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_1DD717BF4(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1DD717BF4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1DD874640();
  v8 = result;
  if (result)
  {
    result = sub_1DD874660();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1DD874650();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

void sub_1DD717CAC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1DD6E0D14();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1DD717CE4()
{
  result = qword_1ECD0E160;
  if (!qword_1ECD0E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E160);
  }

  return result;
}

unint64_t sub_1DD717D38()
{
  result = qword_1ECD0F4C0;
  if (!qword_1ECD0F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4C0);
  }

  return result;
}

unint64_t sub_1DD717D8C()
{
  result = qword_1ECD0E170;
  if (!qword_1ECD0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E170);
  }

  return result;
}

unint64_t sub_1DD717DE0()
{
  result = qword_1ECD0E188;
  if (!qword_1ECD0E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E188);
  }

  return result;
}

unint64_t sub_1DD717E34()
{
  result = qword_1ECD0E190;
  if (!qword_1ECD0E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E190);
  }

  return result;
}

uint64_t sub_1DD717E88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DD717ED0()
{
  result = qword_1ECD0E1B0;
  if (!qword_1ECD0E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1B0);
  }

  return result;
}

uint64_t sub_1DD717F24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD7190C8(a2, type metadata accessor for MessagePayload.ExternalAgentOutcome);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD717FC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1DD717FF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD718004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DD718044(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_1DD718098(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD7180AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FB && *(a1 + 17))
    {
      v2 = *a1 + 1018;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3FA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD7180F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 16) = 0;
    *result = a2 - 1019;
    *(result + 8) = 0;
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1DD718158(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t sub_1DD718180(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD7181CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriXResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriXResponse.SiriXOutputCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXResponse.SiriXOutputCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD7184C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD718574()
{
  result = qword_1ECD0E1C0;
  if (!qword_1ECD0E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1C0);
  }

  return result;
}

unint64_t sub_1DD7185CC()
{
  result = qword_1ECD0E1C8;
  if (!qword_1ECD0E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1C8);
  }

  return result;
}

unint64_t sub_1DD718624()
{
  result = qword_1ECD0E1D0;
  if (!qword_1ECD0E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1D0);
  }

  return result;
}

unint64_t sub_1DD71867C()
{
  result = qword_1ECD0E1D8;
  if (!qword_1ECD0E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1D8);
  }

  return result;
}

unint64_t sub_1DD7186D4()
{
  result = qword_1ECD0E1E0;
  if (!qword_1ECD0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1E0);
  }

  return result;
}

unint64_t sub_1DD71872C()
{
  result = qword_1ECD0E1E8;
  if (!qword_1ECD0E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1E8);
  }

  return result;
}

unint64_t sub_1DD718784()
{
  result = qword_1ECD0E1F0;
  if (!qword_1ECD0E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1F0);
  }

  return result;
}

unint64_t sub_1DD7187DC()
{
  result = qword_1ECD0E1F8;
  if (!qword_1ECD0E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1F8);
  }

  return result;
}

unint64_t sub_1DD718834()
{
  result = qword_1ECD0E200;
  if (!qword_1ECD0E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E200);
  }

  return result;
}

unint64_t sub_1DD71888C()
{
  result = qword_1ECD0E208;
  if (!qword_1ECD0E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E208);
  }

  return result;
}

unint64_t sub_1DD7188E4()
{
  result = qword_1ECD0E210;
  if (!qword_1ECD0E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E210);
  }

  return result;
}

unint64_t sub_1DD71893C()
{
  result = qword_1ECD0E218;
  if (!qword_1ECD0E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E218);
  }

  return result;
}

unint64_t sub_1DD718994()
{
  result = qword_1ECD0E220;
  if (!qword_1ECD0E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E220);
  }

  return result;
}

unint64_t sub_1DD7189EC()
{
  result = qword_1ECD0E228;
  if (!qword_1ECD0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E228);
  }

  return result;
}

unint64_t sub_1DD718A44()
{
  result = qword_1ECD0E230;
  if (!qword_1ECD0E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E230);
  }

  return result;
}

unint64_t sub_1DD718A9C()
{
  result = qword_1ECD0E238;
  if (!qword_1ECD0E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E238);
  }

  return result;
}

unint64_t sub_1DD718AF4()
{
  result = qword_1ECD0E240;
  if (!qword_1ECD0E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E240);
  }

  return result;
}

unint64_t sub_1DD718B4C()
{
  result = qword_1ECD0E248;
  if (!qword_1ECD0E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E248);
  }

  return result;
}

unint64_t sub_1DD718BA4()
{
  result = qword_1ECD0E250;
  if (!qword_1ECD0E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E250);
  }

  return result;
}

unint64_t sub_1DD718BFC()
{
  result = qword_1ECD0E258;
  if (!qword_1ECD0E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E258);
  }

  return result;
}

unint64_t sub_1DD718C54()
{
  result = qword_1ECD0E260;
  if (!qword_1ECD0E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E260);
  }

  return result;
}

unint64_t sub_1DD718CAC()
{
  result = qword_1ECD0E268;
  if (!qword_1ECD0E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E268);
  }

  return result;
}

unint64_t sub_1DD718D04()
{
  result = qword_1ECD0E270;
  if (!qword_1ECD0E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E270);
  }

  return result;
}

unint64_t sub_1DD718D5C()
{
  result = qword_1ECD0E278;
  if (!qword_1ECD0E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E278);
  }

  return result;
}

unint64_t sub_1DD718DB4()
{
  result = qword_1ECD0E280;
  if (!qword_1ECD0E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E280);
  }

  return result;
}

unint64_t sub_1DD718E0C()
{
  result = qword_1ECD0E288;
  if (!qword_1ECD0E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E288);
  }

  return result;
}

unint64_t sub_1DD718E64()
{
  result = qword_1ECD0E290;
  if (!qword_1ECD0E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E290);
  }

  return result;
}

uint64_t sub_1DD718EB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1DD718F34(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD718F6C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD718FBC()
{
  result = qword_1ECD0E2A8;
  if (!qword_1ECD0E2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD0E2A8);
  }

  return result;
}

uint64_t sub_1DD7190C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD719110()
{
  sub_1DD6E1F34();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6DDEFC();
  v7(v6);
  return v0;
}

uint64_t sub_1DD719168()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t sub_1DD7191C0()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t sub_1DD719218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD719298()
{
  v2 = *(v0 - 120);

  return sub_1DD875910();
}

uint64_t sub_1DD7192BC()
{

  return sub_1DD8750F0();
}

uint64_t AssetInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetInfo.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for AssetInfo() + 24));
}

void sub_1DD719340()
{
  sub_1DD719488(319, &qword_1EE015D98, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1DD719424();
    if (v1 <= 0x3F)
    {
      sub_1DD719488(319, &qword_1EE0139A8, sub_1DD7194DC);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD719424()
{
  if (!qword_1EE013A50)
  {
    sub_1DD717E88(&qword_1ECD0E310, &unk_1DD878260);
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE013A50);
    }
  }
}

void sub_1DD719488(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD8755C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DD7194DC()
{
  result = qword_1EE0139B0;
  if (!qword_1EE0139B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0139B0);
  }

  return result;
}

uint64_t sub_1DD719568(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = sub_1DD874ED0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD874BF0();
  v10 = sub_1DD874EC0();
  v11 = sub_1DD875500();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DD6DC000, v10, v11, a4, v12, 2u);
    MEMORY[0x1E12B5DE0](v12, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1DD7196CC()
{
  sub_1DD719E9C();
  v0 = sub_1DD7197D4();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 bundlePath];
    v3 = sub_1DD875140();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  qword_1EE015AB8 = v3;
  unk_1EE015AC0 = v5;
}

uint64_t static AssetsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE015AB0 != -1)
  {
    swift_once();
  }

  v2 = unk_1EE015AC0;
  *a1 = qword_1EE015AB8;
  a1[1] = v2;
}

id sub_1DD7197D4()
{
  v0 = sub_1DD875110();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t AssetsManager.info(for:locale:in:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  sub_1DD874830();
  sub_1DD719D30();
  sub_1DD8755E0();

  AssetsManager.info(for:locale:in:)();
}

unint64_t sub_1DD71992C()
{
  result = qword_1EE015DA0;
  if (!qword_1EE015DA0)
  {
    sub_1DD874740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015DA0);
  }

  return result;
}

uint64_t sub_1DD719984(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DD7199D0(a1, a2);
  sub_1DD719AE8(&unk_1F58CDDB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DD7199D0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DD875200())
  {
    result = sub_1DD719BCC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD8756A0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DD875750();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD719AE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1DD719C3C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DD719BCC(uint64_t a1, uint64_t a2)
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

  sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DD719C3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1DD719D30()
{
  result = qword_1EE013A60;
  if (!qword_1EE013A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A60);
  }

  return result;
}

uint64_t sub_1DD719D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD719DE8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD719E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DD719E9C()
{
  result = qword_1EE013988;
  if (!qword_1EE013988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE013988);
  }

  return result;
}

void AssetFolderName.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      sub_1DD6E20F0();
      break;
  }
}

IntelligenceFlow::IntelligenceEngineAsset_optional __swiftcall IntelligenceEngineAsset.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A154(void *a1@<X8>)
{
  IntelligenceEngineAsset.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlow::AssetFolderName_optional __swiftcall AssetFolderName.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A1F8(void *a1@<X8>)
{
  AssetFolderName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlow::AssetsUsageKey_optional __swiftcall AssetsUsageKey.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t AssetsUsageKey.rawValue.getter()
{
  result = 0x75676E616C2E6561;
  switch(*v0)
  {
    case 1:
      result = 0x75676E616C2E6669;
      break;
    case 2:
      result = 0x75676E616C2E6772;
      break;
    case 3:
      result = 0x75676E616C2E6C6ELL;
      break;
    case 4:
      result = 0x73697373612E6C6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD71A314@<X0>(uint64_t *a1@<X8>)
{
  result = AssetsUsageKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligenceFlow::IntelligenceEngineAssetSet_optional __swiftcall IntelligenceEngineAssetSet.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A3B8(void *a1@<X8>)
{
  IntelligenceEngineAssetSet.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1DD71A3E4()
{
  result = qword_1ECD0E330;
  if (!qword_1ECD0E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E330);
  }

  return result;
}

unint64_t sub_1DD71A43C()
{
  result = qword_1ECD0E338;
  if (!qword_1ECD0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E338);
  }

  return result;
}

unint64_t sub_1DD71A494()
{
  result = qword_1ECD0E340;
  if (!qword_1ECD0E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E340);
  }

  return result;
}

unint64_t sub_1DD71A4EC()
{
  result = qword_1ECD0E348;
  if (!qword_1ECD0E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineAsset(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetFolderName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetsUsageKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineAssetSet(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD71A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    sub_1DD6DE1C4(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DD874FA0();
    sub_1DD6DE1C4(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    sub_1DD874FA0();
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for ClientAction(0);
    sub_1DD6DE1C4(v10);
    sub_1DD71AB3C(v9 + *(v11 + 72) * v8, a4);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    type metadata accessor for ClientAction(0);
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD71ABA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t IntelligenceFlowAssetsClient.__allocating_init(_:for:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  IntelligenceFlowAssetsClient.init(_:for:)(a1, a2, a3);
  return v6;
}

uint64_t IntelligenceFlowAssetsClient.init(_:for:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v131 = a2;
  v124 = a1;
  v4 = sub_1DD874ED0();
  v5 = sub_1DD6DDEAC(v4);
  v134 = v6;
  v135 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E09E0();
  v125 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  v16 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v115 - v18;
  v20 = sub_1DD874890();
  v21 = sub_1DD6DDEAC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v115 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v115 - v30;
  LOBYTE(aBlock[0]) = *a3;
  v136 = sub_1DD71B66C(aBlock);
  v32 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6FA7F8(&a3[*(v32 + 32)], v19);
  v33 = type metadata accessor for LocaleSettings(0);
  if (sub_1DD6E5ED0(v19, 1, v33) == 1)
  {
    v34 = v123;
    v35 = v134;

    sub_1DD6FC560(v19, &qword_1ECD0E358, &unk_1DD878670);
    sub_1DD874BF0();
    v36 = sub_1DD874EC0();
    v37 = sub_1DD8754E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DD6DC000, v36, v37, "Locale information missing from session configuration.", v38, 2u);
      sub_1DD6DE474();
    }

    swift_unknownObjectRelease();

    sub_1DD6E04A8();
    sub_1DD6EEE50(a3, v39);
    (*(v35 + 8))(v15, v135);
    v40 = MEMORY[0x1E69E7CC8];
    result = v34;
LABEL_52:
    *(result + 16) = v40;
  }

  else
  {
    v118 = v12;
    v119 = a3;
    v42 = *(v33 + 20);
    v133 = v23;
    v43 = *(v23 + 16);
    v43(v28, &v19[v42], v20);
    sub_1DD6EEE50(v19, type metadata accessor for LocaleSettings);
    v44 = v23 + 32;
    v45 = *(v23 + 32);
    v46 = v31;
    v132 = v31;
    v45(v31, v28, v20);
    v47 = swift_allocObject();
    *(v47 + 24) = v131;
    swift_unknownObjectWeakInit();
    v48 = v130;
    v43(v130, v46, v20);
    v49 = (*(v44 + 48) + 24) & ~*(v44 + 48);
    v50 = swift_allocObject();
    v51 = v136;
    *(v50 + 16) = v136;
    v45((v50 + v49), v48, v20);
    *(v50 + ((v25 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
    v53 = v51 + 64;
    v52 = *(v51 + 64);
    v54 = *(v51 + 32);
    sub_1DD6E51DC();
    v57 = v56 & v55;
    v59 = (v58 + 63) >> 6;
    v130 = v138;
    v131 = v50;
    v127 = v134 + 8;

    v60 = 0;
    v120 = MEMORY[0x1E69E7CC8];
    v122 = "anguage";
    *&v61 = 136315138;
    v121 = v61;
    v128 = "com.apple.if.planner.overrides";
    v129 = "com.apple.if.planner";
    v62 = v125;
    v126 = v20;
    v64 = v132;
    v63 = v133;
    if (v57)
    {
      goto LABEL_10;
    }

LABEL_6:
    while (1)
    {
      v65 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v65 >= v59)
      {
        swift_unknownObjectRelease();

        sub_1DD6E04A8();
        sub_1DD6EEE50(v119, v114);
        (*(v63 + 8))(v64, v20);

        result = v123;
        v40 = v120;
        goto LABEL_52;
      }

      v57 = *(v53 + 8 * v65);
      ++v60;
      if (v57)
      {
        v60 = v65;
        while (1)
        {
LABEL_10:
          v66 = *(*(v51 + 48) + (__clz(__rbit64(v57)) | (v60 << 6)));
          if (qword_1EE015AB0 != -1)
          {
            sub_1DD6E12C0();
            swift_once();
          }

          v67 = [objc_opt_self() sharedManager];
          LODWORD(v134) = v66;
          if (v66)
          {
            sub_1DD6ED538();
          }

          else
          {
            sub_1DD6E20F8();
            v69 = *(v68 - 256);
          }

          v57 &= v57 - 1;
          v70 = sub_1DD875110();

          v138[2] = sub_1DD71C8E8;
          v138[3] = v131;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v138[0] = sub_1DD71ABA0;
          v138[1] = &unk_1F58CF1D0;
          v71 = _Block_copy(aBlock);

          v72 = [v67 observeAssetSet:v70 queue:0 handler:v71];
          _Block_release(v71);

          if (v72)
          {
            v85 = v118;
            sub_1DD874BF0();
            v86 = sub_1DD874EC0();
            v87 = sub_1DD875500();
            v88 = os_log_type_enabled(v86, v87);
            v89 = v120;
            if (v88)
            {
              v90 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              aBlock[0] = v116;
              v117 = v90;
              *v90 = v121;
              if (v134)
              {
                sub_1DD6ED538();
                if (v93 == 1)
                {
                  v94 = v91;
                }

                else
                {
                  v94 = v92;
                }

                if (v93 == 1)
                {
                  v95 = v129;
                }

                else
                {
                  v95 = v128;
                }
              }

              else
              {
                v94 = sub_1DD6E20F8();
                v95 = *(v98 - 256);
              }

              v99 = sub_1DD6FD650(v94, v95 | 0x8000000000000000, aBlock);

              v100 = v117;
              *(v117 + 1) = v99;
              _os_log_impl(&dword_1DD6DC000, v86, v87, "Registered asset observer for asset set: %s", v100, 0xCu);
              sub_1DD6E1EC8(v116);
              sub_1DD6DE474();
              sub_1DD6DE474();

              sub_1DD6DE244();
              v97 = v118;
            }

            else
            {

              sub_1DD6DE244();
              v97 = v85;
            }

            v96(v97, v135);
            swift_unknownObjectRetain();
            swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v89;
            v101 = sub_1DD71C4F8(v134);
            if (__OFADD__(*(v89 + 16), (v102 & 1) == 0))
            {
              goto LABEL_54;
            }

            v103 = v101;
            v104 = v102;
            sub_1DD710A9C(&qword_1ECD0E360, &qword_1DD878680);
            if (sub_1DD875770())
            {
              v105 = v134;
              v106 = sub_1DD71C4F8(v134);
              v62 = v125;
              if ((v104 & 1) != (v107 & 1))
              {
                goto LABEL_56;
              }

              v103 = v106;
            }

            else
            {
              v62 = v125;
              v105 = v134;
            }

            v108 = aBlock[0];
            v120 = aBlock[0];
            if (v104)
            {
              v109 = *(aBlock[0] + 56);
              v110 = *(v109 + 8 * v103);
              *(v109 + 8 * v103) = v72;
              swift_unknownObjectRelease();
            }

            else
            {
              *(aBlock[0] + 8 * (v103 >> 6) + 64) |= 1 << v103;
              *(v108[6] + v103) = v105;
              *(v108[7] + 8 * v103) = v72;
              v111 = v108[2];
              v112 = __OFADD__(v111, 1);
              v113 = v111 + 1;
              if (v112)
              {
                goto LABEL_55;
              }

              v108[2] = v113;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DD874BF0();
            v73 = sub_1DD874EC0();
            v74 = sub_1DD8754E0();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              aBlock[0] = v76;
              *v75 = v121;
              if (v134)
              {
                sub_1DD6ED538();
                if (v79 == 1)
                {
                  v80 = v77;
                }

                else
                {
                  v80 = v78;
                }

                if (v79 == 1)
                {
                  v81 = v129;
                }

                else
                {
                  v81 = v128;
                }
              }

              else
              {
                v80 = sub_1DD6E20F8();
                v81 = *(v83 - 256);
              }

              v84 = sub_1DD6FD650(v80, v81 | 0x8000000000000000, aBlock);

              *(v75 + 4) = v84;
              _os_log_impl(&dword_1DD6DC000, v73, v74, "Unable to register asset observer for asset set: %s", v75, 0xCu);
              sub_1DD6E1EC8(v76);
              sub_1DD6DE474();
              sub_1DD6DE474();

              sub_1DD6DE244();
              v62 = v125;
            }

            else
            {

              sub_1DD6DE244();
            }

            v82(v62, v135);
          }

          v20 = v126;
          v64 = v132;
          v63 = v133;
          v51 = v136;
          if (!v57)
          {
            goto LABEL_6;
          }
        }
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = sub_1DD875A80();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD71B66C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1DD710A9C(&qword_1ECD0E370, &qword_1DD8786C8);
  sub_1DD71CA0C();

  return sub_1DD875080();
}

uint64_t sub_1DD71B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v5 = sub_1DD874890();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = sub_1DD874ED0();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  type metadata accessor for IntelligenceFlowAssetsClient();
  v20 = (v6 + 16);
  if (sub_1DD71BBD0(a1, a2))
  {
    sub_1DD874BF0();
    (*v20)(v12, a2, v5);
    v21 = sub_1DD874EC0();
    v22 = sub_1DD875500();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49[0] = v24;
      *v23 = 136315138;
      v25 = MEMORY[0x1E12B4290]();
      v45 = a2;
      v27 = v26;
      (*(v6 + 8))(v12, v5);
      v28 = sub_1DD6FD650(v25, v27, v49);
      a2 = v45;

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DD6DC000, v21, v22, "All required IF assets are available for : %s", v23, 0xCu);
      sub_1DD6E1EC8(v24);
      MEMORY[0x1E12B5DE0](v24, -1, -1);
      MEMORY[0x1E12B5DE0](v23, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    (*(v46 + 8))(v19, v47);
    v37 = v48;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v39 = *(v37 + 24);
      ObjectType = swift_getObjectType();
      (*(v39 + 8))(a2, ObjectType, v39);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1DD874BF0();
    (*v20)(v9, a2, v5);
    v29 = sub_1DD874EC0();
    v30 = sub_1DD875500();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136315138;
      v33 = MEMORY[0x1E12B4290]();
      v45 = a2;
      v35 = v34;
      (*(v6 + 8))(v9, v5);
      v36 = sub_1DD6FD650(v33, v35, v49);
      a2 = v45;

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1DD6DC000, v29, v30, "Not all required IF assets are available for : %s", v31, 0xCu);
      sub_1DD6E1EC8(v32);
      MEMORY[0x1E12B5DE0](v32, -1, -1);
      MEMORY[0x1E12B5DE0](v31, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v46 + 8))(v16, v47);
    v41 = v48;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v42 = *(v41 + 24);
      v43 = swift_getObjectType();
      (*(v42 + 16))(a2, v43, v42);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1DD71BBD0(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_1DD874890();
  v4 = sub_1DD6DDEAC(v3);
  v81 = v5;
  v82 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v86 = v8;
  v80 = sub_1DD874ED0();
  v9 = sub_1DD6DDEAC(v80);
  v79 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDEE8();
  v83 = v13;
  v97 = type metadata accessor for AssetInfo();
  v14 = sub_1DD6DE1C4(v97);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E09E0();
  v88 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v76 - v19;
  v20 = sub_1DD710A9C(&qword_1ECD0E318, &qword_1DD8786C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1DD6E09E0();
  v90 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v30 = a1 + 64;
  v29 = *(a1 + 64);
  v31 = *(a1 + 32);
  sub_1DD6E51DC();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;

  v38 = v34;
  v39 = 0;
  v87 = a1;
  v95 = v28;
  v89 = v25;
  v78 = a1 + 64;
  v77 = v36;
  do
  {
LABEL_2:
    if (!v38)
    {
      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v40 >= v36)
        {

          return 1;
        }

        v38 = *(v30 + 8 * v40);
        ++v39;
        if (v38)
        {
          v39 = v40;
          goto LABEL_7;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_7:
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }

    v41 = v38;
    result = sub_1DD71C4F8(*(*(a1 + 48) + (__clz(__rbit64(v38)) | (v39 << 6))));
    if ((v42 & 1) == 0)
    {
      goto LABEL_39;
    }

    v38 = (v41 - 1) & v41;
    v43 = *(*(a1 + 56) + 8 * result);
    v94 = *(v43 + 16);
  }

  while (!v94);
  v84 = v39;
  v85 = (v41 - 1) & v41;
  v44 = qword_1EE015AB0;

  if (v44 != -1)
  {
    sub_1DD6E12C0();
    result = swift_once();
  }

  v45 = 0;
  v46 = unk_1EE015AC0;
  v92 = v43;
  v93 = qword_1EE015AB8;
  while (1)
  {
    if (v45 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v47 = *(v43 + v45 + 32);
    v48 = sub_1DD874830();
    v50 = v49;
    v51 = v93;
    v100 = v93;
    v101 = v46;
    v99 = v47;
    AssetsManager.sideloadedAsset(for:locale:in:)();
    sub_1DD6F3068(v25);
    if (v52)
    {
      sub_1DD6FC560(v25, &qword_1ECD0E318, &qword_1DD8786C0);
      v100 = v51;
      v101 = v46;
      v99 = v47;
      v53 = v90;
      AssetsManager.sideloadedAsset(for:locale:in:)();
      sub_1DD6F3068(v53);
      if (v52)
      {
        sub_1DD6FC560(v53, &qword_1ECD0E318, &qword_1DD8786C0);
        v100 = v51;
        v101 = v46;
        v99 = v47;
        v98[1] = 0x2010100010101uLL >> (8 * v47);
        v98[0] = v47;
        static AssetUtils.getUsages(for:locale:)(v98, v48, v50);
        v55 = v95;
        AssetsManager.uafAsset(for:set:usages:)();
      }

      else
      {

        v56 = v88;
        sub_1DD719D84(v53, v88);
        v55 = v95;
        sub_1DD719D84(v56, v95);
        sub_1DD6DDF20();
      }

      v25 = v89;
      v43 = v92;
    }

    else
    {

      v54 = v91;
      sub_1DD719D84(v25, v91);
      v55 = v95;
      sub_1DD719D84(v54, v95);
      sub_1DD6DDF20();
    }

    sub_1DD6F3068(v55);
    if (v52)
    {
      break;
    }

    ++v45;
    result = sub_1DD6FC560(v55, &qword_1ECD0E318, &qword_1DD8786C0);
    if (v94 == v45)
    {

      a1 = v87;
      v30 = v78;
      v36 = v77;
      v39 = v84;
      v38 = v85;
      goto LABEL_2;
    }
  }

  v57 = v47;

  sub_1DD874BF0();
  v59 = v81;
  v58 = v82;
  v60 = v86;
  (*(v81 + 16))(v86, v96, v82);
  v61 = sub_1DD874EC0();
  v62 = sub_1DD875500();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = 0xD00000000000001ELL;
    v64 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v64 = 136315394;
    v65 = "ceFlow-3505.5.1\n";
    switch(v57)
    {
      case 1:
        v65 = "com.apple.if.planner_overrides";
        v63 = 0xD00000000000002CLL;
        break;
      case 2:
        v65 = "nner.tool_retrieval.denylist";
        v63 = 0xD000000000000027;
        break;
      case 3:
        v65 = "nner.nlrouter.overrides";
        v63 = 0xD000000000000028;
        break;
      case 4:
        v65 = "nner.tool_retrieval.base";
        v63 = 0xD000000000000030;
        break;
      case 5:
        v65 = "neration.catalog";
        v63 = 0xD000000000000032;
        break;
      case 6:
        v65 = "neration.overrides";
        v63 = 0xD000000000000020;
        break;
      case 7:
        v65 = "l.data_detectors";
        v63 = 0xD00000000000002FLL;
        break;
      default:
        break;
    }

    v68 = sub_1DD6FD650(v63, v65 | 0x8000000000000000, &v100);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    v69 = v86;
    v70 = sub_1DD874830();
    v72 = v71;
    (*(v59 + 8))(v69, v58);
    v73 = sub_1DD6FD650(v70, v72, &v100);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_1DD6DC000, v61, v62, "Asset %s is not available for locale %s", v64, 0x16u);
    swift_arrayDestroy();
    sub_1DD6DE474();
    sub_1DD6DE474();

    v74 = sub_1DD6E5F28();
    v75(v74);
    v55 = v95;
  }

  else
  {

    (*(v59 + 8))(v60, v58);
    v66 = sub_1DD6E5F28();
    v67(v66);
  }

  sub_1DD6FC560(v55, &qword_1ECD0E318, &qword_1DD8786C0);
  return 0;
}