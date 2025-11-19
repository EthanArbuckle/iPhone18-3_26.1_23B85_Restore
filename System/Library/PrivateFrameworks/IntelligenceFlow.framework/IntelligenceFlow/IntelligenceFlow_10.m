uint64_t MessagePayload.ActionWillExecute.ParameterValue.value.getter()
{
  sub_1DD6FAAAC();
  sub_1DD8248D4();
  return sub_1DD6E5870();
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.promptSelection.getter()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(v1);
  result = sub_1DD6E0508(v2);
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.promptSelection.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  result = sub_1DD6E0508(v3);
  *v5 = v1;
  *(v5 + 8) = v2;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.promptSelection.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.init(value:promptSelection:)()
{
  sub_1DD826938();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v0 + *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0) + 20);
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1DD6EE7B0();
  sub_1DD6DDEFC();
  result = sub_1DD6E59B8();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t static MessagePayload.ActionWillExecute.ParameterValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  static MessagePayload.ActionWillExecute.ToolParameterValue.== infix(_:_:)();
  if (v2)
  {
    v3 = *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0) + 20);
    v4 = (v1 + v3);
    v5 = *(v1 + v3 + 8);
    v6 = (v0 + v3);
    v7 = *(v0 + v3 + 8);
    if (v5 == 255)
    {
      if (v7 == 255)
      {
        return 1;
      }
    }

    else if (v7 != 255)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v9 = *v4;
          v10 = *v6;
          if (v7 == 1 && v9 == v10)
          {
            return 1;
          }
        }

        else if (v7 == 2)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7B4D14(uint64_t a1)
{
  v2 = sub_1DD7FFF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4D50(uint64_t a1)
{
  v2 = sub_1DD7FFF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ParameterValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD116A8, &qword_1DD8896A8);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7FFF14();
  sub_1DD6E1808();
  v6 = sub_1DD825C8C();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(v6);
  sub_1DD825E48();
  sub_1DD6E1E84(v7);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = (v1 + *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0) + 20));
    v11 = *v8;
    v12 = *(v8 + 8);
    sub_1DD82682C();
    sub_1DD7FFF68();
    sub_1DD824DE8();
    sub_1DD875960();
  }

  v9 = sub_1DD6EFFB4();
  v10(v9);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ActionWillExecute.ParameterValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v3 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826244(v7);
  v8 = sub_1DD710A9C(&qword_1ECD116C8, &qword_1DD8896B0);
  sub_1DD6DDEAC(v8);
  v25 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E7258();
  v13 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E2220();
  v18 = v1 + *(v17 + 28);
  *v18 = 0;
  *(v18 + 8) = -1;
  v19 = v0[3];
  v20 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD7FFF14();
  sub_1DD7039CC();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825E48();
    sub_1DD6E1E84(v21);
    sub_1DD6F9A4C();
    sub_1DD826A34();
    sub_1DD8758D0();
    sub_1DD6EE7B0();
    sub_1DD6E59B8();
    sub_1DD6DEC54();
    sub_1DD7FFFBC();
    sub_1DD824848();
    sub_1DD875860();
    v22 = *(v25 + 8);
    v23 = sub_1DD825570();
    v24(v23);
    *v18 = v26;
    *(v18 + 8) = v27;
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionWillExecute.statementId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_1DD6EECF8(*(v1 + 2), a1);
}

void MessagePayload.ActionWillExecute.statementId.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 16);

  sub_1DD826EAC();
}

uint64_t MessagePayload.ActionWillExecute.toolId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ActionWillExecute.toolId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.bundleId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ActionWillExecute.bundleId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.deviceId.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ActionWillExecute.deviceId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.parameterValues.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.planEventId.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ActionWillExecute.planEventId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

__n128 MessagePayload.ActionWillExecute.init(statementId:toolId:bundleId:deviceId:isConfirmed:parameterValues:planEventId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  return result;
}

uint64_t static MessagePayload.ActionWillExecute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v23 = *(a2 + 80);
  v22 = *(a2 + 88);
  v24 = *(a2 + 96);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    v39 = *(a2 + 56);
    v40 = *(a1 + 56);
    v41 = *(a2 + 72);
    v42 = *(a1 + 72);
    v43 = *(a2 + 80);
    v44 = *(a1 + 80);
    v35 = *(a2 + 88);
    v36 = *(a1 + 88);
    v37 = *(a2 + 96);
    v38 = *(a1 + 96);
    v25 = *(a1 + 8) == *(a2 + 8) && v3 == v14;
    if (!v25 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(a2 + 56);
    v40 = *(a1 + 56);
    v41 = *(a2 + 72);
    v42 = *(a1 + 72);
    v43 = *(a2 + 80);
    v44 = *(a1 + 80);
    v35 = *(a2 + 88);
    v36 = *(a1 + 88);
    v37 = *(a2 + 96);
    v38 = *(a1 + 96);
    if (v14)
    {
      return 0;
    }
  }

  if (v4 != v15 || v6 != v17)
  {
    sub_1DD6E6218();
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v8 != v19)
    {
      sub_1DD6E8090();
      if ((sub_1DD875A30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v9)
  {
    v29 = v43;
    v30 = v44;
    if (!v20)
    {
      return 0;
    }

    if (v40 == v39 && v9 == v20)
    {
      if (v42 != v41)
      {
        return 0;
      }
    }

    else
    {
      sub_1DD875A30();
      result = sub_1DD6FE86C();
      if ((v32 & 1) == 0)
      {
        return result;
      }

      v30 = v44;
      v29 = v43;
      if ((v42 ^ v41))
      {
        return result;
      }
    }

    goto LABEL_39;
  }

  result = 0;
  v29 = v43;
  v30 = v44;
  if (!v20 && ((v42 ^ v41) & 1) == 0)
  {
LABEL_39:
    sub_1DD7A9018(v30, v29);
    if (v33)
    {
      if (v38)
      {
        if (v37)
        {
          v34 = v36 == v35 && v38 == v37;
          if (v34 || (sub_1DD875A30() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v37)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7B5694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD7B58D8(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      v3 = 0x656C646E7562;
      goto LABEL_6;
    case 3:
      v3 = 0x656369766564;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 4:
      result = 0x7269666E6F437369;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    case 6:
      result = 0x6E6576456E616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7B59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B5694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B59E4(uint64_t a1)
{
  v2 = sub_1DD800010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B5A20(uint64_t a1)
{
  v2 = sub_1DD800010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD116E0, &qword_1DD8896B8);
  sub_1DD6E49A8(v5);
  v29 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  v10 = *v1;
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v27 = *(v1 + 4);
  v28 = *(v1 + 3);
  v25 = *(v1 + 6);
  v26 = *(v1 + 5);
  v23 = *(v1 + 8);
  v24 = *(v1 + 7);
  v30 = *(v1 + 72);
  v20 = *(v1 + 11);
  v21 = *(v1 + 12);
  v22 = *(v1 + 10);
  v13 = v4[3];
  v14 = v4[4];
  sub_1DD6E49C0(v4);
  sub_1DD800010();
  sub_1DD826F3C();

  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD70396C();
  sub_1DD8259D4();
  sub_1DD8759D0();

  if (v2)
  {
    v15 = sub_1DD705C68();
    v16(v15, v0);
  }

  else
  {
    sub_1DD702E94();
    sub_1DD8257EC();
    sub_1DD875970();
    sub_1DD82673C(2);
    sub_1DD8257C8();
    sub_1DD8257EC();
    sub_1DD875920();
    sub_1DD82673C(3);
    sub_1DD825B90();
    sub_1DD8257EC();
    sub_1DD875920();
    sub_1DD825D44();
    sub_1DD875980();
    sub_1DD710A9C(&qword_1ECD116F0, &qword_1DD8896C0);
    sub_1DD800064();
    sub_1DD826748();
    sub_1DD82557C();
    sub_1DD825D44();
    sub_1DD8759D0();
    sub_1DD82673C(6);
    sub_1DD8257EC();
    sub_1DD875920();
    v17 = *(v29 + 8);
    v18 = sub_1DD825C74();
    v19(v18);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD11708, &qword_1DD8896C8);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v12 = v3[3];
  v13 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD800010();
  sub_1DD8256E0();
  sub_1DD8267F0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v3);
  }

  else
  {
    sub_1DD705D68();
    sub_1DD6F4360();
    sub_1DD8758D0();
    v33 = v38;
    sub_1DD825254(1);
    v31 = sub_1DD875870();
    v32 = v37;
    v34 = v14;
    sub_1DD825254(2);
    sub_1DD875820();
    v16 = v15;
    v30 = v5;
    sub_1DD825254(3);
    v17 = sub_1DD875820();
    v19 = v18;
    v29 = v17;
    sub_1DD825254(4);
    v49 = sub_1DD875880();
    sub_1DD710A9C(&qword_1ECD116F0, &qword_1DD8896C0);
    LOBYTE(v35[0]) = 5;
    sub_1DD800120();
    sub_1DD8265E4();
    sub_1DD8758D0();
    v28 = v36;
    v20 = v36;
    sub_1DD6FFDDC();
    sub_1DD8265E4();
    sub_1DD875820();
    sub_1DD826470();
    v22 = v21;
    v23 = v1;
    v25 = v24;
    (*(v8 + 8))(v23, v6);
    LODWORD(v35[0]) = v36;
    v35[1] = v37;
    v35[2] = v38;
    v35[3] = v31;
    v35[4] = v34;
    sub_1DD700C6C();
    v35[5] = v26;
    v35[6] = v16;
    v35[7] = v29;
    v35[8] = v19;
    LOBYTE(v35[9]) = v49;
    v35[10] = v36;
    v35[11] = v22;
    v35[12] = v25;
    memcpy(v30, v35, 0x68uLL);
    sub_1DD8001DC(v35, &v36);
    sub_1DD6E1EC8(v3);
    LODWORD(v36) = v28;
    v37 = v32;
    v38 = v33;
    v39 = v31;
    v40 = v34;
    sub_1DD700C6C();
    v41 = v27;
    v42 = v16;
    v43 = v29;
    v44 = v19;
    v45 = v49;
    v46 = v20;
    v47 = v22;
    v48 = v25;
    sub_1DD800214(&v36);
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD82758C();
  v32 = sub_1DD874FA0();
  v4 = sub_1DD6DDEAC(v32);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v9 = sub_1DD826C10();
  v10 = type metadata accessor for MessagePayload.ClientEffectResolved.Result(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD8264E0();
  v15 = sub_1DD710A9C(&qword_1ECD11720, &qword_1DD8896D0);
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E17C8();
  v20 = v0 + *(v19 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8258AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD824EA0();
    sub_1DD825980();
    sub_1DD6E5870();
    v21 = *v3;
    v22 = *(v3 + 8);
    sub_1DD825570();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v20;
      v24 = *(v20 + 8);
      if (v22)
      {
        v25 = v21;
        if ((v24 & 1) == 0)
        {
LABEL_5:
          v26 = v23;
          v27 = sub_1DD874670();
          v28 = sub_1DD826F6C();
          sub_1DD71900C(v28);
LABEL_13:
          sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
          sub_1DD826814();
          sub_1DD8755A0();

          sub_1DD71900C(v23);
          sub_1DD71900C(v21);
          goto LABEL_14;
        }
      }

      else
      {
        v31 = v21;
        v25 = sub_1DD874670();
        sub_1DD71900C(v21);
        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v27 = v23;
      goto LABEL_13;
    }

    sub_1DD71900C(v21);
  }

  else
  {
    sub_1DD824EA0();
    sub_1DD825974();
    sub_1DD6E5870();
    sub_1DD825570();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v1, v20, v32);
      sub_1DD6E0C60();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v29 = *(v6 + 8);
      v29(v1, v32);
      v30 = sub_1DD6DED5C();
      (v29)(v30);
LABEL_14:
      sub_1DD82579C();
      sub_1DD6E5ABC();
      goto LABEL_15;
    }

    (*(v6 + 8))(v2, v32);
  }

  sub_1DD824154(v0, &qword_1ECD11720);
LABEL_15:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7B649C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7B6560(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_1DD7B6594(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7B6624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B649C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B664C(uint64_t a1)
{
  v2 = sub_1DD800264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B6688(uint64_t a1)
{
  v2 = sub_1DD800264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B66C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B6594(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B66F4(uint64_t a1)
{
  v2 = sub_1DD80030C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B6730(uint64_t a1)
{
  v2 = sub_1DD80030C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B676C(uint64_t a1)
{
  v2 = sub_1DD8002B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B67A8(uint64_t a1)
{
  v2 = sub_1DD8002B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectResolved.Result.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v48 = sub_1DD710A9C(&qword_1ECD11728, &qword_1DD8896D8);
  sub_1DD6DDEAC(v48);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824C9C(v6, v45);
  v47 = sub_1DD710A9C(&qword_1ECD11730, &qword_1DD8896E0);
  sub_1DD6DDEAC(v47);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E27D4();
  v10 = sub_1DD874FA0();
  v11 = sub_1DD6DDEAC(v10);
  v46 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6ED3C0();
  v15 = type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
  v16 = sub_1DD6DE1C4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824734();
  v49 = sub_1DD710A9C(&qword_1ECD11738, &qword_1DD8896E8);
  sub_1DD6DDEAC(v49);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DDFE4();
  v24 = v2[3];
  v25 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD800264();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD824EA0();
  sub_1DD6E5870();
  sub_1DD6EFF74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v0;
    v27 = *(v0 + 8);
    sub_1DD6FF8F4();
    sub_1DD8002B8();
    sub_1DD82499C();
    sub_1DD875910();
    sub_1DD7FBFF4();
    sub_1DD8759D0();
    v28 = sub_1DD825068();
    v29(v28, v48);
    v30 = *(v20 + 8);
    v31 = sub_1DD6E5DB0();
    v32(v31);
    sub_1DD71900C(v26);
  }

  else
  {
    v33 = *(v46 + 32);
    v34 = sub_1DD8258AC();
    v35(v34);
    sub_1DD80030C();
    sub_1DD6E710C();
    sub_1DD875910();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v36);
    sub_1DD8276C8();
    sub_1DD826844();
    sub_1DD8759D0();
    v37 = sub_1DD825158();
    v38(v37);
    v39 = *(v46 + 8);
    v40 = sub_1DD701174();
    v41(v40);
    v42 = *(v20 + 8);
    v43 = sub_1DD6E0F98();
    v44(v43);
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientEffectResolved.Result.init(from:)()
{
  sub_1DD6DED2C();
  v90 = v1;
  v5 = v4;
  v83 = v6;
  v84 = sub_1DD710A9C(&qword_1ECD11758, &qword_1DD8896F0);
  sub_1DD6DDEAC(v84);
  v87 = v7;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E9924(v11, v80[0]);
  v12 = sub_1DD710A9C(&qword_1ECD11760, &qword_1DD8896F8);
  v13 = sub_1DD6DDEAC(v12);
  v85 = v14;
  v86 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6FF92C(v18, v80[0]);
  v19 = sub_1DD710A9C(&qword_1ECD11768, &qword_1DD889700);
  v20 = sub_1DD6DDEAC(v19);
  v88 = v21;
  v89 = v20;
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE340();
  v25 = type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
  v26 = sub_1DD8247B4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v80 - v31;
  v33 = v5[3];
  v34 = v5[4];
  sub_1DD6FE770(v5);
  sub_1DD800264();
  sub_1DD8256E0();
  v35 = v90;
  sub_1DD875B90();
  if (!v35)
  {
    v80[1] = v0;
    v81 = v3;
    v80[0] = v32;
    v82 = v2;
    v90 = v5;
    v36 = v89;
    v37 = sub_1DD875900();
    sub_1DD6ED750(v37, 0);
    sub_1DD827598();
    if (!v38)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v93 = *(v44 + v43);
      v47 = sub_1DD826480(v39, v40, v41, v42, v43);
      sub_1DD6ED830(v47);
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      v52 = v87;
      v53 = v81;
      if (v49 == v51 >> 1)
      {
        if (v93)
        {
          sub_1DD6FF8F4();
          sub_1DD8002B8();
          sub_1DD82499C();
          sub_1DD875800();
          sub_1DD7FC0CC();
          sub_1DD6F3128();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v69 = *(v52 + 8);
          v70 = sub_1DD825974();
          v71(v70);
          v72 = sub_1DD824838();
          v73(v72);
          v74 = v92;
          *v53 = v91;
          *(v53 + 8) = v74;
        }

        else
        {
          sub_1DD80030C();
          sub_1DD82499C();
          sub_1DD875800();
          sub_1DD874FA0();
          sub_1DD6E05D4();
          sub_1DD6E1E84(v66);
          v67 = v86;
          sub_1DD8758D0();
          v68 = v88;
          swift_unknownObjectRelease();
          v75 = sub_1DD825950();
          v76(v75, v67);
          v77 = *(v68 + 8);
          v78 = sub_1DD6E5DB0();
          v79(v78);
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD82474C();
        sub_1DD6E59B8();
        sub_1DD82474C();
        sub_1DD6E59B8();
        v65 = v90;
        goto LABEL_10;
      }
    }

    v54 = v82;
    sub_1DD875740();
    sub_1DD6E41BC();
    v56 = v55;
    v57 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v56 = v54;
    sub_1DD7039C0();
    sub_1DD875810();
    sub_1DD6DF100();
    v58 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v60 = *(v59 + 104);
    v61 = sub_1DD826A94();
    v62(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = sub_1DD825038();
    v64(v63, v36);
    v5 = v90;
  }

  v65 = v5;
LABEL_10:
  sub_1DD6E1EC8(v65);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientEffectResolved.init(stepId:result:)()
{
  sub_1DD8250F8();
  v0 = sub_1DD874820();
  sub_1DD6DF448(v0);
  v2 = *(v1 + 32);
  v3 = sub_1DD6E87AC();
  v4(v3);
  v5 = *(type metadata accessor for MessagePayload.ClientEffectResolved(0) + 20);
  sub_1DD82474C();
  return sub_1DD6E59B8();
}

void static MessagePayload.ClientEffectResolved.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v0 = type metadata accessor for MessagePayload.ClientEffectResolved(0);
    sub_1DD6F4D70(v0);

    static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)();
  }
}

uint64_t sub_1DD7B7254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7B731C(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x644970657473;
  }
}

uint64_t sub_1DD7B734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B7254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B7374(uint64_t a1)
{
  v2 = sub_1DD800360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B73B0(uint64_t a1)
{
  v2 = sub_1DD800360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectResolved.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v1 = sub_1DD710A9C(&qword_1ECD11770, &qword_1DD889708);
  sub_1DD6E49A8(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD800360();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v5);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v0)
  {
    v6 = *(type metadata accessor for MessagePayload.ClientEffectResolved(0) + 20);
    sub_1DD6DEC54();
    type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
    sub_1DD825E30();
    sub_1DD6E1E84(v7);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v8 = sub_1DD825168();
  v9(v8);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientEffectResolved.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v4 = sub_1DD826914(v3);
  v28 = type metadata accessor for MessagePayload.ClientEffectResolved.Result(v4);
  v5 = sub_1DD6DE1C4(v28);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();
  v30 = sub_1DD874820();
  v8 = sub_1DD6DDEAC(v30);
  v27 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v29 = v12;
  v31 = sub_1DD710A9C(&qword_1ECD11788, &qword_1DD889710);
  sub_1DD6DDEAC(v31);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = type metadata accessor for MessagePayload.ClientEffectResolved(0);
  v17 = sub_1DD6DE1C4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD702A64();
  v21 = v0[3];
  v20 = v0[4];
  sub_1DD6E7320(v0);
  sub_1DD800360();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v22);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    (*(v27 + 32))(v1, v29, v30);
    sub_1DD6DEC54();
    sub_1DD825E30();
    sub_1DD6E1E84(v23);
    sub_1DD705C1C();
    sub_1DD8758D0();
    v24 = sub_1DD6DED98();
    v25(v24, v31);
    v26 = *(v16 + 20);
    sub_1DD82474C();
    sub_1DD6E59B8();
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E1180();
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B7904()
{
  v0 = sub_1DD825000();
  v2 = *(v1(v0) + 20);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t MessagePayload.ClientActionResult.statementOutcome.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientActionResult(v0) + 20);
  sub_1DD824E88();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t MessagePayload.ClientActionResult.statementOutcome.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientActionResult(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientActionResult.outcome.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = v1 + *(type metadata accessor for MessagePayload.ClientActionResult(v2) + 20);
  return StatementOutcome.asActionOutcome.getter(v0);
}

uint64_t MessagePayload.ClientActionResult.outcome.setter()
{
  v1 = sub_1DD6DE290();
  v2 = *(type metadata accessor for MessagePayload.ClientActionResult(v1) + 20);
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  ActionOutcome.asStatementOutcome.getter((v0 + v2));
  sub_1DD6DE600();
  return sub_1DD6E5ABC();
}

void (*MessagePayload.ClientActionResult.outcome.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = sub_1DD82661C(a1);
  v3 = type metadata accessor for ActionOutcome(v2);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  *(v1 + 8) = sub_1DD7281CC(v5);
  v6 = sub_1DD7281CC(v5);
  *(v1 + 16) = v6;
  *(v1 + 24) = *(type metadata accessor for MessagePayload.ClientActionResult(0) + 20);
  StatementOutcome.asActionOutcome.getter(v6);
  return sub_1DD7B7AD8;
}

void sub_1DD7B7AD8(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1DD6ED118();
    sub_1DD6E5870();
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter((v5 + v2));
    sub_1DD6DE600();
    sub_1DD6E5ABC();
  }

  else
  {
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter((v5 + v2));
  }

  sub_1DD6E5ABC();
  free(v4);

  free(v3);
}

uint64_t sub_1DD7B7BF0()
{
  v0 = sub_1DD6F355C();
  v2 = *(v1(v0) + 24);
  return sub_1DD826384();
}

uint64_t MessagePayload.ClientActionResult.response.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientActionResult(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientActionResult.init(eventId:statementOutcome:response:)()
{
  sub_1DD824C64();
  v1 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v2 = *(v1 + 24);
  v3 = type metadata accessor for ResponseManifest(0);
  sub_1DD6DEA4C(v0 + v2, v4, v5, v3);
  v6 = sub_1DD874820();
  sub_1DD6DF448(v6);
  v8 = *(v7 + 32);
  v9 = sub_1DD6E0C60();
  v10(v9);
  v11 = *(v1 + 20);
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  return sub_1DD807414();
}

uint64_t MessagePayload.ClientActionResult.init(eventId:outcome:response:)()
{
  sub_1DD824C64();
  v1 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v2 = *(v1 + 24);
  v3 = type metadata accessor for ResponseManifest(0);
  sub_1DD6DEA4C(v0 + v2, v4, v5, v3);
  v6 = sub_1DD874820();
  sub_1DD6DF448(v6);
  v8 = *(v7 + 32);
  v9 = sub_1DD6E0C60();
  v10(v9);
  ActionOutcome.asStatementOutcome.getter((v0 + *(v1 + 20)));
  sub_1DD6DE600();
  sub_1DD6E5ABC();
  return sub_1DD807414();
}

void static MessagePayload.ClientActionResult.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = type metadata accessor for ResponseManifest(0);
  v4 = sub_1DD8247B4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6ED3C0();
  v7 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD82660C();
  v11 = sub_1DD710A9C(&qword_1ECD117A0, &qword_1DD889720);
  sub_1DD6DE1C4(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD8265FC();
  sub_1DD6DDEDC();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v15 = type metadata accessor for MessagePayload.ClientActionResult(0);
    sub_1DD826B0C(v15);
    static StatementOutcome.== infix(_:_:)();
    if (v16)
    {
      v17 = *(v2 + 24);
      v18 = *(v11 + 48);
      sub_1DD82598C();
      sub_1DD700E60();
      sub_1DD82598C();
      sub_1DD700E60();
      sub_1DD6DE1FC(v0, 1, v1);
      if (!v19)
      {
        sub_1DD6E58E0();
        sub_1DD700E60();
        sub_1DD6DE1FC(v0 + v18, 1, v1);
        if (!v19)
        {
          sub_1DD6E59B8();
          sub_1DD6ED118();
          static ResponseManifest.== infix(_:_:)();
          sub_1DD6E5ABC();
          sub_1DD6FF97C();
          sub_1DD6E5ABC();
          sub_1DD824154(v0, &qword_1ECD11798);
          goto LABEL_12;
        }

        sub_1DD825E18();
        sub_1DD6E5ABC();
LABEL_11:
        sub_1DD824154(v0, &qword_1ECD117A0);
        goto LABEL_12;
      }

      sub_1DD6DE1FC(v0 + v18, 1, v1);
      if (!v19)
      {
        goto LABEL_11;
      }

      sub_1DD824154(v0, &qword_1ECD11798);
    }
  }

LABEL_12:
  sub_1DD6DFED0();
}

void static StatementOutcome.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v92 = v3;
  v83 = type metadata accessor for ParameterCandidatesNotFound(0);
  v4 = sub_1DD6DE1C4(v83);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v7 = sub_1DD6E9A9C();
  v85 = type metadata accessor for ParameterNotAllowed(v7);
  v8 = sub_1DD6DE1C4(v85);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v11 = sub_1DD6E9A9C();
  v12 = type metadata accessor for ParameterConfirmation(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDEE8();
  v16 = sub_1DD6E9A9C();
  v17 = type metadata accessor for ParameterNeedsValue(v16);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v84 = v21;
  v22 = sub_1DD6E9A9C();
  v23 = type metadata accessor for SnippetStream(v22);
  v24 = sub_1DD6DEA10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DDEE8();
  v27 = sub_1DD6E9A9C();
  v28 = type metadata accessor for ActionSuccess(v27);
  v29 = sub_1DD6DEA10(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v32 = sub_1DD6E9A9C();
  v33 = type metadata accessor for StatementOutcome(v32);
  v34 = sub_1DD6DE1C4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DE21C();
  v89 = v37 - v38;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6F1780();
  v87 = v40;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6F1780();
  v91 = v43;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6F1780();
  v90 = v45;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6F1780();
  v88 = v47;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6F1780();
  v86 = v50;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD826CA0();
  v55 = sub_1DD710A9C(&qword_1ECD117A8, &qword_1DD889728);
  sub_1DD6DEA10(v55);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6DE340();
  v60 = v1 + *(v59 + 56);
  sub_1DD6E5870();
  sub_1DD8270D0();
  sub_1DD6E9594();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_56;
      }

      sub_1DD824E40();
      sub_1DD6E59B8();
      sub_1DD825650();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6F8CA8();
      goto LABEL_33;
    case 2u:
      sub_1DD6ED690();
      sub_1DD6F4498();
      sub_1DD6E5870();
      if (sub_1DD8266E0() == 2)
      {
        sub_1DD825A10();
        v64 = sub_1DD826A70();
        sub_1DD80043C(v64);
        sub_1DD80043C(v96);
        goto LABEL_61;
      }

      sub_1DD80043C(v96);
      goto LABEL_57;
    case 3u:
      sub_1DD6ED690();
      v65 = v1;
      sub_1DD6E0F70();
      sub_1DD6E5870();
      v67 = *v0;
      v66 = v0[1];
      v68 = v0[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        v1 = v65;
        goto LABEL_57;
      }

      v69 = v92[1];
      v70 = v92[2];
      if (v66)
      {
        if (!v69)
        {
          goto LABEL_66;
        }

        v71 = v67 == *v92 && v66 == v69;
        if (!v71 && (sub_1DD8278F0() & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (v69)
      {
LABEL_66:

        goto LABEL_68;
      }

      sub_1DD6E0F70();
      sub_1DD716FC0();
      sub_1DD827878();

LABEL_68:
      sub_1DD6E5ABC();
LABEL_63:
      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
    case 4u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      sub_1DD824E70();
      sub_1DD6E59B8();
      static ParameterNeedsValue.== infix(_:_:)(v86, v84);
      sub_1DD824E58();
      sub_1DD6E5ABC();
      sub_1DD825650();
      goto LABEL_60;
    case 5u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      sub_1DD825650();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD82616C();
LABEL_33:
      sub_1DD6E5ABC();
      goto LABEL_60;
    case 6u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      v75 = v88[1];
      v96[0] = *v88;
      v96[1] = v75;
      v76 = v88[3];
      v96[2] = v88[2];
      v96[3] = v76;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DD825DA0();
        v77 = sub_1DD826A70();
        sub_1DD80040C(v77);
        sub_1DD80040C(v96);
        goto LABEL_61;
      }

      sub_1DD80040C(v96);
      goto LABEL_57;
    case 7u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v74 = v71 && v72 == v73;
      if (v74 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD8267E4(*(v85 + 20));
        if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
        {
          sub_1DD6FEB44();
        }
      }

      goto LABEL_45;
    case 8u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v82 = v71 && v80 == v81;
      if (v82 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD826568(v83);
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      }

LABEL_45:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD6E0900();
      goto LABEL_68;
    case 9u:
      sub_1DD6ED690();
      sub_1DD8259E0();
      sub_1DD6E5870();
      if (sub_1DD702B14() == 9)
      {
        sub_1DD825C10();
        v62 = sub_1DD6F9BF8();
        sub_1DD8003E4(v62, v63, v91, v90, v89, v92);
        sub_1DD6FE78C();
        sub_1DD6E0900();
        goto LABEL_62;
      }

      sub_1DD6FE78C();
      v1 = v2;
      goto LABEL_57;
    case 0xAu:
      sub_1DD6ED690();
      sub_1DD6E5870();
      v78 = *v87;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v79 = *v92;
        sub_1DD6E5C7C();
        sub_1DD7162FC();

        goto LABEL_61;
      }

      goto LABEL_57;
    case 0xBu:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD827938(v96);
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        sub_1DD827920(&v95);
        sub_1DD827938(v94);
        sub_1DD827920(v93);
        static ActionFailure.== infix(_:_:)(v94, v93);
        v61 = sub_1DD826A70();
        sub_1DD8003B4(v61);
        sub_1DD8003B4(v96);
        goto LABEL_61;
      }

      sub_1DD8003B4(v96);
      goto LABEL_57;
    default:
      sub_1DD6ED690();
      sub_1DD825C98();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD6FADF0();
LABEL_56:
        sub_1DD6E5ABC();
LABEL_57:
        sub_1DD824154(v1, &qword_1ECD117A8);
      }

      else
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD825998();
        static ActionSuccess.== infix(_:_:)();
        sub_1DD825D6C();
        sub_1DD6E5ABC();
LABEL_60:
        sub_1DD6E5ABC();
LABEL_61:
        sub_1DD6E0900();
LABEL_62:
        sub_1DD6E5ABC();
      }

      goto LABEL_63;
  }
}

uint64_t sub_1DD7B8A00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B66D0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t sub_1DD7B8B18(char a1)
{
  if (!a1)
  {
    return 0x6449746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x65736E6F70736572;
}

uint64_t sub_1DD7B8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B8A00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B8BA4(uint64_t a1)
{
  v2 = sub_1DD80046C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B8BE0(uint64_t a1)
{
  v2 = sub_1DD80046C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientActionResult.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v2 = sub_1DD710A9C(&qword_1ECD117B0, &qword_1DD889730);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD80046C();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v6);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for MessagePayload.ClientActionResult(0);
    sub_1DD82553C(v7);
    type metadata accessor for StatementOutcome(0);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v8);
    sub_1DD6E730C();
    sub_1DD8759D0();
    v9 = *(v1 + 24);
    sub_1DD6E0FF8();
    type metadata accessor for ResponseManifest(0);
    sub_1DD6FAC34();
    sub_1DD6E1E84(v10);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD875960();
  }

  v11 = sub_1DD825168();
  v12(v11);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientActionResult.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD82495C(v7, v43);
  v45 = type metadata accessor for StatementOutcome(0);
  v8 = sub_1DD6DE1C4(v45);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD702A64();
  v11 = sub_1DD874820();
  v12 = sub_1DD6E49A8(v11);
  v44 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v46 = sub_1DD710A9C(&qword_1ECD117C8, &qword_1DD889738);
  sub_1DD6DDEAC(v46);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DEA6C();
  v19 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v20 = sub_1DD6DE1C4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE4A8();
  v25 = v24 - v23;
  v27 = *(v26 + 24);
  type metadata accessor for ResponseManifest(0);
  v47 = v27;
  sub_1DD825300();
  sub_1DD6E5E68(v28, v29, v30, v31);
  v32 = v2[3];
  v33 = v2[4];
  sub_1DD6FE770(v2);
  sub_1DD80046C();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
    sub_1DD824154(v25 + v47, &qword_1ECD11798);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v34);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    v35 = *(v44 + 32);
    v36 = sub_1DD824B34();
    v37(v36);
    sub_1DD6DEC54();
    sub_1DD6DE08C();
    sub_1DD6E1E84(v38);
    sub_1DD705C1C();
    sub_1DD8758D0();
    v39 = *(v19 + 20);
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD6E0FF8();
    sub_1DD6FAC34();
    sub_1DD6E1E84(v40);
    sub_1DD827008();
    sub_1DD875860();
    v41 = sub_1DD6E37FC();
    v42(v41, v46);
    sub_1DD807414();
    sub_1DD701480();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v2);
    sub_1DD825C80();
    sub_1DD6E5ABC();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientCustom.tag.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientCustom.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientCustom.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

void static MessagePayload.ClientCustom.== infix(_:_:)()
{
  sub_1DD827764();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  if (MEMORY[0x1E12B41A0](*v0, v0[1], *v5, v5[1]) & 1) != 0 && (v10 = sub_1DD6E6218(), (MEMORY[0x1E12B41A0](v10)) && (v3 == v8 ? (v11 = v4 == v9) : (v11 = 0), !v11))
  {
    sub_1DD6E8090();
    sub_1DD827720();

    sub_1DD875A30();
  }

  else
  {
    sub_1DD827720();
  }
}

uint64_t sub_1DD7B939C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001DD8B66F0 == a2)
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

uint64_t sub_1DD7B94B0(char a1)
{
  if (!a1)
  {
    return 6775156;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0xD000000000000010;
}

uint64_t sub_1DD7B9508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B939C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B9530(uint64_t a1)
{
  v2 = sub_1DD8004C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B956C(uint64_t a1)
{
  v2 = sub_1DD8004C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientCustom.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD117D0, &qword_1DD889740);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v11 = v0[1];
  v23 = v0[3];
  v24 = v0[2];
  v21 = v0[5];
  v22 = v0[4];
  v12 = v3[3];
  v13 = v3[4];
  sub_1DD6E6C94(v3);
  v14 = sub_1DD6EFF74();
  sub_1DD710E74(v14, v15);
  sub_1DD8004C0();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v10, v11);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD710E74(v16, v17);
    sub_1DD792A28();
    sub_1DD8265A8();
    sub_1DD8759D0();
    sub_1DD6E6658(v24, v23);
    sub_1DD826B30();
    sub_1DD8265A8();
    sub_1DD875970();
  }

  v18 = *(v6 + 8);
  v19 = sub_1DD7029A8();
  v20(v19);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientCustom.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD117E0, &qword_1DD889748);
  sub_1DD6E125C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD8004C0();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    v12 = v5;
    sub_1DD717D38();
    sub_1DD826F48();
    sub_1DD6E710C();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6FF8F4();
    sub_1DD826F48();
    sub_1DD6E710C();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD826B30();
    sub_1DD6EE778();
    v13 = sub_1DD875870();
    v15 = v14;
    (*(v8 + 8))(v3, v2);
    *v12 = v24;
    v12[1] = v25;
    v12[2] = v24;
    v12[3] = v25;
    v12[4] = v13;
    v12[5] = v15;
    v16 = sub_1DD8259E0();
    sub_1DD710E74(v16, v17);
    v18 = sub_1DD6E5DB0();
    sub_1DD710E74(v18, v19);

    sub_1DD6E1EC8(v0);
    v20 = sub_1DD8259E0();
    sub_1DD6E6658(v20, v21);
    v22 = sub_1DD6E5DB0();
    sub_1DD6E6658(v22, v23);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B99D0(uint64_t a1)
{
  v2 = sub_1DD800514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9A0C(uint64_t a1)
{
  v2 = sub_1DD800514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientIdentifier.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD117E8, &qword_1DD889750);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD800514();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientInitiatedClientAction.toolId.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.ClientInitiatedClientAction.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DD7B9C68(uint64_t a1)
{
  v2 = sub_1DD800568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9CA4(uint64_t a1)
{
  v2 = sub_1DD800568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientInitiatedClientAction.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD11800, &qword_1DD889760);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A64();
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD800568();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B9E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B6710 == a2)
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

uint64_t sub_1DD7B9F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B9E90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B9F5C(uint64_t a1)
{
  v2 = sub_1DD8005BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9F98(uint64_t a1)
{
  v2 = sub_1DD8005BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ContextPrewarmRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11818, &qword_1DD889770);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD8005BC();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA138(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6730 == a2)
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

uint64_t sub_1DD7BA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BA138(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7BA204(uint64_t a1)
{
  v2 = sub_1DD800610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA240(uint64_t a1)
{
  v2 = sub_1DD800610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ContextPrewarmCompleted.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11830, &qword_1DD889780);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD800610();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA3CC(uint64_t a1)
{
  v2 = sub_1DD800664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA408(uint64_t a1)
{
  v2 = sub_1DD800664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IntelligenceFlow::MessagePayload::SafetyModeException __swiftcall MessagePayload.SafetyModeException.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1DD7BA4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
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

uint64_t sub_1DD7BA570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BA4C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7BA59C(uint64_t a1)
{
  v2 = sub_1DD8006B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA5D8(uint64_t a1)
{
  v2 = sub_1DD8006B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SafetyModeException.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11858, &qword_1DD889798);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD8006B8();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875920();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA7D0()
{
  v0 = sub_1DD6F355C();
  v2 = *(v1(v0) + 20);
  return sub_1DD826384();
}

uint64_t MessagePayload.ExternalAgentRequest.rewriteMetadataEventID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentRequest(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentRequest(v0) + 24);
  return sub_1DD6DDF9C();
}

void static MessagePayload.ExternalAgentRequest.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v8 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEBA0();
  v12 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE340();
  sub_1DD6ED118();
  static MessagePayload.RequestContent.== infix(_:_:)();
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(type metadata accessor for MessagePayload.ExternalAgentRequest(0) + 20);
  v18 = *(v12 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v19)
  {
    sub_1DD6E26E4(v2 + v18);
    if (v19)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v18);
  if (v19)
  {
    v20 = sub_1DD6FF900();
    v21(v20, v4);
LABEL_10:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_25;
  }

  v22 = sub_1DD6F444C();
  v23(v22);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v24);
  sub_1DD6E60FC();
  v25 = sub_1DD8750F0();
  v26 = sub_1DD770D4C();
  MEMORY[0xC00040128](v26);
  v27 = sub_1DD8258C4();
  MEMORY[0xC00040128](v27);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if (v25)
  {
LABEL_12:
    sub_1DD8254DC();
    if (v1)
    {
      if (v3)
      {
        v28 = v0 == v2 && v1 == v3;
        if (v28 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          v29 = sub_1DD6E21D0();
          sub_1DD7152B8(v29, v30);
          v31 = sub_1DD8249AC();
          sub_1DD6FF5F4(v31, v32);
          v33 = sub_1DD824B34();
          sub_1DD6FF5F4(v33, v34);
          v35 = sub_1DD8249AC();
          sub_1DD6FF5F4(v35, v36);
          v37 = sub_1DD824B34();
          sub_1DD6FE2E0(v37, v38);

          v39 = sub_1DD8249AC();
          sub_1DD6FE2E0(v39, v40);
          goto LABEL_25;
        }

        v55 = sub_1DD8249AC();
        sub_1DD6FF5F4(v55, v56);
        v57 = sub_1DD824B34();
        sub_1DD6FF5F4(v57, v58);
        v59 = sub_1DD8249AC();
        sub_1DD6FF5F4(v59, v60);
        v61 = sub_1DD824B34();
        sub_1DD6FE2E0(v61, v62);

        v51 = sub_1DD8249AC();
LABEL_24:
        sub_1DD6FE2E0(v51, v52);
        goto LABEL_25;
      }

      v45 = sub_1DD8249AC();
      sub_1DD6FF5F4(v45, v46);
      sub_1DD826664();
      v47 = sub_1DD8249AC();
      sub_1DD6FF5F4(v47, v48);
    }

    else
    {
      v41 = sub_1DD82551C();
      sub_1DD6FF5F4(v41, v42);
      if (!v3)
      {
        sub_1DD826664();
        v53 = sub_1DD82551C();
        sub_1DD6FE2E0(v53, v54);
        goto LABEL_25;
      }

      v43 = sub_1DD824B34();
      sub_1DD6FF5F4(v43, v44);
    }

    v49 = sub_1DD8249AC();
    sub_1DD6FE2E0(v49, v50);
    v51 = sub_1DD824B34();
    goto LABEL_24;
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BAC24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001DD8B6500 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001DD8B6520 == a2)
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

uint64_t sub_1DD7BAD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BAC24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BAD6C(uint64_t a1)
{
  v2 = sub_1DD6FEA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BADA8(uint64_t a1)
{
  v2 = sub_1DD6FEA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.ExternalAgentTextQuery.queryRewriteMetadataEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentTextQuery(v0) + 20);
  return sub_1DD6DDF9C();
}

double sub_1DD7BAEC8(__int128 *a1)
{
  v1 = sub_1DD82580C(a1);
  v3 = v2(v1);
  v4 = sub_1DD6E3A44(*(v3 + 24));
  v6 = sub_1DD6FE2E0(v4, v5);
  *&result = sub_1DD82640C(v6, v7, v8, v9, v10, v11, v12, v13, v14).n128_u64[0];
  return result;
}

uint64_t MessagePayload.ExternalAgentTextQuery.queryRewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentTextQuery(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentTextQuery.init(query:)()
{
  sub_1DD8250F8();
  v3 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  v4 = *(v3 + 20);
  sub_1DD874820();
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v5, v6, v7, v8);
  v10 = (v2 + *(v3 + 24));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  *v2 = v1;
  v2[1] = v0;
  return result;
}

__n128 MessagePayload.ExternalAgentTextQuery.init(query:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_1DD824C64();
  v14 = *v3;
  v4 = v3[1].n128_u64[0];
  v5 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  v6 = *(v5 + 20);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  sub_1DD82774C(*(v5 + 24));
  *(v5 + 16) = 0;
  *v2 = v1;
  v2[1] = v0;
  sub_1DD807414();
  v11 = sub_1DD826718();
  sub_1DD6FE2E0(v11, v12);
  result = v14;
  *v5 = v14;
  *(v5 + 16) = v4;
  return result;
}

void static MessagePayload.ExternalAgentTextQuery.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v5 = sub_1DD874820();
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E535C();
  v11 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_29;
  }

  v67 = v8;
  v20 = *(type metadata accessor for MessagePayload.ExternalAgentTextQuery(0) + 20);
  v21 = *(v15 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v3);
  if (v19)
  {
    sub_1DD6E26E4(v3 + v21);
    if (v19)
    {
      sub_1DD824154(v3, &qword_1ECD0E540);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v3 + v21);
  if (v22)
  {
    v23 = sub_1DD6FF900();
    v24(v23, v5);
LABEL_14:
    sub_1DD824154(v3, &qword_1ECD10E30);
    goto LABEL_29;
  }

  v25 = sub_1DD8252A0();
  v26(v25);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v27);
  sub_1DD6E60FC();
  v28 = sub_1DD8750F0();
  v29 = *(v67 + 8);
  v30 = sub_1DD770D4C();
  v29(v30);
  v31 = sub_1DD8258C4();
  v29(v31);
  sub_1DD824154(v3, &qword_1ECD0E540);
  if (v28)
  {
LABEL_16:
    sub_1DD8254DC();
    if (v2)
    {
      if (v4)
      {
        v32 = v1 == v3 && v2 == v4;
        if (v32 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          v33 = sub_1DD6E21D0();
          sub_1DD7152B8(v33, v34);
          v35 = sub_1DD8249AC();
          sub_1DD6FF5F4(v35, v36);
          v37 = sub_1DD824B34();
          sub_1DD6FF5F4(v37, v38);
          v39 = sub_1DD8249AC();
          sub_1DD6FF5F4(v39, v40);
          v41 = sub_1DD824B34();
          sub_1DD6FE2E0(v41, v42);

          v43 = sub_1DD8249AC();
          sub_1DD6FE2E0(v43, v44);
          goto LABEL_29;
        }

        v59 = sub_1DD8249AC();
        sub_1DD6FF5F4(v59, v60);
        v61 = sub_1DD824B34();
        sub_1DD6FF5F4(v61, v62);
        v63 = sub_1DD8249AC();
        sub_1DD6FF5F4(v63, v64);
        v65 = sub_1DD824B34();
        sub_1DD6FE2E0(v65, v66);

        v55 = sub_1DD8249AC();
LABEL_28:
        sub_1DD6FE2E0(v55, v56);
        goto LABEL_29;
      }

      v49 = sub_1DD8249AC();
      sub_1DD6FF5F4(v49, v50);
      sub_1DD826664();
      v51 = sub_1DD8249AC();
      sub_1DD6FF5F4(v51, v52);
    }

    else
    {
      v45 = sub_1DD82551C();
      sub_1DD6FF5F4(v45, v46);
      if (!v4)
      {
        sub_1DD826664();
        v57 = sub_1DD82551C();
        sub_1DD6FE2E0(v57, v58);
        goto LABEL_29;
      }

      v47 = sub_1DD824B34();
      sub_1DD6FF5F4(v47, v48);
    }

    v53 = sub_1DD8249AC();
    sub_1DD6FE2E0(v53, v54);
    v55 = sub_1DD824B34();
    goto LABEL_28;
  }

LABEL_29:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BB404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6750 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6770 == a2)
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

uint64_t sub_1DD7BB520(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1DD7BB584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BB404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BB5AC(uint64_t a1)
{
  v2 = sub_1DD80070C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BB5E8(uint64_t a1)
{
  v2 = sub_1DD80070C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentTextQuery.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  v3 = sub_1DD710A9C(&qword_1ECD11880, &qword_1DD8897B8);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD80070C();
  sub_1DD6E1808();
  v7 = *v1;
  v8 = v1[1];
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v0)
  {
    v9 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
    sub_1DD82553C(v9);
    sub_1DD6FF738(v10);
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v11);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v12 = sub_1DD8253B4((v1 + *(v2 + 24)));
    sub_1DD6FF5F4(v12, v13);
    sub_1DD800760();
    sub_1DD6E5334();
    sub_1DD875960();
    v14 = sub_1DD6FE710();
    sub_1DD6FE2E0(v14, v15);
  }

  v16 = sub_1DD6EFFB4();
  v17(v16);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void MessagePayload.ExternalAgentTextQuery.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E17C8();
  v32 = sub_1DD710A9C(&qword_1ECD11898, &qword_1DD8897C0);
  sub_1DD6DDEAC(v32);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  v14 = sub_1DD6E6EB0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E535C();
  v17 = *(v0 + 28);
  sub_1DD874820();
  *&v33 = v17;
  sub_1DD825310();
  sub_1DD6E5E68(v18, v19, v20, v21);
  sub_1DD6FE184();
  v23 = v5[3];
  v22 = v5[4];
  sub_1DD6FE8B0(v5);
  sub_1DD80070C();
  sub_1DD6E4218();
  sub_1DD826FB4();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v2 + v17, &qword_1ECD0E540);
    v24 = sub_1DD827044();
    sub_1DD6FE2E0(v24, v25);
  }

  else
  {
    *v2 = sub_1DD875870();
    v2[1] = v26;
    sub_1DD702E94();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v27);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6EFF88();
    sub_1DD8007B4();
    sub_1DD6E40F8();
    sub_1DD875860();
    v28 = sub_1DD6E37FC();
    v29(v28, v32);
    sub_1DD703E0C();
    v30 = sub_1DD827044();
    sub_1DD6FE2E0(v30, v31);
    *v17 = v33;
    *(v17 + 16) = v3;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.Candidate.statementId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DD6EECF8(*(v1 + 32), a1);
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.Candidate.init(recognition:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t StatementID.init(index:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 MessagePayload.ExternalAgentSpeechQuery.Candidate.init(recognition:statementId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  result = *(a3 + 2);
  *(a4 + 24) = result;
  return result;
}

uint64_t static MessagePayload.ExternalAgentSpeechQuery.Candidate.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (sub_1DD875A30(), result = sub_1DD6FE86C(), (v12 & 1) != 0))
  {
    if (v4 == v7)
    {
      if (v5)
      {
        if (v8)
        {
          if (v6 == v9 && v5 == v8)
          {
            return 1;
          }

          sub_1DD6E21D0();
          if (sub_1DD7013BC())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7BBBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74696E676F636572 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7BBCA0(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 0x74696E676F636572;
  }
}

uint64_t sub_1DD7BBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BBBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BBD18(uint64_t a1)
{
  v2 = sub_1DD800808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BBD54(uint64_t a1)
{
  v2 = sub_1DD800808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentSpeechQuery.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD118A8, &qword_1DD8897C8);
  sub_1DD6E49A8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v11 = v0[1];
  v19 = *(v0 + 4);
  v17 = v0[3];
  v18 = v0[4];
  v13 = v3[3];
  v12 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD800808();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6E594C();
  sub_1DD825668();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v14 = *(v6 + 8);
  v15 = sub_1DD6DEA04();
  v16(v15);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ExternalAgentSpeechQuery.Candidate.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v5 = sub_1DD710A9C(&qword_1ECD118B8, &qword_1DD8897D0);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD800808();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1DD825108();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD82499C();
    sub_1DD8758D0();
    v9 = sub_1DD6DFF30();
    v10(v9);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    *(v2 + 32) = v13;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.candidates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.queryRewriteMetadataEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.queryRewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v0) + 24);
  return sub_1DD6DDF9C();
}

void MessagePayload.ExternalAgentSpeechQuery.init(candidates:)(uint64_t a1)
{
  v3 = sub_1DD6F9E24();
  v4 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v3);
  sub_1DD701458(v4);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD6F448C(*(v4 + 24));
  *(v9 + 16) = 0;
  *v1 = a1;
}

__n128 MessagePayload.ExternalAgentSpeechQuery.init(candidates:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_1DD8250F8();
  v6 = sub_1DD8272C8(v3, v4, v5);
  v7 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v6);
  v8 = *(v7 + 20);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v12);
  sub_1DD82736C();
  *v1 = v0;
  sub_1DD807414();
  v13 = sub_1DD700D00();
  sub_1DD6FE2E0(v13, v14);
  result = v16;
  *v7 = v16;
  *(v7 + 16) = v2;
  return result;
}

void static MessagePayload.ExternalAgentSpeechQuery.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v5 = sub_1DD874820();
  v6 = sub_1DD6DDEAC(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E535C();
  v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE340();
  v17 = *v1;
  v18 = *v0;
  sub_1DD715EA8();
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0) + 20);
  v21 = *(v13 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v3);
  if (v22)
  {
    sub_1DD6E26E4(v3 + v21);
    if (v22)
    {
      sub_1DD824154(v3, &qword_1ECD0E540);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v3 + v21);
  if (v22)
  {
    v23 = sub_1DD6FF900();
    v24(v23, v5);
LABEL_10:
    sub_1DD824154(v3, &qword_1ECD10E30);
    goto LABEL_25;
  }

  v25 = sub_1DD6F444C();
  v26(v25);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v27);
  sub_1DD6E60FC();
  v28 = sub_1DD8750F0();
  v29 = sub_1DD770D4C();
  MEMORY[0xC00040128](v29);
  v30 = sub_1DD8258C4();
  MEMORY[0xC00040128](v30);
  sub_1DD824154(v3, &qword_1ECD0E540);
  if (v28)
  {
LABEL_12:
    sub_1DD8254DC();
    if (v2)
    {
      if (v4)
      {
        v31 = v1 == v3 && v2 == v4;
        if (v31 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          v32 = sub_1DD6E21D0();
          sub_1DD7152B8(v32, v33);
          v34 = sub_1DD8249AC();
          sub_1DD6FF5F4(v34, v35);
          v36 = sub_1DD824B34();
          sub_1DD6FF5F4(v36, v37);
          v38 = sub_1DD8249AC();
          sub_1DD6FF5F4(v38, v39);
          v40 = sub_1DD824B34();
          sub_1DD6FE2E0(v40, v41);

          v42 = sub_1DD8249AC();
          sub_1DD6FE2E0(v42, v43);
          goto LABEL_25;
        }

        v58 = sub_1DD8249AC();
        sub_1DD6FF5F4(v58, v59);
        v60 = sub_1DD824B34();
        sub_1DD6FF5F4(v60, v61);
        v62 = sub_1DD8249AC();
        sub_1DD6FF5F4(v62, v63);
        v64 = sub_1DD824B34();
        sub_1DD6FE2E0(v64, v65);

        v54 = sub_1DD8249AC();
LABEL_24:
        sub_1DD6FE2E0(v54, v55);
        goto LABEL_25;
      }

      v48 = sub_1DD8249AC();
      sub_1DD6FF5F4(v48, v49);
      sub_1DD826664();
      v50 = sub_1DD8249AC();
      sub_1DD6FF5F4(v50, v51);
    }

    else
    {
      v44 = sub_1DD82551C();
      sub_1DD6FF5F4(v44, v45);
      if (!v4)
      {
        sub_1DD826664();
        v56 = sub_1DD82551C();
        sub_1DD6FE2E0(v56, v57);
        goto LABEL_25;
      }

      v46 = sub_1DD824B34();
      sub_1DD6FF5F4(v46, v47);
    }

    v52 = sub_1DD8249AC();
    sub_1DD6FE2E0(v52, v53);
    v54 = sub_1DD824B34();
    goto LABEL_24;
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BC670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6750 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6770 == a2)
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

uint64_t sub_1DD7BC798(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_1DD7BC804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BC670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BC82C(uint64_t a1)
{
  v2 = sub_1DD80085C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BC868(uint64_t a1)
{
  v2 = sub_1DD80085C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentSpeechQuery.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD118C0, &qword_1DD8897D8);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD80085C();
  sub_1DD6E1808();
  v15 = *v1;
  sub_1DD710A9C(&qword_1ECD118D0, &qword_1DD8897E0);
  sub_1DD8008B0();
  sub_1DD792A28();
  sub_1DD6E63A8();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
    sub_1DD82553C(v7);
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v8);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    v16 = sub_1DD82595C(*(v2 + 24));
    v17 = v10;
    v18 = *(v9 + 16);
    sub_1DD6EFF88();
    sub_1DD6FF5F4(v11, v12);
    sub_1DD800760();
    sub_1DD792A28();
    sub_1DD824DE8();
    sub_1DD875960();
    sub_1DD6FE2E0(v16, v17);
  }

  v13 = sub_1DD6EFFB4();
  v14(v13);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ExternalAgentSpeechQuery.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E17C8();
  v10 = sub_1DD710A9C(&qword_1ECD118E8, &qword_1DD8897E8);
  sub_1DD6DDEAC(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E7258();
  v15 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
  v16 = sub_1DD6E6EB0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E535C();
  v19 = *(v0 + 28);
  sub_1DD874820();
  *&v36 = v19;
  sub_1DD825300();
  sub_1DD6E5E68(v20, v21, v22, v23);
  sub_1DD6FE184();
  v24 = v5[3];
  v25 = v5[4];
  sub_1DD824D14(v5);
  sub_1DD80085C();
  sub_1DD7039CC();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v2 + v36, &qword_1ECD0E540);
    v27 = sub_1DD827044();
    sub_1DD6FE2E0(v27, v28);
  }

  else
  {
    v26 = sub_1DD710A9C(&qword_1ECD118D0, &qword_1DD8897E0);
    sub_1DD800988();
    sub_1DD6E40F8();
    sub_1DD6EE298();
    sub_1DD8758D0();
    *v2 = v37;
    sub_1DD702E94();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v29);
    sub_1DD825A9C();
    sub_1DD702AB4();
    sub_1DD6EE298();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6EFF88();
    sub_1DD8007B4();
    sub_1DD6E40F8();
    sub_1DD6F09C4();
    sub_1DD875860();
    v30 = *(v35 + 8);
    v31 = sub_1DD825B90();
    v32(v31);
    sub_1DD703E0C();
    v33 = sub_1DD827044();
    sub_1DD6FE2E0(v33, v34);
    *v3 = v36;
    *(v3 + 16) = v26;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BCE10()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 20);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t MessagePayload.ExternalAgentOutcome.responseText.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ExternalAgentOutcome(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7BCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = sub_1DD6EE78C();
  v8 = type metadata accessor for ActionOutcome(v7);
  v9 = sub_1DD6DEA10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E535C();
  sub_1DD6E2208();
  sub_1DD6E5C7C();
  sub_1DD6E5870();
  return a5(v5);
}

uint64_t MessagePayload.ExternalAgentOutcome.outcome.setter()
{
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  ActionOutcome.asStatementOutcome.getter(v0);
  sub_1DD6DE600();
  return sub_1DD6E5ABC();
}

void (*MessagePayload.ExternalAgentOutcome.outcome.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = sub_1DD82661C(a1);
  v3 = type metadata accessor for ActionOutcome(v2);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  *(v1 + 8) = sub_1DD7281CC(v5);
  v6 = sub_1DD7281CC(v5);
  *(v1 + 16) = v6;
  StatementOutcome.asActionOutcome.getter(v6);
  return sub_1DD7BCFD4;
}

void sub_1DD7BCFD4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    sub_1DD6ED118();
    sub_1DD6E5870();
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter(v4);
    sub_1DD6DE600();
    sub_1DD6E5ABC();
  }

  else
  {
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter(v4);
  }

  sub_1DD6E5ABC();
  free(v3);

  free(v2);
}

uint64_t MessagePayload.ExternalAgentOutcome.init(statementOutcome:responseText:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  result = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t MessagePayload.ExternalAgentOutcome.init(outcome:)@<X0>(_OWORD *a1@<X8>)
{
  ActionOutcome.asStatementOutcome.getter(a1);
  sub_1DD6DE600();
  sub_1DD6E5ABC();
  result = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DD7BD164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_1DD6E1F34();
  if ((v6() & 1) == 0)
  {
    return 0;
  }

  v7 = a4(0);
  v8 = sub_1DD826EDC(*(v7 + 20));

  return a5(v8);
}

uint64_t sub_1DD7BD1EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B66D0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000074786554)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7BD2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD1EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BD2E8(uint64_t a1)
{
  v2 = sub_1DD7035D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BD324(uint64_t a1)
{
  v2 = sub_1DD7035D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BD3B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xED00007972657551;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7BD484(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_1DD7BD4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BD4F8(uint64_t a1)
{
  v2 = sub_1DD800A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BD534(uint64_t a1)
{
  v2 = sub_1DD800A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7BD5A4()
{
  sub_1DD6DED2C();
  v20 = v2;
  v4 = v3;
  v6 = sub_1DD825C68(v3, v5);
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6E49A8(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = *v0;
  v13 = v0[1];
  v19 = v0[2];
  v14 = v4[3];
  v15 = v4[4];
  v16 = sub_1DD824D14(v4);
  v20(v16);
  sub_1DD827524();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD825668();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD824C1C(&unk_1EE015DC0);
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v17 = sub_1DD6DE58C();
  v18(v17);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7BD720()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v6 = sub_1DD825C68(v4, v5);
  v16 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC(v16);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = v0[3];
  v12 = v0[4];
  v13 = sub_1DD6E7320(v0);
  v3(v13);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD82552C();
    sub_1DD6FF744(&qword_1EE015DB8);
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v14 = sub_1DD6DEA2C();
    v15(v14);
    sub_1DD8277B8();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BD920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEF74736575716552;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7BD9F0(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_1DD7BDA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BDA64(uint64_t a1)
{
  v2 = sub_1DD800AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDAA0(uint64_t a1)
{
  v2 = sub_1DD800AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientUndoRedoRequest(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientUndoRedoRequest.statementId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientUndoRedoRequest(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientUndoRedoRequest.init(token:operation:statementId:)()
{
  sub_1DD826938();
  v2 = *v1;
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = sub_1DD874820();
  sub_1DD6DF448(v7);
  v9 = *(v8 + 32);
  v10 = sub_1DD6E21D0();
  v11(v10);
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  *(v0 + *(result + 20)) = v2;
  v13 = v0 + *(result + 24);
  *v13 = v4;
  *(v13 + 8) = v5;
  *(v13 + 16) = v6;
  return result;
}

uint64_t sub_1DD7BDD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 1868852853 && a2 == 0xE400000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868850546 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7BDE08(char a1)
{
  if (a1)
  {
    return 1868850546;
  }

  else
  {
    return 1868852853;
  }
}

uint64_t sub_1DD7BDE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BDD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BDE54(uint64_t a1)
{
  v2 = sub_1DD800B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDE90(uint64_t a1)
{
  v2 = sub_1DD800B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BDECC(uint64_t a1)
{
  v2 = sub_1DD800B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDF08(uint64_t a1)
{
  v2 = sub_1DD800B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BDF44(uint64_t a1)
{
  v2 = sub_1DD800BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDF80(uint64_t a1)
{
  v2 = sub_1DD800BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientUndoRedoRequest.UndoOperation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD11940, &qword_1DD889820);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v26);
  v7 = sub_1DD710A9C(&qword_1ECD11948, &qword_1DD889828);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v11 = sub_1DD710A9C(&qword_1ECD11950, &qword_1DD889830);
  sub_1DD6E125C(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = *v0;
  v18 = v1[3];
  v19 = v1[4];
  sub_1DD824CF8(v1);
  sub_1DD800B08();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  v20 = (v13 + 8);
  if (v17)
  {
    sub_1DD6FF8F4();
    sub_1DD800B5C();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD800BB0();
    sub_1DD826808();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6E4290();
  }

  v22(v21);
  v23 = *v20;
  v24 = sub_1DD825570();
  v25(v24);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void MessagePayload.ClientUndoRedoRequest.UndoOperation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826C50(v4);
  v46 = sub_1DD710A9C(&qword_1ECD11970, &qword_1DD889838);
  sub_1DD6DDEAC(v46);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v8 = sub_1DD710A9C(&qword_1ECD11978, &qword_1DD889840);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = sub_1DD710A9C(&qword_1ECD11980, &qword_1DD889848);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v17 = v2[3];
  v16 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD800B08();
  sub_1DD6E4218();
  sub_1DD82718C();
  if (!v1)
  {
    v47 = v2;
    sub_1DD826378();
    v18 = sub_1DD875900();
    sub_1DD6ED750(v18, 0);
    sub_1DD826B7C();
    if (!v19)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v20 == v21)
      {
        __break(1u);
        return;
      }

      v28 = *(v27 + v26);
      v29 = sub_1DD6F43D8(v22, v23, v24, v25, v26);
      sub_1DD6ED830(v29);
      sub_1DD6E0194();
      v31 = v30;
      swift_unknownObjectRelease();
      if (!(v31 >> 1))
      {
        if (v28)
        {
          sub_1DD6FF8F4();
          sub_1DD800B5C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD825038();
          v34 = v46;
        }

        else
        {
          sub_1DD800BB0();
          sub_1DD826E4C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD705C68();
          v34 = v8;
        }

        v33(v32, v34);
        v43 = *(v0 + 8);
        v44 = sub_1DD6E60FC();
        v45(v44);
        sub_1DD826EE8();
        goto LABEL_12;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82702C();
    v35 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v3 = &type metadata for MessagePayload.ClientUndoRedoRequest.UndoOperation;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF100();
    v36 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v38 = *(v37 + 104);
    v39 = sub_1DD826518();
    v40(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_1DD6E37A0();
    v42(v41);
    v2 = v47;
  }

  sub_1DD6E1EC8(v2);
LABEL_12:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static MessagePayload.ClientUndoRedoRequest.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  sub_1DD826CC0(*(v1 + 20));
  if (!v9)
  {
    return 0;
  }

  sub_1DD825240((v0 + *(v2 + 24)));
  if (!v9)
  {
    return 0;
  }

  sub_1DD826E58(v3);
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1DD825B9C(v5);
    v9 = v9 && v7 == v8;
    return v9 || (sub_1DD875A30() & 1) != 0;
  }

  return !v4;
}

uint64_t sub_1DD7BE660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
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

uint64_t sub_1DD7BE778(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0x6F6974617265706FLL;
  }

  return 0x6E656D6574617473;
}

uint64_t sub_1DD7BE7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BE660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BE808(uint64_t a1)
{
  v2 = sub_1DD800C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BE844(uint64_t a1)
{
  v2 = sub_1DD800C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientUndoRedoRequest.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD11988, &qword_1DD889850);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD800C04();
  sub_1DD6E1808();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
    sub_1DD825AA8(v8);
    v14 = *(v1 + v9);
    sub_1DD6FF8F4();
    sub_1DD800C58();
    sub_1DD792A28();
    sub_1DD824DE8();
    sub_1DD8759D0();
    v10 = (v1 + *(v2 + 24));
    v11 = *(v10 + 2);
    v15 = *v10;
    v16 = *(v10 + 1);
    sub_1DD6EFF88();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6E72A8();
    sub_1DD8759D0();
  }

  v12 = sub_1DD6EFFB4();
  v13(v12);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientUndoRedoRequest.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = sub_1DD874820();
  v4 = sub_1DD6DDEAC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v24 = v7;
  v8 = sub_1DD710A9C(&qword_1ECD119A0, &qword_1DD889858);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD700BA4();
  v13 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v12);
  v14 = sub_1DD6DE1C4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E535C();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD6E49C0(v0);
  sub_1DD800C04();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD825A9C();
    sub_1DD8758D0();
    sub_1DD826A58();
    v20(v1, v24, v3);
    sub_1DD6FF8F4();
    sub_1DD800CAC();
    sub_1DD6E40F8();
    sub_1DD8250A8();
    sub_1DD8758D0();
    *(v1 + *(v13 + 20)) = 0;
    sub_1DD6EFF88();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD8250A8();
    sub_1DD8758D0();
    v21 = sub_1DD824D98();
    v22(v21);
    v23 = v1 + *(v13 + 24);
    sub_1DD700E1C(v25);
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionSummaryUpdate.summary.getter()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v1);
  sub_1DD6E0508(v2);
  v4 = v3[1];
  v5 = v3[2];
  *v0 = *v3;
  v0[1] = v4;
  v0[2] = v5;
}

__n128 MessagePayload.ActionSummaryUpdate.summary.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = (v1 + *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20));
  v6 = v4[1];
  v5 = v4[2];

  *v4 = v3;
  result = *(a1 + 1);
  *(v4 + 1) = result;
  return result;
}

uint64_t MessagePayload.ActionSummaryUpdate.summary.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ActionSummaryUpdate(v0) + 20);
  return sub_1DD6DDF9C();
}

__n128 MessagePayload.ActionSummaryUpdate.init(originActionRequestId:summary:)()
{
  sub_1DD8250F8();
  v3 = *v2;
  v4 = sub_1DD874820();
  sub_1DD6DF448(v4);
  v6 = *(v5 + 32);
  v11 = *(v0 + 8);
  v7 = sub_1DD6E87AC();
  v8(v7);
  v9 = v1 + *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20);
  *v9 = v3;
  result = v11;
  *(v9 + 8) = v11;
  return result;
}

BOOL static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD827600(a1, a2);
  if (!v7)
  {
    if (!v6)
    {
      if (v3 != v5 || v2 != v4)
      {
        v21 = sub_1DD7013BC();
        v22 = sub_1DD6E0C60();
        sub_1DD800D00(v22, v23, 0);
        v24 = sub_1DD6DE464();
        sub_1DD800D00(v24, v25, v26);
        v27 = sub_1DD6DE464();
        sub_1DD800D28(v27, v28, v29);
        v30 = sub_1DD6E0C60();
        v32 = 0;
        goto LABEL_17;
      }

      sub_1DD800D00(v3, v2, 0);
      v55 = sub_1DD6DE464();
      sub_1DD800D00(v55, v56, v57);
      v58 = sub_1DD6DE464();
      sub_1DD800D28(v58, v59, v60);
      v52 = sub_1DD6DE464();
LABEL_23:
      sub_1DD800D28(v52, v53, v54);
      return 1;
    }

LABEL_19:
    v40 = sub_1DD6E0C60();
    sub_1DD800D00(v40, v41, v6);
    v42 = sub_1DD6E21D0();
    sub_1DD800D00(v42, v43, v7);
    v44 = sub_1DD6E21D0();
    sub_1DD800D28(v44, v45, v7);
    v46 = sub_1DD6E0C60();
    sub_1DD800D28(v46, v47, v6);
    return 0;
  }

  if (v7 == 1)
  {
    if (v6 == 1)
    {
      v8 = sub_1DD705564();
      v10 = sub_1DD7152B8(v8, v9);
      v11 = sub_1DD6E0C60();
      sub_1DD800D00(v11, v12, 1);
      v13 = sub_1DD6E21D0();
      sub_1DD800D00(v13, v14, 1);
      v15 = sub_1DD6E21D0();
      sub_1DD800D28(v15, v16, 1);
      v17 = sub_1DD6E0C60();
      sub_1DD800D28(v17, v18, 1);
      return v10 & 1;
    }

    goto LABEL_19;
  }

  if (v6 != 2)
  {
    goto LABEL_19;
  }

  if (v3 == v5 && v2 == v4)
  {
    sub_1DD800D00(v3, v2, 2);
    v48 = sub_1DD6E21D0();
    sub_1DD800D00(v48, v49, 2);
    v50 = sub_1DD6E21D0();
    sub_1DD800D28(v50, v51, 2);
    v52 = sub_1DD6E21D0();
    v54 = 2;
    goto LABEL_23;
  }

  v21 = sub_1DD7013BC();
  v34 = sub_1DD6E0C60();
  sub_1DD800D00(v34, v35, 2);
  v36 = sub_1DD6E21D0();
  sub_1DD800D00(v36, v37, 2);
  v38 = sub_1DD6E21D0();
  sub_1DD800D28(v38, v39, 2);
  v30 = sub_1DD6E0C60();
  v32 = 2;
LABEL_17:
  sub_1DD800D28(v30, v31, v32);
  return (v21 & 1) != 0;
}

uint64_t sub_1DD7BF0A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
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

uint64_t sub_1DD7BF1B0(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 0x6C6F686563616C70;
}

uint64_t sub_1DD7BF210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BF0A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BF238(uint64_t a1)
{
  v2 = sub_1DD800D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF274(uint64_t a1)
{
  v2 = sub_1DD800D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF2B0(uint64_t a1)
{
  v2 = sub_1DD800DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF2EC(uint64_t a1)
{
  v2 = sub_1DD800DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF328(uint64_t a1)
{
  v2 = sub_1DD800EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF364(uint64_t a1)
{
  v2 = sub_1DD800EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF3A0(uint64_t a1)
{
  v2 = sub_1DD800E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF3DC(uint64_t a1)
{
  v2 = sub_1DD800E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD119B0, &qword_1DD889860);
  v31 = sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD824A4C(v7, v29);
  v8 = sub_1DD710A9C(&qword_1ECD119B8, &qword_1DD889868);
  v30 = sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6F0A58();
  v12 = sub_1DD710A9C(&qword_1ECD119C0, &qword_1DD889870);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v16 = sub_1DD710A9C(&qword_1ECD119C8, &qword_1DD889878);
  sub_1DD6DDEAC(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v32 = v0[1];
  v33 = *v0;
  v20 = *(v0 + 16);
  v22 = *(v2 + 24);
  v21 = *(v2 + 32);
  sub_1DD824794();
  sub_1DD800D50();
  sub_1DD8256E0();
  sub_1DD875BB0();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1DD826820();
      sub_1DD800E4C();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD800EA0();
      v23 = v30;
      sub_1DD826DD4();
      v24 = sub_1DD6E4290();
    }

    else
    {
      sub_1DD826B30();
      sub_1DD800DA4();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD800DF8();
      v23 = v31;
      sub_1DD825AB4();
      sub_1DD8759D0();
      v24 = sub_1DD705C68();
    }

    v26 = v23;
  }

  else
  {
    sub_1DD800EF4();
    sub_1DD824AB4();
    sub_1DD875910();
    sub_1DD800F48();
    sub_1DD8255A4();
    sub_1DD8759D0();
    v24 = sub_1DD6E37A0();
  }

  v25(v24, v26);
  v27 = sub_1DD824A60();
  v28(v27);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v70 = v12;
  v69 = sub_1DD710A9C(&qword_1ECD11A08, &qword_1DD889880);
  sub_1DD6DDEAC(v69);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD82480C(v16, v67);
  v17 = sub_1DD710A9C(&qword_1ECD11A10, &qword_1DD889888);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  v21 = sub_1DD710A9C(&qword_1ECD11A18, &qword_1DD889890);
  sub_1DD6DDEAC(v21);
  v71 = v22;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F0A58();
  v26 = sub_1DD710A9C(&qword_1ECD11A20, &qword_1DD889898);
  sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DE340();
  v30 = v10[3];
  v31 = v10[4];
  v72 = v10;
  sub_1DD70066C();
  sub_1DD800D50();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!a10)
  {
    v32 = v11;
    v33 = sub_1DD875900();
    sub_1DD6ED750(v33, 0);
    if (v35 != v34 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v42 == v43)
      {
        __break(1u);
        return;
      }

      v68 = *(v41 + v40);
      v44 = sub_1DD827424(v36, v37, v38, v39, v40);
      sub_1DD6ED830(v44);
      sub_1DD8277D8();
      v11 = v71;
      if (v32 == (v26 >> 1))
      {
        if (v68)
        {
          if (v68 == 1)
          {
            sub_1DD826820();
            sub_1DD800E4C();
            sub_1DD8251A8();
            sub_1DD875800();
            sub_1DD800FF0();
            sub_1DD6F3128();
            sub_1DD827074();
            sub_1DD826778();
            swift_unknownObjectRelease();
            v50 = sub_1DD824D98();
            v51(v50);
            v52 = sub_1DD825148();
            v53(v52);
            v54 = 0;
            v55 = v72;
            v56 = v73;
            v57 = v70;
          }

          else
          {
            sub_1DD826B30();
            sub_1DD800DA4();
            sub_1DD8251A8();
            sub_1DD875800();
            v57 = v70;
            sub_1DD800F9C();
            sub_1DD8256A4();
            sub_1DD8758D0();
            sub_1DD826544();
            swift_unknownObjectRelease();
            v63 = sub_1DD6E4290();
            v64(v63, v69);
            v65 = sub_1DD826AC8();
            v66(v65, v26);
            v56 = v73;
            v54 = v74;
            v55 = v72;
          }
        }

        else
        {
          LOBYTE(v73) = 0;
          sub_1DD800EF4();
          sub_1DD6FF7A8();
          sub_1DD875800();
          sub_1DD801044();
          sub_1DD8247C8();
          sub_1DD8758D0();
          sub_1DD826544();
          swift_unknownObjectRelease();
          v58 = v71[1];
          v59 = sub_1DD825650();
          v60(v59);
          v61 = sub_1DD826AC8();
          v62(v61, v26);
          v56 = v73;
          v54 = v74;
          v55 = v72;
          v57 = v70;
        }

        *v57 = v56;
        *(v57 + 8) = v54;
        *(v57 + 16) = v68;
        sub_1DD6E1EC8(v55);
        goto LABEL_11;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD8274C0();
    v45 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v11 = &type metadata for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary;
    sub_1DD875810();
    sub_1DD6DF100();
    v46 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    (*(v47 + 104))(v11);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_1DD6FAF18();
    v49(v48);
  }

  sub_1DD6E1EC8(v72);
LABEL_11:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BFE04(uint64_t a1)
{
  v2 = sub_1DD801098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BFE40(uint64_t a1)
{
  v2 = sub_1DD801098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryValue.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11A40, &qword_1DD8898A0);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD801098();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryValues.summaries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1DD7C0018(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656972616D6D7573 && a2 == 0xE900000000000073)
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

uint64_t sub_1DD7C00B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0018(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7C00E4(uint64_t a1)
{
  v2 = sub_1DD8010EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0120(uint64_t a1)
{
  v2 = sub_1DD8010EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7C0190()
{
  sub_1DD6DED2C();
  v20 = v1;
  v3 = v2;
  v5 = sub_1DD825C68(v2, v4);
  v7 = sub_1DD710A9C(v5, v6);
  sub_1DD6E49A8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = *v0;
  v15 = v3[3];
  v14 = v3[4];
  v16 = sub_1DD6FE8B0(v3);
  v20(v16);
  sub_1DD826F3C();

  sub_1DD827620();
  sub_1DD875BB0();
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  sub_1DD824C1C(&unk_1EE015DC0);
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();

  v17 = *(v9 + 8);
  v18 = sub_1DD6E40D8();
  v19(v18);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void sub_1DD7C02F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v13 = v12;
  sub_1DD825A04();
  v28 = v14;
  v17 = sub_1DD825C68(v15, v16);
  v19 = sub_1DD710A9C(v17, v18);
  sub_1DD6E125C(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  v23 = v10[3];
  v24 = v10[4];
  v25 = sub_1DD6E7320(v10);
  v13(v25);
  sub_1DD825680();
  sub_1DD875B90();
  if (!v11)
  {
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6FF744(&qword_1EE015DB8);
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v26 = sub_1DD6FBE88();
    v27(v26);
    *v28 = a10;
  }

  sub_1DD6E1EC8(v10);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7C048C()
{
  sub_1DD705CF0();
  if (v2 == 0x7972616D6D7573 && v1 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7C04F4(uint64_t a1)
{
  v2 = sub_1DD801140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0530(uint64_t a1)
{
  v2 = sub_1DD801140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryPlaceholder.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11A70, &qword_1DD8898C0);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD801140();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.formatStringVariableCaptureReference.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD710A9C(&qword_1ECD11A88, &qword_1DD8898D0);
  sub_1DD6E1224(v2, qword_1ECD10B98);
  sub_1DD6E0540(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DD7C07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_1DD825C68(a1, a2);
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD732C90(v9, a4);
  v10 = sub_1DD6E87AC();
  sub_1DD6E1224(v10, v11);
  return a5();
}

uint64_t static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.formatStringVariableRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD710A9C(&qword_1ECD11A90, &qword_1DD8898D8);
  sub_1DD6E1224(v2, qword_1ECD10BB0);
  sub_1DD6E0540(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DD7C0914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DD8B6790 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7C09E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t sub_1DD7C0A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C0A5C(uint64_t a1)
{
  v2 = sub_1DD801194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0A98(uint64_t a1)
{
  v2 = sub_1DD801194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD11A98, &qword_1DD8898E0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A64();
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD801194();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD11AA8, &qword_1DD8898E8);
    sub_1DD8011E8(&unk_1ECD11AB0);
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v2 = sub_1DD710A9C(&qword_1ECD11AC0, &qword_1DD8898F0);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD801194();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD11AA8, &qword_1DD8898E8);
    sub_1DD82552C();
    sub_1DD8011E8(&unk_1ECD11AC8);
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v6 = sub_1DD6DFF30();
    v7(v6);
    sub_1DD82696C();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static MessagePayload.ActionSummaryUpdate.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20);
  v3 = v1 + v2;
  v4 = *(v1 + v2);
  v5 = *(v1 + v2 + 8);
  v6 = *(v3 + 16);
  v7 = (v0 + v2);
  v8 = v7[2];
  if (v4 != *v7 || v5 != v7[1])
  {
    sub_1DD8256B0();
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_1DD6E0C60();
  v12 = sub_1DD7A8C6C(v10, v11);

  return (v12 & 1) != 0;
}

uint64_t sub_1DD7C0ED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001DD8B67B0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7C0FA4(char a1)
{
  if (a1)
  {
    return 0x7972616D6D7573;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DD7C0FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C1010(uint64_t a1)
{
  v2 = sub_1DD80130C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C104C(uint64_t a1)
{
  v2 = sub_1DD80130C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD11AD8, &qword_1DD8898F8);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD80130C();
  sub_1DD6E1808();
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v6);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = (v1 + *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20));
    v8 = v7[2];
    v11 = *v7;
    v12 = v7[1];
    sub_1DD826FFC();
    sub_1DD801360();
    sub_1DD6E5E30();

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6EFFB4();
  v10(v9);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ActionSummaryUpdate.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v23 = sub_1DD874820();
  v3 = sub_1DD6DDEAC(v23);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  v6 = sub_1DD710A9C(&qword_1ECD11AF0, &qword_1DD889900);
  sub_1DD6DDEAC(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD700BA4();
  v11 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v10);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E2220();
  v15 = v0[3];
  v16 = v0[4];
  sub_1DD824794();
  sub_1DD80130C();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v17);
    sub_1DD825A9C();
    sub_1DD82668C();
    sub_1DD827074();
    sub_1DD826578();
    v18 = sub_1DD825B84();
    v19(v18);
    sub_1DD6FF8F4();
    sub_1DD8013B4();
    sub_1DD6E40F8();
    sub_1DD6FE82C();
    sub_1DD8758D0();
    v20 = sub_1DD6FAE08();
    v21(v20);
    v22 = v1 + *(v11 + 20);
    *v22 = v24;
    *(v22 + 8) = v25;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void static MessagePayload.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v481 = v5;
  v480 = v6;
  v422 = type metadata accessor for ActionExecutionOutcome(0);
  v7 = sub_1DD6DE1C4(v422);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v443 = v10;
  v11 = sub_1DD6E9A9C();
  v12 = type metadata accessor for SessionServerDebuggerEvent(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDEE8();
  v441 = v16;
  v17 = sub_1DD6E9A9C();
  v18 = type metadata accessor for SessionClientDebuggerEvent(v17);
  v19 = sub_1DD6DEA10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DDEE8();
  v440 = v22;
  v23 = sub_1DD6E9A9C();
  v419 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v23);
  v24 = sub_1DD6DE1C4(v419);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DDEE8();
  v442 = v27;
  v28 = sub_1DD6E9A9C();
  v29 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v28);
  v30 = sub_1DD6DEA10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DDEE8();
  v439 = v33;
  v34 = sub_1DD6E9A9C();
  v418 = type metadata accessor for MessagePayload.ExternalAgentOutcome(v34);
  v35 = sub_1DD6DE1C4(v418);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DDEE8();
  v438 = v38;
  v39 = sub_1DD6E9A9C();
  v40 = type metadata accessor for MessagePayload.ExternalAgentRequest(v39);
  v41 = sub_1DD6DEA10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DDEE8();
  v437 = v44;
  v45 = sub_1DD6E9A9C();
  v46 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v45);
  v47 = sub_1DD6DEA10(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6DDEE8();
  v436 = v50;
  v51 = sub_1DD6E9A9C();
  v52 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(v51);
  v53 = sub_1DD6DEA10(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6DDEE8();
  v435 = v56;
  v57 = sub_1DD6E9A9C();
  v58 = type metadata accessor for IntermediateSystemResponseRendered(v57);
  v59 = sub_1DD6DEA10(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD6DDEE8();
  v434 = v62;
  v63 = sub_1DD6E9A9C();
  v64 = type metadata accessor for IntermediateSystemResponse(v63);
  v65 = sub_1DD6DEA10(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD6DDEE8();
  v433 = v68;
  v69 = sub_1DD6E9A9C();
  v70 = type metadata accessor for SystemResponse(v69);
  v71 = sub_1DD6DEA10(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6DDEE8();
  v432 = v74;
  v75 = sub_1DD6E9A9C();
  v76 = type metadata accessor for ActionResponse(v75);
  v77 = sub_1DD6DEA10(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1DD6DDEE8();
  v430 = v80;
  v81 = sub_1DD6E9A9C();
  v82 = type metadata accessor for SystemPromptResolution(v81);
  v83 = sub_1DD6DEA10(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6DDEE8();
  v429 = v86;
  v87 = sub_1DD6E9A9C();
  v421 = type metadata accessor for SystemPrompt(v87);
  v88 = sub_1DD6DE1C4(v421);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  sub_1DD6DDEE8();
  v431 = v91;
  v92 = sub_1DD6E9A9C();
  v93 = type metadata accessor for MessagePayload.ClientActionResult(v92);
  v94 = sub_1DD6DEA10(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  sub_1DD6DDEE8();
  v428 = v97;
  v98 = sub_1DD6E9A9C();
  v99 = type metadata accessor for MessagePayload.ClientAction(v98);
  v100 = sub_1DD6DEA10(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6DDEE8();
  v427 = v103;
  v104 = sub_1DD6E9A9C();
  v417 = type metadata accessor for MessagePayload.ClientEffectResolved(v104);
  v105 = sub_1DD6DE1C4(v417);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  sub_1DD6DDEE8();
  v426 = v108;
  v109 = sub_1DD6E9A9C();
  v110 = type metadata accessor for MessagePayload.ClientEffectInvocation(v109);
  v111 = sub_1DD6DEA10(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  sub_1DD6DDEE8();
  v424 = v114;
  v115 = sub_1DD6E9A9C();
  v416 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v115);
  v116 = sub_1DD6DE1C4(v416);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  sub_1DD6DDEE8();
  v425 = v119;
  v120 = sub_1DD6E9A9C();
  v121 = type metadata accessor for MessagePayload.Request(v120);
  v122 = sub_1DD6DEA10(v121);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122);
  sub_1DD6DDEE8();
  v423 = v125;
  v126 = sub_1DD6E9A9C();
  v127 = type metadata accessor for MessagePayload.UserTurnStarted(v126);
  v128 = sub_1DD6DEA10(v127);
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  sub_1DD6DDEE8();
  v420 = v131;
  v132 = sub_1DD6E9A9C();
  v479 = type metadata accessor for MessagePayload(v132);
  v133 = sub_1DD6DE1C4(v479);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  sub_1DD6DE21C();
  v478 = v136 - v137;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v138);
  sub_1DD6F1780();
  v473 = v139;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v140);
  sub_1DD6F1780();
  v472 = v141;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v142);
  sub_1DD6F1780();
  v476 = v143;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v144);
  sub_1DD6F1780();
  v475 = v145;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v146);
  sub_1DD6F1780();
  v474 = v147;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v148);
  sub_1DD6F1780();
  v477 = v149;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v150);
  sub_1DD6F1780();
  v470 = v151;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v152);
  sub_1DD6F1780();
  v467 = v153;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v154);
  sub_1DD6F1780();
  v465 = v155;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v156);
  sub_1DD6F1780();
  v471 = v157;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v158);
  sub_1DD6F1780();
  v469 = v159;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v160);
  sub_1DD6F1780();
  v468 = v161;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v162);
  sub_1DD6F1780();
  v466 = v163;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v164);
  sub_1DD6F1780();
  v461 = v165;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v166);
  sub_1DD6F1780();
  v459 = v167;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v168);
  sub_1DD6F1780();
  v457 = v169;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v170);
  sub_1DD6F1780();
  v463 = v171;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v172);
  sub_1DD6F1780();
  v462 = v173;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v174);
  sub_1DD6F1780();
  v460 = v175;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v176);
  sub_1DD6F1780();
  v458 = v177;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v178);
  sub_1DD6F1780();
  v456 = v179;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v180);
  sub_1DD6F1780();
  v464 = v181;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v182);
  sub_1DD6F1780();
  v452 = v183;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v184);
  sub_1DD6F1780();
  v451 = v185;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v186);
  sub_1DD6F1780();
  v454 = v187;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v188);
  sub_1DD6F1780();
  v453 = v189;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v190);
  sub_1DD6F1780();
  v450 = v191;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v192);
  sub_1DD6F1780();
  v455 = v193;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v194);
  sub_1DD6F1780();
  v449 = v195;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v196);
  sub_1DD6F1780();
  v447 = v197;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v198);
  sub_1DD6F1780();
  v446 = v199;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v200);
  sub_1DD6F1780();
  v445 = v201;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v202);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v203);
  sub_1DD6F1780();
  v444 = v204;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v205);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v206);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v207);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v208);
  sub_1DD6F1780();
  v448 = v209;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v210);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v211);
  v213 = (&v416 - v212);
  v214 = sub_1DD710A9C(&qword_1ECD11B00, &qword_1DD889908);
  sub_1DD6DEA10(v214);
  v216 = *(v215 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v217);
  sub_1DD6DEBA0();
  v219 = v1 + *(v218 + 56);
  sub_1DD6E5870();
  v481 = v219;
  sub_1DD6E5870();
  sub_1DD770D98();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD703A24();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1DD6E59B8();
        sub_1DD8256C8();
        static MessagePayload.Request.== infix(_:_:)();
        sub_1DD6E5ABC();
        sub_1DD6E58E0();
        goto LABEL_215;
      }

      sub_1DD8259EC();
      goto LABEL_198;
    case 2u:
      if (sub_1DD827890() == 2)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 3u:
      if (sub_1DD827890() == 3)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 4u:
      if (sub_1DD827890() == 4)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 5u:
      sub_1DD6DF42C();
      v296 = v448;
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      v297 = v425;
      sub_1DD6E59B8();
      v298 = v296[1];
      v299 = v297[1];
      if (v298)
      {
        if (!v299)
        {
          goto LABEL_218;
        }

        v300 = *v296 == *v297 && v298 == v299;
        if (!v300 && (sub_1DD875A30() & 1) == 0)
        {
          goto LABEL_218;
        }
      }

      else if (v299)
      {
        goto LABEL_218;
      }

      sub_1DD826568(v416);
      if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
      {
LABEL_214:
        sub_1DD6E5ABC();
        sub_1DD770D4C();
        goto LABEL_215;
      }

LABEL_218:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      goto LABEL_219;
    case 6u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      v311 = *v4;
      v312 = *(v4 + 8);
      v313 = *(v4 + 16);
      v314 = v481;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v315 = *v314;
        v316 = *(v314 + 8);
        v317 = v314[2];
        *&v485[0] = v311;
        BYTE8(v485[0]) = v312;
        *&v485[1] = v313;
        *&v484[0] = v315;
        BYTE8(v484[0]) = v316;
        *&v484[1] = v317;
        sub_1DD82750C();
        static MessagePayload.SessionError.== infix(_:_:)();
        v318 = sub_1DD6F4D4C();
        sub_1DD71900C(v318);

        sub_1DD71900C(v311);
        goto LABEL_113;
      }

      sub_1DD71900C(v311);
      goto LABEL_197;
    case 7u:
      sub_1DD6E5344();
      v264 = v1;
      sub_1DD6F4D4C();
      sub_1DD6E5870();
      v266 = *v2;
      v265 = *(v2 + 8);
      v267 = *(v2 + 16);
      v268 = *(v2 + 24);
      v269 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_190;
      }

      v270 = *v269;
      v271 = v269[1];
      v272 = *(v269 + 16);
      v273 = v269[3];
      if (v266 != v270 || v265 != v271)
      {
        sub_1DD8258C4();
        if ((sub_1DD6FA430() & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      if (v267 != v272)
      {
        goto LABEL_210;
      }

      sub_1DD7029A8();
      sub_1DD715F90();
      v276 = v275;

      if (v276)
      {
        goto LABEL_216;
      }

      goto LABEL_220;
    case 8u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      v264 = v1;
      v325 = v0[1];
      v324 = v0[2];
      v326 = v0[5];
      v327 = v481;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

LABEL_190:

        v1 = v264;
        goto LABEL_199;
      }

      v328 = v0[4];
      v329 = *(v0 + 24);
      v330 = *v0;
      v331 = *v327;
      v332 = v327[1];
      v333 = v327[2];
      v334 = *(v327 + 24);
      v335 = v327[4];
      v336 = v327[5];
      *&v485[0] = v330;
      *(&v485[0] + 1) = v325;
      *&v485[1] = v324;
      BYTE8(v485[1]) = v329;
      *&v485[2] = v328;
      *(&v485[2] + 1) = v326;
      *&v484[0] = v331;
      *(&v484[0] + 1) = v332;
      *&v484[1] = v333;
      BYTE8(v484[1]) = v334;
      *&v484[2] = v335;
      *(&v484[2] + 1) = v336;
      sub_1DD82750C();
      static MessagePayload.Query.== infix(_:_:)();

LABEL_113:

      sub_1DD6E6ABC();
      goto LABEL_217;
    case 9u:
      sub_1DD6DF42C();
      v249 = v444;
      sub_1DD6E5870();
      v250 = *v249;
      v251 = v249[3];
      v252 = v481;
      sub_1DD825B90();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_196;
      }

      v253 = v249[2];
      v254 = *(v249 + 8);
      v255 = *v252;
      v256 = *(v252 + 8);
      v257 = v252[2];
      v258 = v252[3];
      *&v485[0] = v250;
      BYTE8(v485[0]) = v254;
      *&v485[1] = v253;
      *(&v485[1] + 1) = v251;
      *&v484[0] = v255;
      BYTE8(v484[0]) = v256;
      *&v484[1] = v257;
      *(&v484[1] + 1) = v258;
      v259 = sub_1DD82750C();
      static MessagePayload.SpeechQuery.== infix(_:_:)(v259, v260);

      sub_1DD6E6ABC();
      goto LABEL_217;
    case 0xAu:
      sub_1DD6E5344();
      sub_1DD827530();
      sub_1DD6E5870();
      v222 = *v3;
      v221 = v3[1];
      v319 = v3[2];
      v224 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_104;
      }

      goto LABEL_110;
    case 0xBu:
      sub_1DD6DF42C();
      v239 = v445;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 11)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0xCu:
      sub_1DD6DF42C();
      v239 = v446;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 12)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0xDu:
      sub_1DD6DF42C();
      v305 = v447;
      sub_1DD6E5870();
      v306 = *v305;
      v307 = v481;
      sub_1DD703A24();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_197;
      }

      v308 = *v307;
      v309 = sub_1DD6E58E0();
      sub_1DD7152B8(v309, v310);
      sub_1DD827818();

      goto LABEL_216;
    case 0xEu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientEffectInvocation.== infix(_:_:)();
      goto LABEL_167;
    case 0xFu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD826568(v417);
        static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)();
        v263 = v262;
        sub_1DD6E1180();
        sub_1DD6E5ABC();
        if (v263)
        {
          sub_1DD6E1180();
          goto LABEL_215;
        }
      }

      else
      {
        sub_1DD6E1180();
        sub_1DD6E5ABC();
      }

      sub_1DD6E1180();
LABEL_219:
      sub_1DD6E5ABC();
      goto LABEL_220;
    case 0x10u:
      sub_1DD6DF42C();
      v243 = v450;
      sub_1DD6E5870();
      memcpy(v485, v243, 0x68uLL);
      v244 = v481;
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        memcpy(v484, v244, 0x68uLL);
        memcpy(v483, v243, 0x68uLL);
        memcpy(v482, v244, 0x68uLL);
        static MessagePayload.ActionWillExecute.== infix(_:_:)(v483, v482);
        sub_1DD800214(v484);
        sub_1DD800214(v485);
        goto LABEL_216;
      }

      sub_1DD800214(v485);
      goto LABEL_199;
    case 0x11u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientAction.== infix(_:_:)();
      goto LABEL_167;
    case 0x12u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientActionResult.== infix(_:_:)();
      goto LABEL_167;
    case 0x13u:
      sub_1DD6E5344();
      v480 = v1;
      v343 = v451;
      sub_1DD6E5870();
      v345 = *v343;
      v344 = v343[1];
      v347 = v343[2];
      v346 = v343[3];
      v348 = v343[4];
      v349 = v343[5];
      v350 = v481;
      sub_1DD825B90();
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v398 = sub_1DD6E5DB0();
        sub_1DD6E6658(v398, v399);
        v400 = sub_1DD6E0F70();
        sub_1DD6E6658(v400, v401);

        v1 = v480;
        goto LABEL_199;
      }

      v478 = v349;
      v479 = v346;
      v351 = *v350;
      v352 = v350[1];
      v353 = v350[2];
      v354 = v350[3];
      v355 = v350[4];
      v356 = v350[5];
      v477 = v355;
      v357 = sub_1DD6E5DB0();
      if ((MEMORY[0x1E12B41A0](v357) & 1) == 0 || (v358 = sub_1DD827734(), (MEMORY[0x1E12B41A0](v358) & 1) == 0))
      {
        v402 = sub_1DD703A24();
        sub_1DD6E6658(v402, v403);
        v404 = sub_1DD700B4C();
        sub_1DD6E6658(v404, v405);

        v406 = sub_1DD6E5DB0();
        sub_1DD6E6658(v406, v407);
        v408 = sub_1DD827734();
        sub_1DD6E6658(v408, v409);

        goto LABEL_220;
      }

      if (v348 == v477 && v478 == v356)
      {
        sub_1DD6E6658(v351, v352);
        v410 = sub_1DD700B4C();
        sub_1DD6E6658(v410, v411);

        v412 = sub_1DD6E5DB0();
        sub_1DD6E6658(v412, v413);
        v414 = sub_1DD827734();
        sub_1DD6E6658(v414, v415);
      }

      else
      {
        LODWORD(v481) = sub_1DD875A30();
        v360 = sub_1DD703A24();
        sub_1DD6E6658(v360, v361);
        v362 = sub_1DD700B4C();
        sub_1DD6E6658(v362, v363);

        v364 = sub_1DD6E5DB0();
        sub_1DD6E6658(v364, v365);
        v366 = sub_1DD827734();
        sub_1DD6E6658(v366, v367);

        if ((v481 & 1) == 0)
        {
          goto LABEL_220;
        }
      }

      goto LABEL_216;
    case 0x14u:
      sub_1DD6DF42C();
      v239 = v452;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 20)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0x15u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD8264A8(*(v421 + 20));
        v303 = v235 && v301 == v302;
        if (v303 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD8267E4(*(v421 + 24));
          static SystemPrompt.Prompt.== infix(_:_:)();
          if (v304)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_218;
    case 0x16u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SystemPromptResolution.== infix(_:_:)();
      goto LABEL_167;
    case 0x17u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static ActionResponse.== infix(_:_:)();
      goto LABEL_167;
    case 0x18u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      v261 = sub_1DD6E9594();
      static SystemResponse.== infix(_:_:)(v261);
      goto LABEL_167;
    case 0x19u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static IntermediateSystemResponse.== infix(_:_:)();
      goto LABEL_167;
    case 0x1Au:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static IntermediateSystemResponseRendered.== infix(_:_:)();
      goto LABEL_167;
    case 0x1Bu:
      sub_1DD6DF42C();
      v239 = v457;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 27)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0x1Cu:
      sub_1DD6DF42C();
      v239 = v459;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 28)
      {
        goto LABEL_197;
      }

LABEL_145:
      v384 = *v213;
      v385 = v213[1];
      if (v219 == v384 && v239 == v385)
      {
        goto LABEL_152;
      }

      sub_1DD770D4C();
      sub_1DD6FA430();
      sub_1DD827818();
      goto LABEL_150;
    case 0x1Du:
      if (sub_1DD827890() == 29)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 0x1Eu:
      sub_1DD6DF42C();
      v337 = v461;
      sub_1DD6E5870();
      v339 = *v337;
      v338 = v337[1];
      v340 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_197;
      }

      v341 = v340[1];
      if (!v338)
      {

        if (!v341)
        {
          goto LABEL_153;
        }

LABEL_225:

LABEL_220:
        sub_1DD6E6ABC();
        sub_1DD6E5ABC();
        goto LABEL_221;
      }

      if (!v341)
      {

        goto LABEL_225;
      }

      if (v339 == *v340 && v338 == v341)
      {
LABEL_152:

LABEL_153:

        goto LABEL_216;
      }

      sub_1DD6E0C60();
      LOBYTE(v219) = sub_1DD8278F0();

LABEL_150:

      if ((v219 & 1) == 0)
      {
        goto LABEL_220;
      }

LABEL_216:
      sub_1DD6E6ABC();
LABEL_217:
      sub_1DD6E5ABC();
LABEL_221:
      sub_1DD6DFED0();
      return;
    case 0x1Fu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentTextQuery.== infix(_:_:)();
      goto LABEL_167;
    case 0x20u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentSpeechQuery.== infix(_:_:)();
      goto LABEL_167;
    case 0x21u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentRequest.== infix(_:_:)();
      goto LABEL_167;
    case 0x22u:
      sub_1DD6DF42C();
      v240 = v471;
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      v241 = v438;
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      static StatementOutcome.== infix(_:_:)();
      if (v242 & 1) != 0 && (sub_1DD7152B8(*(v240 + *(v418 + 20)), *(v241 + *(v418 + 20))))
      {
        goto LABEL_214;
      }

      goto LABEL_218;
    case 0x23u:
      sub_1DD6E5344();
      sub_1DD827530();
      v225 = v465;
      sub_1DD6E5870();
      v227 = *v225;
      v226 = v225[1];
      v228 = v225[2];
      v229 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_110;
      }

      goto LABEL_11;
    case 0x24u:
      sub_1DD6E5344();
      sub_1DD827530();
      v230 = v467;
      sub_1DD6E5870();
      v227 = *v230;
      v226 = v230[1];
      v231 = v230[2];
      v229 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_110;
      }

LABEL_11:
      v232 = *v229;
      v233 = v229[1];
      v234 = v229[2];
      v235 = v227 == v232 && v226 == v233;
      if (!v235)
      {
        sub_1DD8258C4();
        if ((sub_1DD6FA430() & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      v236 = sub_1DD7029A8();
      v238 = sub_1DD7152B8(v236, v237);
      goto LABEL_140;
    case 0x25u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientUndoRedoRequest.== infix(_:_:)();
      goto LABEL_167;
    case 0x26u:
      sub_1DD6DF42C();
      v387 = v477;
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      v388 = v442;
      sub_1DD6E59B8();
      sub_1DD6DFF24();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        v389 = *(v419 + 20);
        v390 = *(v387 + v389);
        v391 = *(v387 + v389 + 8);
        v392 = *(v387 + v389 + 16);
        v393 = (v388 + v389);
        v394 = v393[2];
        v395 = v390 == *v393 && v391 == v393[1];
        if (v395 || (sub_1DD8278F0() & 1) != 0)
        {

          v396 = sub_1DD6E0F70();
          sub_1DD7A8C6C(v396, v397);
          sub_1DD827878();

          if (v1)
          {
            sub_1DD6FF708();
            sub_1DD6E5ABC();
            sub_1DD8265C8();
            sub_1DD6E5ABC();
            goto LABEL_216;
          }
        }
      }

      sub_1DD6FF708();
      sub_1DD6E5ABC();
      sub_1DD8265C8();
      sub_1DD6E5ABC();
      goto LABEL_220;
    case 0x27u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SessionClientDebuggerEvent.Payload.== infix(_:_:)();
      goto LABEL_167;
    case 0x28u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SessionServerDebuggerEvent.Payload.== infix(_:_:)();
LABEL_167:
      sub_1DD6E5ABC();
      goto LABEL_215;
    case 0x29u:
      sub_1DD6DF42C();
      v277 = v476;
      sub_1DD6E5870();
      v278 = v277[1];
      v485[0] = *v277;
      v485[1] = v278;
      v279 = v277[3];
      v485[2] = v277[2];
      v485[3] = v279;
      v280 = v481;
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        v281 = v280[1];
        v482[0] = *v280;
        v482[1] = v281;
        v282 = v280[3];
        v284 = *v280;
        v283 = v280[1];
        v482[2] = v280[2];
        v482[3] = v282;
        v285 = v277[1];
        v490 = *v277;
        v491 = v285;
        v286 = v277[3];
        v492 = v277[2];
        v493 = v286;
        v486 = v284;
        v487 = v283;
        v287 = v280[3];
        v488 = v280[2];
        v489 = v287;
        v288 = sub_1DD82750C();
        sub_1DD80149C(v288, v289);
        sub_1DD80149C(v482, v484);
        static SessionStatusUpdate.Payload.== infix(_:_:)(&v490, &v486, v290, v291, v292, v293, v294, v295);
        v483[0] = v486;
        v483[1] = v487;
        v483[2] = v488;
        v483[3] = v489;
        sub_1DD8014F8(v483);
        v484[0] = v490;
        v484[1] = v491;
        v484[2] = v492;
        v484[3] = v493;
        sub_1DD8014F8(v484);
        sub_1DD801448(v482);
        sub_1DD801448(v485);
        goto LABEL_216;
      }

      sub_1DD801448(v485);
      goto LABEL_199;
    case 0x2Au:
      sub_1DD6DF42C();
      v368 = v472;
      sub_1DD6E5870();
      v369 = *v368;
      v370 = v368[1];
      v371 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 42)
      {
LABEL_196:

LABEL_197:

        goto LABEL_199;
      }

      v372 = *v371;
      v373 = v371[1];
      sub_1DD6E58E0();
      sub_1DD715384();
      if ((v374 & 1) == 0)
      {
        goto LABEL_210;
      }

      v375 = sub_1DD7029A8();
      sub_1DD715528(v375, v376, v377, v378, v379, v380, v381, v382, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
      goto LABEL_140;
    case 0x2Bu:
      sub_1DD6E5344();
      sub_1DD827530();
      v220 = v473;
      sub_1DD6E5870();
      v222 = *v220;
      v221 = v220[1];
      v223 = v220[2];
      v224 = v481;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 43)
      {
LABEL_110:

        v1 = v2;
        goto LABEL_199;
      }

LABEL_104:
      v320 = *v224;
      v321 = v224[1];
      v322 = v224[2];
      if (v222 != v320 || v221 != v321)
      {
        sub_1DD8258C4();
        if ((sub_1DD6FA430() & 1) == 0)
        {
LABEL_210:

          goto LABEL_220;
        }
      }

      sub_1DD7029A8();
      sub_1DD7A874C();
LABEL_140:
      v383 = v238;

      if (v383)
      {
        goto LABEL_216;
      }

      goto LABEL_220;
    case 0x2Cu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD8264A8(*(v422 + 20));
        v247 = v235 && v245 == v246;
        if (v247 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD8267E4(*(v422 + 24));
          static StatementOutcome.== infix(_:_:)();
          if (v248)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_218;
    default:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD6FF97C();
        static MessagePayload.UserTurnStarted.== infix(_:_:)();
        sub_1DD6E5ABC();
LABEL_215:
        sub_1DD6E5ABC();
        goto LABEL_216;
      }

      sub_1DD7061EC();
LABEL_198:
      sub_1DD6E5ABC();
LABEL_199:
      sub_1DD824154(v1, &qword_1ECD11B00);
      goto LABEL_221;
  }
}

void static SystemPrompt.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v1 = type metadata accessor for SystemPrompt(0);
    sub_1DD826354(v1);
    sub_1DD824820(v2);
    v5 = v5 && v3 == v4;
    if (v5 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD8263A4(*(v0 + 24));

      static SystemPrompt.Prompt.== infix(_:_:)();
    }
  }
}

void static ActionResponse.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v5 = sub_1DD827638();
  v75 = type metadata accessor for ResponseOutput(v5);
  v6 = sub_1DD6DE1C4(v75);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v71 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E5D10(v14, v71);
  v74 = sub_1DD710A9C(&qword_1ECD11B10, &qword_1DD889918);
  sub_1DD6DE1C4(v74);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v76 = v18;
  sub_1DD6E9A9C();
  v19 = sub_1DD874820();
  v20 = sub_1DD6DDEAC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E6200();
  v25 = sub_1DD6F4D4C();
  v27 = sub_1DD710A9C(v25, v26);
  sub_1DD6DEA10(v27);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DEA6C();
  v31 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v31);
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E9560();
  v36 = *(v35 + 56);
  sub_1DD825B90();
  sub_1DD827050();
  sub_1DD700E60();
  sub_1DD827050();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v37)
  {
    sub_1DD6E26E4(v2 + v36);
    if (v37)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_13;
    }

LABEL_9:
    v41 = &qword_1ECD10E30;
    v42 = v2;
LABEL_10:
    sub_1DD824154(v42, v41);
    goto LABEL_11;
  }

  sub_1DD825998();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v36);
  if (v37)
  {
    v38 = *(v22 + 8);
    v39 = sub_1DD770D4C();
    v40(v39);
    goto LABEL_9;
  }

  (*(v22 + 32))(v1, v2 + v36, v19);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v43);
  sub_1DD700B4C();
  v44 = sub_1DD8750F0();
  v45 = *(v22 + 8);
  v46 = sub_1DD8265C8();
  v45(v46);
  v47 = sub_1DD770D4C();
  v45(v47);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if ((v44 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v48 = type metadata accessor for ActionResponse(0);
  v49 = v48[5];
  v50 = *(v4 + v49 + 8);
  if (*(v0 + v49 + 8))
  {
    if (!v50)
    {
      goto LABEL_11;
    }

    sub_1DD824D88((v0 + v49));
    v53 = v37 && v51 == v52;
    if (!v53 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v50)
  {
    goto LABEL_11;
  }

  sub_1DD8264A8(v48[6]);
  if (v37)
  {
    v56 = v54 == v55;
  }

  else
  {
    v56 = 0;
  }

  if (!v56 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_11;
  }

  v57 = v48[7];
  static ActionOutcome.== infix(_:_:)();
  if ((v58 & 1) == 0)
  {
    goto LABEL_11;
  }

  v59 = v48[8];
  static ResponseManifest.== infix(_:_:)();
  if ((v60 & 1) == 0)
  {
    goto LABEL_11;
  }

  v61 = v48[9];
  v62 = *(v74 + 48);
  sub_1DD700E60();
  sub_1DD700E60();
  sub_1DD6DE1FC(v76, 1, v75);
  if (!v37)
  {
    sub_1DD700E60();
    sub_1DD6DE1FC(v76 + v62, 1, v75);
    if (!v63)
    {
      sub_1DD82477C();
      sub_1DD6E59B8();
      v64 = static ResponseOutput.== infix(_:_:)(v73, v72);
      sub_1DD6E5ABC();
      sub_1DD8256EC();
      sub_1DD6E5ABC();
      sub_1DD824154(v76, &qword_1ECD11B08);
      if ((v64 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

    sub_1DD824F00();
    sub_1DD6E5ABC();
    goto LABEL_37;
  }

  sub_1DD6DE1FC(v76 + v62, 1, v75);
  if (!v37)
  {
LABEL_37:
    v41 = &qword_1ECD11B10;
    v42 = v76;
    goto LABEL_10;
  }

  sub_1DD824154(v76, &qword_1ECD11B08);
LABEL_39:
  sub_1DD826BE0(v0 + v48[10]);
  if (v67 && v65)
  {
    sub_1DD824D88(v66);
    if (v37)
    {
      v70 = v68 == v69;
    }

    else
    {
      v70 = 0;
    }

    if (!v70)
    {
      sub_1DD875A30();
    }
  }

LABEL_11:
  sub_1DD6DFED0();
}

void static IntermediateSystemResponse.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = sub_1DD827638();
  v115 = type metadata accessor for ResponseOutput(v4);
  v5 = sub_1DD6DE1C4(v115);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  v8 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD82486C(v12, v113);
  v114 = sub_1DD710A9C(&qword_1ECD11B10, &qword_1DD889918);
  sub_1DD6DE1C4(v114);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD824F70(v16);
  v17 = sub_1DD874820();
  v18 = sub_1DD6DDEAC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E535C();
  v23 = &qword_1ECD0E540;
  v24 = sub_1DD6F9BF8();
  v26 = sub_1DD710A9C(v24, v25);
  sub_1DD6DEA10(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDFE4();
  v30 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v30);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DEBA0();
  v35 = *(v34 + 56);
  sub_1DD8256EC();
  sub_1DD702AB4();
  sub_1DD700E60();
  sub_1DD702AB4();
  sub_1DD700E60();
  sub_1DD6E26E4(v1);
  if (v36)
  {
    sub_1DD6E26E4(v1 + v35);
    if (v36)
    {
      sub_1DD824154(v1, &qword_1ECD0E540);
      goto LABEL_12;
    }

LABEL_9:
    v40 = &qword_1ECD10E30;
LABEL_10:
    sub_1DD824154(v1, v40);
    goto LABEL_43;
  }

  sub_1DD6F4D4C();
  sub_1DD700E60();
  sub_1DD6E26E4(v1 + v35);
  if (v36)
  {
    v37 = *(v20 + 8);
    v38 = sub_1DD6F441C();
    v39(v38);
    goto LABEL_9;
  }

  (*(v20 + 32))(v0, v1 + v35, v17);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v41);
  sub_1DD825650();
  v23 = sub_1DD8750F0();
  v42 = *(v20 + 8);
  v43 = sub_1DD770D4C();
  v42(v43);
  v44 = sub_1DD6F441C();
  v42(v44);
  sub_1DD824154(v1, &qword_1ECD0E540);
  if ((v23 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v45 = type metadata accessor for IntermediateSystemResponse(0);
  sub_1DD826B0C(v45);
  sub_1DD826A18(v46);
  if (!v36)
  {
    if (v2 == 1)
    {
      v59 = sub_1DD824A70();
      sub_1DD703958(v59, v1, 1);
      v60 = sub_1DD6FABC8();
      sub_1DD703958(v60, v61, v62);

LABEL_29:
      v66 = sub_1DD6FABC8();
      sub_1DD70148C(v66, v67, v68);
      v69 = sub_1DD824DD8();
LABEL_42:
      sub_1DD70148C(v69, v70, v71);
      goto LABEL_43;
    }

    if (&qword_1DD878B10 == v0)
    {
      if (!v17)
      {
        v101 = sub_1DD6E6378();
        sub_1DD703958(v101, v102, 0);
        v83 = 0;
        if (!v2)
        {
          v103 = sub_1DD6DED5C();
          sub_1DD703958(v103, v104, 0);
          v105 = sub_1DD6E6378();
          sub_1DD703958(v105, v106, 0);
          v107 = sub_1DD6DED5C();
          v109 = 0;
          goto LABEL_60;
        }

LABEL_40:
        v84 = sub_1DD824DD8();
        sub_1DD703958(v84, v85, v86);
        v87 = sub_1DD6E6378();
        sub_1DD703958(v87, v88, v83);
        v89 = sub_1DD824DD8();
        sub_1DD70148C(v89, v90, v91);
        goto LABEL_41;
      }

      if (v2)
      {
        if (v23 != v1 || v17 != v2)
        {
          sub_1DD8265C8();
          sub_1DD827050();
          v73 = sub_1DD875A30();
          sub_1DD824A70();
          sub_1DD8259B0();
          sub_1DD703958(v74, v75, v76);
          sub_1DD824A70();
          sub_1DD8259B0();
          sub_1DD70148C(v77, v78, v79);
          if (v73)
          {
            goto LABEL_61;
          }

LABEL_41:

          v69 = sub_1DD6FABC8();
          goto LABEL_42;
        }

        sub_1DD824A70();
        sub_1DD8257D4();
        sub_1DD703958(v110, v111, v112);
        sub_1DD824A70();
        sub_1DD8257D4();
LABEL_60:
        sub_1DD70148C(v107, v108, v109);
LABEL_61:

        goto LABEL_16;
      }
    }

    v80 = sub_1DD6FABC8();
    sub_1DD703958(v80, v81, v82);
    v83 = v17;
    goto LABEL_40;
  }

  v47 = sub_1DD6E6378();
  sub_1DD703958(v47, v48, 1);
  if (v2 != 1)
  {
    v63 = sub_1DD824DD8();
    sub_1DD703958(v63, v64, v65);
    goto LABEL_29;
  }

  v49 = sub_1DD6DED5C();
  sub_1DD703958(v49, v50, 1);
LABEL_16:
  v51 = sub_1DD6FABC8();
  sub_1DD70148C(v51, v52, v53);
  sub_1DD824A14(v3[6]);
  if (v36)
  {
    v56 = v54 == v55;
  }

  else
  {
    v56 = 0;
  }

  if (!v56 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_43;
  }

  v57 = v3[7];
  v58 = *(v114 + 48);
  v1 = v116;
  sub_1DD827158();
  sub_1DD827158();
  sub_1DD6DE1FC(v116, 1, v115);
  if (!v36)
  {
    sub_1DD700E60();
    sub_1DD6E26E4(v116 + v58);
    if (!v92)
    {
      sub_1DD82477C();
      sub_1DD6E59B8();
      v93 = sub_1DD825C74();
      static ResponseOutput.== infix(_:_:)(v93, v94);
      sub_1DD825D50();
      sub_1DD6E5ABC();
      sub_1DD825650();
      sub_1DD6E5ABC();
      sub_1DD824154(v116, &qword_1ECD11B08);
      if ((v115 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

    sub_1DD824F00();
    sub_1DD6E5ABC();
    goto LABEL_47;
  }

  sub_1DD6E26E4(v116 + v58);
  if (!v36)
  {
LABEL_47:
    v40 = &qword_1ECD11B10;
    goto LABEL_10;
  }

  sub_1DD824154(v116, &qword_1ECD11B08);
LABEL_49:
  sub_1DD826BE0(v3 + v3[8]);
  if (v97 && v95)
  {
    sub_1DD824D88(v96);
    if (v36)
    {
      v100 = v98 == v99;
    }

    else
    {
      v100 = 0;
    }

    if (!v100)
    {
      sub_1DD875A30();
    }
  }

LABEL_43:
  sub_1DD6DFED0();
}

void static IntermediateSystemResponseRendered.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v3 = sub_1DD874820();
  v4 = sub_1DD6DDEAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v9 = sub_1DD6ED130();
  v11 = sub_1DD710A9C(v9, v10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  v20 = *(v19 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (!v21)
  {
    sub_1DD6EFF74();
    sub_1DD700E60();
    sub_1DD6E26E4(v2 + v20);
    if (!v21)
    {
      v25 = sub_1DD8252A0();
      v26(v25);
      sub_1DD6E14DC();
      sub_1DD6E1E84(v27);
      sub_1DD6E60FC();
      v28 = sub_1DD8750F0();
      v29 = *(v6 + 8);
      v30 = sub_1DD770D4C();
      v29(v30);
      v31 = sub_1DD8258C4();
      v29(v31);
      sub_1DD824154(v2, &qword_1ECD0E540);
      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_11;
    }

    v22 = *(v6 + 8);
    v23 = sub_1DD8258C4();
    v24(v23);
LABEL_9:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_39;
  }

  sub_1DD6E26E4(v2 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1DD824154(v2, &qword_1ECD0E540);
LABEL_11:
  v32 = type metadata accessor for IntermediateSystemResponseRendered(0);
  v33 = v32[5];
  v35 = *(v1 + v33);
  v34 = *(v1 + v33 + 8);
  v36 = *(v1 + v33 + 16);
  v37 = (v0 + v33);
  v38 = v37[2];
  if (v36 == 1)
  {
    v39 = sub_1DD770D4C();
    sub_1DD703958(v39, v40, 1);
    if (v38 == 1)
    {
      v41 = sub_1DD6ED130();
      sub_1DD703958(v41, v42, 1);
      goto LABEL_14;
    }

    v61 = sub_1DD705DD4();
    sub_1DD703958(v61, v62, v63);
    goto LABEL_25;
  }

  if (v38 == 1)
  {
    v53 = sub_1DD824C78();
    sub_1DD703958(v53, v54, v55);
    v56 = sub_1DD6ED130();
    sub_1DD703958(v56, v57, 1);
    v58 = sub_1DD824C78();
    sub_1DD703958(v58, v59, v60);

LABEL_25:
    v64 = sub_1DD824C78();
    sub_1DD70148C(v64, v65, v66);
    v67 = sub_1DD705DD4();
LABEL_38:
    sub_1DD70148C(v67, v68, v69);
    goto LABEL_39;
  }

  if (v35 != *v37)
  {
    goto LABEL_35;
  }

  if (!v36)
  {
    v97 = sub_1DD770D4C();
    sub_1DD703958(v97, v98, 0);
    v87 = 0;
    if (!v38)
    {
      v99 = sub_1DD6ED130();
      sub_1DD703958(v99, v100, 0);
      v101 = sub_1DD770D4C();
      sub_1DD703958(v101, v102, 0);
      v103 = sub_1DD6ED130();
      v105 = 0;
      goto LABEL_45;
    }

LABEL_36:
    v88 = sub_1DD705DD4();
    sub_1DD703958(v88, v89, v90);
    v91 = sub_1DD770D4C();
    sub_1DD703958(v91, v92, v87);
    v93 = sub_1DD705DD4();
    sub_1DD70148C(v93, v94, v95);
    goto LABEL_37;
  }

  if (!v38)
  {
LABEL_35:
    v84 = sub_1DD824C78();
    sub_1DD703958(v84, v85, v86);
    v87 = v36;
    goto LABEL_36;
  }

  if (v34 != v37[1] || v36 != v38)
  {
    sub_1DD8256C8();
    sub_1DD75366C();
    v71 = sub_1DD875A30();
    v72 = sub_1DD824C78();
    sub_1DD703958(v72, v73, v74);
    v75 = sub_1DD705DD4();
    sub_1DD703958(v75, v76, v77);
    v78 = sub_1DD824C78();
    sub_1DD703958(v78, v79, v80);
    v81 = sub_1DD705DD4();
    sub_1DD70148C(v81, v82, v83);
    if (v71)
    {
      goto LABEL_46;
    }

LABEL_37:

    v67 = sub_1DD824C78();
    goto LABEL_38;
  }

  v106 = sub_1DD824C78();
  sub_1DD703958(v106, v107, v108);
  v109 = sub_1DD6F441C();
  sub_1DD703958(v109, v110, v36);
  v111 = sub_1DD824C78();
  sub_1DD703958(v111, v112, v113);
  v103 = sub_1DD6F441C();
  v105 = v36;
LABEL_45:
  sub_1DD70148C(v103, v104, v105);
LABEL_46:

LABEL_14:
  v43 = sub_1DD824C78();
  sub_1DD70148C(v43, v44, v45);
  v46 = v32[6];
  sub_1DD6E8898();
  if (v49)
  {
    if (v47)
    {
      sub_1DD824D88(v48);
      v52 = v21 && v50 == v51;
      if (v52 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_41;
      }
    }
  }

  else if (!v47)
  {
LABEL_41:
    v96 = *(v1 + v32[7]) ^ *(v0 + v32[7]) ^ 1u;
  }

LABEL_39:
  sub_1DD6DFED0();
}

void static PlannerPromptData.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20 = *a1;
  v21 = a1[1];
  v22 = *a2;
  v23 = a2[1];
  sub_1DD715384();
  if (v24)
  {
    v25 = sub_1DD6DDEFC();

    sub_1DD715528(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1DD7C4C0C(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_1DD6DDEFC();

  return v8(v7);
}

void static ActionExecutionOutcome.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v1 = type metadata accessor for ActionExecutionOutcome(0);
    sub_1DD826354(v1);
    sub_1DD824820(v2);
    v5 = v5 && v3 == v4;
    if (v5 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD8263A4(*(v0 + 24));

      static StatementOutcome.== infix(_:_:)();
    }
  }
}

uint64_t sub_1DD7C4D18(uint64_t a1)
{
  v2 = sub_1DD80154C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4D54(uint64_t a1)
{
  v2 = sub_1DD80154C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4D90(uint64_t a1)
{
  v2 = sub_1DD8015A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4DCC(uint64_t a1)
{
  v2 = sub_1DD8015A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4E08(uint64_t a1)
{
  v2 = sub_1DD801DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4E44(uint64_t a1)
{
  v2 = sub_1DD801DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4E80(uint64_t a1)
{
  v2 = sub_1DD801840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4EBC(uint64_t a1)
{
  v2 = sub_1DD801840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4EF8(uint64_t a1)
{
  v2 = sub_1DD8020C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4F34(uint64_t a1)
{
  v2 = sub_1DD8020C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4F70(uint64_t a1)
{
  v2 = sub_1DD802074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4FAC(uint64_t a1)
{
  v2 = sub_1DD802074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4FE8(uint64_t a1)
{
  v2 = sub_1DD802020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5024(uint64_t a1)
{
  v2 = sub_1DD802020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5060(uint64_t a1)
{
  v2 = sub_1DD801F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C509C(uint64_t a1)
{
  v2 = sub_1DD801F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C50D8(uint64_t a1)
{
  v2 = sub_1DD8017EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5114(uint64_t a1)
{
  v2 = sub_1DD8017EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5150(uint64_t a1)
{
  v2 = sub_1DD8021C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C518C(uint64_t a1)
{
  v2 = sub_1DD8021C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C51C8(uint64_t a1)
{
  v2 = sub_1DD802170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5204(uint64_t a1)
{
  v2 = sub_1DD802170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5240(uint64_t a1)
{
  v2 = sub_1DD801ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C527C(uint64_t a1)
{
  v2 = sub_1DD801ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C52B8(uint64_t a1)
{
  v2 = sub_1DD802410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C52F4(uint64_t a1)
{
  v2 = sub_1DD802410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5330(uint64_t a1)
{
  v2 = sub_1DD801894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C536C(uint64_t a1)
{
  v2 = sub_1DD801894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C53A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7C4D10();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7C53D0(uint64_t a1)
{
  v2 = sub_1DD6FAA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C540C(uint64_t a1)
{
  v2 = sub_1DD6FAA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5448(uint64_t a1)
{
  v2 = sub_1DD801B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5484(uint64_t a1)
{
  v2 = sub_1DD801B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C54C0(uint64_t a1)
{
  v2 = sub_1DD801C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C54FC(uint64_t a1)
{
  v2 = sub_1DD801C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5538(uint64_t a1)
{
  v2 = sub_1DD802218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5574(uint64_t a1)
{
  v2 = sub_1DD802218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C55B0(uint64_t a1)
{
  v2 = sub_1DD8027AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C55EC(uint64_t a1)
{
  v2 = sub_1DD8027AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5628(uint64_t a1)
{
  v2 = sub_1DD8026B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5664(uint64_t a1)
{
  v2 = sub_1DD8026B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C56A0(uint64_t a1)
{
  v2 = sub_1DD703164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C56DC(uint64_t a1)
{
  v2 = sub_1DD703164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5718(uint64_t a1)
{
  v2 = sub_1DD80193C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5754(uint64_t a1)
{
  v2 = sub_1DD80193C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5790(uint64_t a1)
{
  v2 = sub_1DD6FDB5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C57CC(uint64_t a1)
{
  v2 = sub_1DD6FDB5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5808(uint64_t a1)
{
  v2 = sub_1DD8018E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5844(uint64_t a1)
{
  v2 = sub_1DD8018E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5880(uint64_t a1)
{
  v2 = sub_1DD801990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C58BC(uint64_t a1)
{
  v2 = sub_1DD801990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C58F8(uint64_t a1)
{
  v2 = sub_1DD8019E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5934(uint64_t a1)
{
  v2 = sub_1DD8019E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5970(uint64_t a1)
{
  v2 = sub_1DD801D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C59AC(uint64_t a1)
{
  v2 = sub_1DD801D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C59E8(uint64_t a1)
{
  v2 = sub_1DD801CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5A24(uint64_t a1)
{
  v2 = sub_1DD801CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5A60(uint64_t a1)
{
  v2 = sub_1DD8022C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5A9C(uint64_t a1)
{
  v2 = sub_1DD8022C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5AD8(uint64_t a1)
{
  v2 = sub_1DD801648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5B14(uint64_t a1)
{
  v2 = sub_1DD801648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5B50(uint64_t a1)
{
  v2 = sub_1DD802608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5B8C(uint64_t a1)
{
  v2 = sub_1DD802608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5BC8(uint64_t a1)
{
  v2 = sub_1DD802368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5C04(uint64_t a1)
{
  v2 = sub_1DD802368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5C40(uint64_t a1)
{
  v2 = sub_1DD802560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5C7C(uint64_t a1)
{
  v2 = sub_1DD802560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5CB8(uint64_t a1)
{
  v2 = sub_1DD8028FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5CF4(uint64_t a1)
{
  v2 = sub_1DD8028FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5D30(uint64_t a1)
{
  v2 = sub_1DD801A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5D6C(uint64_t a1)
{
  v2 = sub_1DD801A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5DA8(uint64_t a1)
{
  v2 = sub_1DD801AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5DE4(uint64_t a1)
{
  v2 = sub_1DD801AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5E20(uint64_t a1)
{
  v2 = sub_1DD801798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5E5C(uint64_t a1)
{
  v2 = sub_1DD801798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5E98(uint64_t a1)
{
  v2 = sub_1DD802854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5ED4(uint64_t a1)
{
  v2 = sub_1DD802854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5F10(uint64_t a1)
{
  v2 = sub_1DD8024B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5F4C(uint64_t a1)
{
  v2 = sub_1DD8024B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5F88(uint64_t a1)
{
  v2 = sub_1DD8016F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5FC4(uint64_t a1)
{
  v2 = sub_1DD8016F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6000(uint64_t a1)
{
  v2 = sub_1DD802758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C603C(uint64_t a1)
{
  v2 = sub_1DD802758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6078(uint64_t a1)
{
  v2 = sub_1DD801E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C60B4(uint64_t a1)
{
  v2 = sub_1DD801E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C60F0(uint64_t a1)
{
  v2 = sub_1DD801E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C612C(uint64_t a1)
{
  v2 = sub_1DD801E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6168(uint64_t a1)
{
  v2 = sub_1DD801D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C61A4(uint64_t a1)
{
  v2 = sub_1DD801D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C61E0(uint64_t a1)
{
  v2 = sub_1DD6F9C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C621C(uint64_t a1)
{
  v2 = sub_1DD6F9C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6258(uint64_t a1)
{
  v2 = sub_1DD802950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C6294(uint64_t a1)
{
  v2 = sub_1DD802950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.init(query:requiredContextProviders:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E7258();
  v14 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD824CB0(v18, v105[0]);
  v19 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E9560();
  v110 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  v23 = sub_1DD6DDEAC(v110);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE21C();
  v112 = v28 - v29;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v30);
  if (!v3)
  {
    goto LABEL_19;
  }

  v111 = (v105 - v31);
  v106 = v7;
  v107 = v5;
  v113 = MEMORY[0x1E69E7CC0];
  v32 = *(v3 + 16);
  v108 = v9;
  if (v32)
  {
    v33 = v3 + 32;
    do
    {
      sub_1DD803034(v33, &v114);
      v34 = *v116;
      sub_1DD6DF224(&v114, *(&v115 + 1));
      v35 = *(v34 + 8);
      v36 = sub_1DD6DED5C();
      v38 = v37(v36);
      sub_1DD6E1EC8(&v114);
      sub_1DD7FC39C(v38);
      v33 += 40;
      --v32;
    }

    while (v32);

    v39 = v113;
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v39 + 16);
  v41 = v111;
  if (!v40)
  {
LABEL_18:

    v5 = v107;
    v9 = v108;
    v7 = v106;
LABEL_19:
    *v9 = v7;
    v9[1] = v5;
    type metadata accessor for MessagePayload.RequestContent(0);
    swift_storeEnumTagMultiPayload();
    v80 = sub_1DD874820();
    sub_1DD6E0C90();
    sub_1DD70386C(v81, v82, v83, v80);
    v84 = sub_1DD874B70();
    sub_1DD6E0C90();
    v88 = sub_1DD70386C(v85, v86, v87, v84);
    v89 = type metadata accessor for MessagePayload.Request(v88);
    v90 = v89[5];
    v91 = v9 + v89[7];
    *(v91 + 6) = 0;
    *(v91 + 1) = 0u;
    *(v91 + 2) = 0u;
    *v91 = 0u;
    v91[56] = -1;
    v92 = v89[8];
    sub_1DD6E0C90();
    sub_1DD6E5E68(v93, v94, v95, v80);
    v96 = v9 + v89[9];
    sub_1DD827360();
    v97 = (v9 + v89[10]);
    *v97 = 0;
    v97[1] = 0;
    v98 = v89[11];
    sub_1DD6E0C90();
    sub_1DD6E5E68(v99, v100, v101, v84);
    *(v9 + v90) = 0;
    *(v9 + v89[6]) = 0;
    v102 = *(v91 + 1);
    v114 = *v91;
    v115 = v102;
    *v116 = *(v91 + 2);
    *&v116[9] = *(v91 + 41);
    sub_1DD824154(&v114, &unk_1ECD10E28);
    *v91 = 0u;
    *(v91 + 1) = 0u;
    *(v91 + 2) = 0u;
    *(v91 + 6) = 0;
    v91[56] = -1;
    sub_1DD807414();
    v103 = sub_1DD82676C();
    sub_1DD6FE2E0(v103, v104);
    sub_1DD827360();
    sub_1DD807414();
    type metadata accessor for MessagePayload(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6DFED0();
    return;
  }

  v105[1] = v39;
  v105[2] = v0;
  v42 = *(v25 + 80);
  sub_1DD6E17FC();
  v45 = v43 + v44;
  v46 = MEMORY[0x1E69E7CC8];
  v109 = *(v25 + 72);
  while (1)
  {
    sub_1DD82598C();
    sub_1DD700E60();
    v47 = v112;
    sub_1DD82598C();
    sub_1DD700E60();
    v48 = *(v47 + 8);

    v50 = *v41;
    v49 = v41[1];
    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = v46;
    v51 = sub_1DD825570();
    v53 = sub_1DD6FB688(v51, v52);
    if (__OFADD__(v46[2], (v54 & 1) == 0))
    {
      break;
    }

    v55 = v53;
    v56 = v54;
    sub_1DD710A9C(&qword_1ECD121C0, &unk_1DD889C10);
    if (sub_1DD875770())
    {
      v57 = sub_1DD825570();
      v59 = sub_1DD6FB688(v57, v58);
      if ((v56 & 1) != (v60 & 1))
      {
        goto LABEL_22;
      }

      v55 = v59;
    }

    v61 = *(v110 + 48);
    v46 = v114;
    if (v56)
    {
      v62 = *(v114 + 56);
      v63 = sub_1DD874FA0();
      sub_1DD6DE1C4(v63);
      v65 = *(v64 + 32);
      v66 = *(v64 + 72) * v55;
      v65(v1, v62 + v66, v63);
      v65(v46[7] + v66, v112 + v61, v63);
      sub_1DD6E09D4();
      sub_1DD6E5E68(v67, v68, v69, v63);
    }

    else
    {
      *(v114 + 8 * (v55 >> 6) + 64) |= 1 << v55;
      v70 = (v46[6] + 16 * v55);
      *v70 = v50;
      v70[1] = v49;
      v71 = v46[7];
      v72 = sub_1DD874FA0();
      sub_1DD6DE1C4(v72);
      (*(v73 + 32))(v71 + *(v73 + 72) * v55, v112 + v61, v72);
      v74 = v46[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_21;
      }

      v46[2] = v76;
      sub_1DD6E0C90();
      sub_1DD6E5E68(v77, v78, v79, v72);
    }

    sub_1DD824154(v1, &qword_1ECD121B8);
    v41 = v111;
    sub_1DD824154(v111, &qword_1ECD0FA80);
    v45 += v109;
    if (!--v40)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1DD875A80();
  __break(1u);
}

uint64_t sub_1DD7C6974()
{
  v3 = sub_1DD6ED7A4();
  v5 = v4(v3);
  result = sub_1DD6F43C0(*(v5 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemPrompt.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPrompt(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t SystemPrompt.prompt.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SystemPrompt(v0) + 24);
  return sub_1DD6DDF9C();
}

unint64_t SystemPrompt.description.getter()
{
  sub_1DD8756B0();

  sub_1DD826724();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v1);
  v2 = sub_1DD875A10();
  v4 = v3;
  MEMORY[0x1E12B4C10](v2);

  MEMORY[0x1E12B4C10](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  v5 = type metadata accessor for SystemPrompt(0);
  sub_1DD826354(v5);
  MEMORY[0x1E12B4C10](*(v0 + v6), *(v0 + v6 + 8));
  MEMORY[0x1E12B4C10](0x74706D6F7270202CLL, 0xEA0000000000203ALL);
  v7 = v0 + *(v4 + 24);
  v8 = SystemPrompt.Prompt.description.getter();
  MEMORY[0x1E12B4C10](v8);

  sub_1DD826BA8();
  return 0xD000000000000015;
}

uint64_t sub_1DD7C6BC8(char a1)
{
  sub_1DD8756B0();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B4C10](v2, v3);

  MEMORY[0x1E12B4C10](41, 0xE100000000000000);
  MEMORY[0x1E12B4C10](0xD00000000000002ELL, 0x80000001DD8B63C0);
}

unint64_t SystemPrompt.Prompt.description.getter()
{
  v0 = 0xD000000000000012;
  v1 = type metadata accessor for SystemPrompt.Prompt(0);
  v2 = sub_1DD6DE1C4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6E535C();
  sub_1DD6FAB40();
  sub_1DD705564();
  sub_1DD6E5870();
  sub_1DD6E0C60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DD8259F8();
  sub_1DD6E5ABC();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v0 = 0xD000000000000013;
      break;
    case 2:
      v0 = 0xD000000000000015;
      break;
    case 3:
      v0 = 0xD000000000000017;
      break;
    default:
      return v0;
  }

  return v0;
}

void static SystemPrompt.Prompt.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v2 = type metadata accessor for ParameterConfirmation(0);
  v3 = sub_1DD6DEA10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  v6 = sub_1DD6E9A9C();
  v7 = type metadata accessor for ParameterNeedsValue(v6);
  v8 = sub_1DD6DEA10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD702A64();
  v11 = type metadata accessor for SystemPrompt.Prompt(0);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD8264E0();
  v21 = sub_1DD710A9C(&qword_1ECD121D0, &qword_1DD889C98);
  sub_1DD6DEA10(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD8265FC();
  v26 = (v0 + *(v25 + 56));
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8256C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6FAB40();
      sub_1DD826680();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1DD824E70();
        sub_1DD6E59B8();
        v33 = sub_1DD6E6384();
        static ParameterNeedsValue.== infix(_:_:)(v33, v34);
        sub_1DD824E58();
        sub_1DD6E5ABC();
        goto LABEL_10;
      }

      sub_1DD825E00();
      goto LABEL_14;
    case 2u:
      sub_1DD6FAB40();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_14:
        sub_1DD6E5ABC();
        goto LABEL_15;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD6E5ABC();
LABEL_10:
      sub_1DD6E5ABC();
      goto LABEL_17;
    case 3u:
      sub_1DD6FAB40();
      sub_1DD700D0C();
      sub_1DD6E5870();
      v27 = v17[1];
      v47[0] = *v17;
      v47[1] = v27;
      v28 = v17[3];
      v48[0] = v17[2];
      v48[1] = v28;
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v29 = v26[1];
        v45[0] = *v26;
        v45[1] = v29;
        v30 = v26[3];
        v32 = *v26;
        v31 = v26[1];
        v46[0] = v26[2];
        v46[1] = v30;
        v38 = *v17;
        v40 = v17[1];
        v42 = v17[2];
        v44 = v17[3];
        v35 = v26[2];
        v37 = v26[3];
        static ParameterDisambiguation.== infix(_:_:)();
        sub_1DD80040C(v45);
        sub_1DD80040C(v47);
        goto LABEL_17;
      }

      sub_1DD80040C(v47);
      goto LABEL_15;
    default:
      sub_1DD6FAB40();
      sub_1DD705564();
      sub_1DD6E5870();
      *(v48 + 10) = sub_1DD6FF6B0();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD80043C(v47);
LABEL_15:
        sub_1DD824154(v0, &qword_1ECD121D0);
      }

      else
      {
        sub_1DD826EB8();
        *(v46 + 10) = *(v26 + 42);
        v39 = *v1;
        v41 = v1[1];
        *v43 = v1[2];
        *&v43[10] = *(v1 + 42);
        *v36 = v26[2];
        *&v36[10] = *(v26 + 42);
        static ActionConfirmation.== infix(_:_:)();
        sub_1DD80043C(v45);
        sub_1DD80043C(v47);
LABEL_17:
        sub_1DD8259EC();
        sub_1DD6E5ABC();
      }

      sub_1DD6DFED0();
      return;
  }
}

void static ActionConfirmation.== infix(_:_:)()
{
  sub_1DD6FF8A8();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);
  LODWORD(v3) = *(v3 + 56);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = *(v2 + 32);
  v12 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = v1 == *v2 && v4 == *(v2 + 8);
  v21 = *(v2 + 56);
  if (v15 || (sub_1DD875A30() & 1) != 0)
  {
    v16 = v5 == v10 && v7 == v11;
    if (v16 || (sub_1DD705DD4(), (sub_1DD875A30() & 1) != 0))
    {
      v17 = sub_1DD6EFF74();
      sub_1DD7AA640(v17, v18);
      if (v19)
      {
        if (v8)
        {
          if (v14)
          {
            if (v9 != v12 || v8 != v14)
            {
              sub_1DD6E21D0();
              sub_1DD7013BC();
            }

            goto LABEL_21;
          }
        }

        else if (!v14)
        {
LABEL_21:
        }
      }
    }
  }

  sub_1DD6E58C4();
}

uint64_t static ParameterNeedsValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6E1FC0(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for ParameterNeedsValue(0);
  sub_1DD6F4D70(v7);
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD8263A4(*(v7 + 24));
  if ((sub_1DD874FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v7 + 28);
  v9 = (v3 + v8);
  v10 = *(v3 + v8 + 8);
  v11 = *(v2 + v8 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    sub_1DD824D88(v9);
    if (v6 && v10 == v12)
    {
    }

    else
    {
      v14 = sub_1DD875A30();

      if ((v14 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  return 1;
}

void static ParameterConfirmation.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v3 = sub_1DD874FA0();
  v4 = sub_1DD6DDEAC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v7 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = sub_1DD710A9C(&qword_1ECD121D8, &qword_1DD889CA0);
  sub_1DD6DE1C4(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE340();
  v15 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v15 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_22;
    }
  }

  v17 = type metadata accessor for ParameterConfirmation(0);
  v18 = sub_1DD826E64(v17[6]);
  if (!static AttributedValue.== infix(_:_:)(v18, v19))
  {
    goto LABEL_22;
  }

  v20 = v17[7];
  v21 = *(v11 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (!v15)
  {
    sub_1DD6EFF74();
    sub_1DD700E60();
    sub_1DD6E26E4(v2 + v21);
    if (!v22)
    {
      v25 = sub_1DD6F444C();
      v26(v25);
      sub_1DD6E05D4();
      sub_1DD6E1E84(v27);
      sub_1DD6E60FC();
      v28 = sub_1DD8750F0();
      v29 = sub_1DD770D4C();
      MEMORY[0](v29);
      v30 = sub_1DD8258C4();
      MEMORY[0](v30);
      sub_1DD824154(v2, &qword_1ECD121B8);
      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    v23 = sub_1DD6FF900();
    v24(v23, v3);
LABEL_21:
    sub_1DD824154(v2, &qword_1ECD121D8);
    goto LABEL_22;
  }

  sub_1DD6E26E4(v2 + v21);
  if (!v15)
  {
    goto LABEL_21;
  }

  sub_1DD824154(v2, &qword_1ECD121B8);
LABEL_24:
  v31 = v17[8];
  sub_1DD6E8898();
  if (v34)
  {
    if (!v32)
    {
      goto LABEL_22;
    }

    sub_1DD824D88(v33);
    v37 = v15 && v35 == v36;
    if (!v37 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v32)
  {
    goto LABEL_22;
  }

  v38 = v17[9];
  sub_1DD6E8898();
  if (v41 && v39)
  {
    sub_1DD824D88(v40);
    if (!v15 || v42 != v43)
    {
      sub_1DD875A30();
    }
  }

LABEL_22:
  sub_1DD6DFED0();
}

void static ParameterDisambiguation.== infix(_:_:)()
{
  sub_1DD6FF8A8();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v20 = *(v3 + 48);
  v21 = *(v3 + 56);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  if (!v12 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_26;
    }
  }

  sub_1DD6ED130();
  sub_1DD7162FC();
  if ((v16 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    v17 = sub_1DD6EFF74();
    if ((sub_1DD7152B8(v17, v18) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v10)
  {
    goto LABEL_26;
  }

  if (v21 && v14 && (v20 != v13 || v21 != v14))
  {
    sub_1DD875A30();
  }

LABEL_26:
  sub_1DD6E58C4();
}

uint64_t sub_1DD7C77DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD8B6BC0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B6BE0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001DD8B6C00 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x80000001DD8B6C20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD7C7938(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7C79B4(uint64_t a1)
{
  v2 = sub_1DD803258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C79F0(uint64_t a1)
{
  v2 = sub_1DD803258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C77DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C7A5C(uint64_t a1)
{
  v2 = sub_1DD8030B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7A98(uint64_t a1)
{
  v2 = sub_1DD8030B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7AD4(uint64_t a1)
{
  v2 = sub_1DD8031B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7B10(uint64_t a1)
{
  v2 = sub_1DD8031B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7B4C(uint64_t a1)
{
  v2 = sub_1DD803108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}