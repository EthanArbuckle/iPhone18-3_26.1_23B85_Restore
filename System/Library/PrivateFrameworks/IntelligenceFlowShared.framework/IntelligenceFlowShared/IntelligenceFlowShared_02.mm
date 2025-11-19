uint64_t sub_254F7121C()
{
  sub_254F77C0C();
  MEMORY[0x259C2FEE0](0);
  return sub_254F9BF00();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Confidence.init(score:)(IntelligenceFlowShared::Confidence *__return_ptr retstr, Swift::Float score)
{
  if (score >= 0.5 || score < 0.0)
  {
    if (score >= 0.7)
    {
      if (score > 1.0)
      {
        sub_254F72D40();
        sub_254F77D00();
        swift_willThrow();
        return;
      }

      v2 = IntelligenceFlowShared_ConfidenceBucket_high;
    }

    else
    {
      v2 = IntelligenceFlowShared_ConfidenceBucket_medium;
    }
  }

  else
  {
    v2 = IntelligenceFlowShared_ConfidenceBucket_low;
  }

  retstr->score = score;
  retstr->bucket = v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Confidence.init(score:)(IntelligenceFlowShared::Confidence *__return_ptr retstr, Swift::Double score)
{
  v2 = score;
  if (v2 >= 0.5 || v2 < 0.0)
  {
    if (v2 >= 0.7)
    {
      if (v2 > 1.0)
      {
        sub_254F72D40();
        sub_254F77D00();
        swift_willThrow();
        return;
      }

      v3 = IntelligenceFlowShared_ConfidenceBucket_high;
    }

    else
    {
      v3 = IntelligenceFlowShared_ConfidenceBucket_medium;
    }
  }

  else
  {
    v3 = IntelligenceFlowShared_ConfidenceBucket_low;
  }

  retstr->score = v2;
  retstr->bucket = v3;
}

uint64_t sub_254F713D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F71494(char a1)
{
  if (a1)
  {
    return 0x74656B637562;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_254F714CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F713D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F714F4(uint64_t a1)
{
  v2 = sub_254F72D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F71530(uint64_t a1)
{
  v2 = sub_254F72D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Confidence.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F761240);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E558();
  sub_254F4EFBC(a1, a1[3]);
  sub_254F72D94();
  sub_254F4F360();
  sub_254F77C5C();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDE0();
  if (!v1)
  {
    sub_254F72DE8();
    sub_254F4E2F0();
    sub_254F9BE00();
  }

  v4 = sub_254F77A78();
  return v5(v4);
}

void Confidence.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_254F52F94(&qword_27F761258);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72D94();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v2)
  {
    sub_254F9BCF0();
    v8 = v7;
    sub_254F72E3C();
    sub_254F4FD28();
    sub_254F9BD10();
    v9 = sub_254F77900();
    v10(v9, v5);
    *a2 = v8;
    *(a2 + 4) = v11;
  }

  sub_254F4DA5C(a1);
  sub_254F77C44();
}

uint64_t RetrievedContextResponse.retrievedContext.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RetrievedContextResponse.failedTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

IntelligenceFlowShared::RetrievedContextResponse __swiftcall RetrievedContextResponse.init(retrievedContext:failedTypes:)(Swift::OpaquePointer retrievedContext, Swift::OpaquePointer_optional failedTypes)
{
  v2->_rawValue = retrievedContext._rawValue;
  v2[1]._rawValue = failedTypes.value;
  result.failedTypes = failedTypes;
  result.retrievedContext = retrievedContext;
  return result;
}

IntelligenceFlowShared::RetrievedContextResponse __swiftcall RetrievedContextResponse.init(_:)(IntelligenceFlowShared::RetrievedContextResponse result)
{
  *v1 = result.retrievedContext._rawValue;
  v1[1] = 0;
  return result;
}

uint64_t static RetrievedContextResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_254F54F3C(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_254F550E4(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_254F719A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000254FA6770 == a2;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464656C696166 && a2 == 0xEB00000000736570)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F71A7C(char a1)
{
  sub_254F77C0C();
  MEMORY[0x259C2FEE0](a1 & 1);
  return sub_254F9BF00();
}

uint64_t sub_254F71ABC(char a1)
{
  if (a1)
  {
    return 0x795464656C696166;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_254F71B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F719A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F71B30(uint64_t a1)
{
  v2 = sub_254F72E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F71B6C(uint64_t a1)
{
  v2 = sub_254F72E90();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedContextResponse.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F761268);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v0);
  sub_254F4E558();
  v1 = sub_254F77B1C();
  sub_254F4EFBC(v1, v2);
  v3 = sub_254F72E90();

  sub_254F4F360();
  sub_254F779D0();
  sub_254F9BF20();
  sub_254F52F94(&qword_27F761270);
  sub_254F72EE4(&qword_280C460E0);
  sub_254F4E2F0();
  sub_254F9BE00();

  if (!v3)
  {
    sub_254F52F94(&qword_27F761278);
    sub_254F72F74(&unk_280C45A20);
    sub_254F4E2F0();
    sub_254F9BD80();
  }

  v4 = sub_254F77A78();
  v5(v4);
  sub_254F4F348();
}

void RetrievedContextResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  sub_254F77AD8();
  sub_254F52F94(&qword_27F761280);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72E90();
  sub_254F77988();
  if (v11)
  {
    sub_254F4DA5C(v10);
  }

  else
  {
    sub_254F52F94(&qword_27F761270);
    sub_254F72EE4(&qword_280C45A00);
    sub_254F779AC();
    sub_254F9BD10();
    sub_254F52F94(&qword_27F761278);
    sub_254F72F74(&unk_280C45198);
    sub_254F779AC();
    sub_254F9BC90();
    v14 = sub_254F4E508();
    v15(v14);
    *v12 = a10;
    v12[1] = a10;

    sub_254F4DA5C(v10);
  }

  sub_254F4F348();
}

IntelligenceFlowShared::ContextType_optional __swiftcall ContextType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254F9BE40();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

IntelligenceFlowShared::SourceType_optional __swiftcall SourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254F9BC20();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SourceType.rawValue.getter()
{
  result = 5395027;
  switch(*v0)
  {
    case 1:
      result = 0x666E496563616C70;
      break;
    case 2:
      result = 0x7865746E6F436975;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x74756374726F6873;
      break;
    case 5:
      result = 0x6D6552616964656DLL;
      break;
    case 6:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254F72398@<X0>(unint64_t *a1@<X8>)
{
  result = SourceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligenceFlowShared::EntityType_optional __swiftcall EntityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254F9BC20();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EntityType.rawValue.getter()
{
  result = 0x6E6F697461636F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 0x6464416C69616D65;
      break;
    case 4:
      result = 6910581;
      break;
    case 5:
      result = 0x7469746E45707061;
      break;
    case 6:
      result = 0x6563616C70;
      break;
    case 7:
      result = 0x72656D6974;
      break;
    case 8:
      result = 0x6D72616C61;
      break;
    case 9:
      result = 0x6163696669746F6ELL;
      break;
    case 0xA:
      result = 0x7261646E656C6163;
      break;
    case 0xB:
      result = 0x7265646E696D6572;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x656D695465746164;
      break;
    case 0xE:
      result = 0x657449616964656DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254F726A8@<X0>(unint64_t *a1@<X8>)
{
  result = EntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254F72780(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_254F727C4()
{
  result = qword_280C46290;
  if (!qword_280C46290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46290);
  }

  return result;
}

unint64_t sub_254F72818()
{
  result = qword_280C460B8;
  if (!qword_280C460B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460B8);
  }

  return result;
}

unint64_t sub_254F7286C()
{
  result = qword_280C45D80;
  if (!qword_280C45D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D80);
  }

  return result;
}

unint64_t sub_254F728C0()
{
  result = qword_280C45A78;
  if (!qword_280C45A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A78);
  }

  return result;
}

unint64_t sub_254F72914()
{
  result = qword_280C45D98;
  if (!qword_280C45D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D98);
  }

  return result;
}

unint64_t sub_254F72968(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v4 = v3;
    sub_254F55B94(&qword_27F7611E0);
    sub_254F4E4A4();
    sub_254F6A874(v4);
    sub_254F506BC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F729E8()
{
  result = qword_280C460B0;
  if (!qword_280C460B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460B0);
  }

  return result;
}

unint64_t sub_254F72A3C()
{
  result = qword_280C45D78;
  if (!qword_280C45D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D78);
  }

  return result;
}

unint64_t sub_254F72A90()
{
  result = qword_280C45A70;
  if (!qword_280C45A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A70);
  }

  return result;
}

unint64_t sub_254F72AE4(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v4 = v3;
    sub_254F55B94(&qword_27F7611E8);
    v4();
    sub_254F506BC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F72B50()
{
  result = qword_280C45D90;
  if (!qword_280C45D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D90);
  }

  return result;
}

unint64_t sub_254F72BDC()
{
  result = qword_27F761200;
  if (!qword_27F761200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761200);
  }

  return result;
}

unint64_t sub_254F72C30()
{
  result = qword_280C462D8;
  if (!qword_280C462D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462D8);
  }

  return result;
}

unint64_t sub_254F72C84()
{
  result = qword_27F761228;
  if (!qword_27F761228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761228);
  }

  return result;
}

unint64_t sub_254F72D40()
{
  result = qword_27F761238;
  if (!qword_27F761238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761238);
  }

  return result;
}

unint64_t sub_254F72D94()
{
  result = qword_27F761248;
  if (!qword_27F761248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761248);
  }

  return result;
}

unint64_t sub_254F72DE8()
{
  result = qword_27F761250;
  if (!qword_27F761250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761250);
  }

  return result;
}

unint64_t sub_254F72E3C()
{
  result = qword_27F761260;
  if (!qword_27F761260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761260);
  }

  return result;
}

unint64_t sub_254F72E90()
{
  result = qword_280C45B50[0];
  if (!qword_280C45B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45B50);
  }

  return result;
}

unint64_t sub_254F72EE4(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v4 = v3;
    sub_254F55B94(&qword_27F761270);
    sub_254F6A874(v4);
    sub_254F506BC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F72F74(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v4 = v3;
    sub_254F55B94(&qword_27F761278);
    v4();
    sub_254F506BC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_254F72FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE006C616E6F6974;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E756F6E6E61 && a2 == 0xEC000000746E656DLL;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C6175736976 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

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

uint64_t sub_254F731E0(char a1)
{
  result = 0x6E65657263536E6FLL;
  switch(a1)
  {
    case 1:
      result = 0x61737265766E6F63;
      break;
    case 2:
      result = 0x6E776F6E6B6E75;
      break;
    case 3:
      result = 0x65636E756F6E6E61;
      break;
    case 4:
      result = 0x6163696669746F6ELL;
      break;
    case 5:
      result = 0x6C6175736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F732B0(uint64_t a1)
{
  v2 = sub_254F73BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F732EC(uint64_t a1)
{
  v2 = sub_254F73BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F73330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F72FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F73358(uint64_t a1)
{
  v2 = sub_254F73AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F73394(uint64_t a1)
{
  v2 = sub_254F73AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F733D0(uint64_t a1)
{
  v2 = sub_254F73C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7340C(uint64_t a1)
{
  v2 = sub_254F73C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F73448(uint64_t a1)
{
  v2 = sub_254F73B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F73484(uint64_t a1)
{
  v2 = sub_254F73B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F734C0(uint64_t a1)
{
  v2 = sub_254F73CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F734FC(uint64_t a1)
{
  v2 = sub_254F73CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F73538(uint64_t a1)
{
  v2 = sub_254F73C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F73574(uint64_t a1)
{
  v2 = sub_254F73C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F735B0(uint64_t a1)
{
  v2 = sub_254F73B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F735EC(uint64_t a1)
{
  v2 = sub_254F73B38();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextDataSource.encode(to:)()
{
  sub_254F4E9D0();
  v5 = v4;
  sub_254F52F94(&qword_27F761288);
  sub_254F4DF18();
  v48 = v7;
  v49 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v8);
  sub_254F686A4();
  v47 = v9;
  sub_254F52F94(&qword_27F761290);
  sub_254F4DF18();
  v45 = v11;
  v46 = v10;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v12);
  sub_254F686A4();
  v44 = v13;
  sub_254F52F94(&qword_27F761298);
  sub_254F4DF18();
  v42 = v15;
  v43 = v14;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v16);
  sub_254F686A4();
  v41 = v17;
  sub_254F52F94(&qword_27F7612A0);
  sub_254F4DF18();
  v39 = v19;
  v40 = v18;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v20);
  sub_254F686A4();
  v38 = v21;
  sub_254F52F94(&qword_27F7612A8);
  sub_254F4DF18();
  v36 = v23;
  v37 = v22;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v24);
  sub_254F778D8();
  sub_254F52F94(&qword_27F7612B0);
  sub_254F4DF18();
  v34 = v26;
  v35 = v25;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v27);
  sub_254F4E558();
  v50 = sub_254F52F94(&qword_27F7612B8);
  sub_254F4DF18();
  v29 = v28;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v30);
  sub_254F778C8();
  v31 = *v0;
  sub_254F4EFBC(v5, v5[3]);
  sub_254F73AE4();
  sub_254F9BF20();
  switch(v31)
  {
    case 1:
      sub_254F73C88();
      v31 = v50;
      sub_254F4FC38();
      sub_254F9BD30();
      (*(v36 + 8))(v3, v37);
      goto LABEL_9;
    case 2:
      sub_254F73C34();
      v1 = v38;
      sub_254F4E618();
      v33 = v39;
      v32 = v40;
      goto LABEL_8;
    case 3:
      sub_254F73BE0();
      v1 = v41;
      sub_254F4E618();
      v33 = v42;
      v32 = v43;
      goto LABEL_8;
    case 4:
      sub_254F73B8C();
      v1 = v44;
      sub_254F4E618();
      v33 = v45;
      v32 = v46;
      goto LABEL_8;
    case 5:
      sub_254F73B38();
      v1 = v47;
      sub_254F4E618();
      v33 = v48;
      v32 = v49;
      goto LABEL_8;
    default:
      sub_254F73CDC();
      sub_254F4E618();
      v33 = v34;
      v32 = v35;
LABEL_8:
      (*(v33 + 8))(v1, v32);
LABEL_9:
      (*(v29 + 8))(v2, v31);
      sub_254F4F348();
      return;
  }
}

unint64_t sub_254F73AE4()
{
  result = qword_27F7612C0;
  if (!qword_27F7612C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612C0);
  }

  return result;
}

unint64_t sub_254F73B38()
{
  result = qword_27F7612C8;
  if (!qword_27F7612C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612C8);
  }

  return result;
}

unint64_t sub_254F73B8C()
{
  result = qword_27F7612D0;
  if (!qword_27F7612D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612D0);
  }

  return result;
}

unint64_t sub_254F73BE0()
{
  result = qword_27F7612D8;
  if (!qword_27F7612D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612D8);
  }

  return result;
}

unint64_t sub_254F73C34()
{
  result = qword_27F7612E0;
  if (!qword_27F7612E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612E0);
  }

  return result;
}

unint64_t sub_254F73C88()
{
  result = qword_27F7612E8;
  if (!qword_27F7612E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612E8);
  }

  return result;
}

unint64_t sub_254F73CDC()
{
  result = qword_27F7612F0;
  if (!qword_27F7612F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7612F0);
  }

  return result;
}

void ContextDataSource.init(from:)()
{
  sub_254F4E9D0();
  v5 = v4;
  v67 = v6;
  sub_254F52F94(&qword_27F7612F8);
  sub_254F4DF18();
  v63 = v7;
  v64 = v8;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F686A4();
  v65 = v10;
  sub_254F52F94(&qword_27F761300);
  sub_254F4DF18();
  v61 = v11;
  v62 = v12;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F686A4();
  v70 = v14;
  sub_254F52F94(&qword_27F761308);
  sub_254F4DF18();
  v59 = v16;
  v60 = v15;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  sub_254F686A4();
  v66 = v18;
  sub_254F52F94(&qword_27F761310);
  sub_254F4DF18();
  v57 = v20;
  v58 = v19;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v21);
  sub_254F686A4();
  v69 = v22;
  sub_254F52F94(&qword_27F761318);
  sub_254F4DF18();
  v55 = v24;
  v56 = v23;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v25);
  sub_254F4FC44();
  v26 = sub_254F52F94(&qword_27F761320);
  sub_254F4DF18();
  v54 = v27;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v28);
  sub_254F778D8();
  v29 = sub_254F52F94(&qword_27F761328);
  sub_254F4DF18();
  v68 = v30;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v31);
  sub_254F778C8();
  sub_254F4EFBC(v5, v5[3]);
  sub_254F73AE4();
  sub_254F9BF10();
  if (v0)
  {
    goto LABEL_10;
  }

  v52 = v26;
  v53 = v5;
  v32 = v69;
  v33 = sub_254F9BD20();
  sub_254F68664(v33, 0);
  v37 = v29;
  if (v35 == v36 >> 1)
  {
    v38 = v68;
LABEL_9:
    sub_254F9BBB0();
    sub_254F77D00();
    v45 = v44;
    sub_254F52F94(&qword_27F761100);
    *v45 = &type metadata for ContextDataSource;
    sub_254F9BC40();
    sub_254F77CC8();
    sub_254F778AC();
    (*(v46 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v2, v37);
    v5 = v53;
LABEL_10:
    v47 = v5;
LABEL_11:
    sub_254F4DA5C(v47);
    sub_254F4F348();
    return;
  }

  if (v35 < (v36 >> 1))
  {
    v39 = *(v34 + v35);
    sub_254F6865C(v35 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      switch(v39)
      {
        case 1:
          sub_254F73C88();
          v32 = v1;
          sub_254F4EF04();
          swift_unknownObjectRelease();
          v49 = v55;
          v48 = v56;
          goto LABEL_17;
        case 2:
          sub_254F73C34();
          sub_254F4EF04();
          swift_unknownObjectRelease();
          v49 = v57;
          v48 = v58;
          goto LABEL_17;
        case 3:
          sub_254F73BE0();
          v32 = v66;
          sub_254F4EF04();
          swift_unknownObjectRelease();
          v49 = v59;
          v48 = v60;
          goto LABEL_17;
        case 4:
          sub_254F73B8C();
          sub_254F4FD28();
          sub_254F9BC30();
          swift_unknownObjectRelease();
          (*(v62 + 8))(v70, v61);
          break;
        case 5:
          sub_254F73B38();
          v32 = v65;
          sub_254F4EF04();
          swift_unknownObjectRelease();
          v48 = v63;
          v49 = v64;
LABEL_17:
          (*(v49 + 8))(v32, v48);
          break;
        default:
          sub_254F73CDC();
          sub_254F4EF04();
          swift_unknownObjectRelease();
          (*(v54 + 8))(v3, v52);
          break;
      }

      v50 = sub_254F77A24();
      v51(v50);
      *v67 = v39;
      v47 = v53;
      goto LABEL_11;
    }

    v38 = v68;
    v37 = v29;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_254F7444C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1751607656 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_254F9BE30();

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

uint64_t sub_254F74558(unsigned __int8 a1)
{
  sub_254F77C0C();
  MEMORY[0x259C2FEE0](a1);
  return sub_254F9BF00();
}

uint64_t sub_254F74598(char a1)
{
  if (!a1)
  {
    return 7827308;
  }

  if (a1 == 1)
  {
    return 0x6D756964656DLL;
  }

  return 1751607656;
}

uint64_t sub_254F745E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F7444C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F7460C(uint64_t a1)
{
  v2 = sub_254F750FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F74648(uint64_t a1)
{
  v2 = sub_254F750FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F74684(uint64_t a1)
{
  v2 = sub_254F75150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F746C0(uint64_t a1)
{
  v2 = sub_254F75150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F746FC(uint64_t a1)
{
  v2 = sub_254F751F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F74738(uint64_t a1)
{
  v2 = sub_254F751F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F74774(uint64_t a1)
{
  v2 = sub_254F751A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F747B0(uint64_t a1)
{
  v2 = sub_254F751A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ConfidenceBucket.encode(to:)()
{
  sub_254F4E9D0();
  v4 = v3;
  sub_254F52F94(&qword_27F761330);
  sub_254F4DF18();
  v29 = v6;
  v30 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F686A4();
  v28 = v8;
  sub_254F52F94(&qword_27F761338);
  sub_254F4DF18();
  v26 = v10;
  v27 = v9;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v11);
  sub_254F686A4();
  v25 = v12;
  sub_254F52F94(&qword_27F761340);
  sub_254F4DF18();
  v23 = v14;
  v24 = v13;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v15);
  sub_254F4E558();
  v16 = sub_254F52F94(&qword_27F761348);
  sub_254F4DF18();
  v18 = v17;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v19);
  sub_254F4E38C();
  v20 = *v0;
  sub_254F4EFBC(v4, v4[3]);
  sub_254F750FC();
  sub_254F9BF20();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_254F77AF8();
      sub_254F751A4();
      v1 = v25;
      sub_254F4FD28();
      sub_254F9BD30();
      v22 = v26;
      v21 = v27;
    }

    else
    {
      sub_254F75150();
      v1 = v28;
      sub_254F4FD28();
      sub_254F9BD30();
      v22 = v29;
      v21 = v30;
    }
  }

  else
  {
    sub_254F751F8();
    sub_254F4FD28();
    sub_254F9BD30();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v1, v21);
  (*(v18 + 8))(v2, v16);
  sub_254F4F348();
}

uint64_t sub_254F74B0C()
{
  v1 = *v0;
  sub_254F77C0C();
  MEMORY[0x259C2FEE0](v1);
  return sub_254F9BF00();
}

void ConfidenceBucket.init(from:)()
{
  sub_254F4E9D0();
  v63 = v0;
  v4 = v3;
  v58 = v5;
  v62 = sub_254F52F94(&qword_27F761370);
  sub_254F4DF18();
  v59 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F686A4();
  v61 = v8;
  sub_254F52F94(&qword_27F761378);
  sub_254F4DF18();
  v56 = v10;
  v57 = v9;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v11);
  sub_254F4FC44();
  v12 = sub_254F52F94(&qword_27F761380);
  sub_254F4DF18();
  v55 = v13;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_254F52F94(&qword_27F761388);
  sub_254F4DF18();
  v60 = v18;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v19);
  sub_254F50064();
  sub_254F4EFBC(v4, v4[3]);
  sub_254F750FC();
  v20 = v63;
  sub_254F9BF10();
  if (v20)
  {
    goto LABEL_11;
  }

  v52 = v12;
  v53 = v16;
  v54 = v1;
  v22 = v61;
  v21 = v62;
  v63 = v4;
  v23 = sub_254F9BD20();
  sub_254F68664(v23, 0);
  if (v25 == v26 >> 1)
  {
    goto LABEL_10;
  }

  v51 = 0;
  if (v25 < (v26 >> 1))
  {
    LODWORD(v27) = *(v24 + v25);
    sub_254F6865C(v25 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v29 == v31 >> 1;
    v33 = v59;
    if (!v32)
    {
LABEL_10:
      sub_254F9BBB0();
      sub_254F77D00();
      v40 = v39;
      sub_254F52F94(&qword_27F761100);
      *v40 = &type metadata for ConfidenceBucket;
      sub_254F9BC40();
      sub_254F77CC8();
      sub_254F778AC();
      (*(v41 + 104))(v40);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v60 + 8))(v2, v17);
      v4 = v63;
LABEL_11:
      sub_254F4DA5C(v4);
LABEL_12:
      sub_254F4F348();
      return;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        sub_254F77AF8();
        sub_254F751A4();
        v34 = v54;
        sub_254F4FC38();
        v35 = v51;
        sub_254F9BC30();
        v36 = v58;
        v37 = v17;
        v38 = v60;
        if (v35)
        {
          (*(v60 + 8))(v2, v37);
LABEL_17:
          swift_unknownObjectRelease();
          v4 = v63;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        (*(v56 + 8))(v34, v57);
        (*(v38 + 8))(v2, v37);
      }

      else
      {
        LODWORD(v57) = v27;
        sub_254F75150();
        sub_254F4FC38();
        v46 = v51;
        sub_254F9BC30();
        v36 = v58;
        v27 = v17;
        v47 = v60;
        if (v46)
        {
          (*(v60 + 8))(v2, v27);
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        (*(v33 + 8))(v22, v21);
        (*(v47 + 8))(v2, v27);
        LOBYTE(v27) = v57;
      }
    }

    else
    {
      sub_254F751F8();
      v42 = v53;
      sub_254F4FC38();
      v43 = v51;
      sub_254F9BC30();
      if (v43)
      {
        v44 = sub_254F77C30();
        v45(v44);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      (*(v55 + 8))(v42, v52);
      v48 = sub_254F77C30();
      v49(v48);
      v36 = v58;
    }

    *v36 = v27;
    sub_254F4DA5C(v63);
    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_254F750FC()
{
  result = qword_27F761350;
  if (!qword_27F761350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761350);
  }

  return result;
}

unint64_t sub_254F75150()
{
  result = qword_27F761358;
  if (!qword_27F761358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761358);
  }

  return result;
}

unint64_t sub_254F751A4()
{
  result = qword_27F761360;
  if (!qword_27F761360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761360);
  }

  return result;
}

unint64_t sub_254F751F8()
{
  result = qword_27F761368;
  if (!qword_27F761368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761368);
  }

  return result;
}

unint64_t sub_254F75250()
{
  result = qword_27F761390;
  if (!qword_27F761390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761390);
  }

  return result;
}

unint64_t sub_254F752A8()
{
  result = qword_280C460A8;
  if (!qword_280C460A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460A8);
  }

  return result;
}

unint64_t sub_254F75330()
{
  result = qword_280C45930;
  if (!qword_280C45930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45930);
  }

  return result;
}

unint64_t sub_254F753B4(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    sub_254F55B94(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F75408()
{
  result = qword_27F7613B0;
  if (!qword_27F7613B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613B0);
  }

  return result;
}

unint64_t sub_254F75460()
{
  result = qword_27F7613B8;
  if (!qword_27F7613B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613B8);
  }

  return result;
}

unint64_t sub_254F754B8()
{
  result = qword_27F7613C0;
  if (!qword_27F7613C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613C0);
  }

  return result;
}

void sub_254F75534()
{
  sub_254F9B890();
  if (v0 <= 0x3F)
  {
    sub_254F75648();
    if (v1 <= 0x3F)
    {
      sub_254F756A0(319, &qword_280C46348);
      if (v2 <= 0x3F)
      {
        sub_254F756A0(319, &qword_280C46448);
        if (v3 <= 0x3F)
        {
          sub_254F756A0(319, &qword_280C46438);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_254F75648()
{
  if (!qword_280C46320)
  {
    sub_254F9B890();
    v0 = sub_254F9BB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280C46320);
    }
  }
}

void sub_254F756A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_254F9BB50();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_254F75714()
{
  sub_254F9B890();
  if (v0 <= 0x3F)
  {
    sub_254F75648();
    if (v1 <= 0x3F)
    {
      sub_254F756A0(319, &qword_280C46348);
      if (v2 <= 0x3F)
      {
        sub_254F756A0(319, &qword_280C46438);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_254F757E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254F75808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_254F75848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F758EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_254F7592C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BoundingBox(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoundingBox(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BoundingBox(uint64_t result, int a2, int a3)
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

__n128 sub_254F759EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F75A00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_254F75A40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for Confidence(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Confidence(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 5))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for Confidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_254F75B3C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_254F75B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F75EB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_254F77A94((*a1 | (v4 << 8)) - 3);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254F77A94(v8);
}

_BYTE *sub_254F75F34(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Confidence.ConfidenceError(_BYTE *result, int a2, int a3)
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

uint64_t sub_254F7617C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 6);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254F77A94(v8);
}

_BYTE *sub_254F76200(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F762CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 2);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254F77A94(v8);
}

_BYTE *sub_254F76350(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F76670()
{
  result = qword_27F7613C8;
  if (!qword_27F7613C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613C8);
  }

  return result;
}

unint64_t sub_254F766C8()
{
  result = qword_27F7613D0;
  if (!qword_27F7613D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613D0);
  }

  return result;
}

unint64_t sub_254F76720()
{
  result = qword_27F7613D8;
  if (!qword_27F7613D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613D8);
  }

  return result;
}

unint64_t sub_254F76778()
{
  result = qword_27F7613E0;
  if (!qword_27F7613E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613E0);
  }

  return result;
}

unint64_t sub_254F767D0()
{
  result = qword_27F7613E8;
  if (!qword_27F7613E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613E8);
  }

  return result;
}

unint64_t sub_254F76828()
{
  result = qword_27F7613F0;
  if (!qword_27F7613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613F0);
  }

  return result;
}

unint64_t sub_254F76880()
{
  result = qword_27F7613F8;
  if (!qword_27F7613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7613F8);
  }

  return result;
}

unint64_t sub_254F768D8()
{
  result = qword_27F761400;
  if (!qword_27F761400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761400);
  }

  return result;
}

unint64_t sub_254F76930()
{
  result = qword_27F761408;
  if (!qword_27F761408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761408);
  }

  return result;
}

unint64_t sub_254F76988()
{
  result = qword_27F761410;
  if (!qword_27F761410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761410);
  }

  return result;
}

unint64_t sub_254F769E0()
{
  result = qword_27F761418;
  if (!qword_27F761418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761418);
  }

  return result;
}

unint64_t sub_254F76A38()
{
  result = qword_27F761420;
  if (!qword_27F761420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761420);
  }

  return result;
}

unint64_t sub_254F76A90()
{
  result = qword_27F761428;
  if (!qword_27F761428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761428);
  }

  return result;
}

unint64_t sub_254F76AE8()
{
  result = qword_27F761430;
  if (!qword_27F761430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761430);
  }

  return result;
}

unint64_t sub_254F76B40()
{
  result = qword_27F761438;
  if (!qword_27F761438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761438);
  }

  return result;
}

unint64_t sub_254F76B98()
{
  result = qword_27F761440;
  if (!qword_27F761440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761440);
  }

  return result;
}

unint64_t sub_254F76BF0()
{
  result = qword_27F761448;
  if (!qword_27F761448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761448);
  }

  return result;
}

unint64_t sub_254F76C48()
{
  result = qword_27F761450;
  if (!qword_27F761450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761450);
  }

  return result;
}

unint64_t sub_254F76CA0()
{
  result = qword_27F761458;
  if (!qword_27F761458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761458);
  }

  return result;
}

unint64_t sub_254F76CF8()
{
  result = qword_27F761460;
  if (!qword_27F761460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761460);
  }

  return result;
}

unint64_t sub_254F76D50()
{
  result = qword_27F761468;
  if (!qword_27F761468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761468);
  }

  return result;
}

unint64_t sub_254F76DA8()
{
  result = qword_27F761470;
  if (!qword_27F761470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761470);
  }

  return result;
}

unint64_t sub_254F76E00()
{
  result = qword_27F761478;
  if (!qword_27F761478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761478);
  }

  return result;
}

unint64_t sub_254F76E58()
{
  result = qword_27F761480;
  if (!qword_27F761480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761480);
  }

  return result;
}

unint64_t sub_254F76EB0()
{
  result = qword_27F761488;
  if (!qword_27F761488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761488);
  }

  return result;
}

unint64_t sub_254F76F08()
{
  result = qword_27F761490;
  if (!qword_27F761490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761490);
  }

  return result;
}

unint64_t sub_254F76F60()
{
  result = qword_27F761498;
  if (!qword_27F761498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761498);
  }

  return result;
}

unint64_t sub_254F76FB8()
{
  result = qword_27F7614A0;
  if (!qword_27F7614A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614A0);
  }

  return result;
}

unint64_t sub_254F77010()
{
  result = qword_27F7614A8;
  if (!qword_27F7614A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614A8);
  }

  return result;
}

unint64_t sub_254F77068()
{
  result = qword_27F7614B0;
  if (!qword_27F7614B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614B0);
  }

  return result;
}

unint64_t sub_254F770C0()
{
  result = qword_27F7614B8;
  if (!qword_27F7614B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614B8);
  }

  return result;
}

unint64_t sub_254F77118()
{
  result = qword_27F7614C0;
  if (!qword_27F7614C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614C0);
  }

  return result;
}

unint64_t sub_254F77170()
{
  result = qword_27F7614C8;
  if (!qword_27F7614C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614C8);
  }

  return result;
}

unint64_t sub_254F771C8()
{
  result = qword_280C45B40;
  if (!qword_280C45B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B40);
  }

  return result;
}

unint64_t sub_254F77220()
{
  result = qword_280C45B48;
  if (!qword_280C45B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B48);
  }

  return result;
}

unint64_t sub_254F77278()
{
  result = qword_27F7614D0;
  if (!qword_27F7614D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614D0);
  }

  return result;
}

unint64_t sub_254F772D0()
{
  result = qword_27F7614D8;
  if (!qword_27F7614D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614D8);
  }

  return result;
}

unint64_t sub_254F77328()
{
  result = qword_27F7614E0;
  if (!qword_27F7614E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614E0);
  }

  return result;
}

unint64_t sub_254F77380()
{
  result = qword_27F7614E8;
  if (!qword_27F7614E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614E8);
  }

  return result;
}

unint64_t sub_254F773D8()
{
  result = qword_280C462C8;
  if (!qword_280C462C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462C8);
  }

  return result;
}

unint64_t sub_254F77430()
{
  result = qword_280C462D0;
  if (!qword_280C462D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462D0);
  }

  return result;
}

unint64_t sub_254F77488()
{
  result = qword_27F7614F0;
  if (!qword_27F7614F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614F0);
  }

  return result;
}

unint64_t sub_254F774E0()
{
  result = qword_27F7614F8;
  if (!qword_27F7614F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7614F8);
  }

  return result;
}

unint64_t sub_254F77538()
{
  result = qword_280C46280;
  if (!qword_280C46280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46280);
  }

  return result;
}

unint64_t sub_254F77590()
{
  result = qword_280C46288;
  if (!qword_280C46288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46288);
  }

  return result;
}

unint64_t sub_254F775E8()
{
  result = qword_280C45780;
  if (!qword_280C45780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45780);
  }

  return result;
}

unint64_t sub_254F77640()
{
  result = qword_280C45788;
  if (!qword_280C45788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45788);
  }

  return result;
}

unint64_t sub_254F77698()
{
  result = qword_280C462F0;
  if (!qword_280C462F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462F0);
  }

  return result;
}

unint64_t sub_254F776F0()
{
  result = qword_280C462F8;
  if (!qword_280C462F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462F8);
  }

  return result;
}

unint64_t sub_254F77744()
{
  result = qword_27F761500;
  if (!qword_27F761500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761500);
  }

  return result;
}

unint64_t sub_254F77798()
{
  result = qword_280C45928;
  if (!qword_280C45928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45928);
  }

  return result;
}

uint64_t sub_254F77934()
{

  return sub_254F9BCF0();
}

uint64_t sub_254F77950(uint64_t a1)
{

  return sub_254F69104(a1, v1 + 376, v2);
}

uint64_t sub_254F77988()
{

  return sub_254F9BF10();
}

uint64_t sub_254F779DC(uint64_t a1)
{

  return sub_254F69104(a1, v1 + 24, v2);
}

uint64_t sub_254F77A00(uint64_t a1, uint64_t a2)
{

  return sub_254F69104(a1, a2, v2);
}

void sub_254F77A5C(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
}

void sub_254F77B28(__n128 a1)
{
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 6;
  *(v1 + 280) = a1;
  *(v1 + 296) = a1;
}

void sub_254F77B4C()
{
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 236) = 3;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
}

void *sub_254F77B64(void *a1)
{

  return memcpy(a1, (v1 + 336), 0x14AuLL);
}

void sub_254F77B7C(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2].n128_u8[0] = v3;
}

void *sub_254F77BC4(void *a1)
{

  return memcpy(a1, (v1 + 3016), 0x140uLL);
}

void *sub_254F77BDC(void *a1)
{

  return memcpy(a1, (v1 + 3016), 0x14AuLL);
}

void *sub_254F77BF4(void *a1)
{

  return memcpy(a1, (v1 + 2392), 0x14AuLL);
}

uint64_t sub_254F77C0C()
{

  return sub_254F9BEB0();
}

uint64_t sub_254F77CC8()
{

  return sub_254F9BBA0();
}

void *sub_254F77CE8(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x14AuLL);
}

uint64_t sub_254F77D00()
{

  return swift_allocError();
}

IntelligenceFlowShared::EntityMatcherType_optional __swiftcall EntityMatcherType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254F9BC20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntityMatcherType.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_254F77E2C()
{
  result = qword_27F761508;
  if (!qword_27F761508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761508);
  }

  return result;
}

uint64_t sub_254F77EA4@<X0>(uint64_t *a1@<X8>)
{
  result = EntityMatcherType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t dispatch thunk of EntitySpanMatcherProtocol.matchEntitySpans(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_254F780C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_254F780C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

_BYTE *storeEnumTagSinglePayload for EntityMatcherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F78298()
{
  result = qword_280C45D70;
  if (!qword_280C45D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D70);
  }

  return result;
}

uint64_t ExternalFeatureFlag.isEnabled.getter()
{
  v3 = &type metadata for ExternalFeatureFlag;
  v4 = sub_254F7833C();
  v0 = sub_254F9B770();
  sub_254F4DA5C(v2);
  return v0 & 1;
}

unint64_t sub_254F7833C()
{
  result = qword_280C45620;
  if (!qword_280C45620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45620);
  }

  return result;
}

uint64_t ExternalFeatureFlag.hashValue.getter()
{
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](0);
  return sub_254F9BF00();
}

unint64_t sub_254F7846C()
{
  result = qword_27F761510;
  if (!qword_27F761510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761510);
  }

  return result;
}

unint64_t sub_254F784EC()
{
  result = qword_27F761518;
  if (!qword_27F761518)
  {
    sub_254F55B94(&qword_27F761520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761518);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalFeatureFlag(_BYTE *result, int a2, int a3)
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

uint64_t FeatureFlag.isItselfEnabled.getter()
{
  v1 = *v0;
  v5 = &type metadata for FeatureFlag;
  v6 = sub_254F4DA08();
  v4[0] = v1;
  v2 = sub_254F9B770();
  sub_254F4DA5C(v4);
  return v2 & 1;
}

uint64_t sub_254F78680()
{
  sub_254F78710();
  swift_allocError();
  *v1 = 46;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_254F78710()
{
  result = qword_280C45690;
  if (!qword_280C45690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45690);
  }

  return result;
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](v1);
  return sub_254F9BF00();
}

unint64_t sub_254F7882C()
{
  result = qword_27F761528;
  if (!qword_27F761528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761528);
  }

  return result;
}

unint64_t sub_254F78884()
{
  result = qword_27F761530;
  if (!qword_27F761530)
  {
    sub_254F55B94(&qword_27F761538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761530);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD3)
  {
    if (a2 + 45 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 45) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 46;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v5 = v6 - 46;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD2)
  {
    v6 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
          *result = a2 + 45;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for FeatureFlagError(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 0x2E)
    {
      v7 = v6 - 45;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 47;
    if (a2 + 47 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 47);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 47;
  if (a3 + 47 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xD1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xD0)
  {
    v7 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F78BD0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x2E)
  {
    return v1 - 45;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_254F78BE4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 45;
  }

  return result;
}

uint64_t sub_254F78FD4()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F7615D0);
  sub_254F4DED0(v0, qword_27F7615D0);
  return sub_254F9B7E0();
}

uint64_t sub_254F7908C()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C45380);
  sub_254F4DED0(v0, qword_280C45380);
  return sub_254F9B7E0();
}

uint64_t sub_254F7910C()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C45340);
  sub_254F4DED0(v0, qword_280C45340);
  return sub_254F9B7E0();
}

uint64_t sub_254F791C4()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C45A58);
  sub_254F4DED0(v0, qword_280C45A58);
  return sub_254F9B7E0();
}

uint64_t sub_254F79280()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C453A0);
  sub_254F4DED0(v0, qword_280C453A0);
  return sub_254F9B7E0();
}

uint64_t sub_254F79364()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C45360);
  sub_254F4DED0(v0, qword_280C45360);
  return sub_254F9B7E0();
}

uint64_t sub_254F793E4()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C45320);
  sub_254F4DED0(v0, qword_280C45320);
  return sub_254F9B7E0();
}

uint64_t sub_254F7949C()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C453C0);
  sub_254F4DED0(v0, qword_280C453C0);
  return sub_254F9B7E0();
}

uint64_t sub_254F7958C()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F7615E8);
  sub_254F4DED0(v0, qword_27F7615E8);
  return sub_254F9B7E0();
}

uint64_t sub_254F798B0()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F761660);
  sub_254F4DED0(v0, qword_27F761660);
  return sub_254F9B7E0();
}

uint64_t sub_254F79AA4()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F7616C0);
  sub_254F4DED0(v0, qword_27F7616C0);
  return sub_254F9B7E0();
}

uint64_t sub_254F79DAC()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F761720);
  sub_254F4DED0(v0, qword_27F761720);
  return sub_254F9B7E0();
}

uint64_t sub_254F79E64()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C453E0);
  sub_254F4DED0(v0, qword_280C453E0);
  return sub_254F9B7E0();
}

uint64_t sub_254F79FFC()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F761750);
  sub_254F4DED0(v0, qword_27F761750);
  return sub_254F9B7E0();
}

uint64_t sub_254F7A114()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_27F761780);
  sub_254F4DED0(v0, qword_27F761780);
  return sub_254F9B7E0();
}

uint64_t sub_254F7A494(uint64_t a1, uint64_t *a2)
{
  v3 = sub_254F9B7F0();
  sub_254F68ABC(v3, a2);
  sub_254F4DED0(v3, a2);
  return sub_254F9B7E0();
}

uint64_t sub_254F7A9FC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_254F9B7F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F9B7C0();
  sub_254F68ABC(v11, a2);
  sub_254F4DED0(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = sub_254F4DED0(v7, a4);
  (*(v8 + 16))(v10, v12, v7);
  return sub_254F9B7B0();
}

uint64_t Logger.rethrowAndLog<A>(consequence:_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {

    v6 = v3;
    v7 = sub_254F9B7D0();
    v8 = sub_254F9BB20();

    MEMORY[0x259C30270](v3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136315394;
      v12 = a1();
      v14 = sub_254F7AD30(v12, v13, &v17);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_254F4C000, v7, v8, "%s error=%@", v9, 0x16u);
      sub_254F7B2A0(v10);
      MEMORY[0x259C303A0](v10, -1, -1);
      sub_254F4DA5C(v11);
      MEMORY[0x259C303A0](v11, -1, -1);
      MEMORY[0x259C303A0](v9, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_254F7AD30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254F7ADF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_254F7B3D4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_254F4DA5C(v11);
  return v7;
}

unint64_t sub_254F7ADF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254F7AEF4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_254F9BBC0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_254F7AEF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_254F7AF40(a1, a2);
  sub_254F7B058(&unk_28672A338);
  return v3;
}

uint64_t sub_254F7AF40(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_254F9B9F0())
  {
    result = sub_254F7B13C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_254F9BB80();
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
          result = sub_254F9BBC0();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_254F7B058(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_254F7B1AC(result, v7, 1, v3);
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

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254F7B13C(uint64_t a1, uint64_t a2)
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

  sub_254F52F94(&qword_27F761890);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_254F7B1AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F52F94(&qword_27F761890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_254F7B2A0(uint64_t a1)
{
  v2 = sub_254F52F94(&qword_27F761888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_254F7B32C(_BYTE *result, int a2, int a3)
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

uint64_t sub_254F7B3D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254F7B438()
{
  sub_254F99460();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7B478()
{
  sub_254F99460();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7B4B8()
{
  sub_254F99460();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7B52C(char a1)
{
  sub_254F77C0C();
  sub_254F509F0(v3, a1);
  return sub_254F9BF00();
}

uint64_t sub_254F7B5AC()
{
  sub_254F9BEB0();
  sub_254F9BED0();
  return sub_254F9BF00();
}

uint64_t sub_254F7B5F4()
{
  sub_254F9BEB0();
  sub_254F9B9C0();
  return sub_254F9BF00();
}

uint64_t sub_254F7B6EC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_254F997E0();
  }

  else
  {
    sub_254F9918C();
  }

  sub_254F9B9C0();
}

uint64_t sub_254F7B7B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_254F9B9C0();
}

uint64_t sub_254F7B848(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_254F9BEB0();
  a3(v4);
  sub_254F9B9C0();

  return sub_254F9BF00();
}

uint64_t sub_254F7B8B4()
{
  sub_254F9BEB0();
  sub_254F9BED0();
  return sub_254F9BF00();
}

uint64_t sub_254F7B8F8(uint64_t a1, char a2)
{
  sub_254F9BEB0();
  if (a2)
  {
    sub_254F997E0();
  }

  else
  {
    sub_254F9918C();
  }

  sub_254F9B9C0();

  return sub_254F9BF00();
}

uint64_t sub_254F7B97C()
{
  sub_254F99C4C();
  MEMORY[0x259C2FEE0](v0);
  return sub_254F9BF00();
}

uint64_t sub_254F7B9B8()
{
  sub_254F99C4C();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7B9F8()
{
  sub_254F99C4C();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7BA38()
{
  sub_254F99C4C();
  sub_254F998BC();
  return sub_254F9BF00();
}

uint64_t sub_254F7BA78()
{
  sub_254F9BEB0();
  sub_254F9B9C0();
  return sub_254F9BF00();
}

uint64_t sub_254F7BAD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7305076 && a2 == 0xE300000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6565726874 && a2 == 0xE500000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1920298854 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

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

uint64_t sub_254F7BC30(char a1)
{
  result = 6647407;
  switch(a1)
  {
    case 1:
      result = 7305076;
      break;
    case 2:
      result = 0x6565726874;
      break;
    case 3:
      result = 1920298854;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F7BC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F7BAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F7BCC4(uint64_t a1)
{
  v2 = sub_254F7C29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7BD00(uint64_t a1)
{
  v2 = sub_254F7C29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7BD3C(uint64_t a1)
{
  v2 = sub_254F7C2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7BD78(uint64_t a1)
{
  v2 = sub_254F7C2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7BDB4(uint64_t a1)
{
  v2 = sub_254F7C3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7BDF0(uint64_t a1)
{
  v2 = sub_254F7C3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7BE2C(uint64_t a1)
{
  v2 = sub_254F7C344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7BE68(uint64_t a1)
{
  v2 = sub_254F7C344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7BEA4(uint64_t a1)
{
  v2 = sub_254F7C398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7BEE0(uint64_t a1)
{
  v2 = sub_254F7C398();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedTool.Stage.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F761898);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F686A4();
  sub_254F995F4(v2);
  sub_254F52F94(&qword_27F7618A0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F686A4();
  sub_254F52F94(&qword_27F7618A8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F686A4();
  sub_254F52F94(&qword_27F7618B0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F50064();
  sub_254F52F94(&qword_27F7618B8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F778C8();
  v7 = *v0;
  v8 = sub_254F991DC();
  sub_254F4EFBC(v8, v9);
  sub_254F7C29C();
  sub_254F994AC();
  sub_254F9BF20();
  switch(v7)
  {
    case 1:
      sub_254F7C398();
      sub_254F98F5C();
      sub_254F9BD30();
      goto LABEL_6;
    case 2:
      sub_254F7C344();
      sub_254F98F5C();
      sub_254F9BD30();
      goto LABEL_6;
    case 3:
      sub_254F993E0();
      sub_254F7C2F0();
      sub_254F98F5C();
      sub_254F9BD30();
LABEL_6:
      v10 = sub_254F999D8();
      break;
    default:
      sub_254F7C3EC();
      sub_254F99014();
      sub_254F9BD30();
      v10 = sub_254F9924C();
      break;
  }

  v11(v10);
  v12 = sub_254F99780();
  v13(v12);
  sub_254F4F348();
}

unint64_t sub_254F7C29C()
{
  result = qword_280C45F48[0];
  if (!qword_280C45F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45F48);
  }

  return result;
}

unint64_t sub_254F7C2F0()
{
  result = qword_27F7618C0;
  if (!qword_27F7618C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7618C0);
  }

  return result;
}

unint64_t sub_254F7C344()
{
  result = qword_27F7618C8;
  if (!qword_27F7618C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7618C8);
  }

  return result;
}

unint64_t sub_254F7C398()
{
  result = qword_27F7618D0;
  if (!qword_27F7618D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7618D0);
  }

  return result;
}

unint64_t sub_254F7C3EC()
{
  result = qword_280C45F30;
  if (!qword_280C45F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45F30);
  }

  return result;
}

void RetrievedTool.Stage.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v34 = v3;
  sub_254F52F94(&qword_27F7618D8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F686A4();
  sub_254F52F94(&qword_27F7618E0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F686A4();
  sub_254F52F94(&qword_27F7618E8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F99488();
  v7 = sub_254F52F94(&qword_27F7618F0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v8);
  sub_254F50064();
  sub_254F52F94(&qword_27F7618F8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F4E558();
  sub_254F4EFBC(v2, v2[3]);
  sub_254F7C29C();
  sub_254F4F360();
  sub_254F9BF10();
  if (!v0)
  {
    v10 = sub_254F9BD20();
    sub_254F68664(v10, 0);
    if (v12 != v11 >> 1)
    {
      sub_254F9932C();
      sub_254F9999C();
      if (v15 == v16)
      {
        __break(1u);
        return;
      }

      v17 = *(v14 + v13);
      sub_254F6865C(v13 + 1);
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
      if (v19 == v21 >> 1)
      {
        switch(v17)
        {
          case 1:
            sub_254F7C398();
            sub_254F4F3D8();
            sub_254F9BC30();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_254F7C344();
            sub_254F4F3D8();
            sub_254F9BC30();
            swift_unknownObjectRelease();
LABEL_14:
            v22 = sub_254F99358();
            goto LABEL_15;
          case 3:
            sub_254F993E0();
            sub_254F7C2F0();
            sub_254F4F3D8();
            sub_254F9BC30();
            swift_unknownObjectRelease();
            v30 = sub_254F991DC();
            v31(v30);
            goto LABEL_16;
          default:
            sub_254F7C3EC();
            sub_254F4F3D8();
            sub_254F9BC30();
            swift_unknownObjectRelease();
            v22 = sub_254F99358();
            v24 = v7;
LABEL_15:
            v23(v22, v24);
LABEL_16:
            v32 = sub_254F99A6C();
            v33(v32);
            *v34 = v17;
            sub_254F4DA5C(v2);
            break;
        }

        goto LABEL_10;
      }
    }

    sub_254F9BBB0();
    sub_254F77D00();
    v26 = v25;
    sub_254F52F94(&qword_27F761100);
    *v26 = &type metadata for RetrievedTool.Stage;
    sub_254F9BC40();
    sub_254F77CC8();
    sub_254F778AC();
    (*(v27 + 104))(v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_254F991DC();
    v29(v28);
  }

  sub_254F4DA5C(v2);
LABEL_10:
  sub_254F4F348();
}

uint64_t RetrievedTool.AppSource.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((*v0 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_254F8FF7C(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_254F992E4(v3);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, ".inForeground");
  *(v5 + 23) = -4864;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_254F9982C();
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_254F992E4(v6);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x74614D6E6170732ELL;
    *(v8 + 5) = 0xEA00000000006863;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_254F9982C();
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_254F992E4(v9);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6E49746C6975622ELL;
    *(v11 + 5) = 0xE800000000000000;
  }

  sub_254F52F94(&qword_27F760DD0);
  sub_254F92CC4();
  sub_254F999E4();
  v12 = sub_254F9B940();

  return v12;
}

BOOL sub_254F7CD48(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_254F7CD80@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_254F7CDB4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_254F7CE9C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RetrievedTool.AppSource.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_254F7CEDC@<X0>(_BYTE *a1@<X8>)
{
  result = RetrievedTool.AppSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_254F7CF08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_254F7CF60@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void RetrievedTool.Definition.toolDefinition.getter()
{
  sub_254F77B94();
  v2 = sub_254F77918();
  type metadata accessor for UIControlTool(v2);
  sub_254F4E534();
  MEMORY[0x28223BE20](v3);
  sub_254F4F314();
  sub_254F99578();
  type metadata accessor for RetrievedTool.Definition(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v4);
  sub_254F4F314();
  v7 = v6 - v5;
  v8 = sub_254F9B830();
  sub_254F4DF18();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254F4F314();
  sub_254F99488();
  sub_254F4E078();
  sub_254F4F1B0();
  sub_254F93414();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_254F77A50();
      sub_254F4E598(v13, v14, v15, v8);
      sub_254F99054();
      goto LABEL_5;
    case 4u:
      sub_254F9906C();
      sub_254F92FB4();
      sub_254F94830();
      sub_254F4E4BC();
LABEL_5:
      sub_254F92D68();
      break;
    default:
      v12 = *(v10 + 32);
      v12(v1, v7, v8);
      v12(v0, v1, v8);
      sub_254F4E598(v0, 0, 1, v8);
      break;
  }

  sub_254F77BAC();
}

uint64_t RetrievedTool.Definition.init(toolDefinition:)()
{
  ToolDefinition.isPropertySetter.getter();
  sub_254F9B830();
  sub_254F4E880();
  v0 = sub_254F4E364();
  v1(v0);
  type metadata accessor for RetrievedTool.Definition(0);

  return swift_storeEnumTagMultiPayload();
}

void ToolDefinition.isPropertySetter.getter()
{
  sub_254F77B94();
  v0 = sub_254F9B800();
  sub_254F4DF18();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_254F505D4();
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v7 = sub_254F9B810();
  v8 = 0;
  v9 = *(v7 + 16);
  v21[2] = v2 + 16;
  v22 = v9;
  v21[1] = v2 + 32;
  v10 = *MEMORY[0x277D72140];
  v11 = *MEMORY[0x277D72150];
  while (1)
  {
    if (v22 == v8)
    {

      goto LABEL_9;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v6, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v0);
    v12 = sub_254F99AB4();
    v13(v12);
    v14 = sub_254F9941C();
    v16 = v15(v14);
    if (v16 == v10 || v16 == v11)
    {

      v19 = sub_254F9941C();
      v20(v19);
LABEL_9:
      sub_254F77BAC();
      return;
    }

    v17 = sub_254F9941C();
    v18(v17);
    ++v8;
  }

  __break(1u);
}

void static RetrievedTool.Definition.== infix(_:_:)()
{
  sub_254F77B94();
  v69 = v2;
  v70 = v3;
  v4 = type metadata accessor for UIControlTool(0);
  v5 = sub_254F77A18(v4);
  MEMORY[0x28223BE20](v5);
  sub_254F4F314();
  v64 = v7 - v6;
  sub_254F993EC();
  sub_254F9B910();
  sub_254F4DF18();
  v65 = v9;
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  sub_254F4F314();
  v63 = v11 - v10;
  sub_254F993EC();
  sub_254F9B830();
  sub_254F4DF18();
  v67 = v13;
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  sub_254F505D4();
  v62 = v14 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v61 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  type metadata accessor for RetrievedTool.Definition(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v21);
  sub_254F505D4();
  sub_254F996BC();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  sub_254F99374();
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v32 = sub_254F52F94(&qword_27F761908);
  sub_254F77A18(v32);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v33);
  sub_254F99364();
  v35 = *(v34 + 56);
  sub_254F93414();
  sub_254F93414();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_254F4E078();
      sub_254F99658();
      sub_254F93414();
      if (sub_254F99904() == 1)
      {
        v52 = v65;
        v51 = v66;
        v53 = v63;
        (*(v65 + 32))(v63, v0 + v35, v66);
        sub_254F9993C();
        sub_254F9B900();
        v54 = *(v52 + 8);
        v54(v53, v51);
        v54(v1, v51);
        goto LABEL_21;
      }

      v55 = v66;
      v36 = *(v65 + 8);
      v37 = v1;
      goto LABEL_17;
    case 2u:
      sub_254F4E078();
      sub_254F4E364();
      sub_254F93414();
      if (sub_254F99904() == 2)
      {
        v39 = v67;
        v38 = v68;
        sub_254F9947C();
        v40 = v61;
        v41(v61, v0 + v35, v38);
        sub_254F99628();
        sub_254F9B820();
        v42 = *(v39 + 8);
        v42(v40, v38);
        v43 = sub_254F99A78();
        (v42)(v43);
        goto LABEL_21;
      }

      sub_254F997C8();
      v37 = v28;
      goto LABEL_15;
    case 3u:
      sub_254F4E078();
      sub_254F4EB58();
      sub_254F93414();
      if (sub_254F99904() == 3)
      {
        v45 = v67;
        v44 = v68;
        sub_254F9947C();
        v46 = v62;
        v47(v62, v0 + v35, v44);
        sub_254F9B820();
        v48 = *(v45 + 8);
        v48(v46, v44);
        v49 = sub_254F99AC0();
        v48(v49, v50);
        goto LABEL_21;
      }

      sub_254F997C8();
      v37 = v25;
      goto LABEL_15;
    case 4u:
      sub_254F4E078();
      sub_254F93414();
      if (sub_254F99904() == 4)
      {
        sub_254F9906C();
        sub_254F92FB4();
        static UIControlTool.== infix(_:_:)();
        sub_254F92D68();
        sub_254F92D68();
        goto LABEL_21;
      }

      sub_254F4E4BC();
      sub_254F92D68();
      goto LABEL_18;
    default:
      sub_254F4E078();
      sub_254F99664();
      sub_254F93414();
      if (sub_254F99904())
      {
        sub_254F997C8();
        v37 = v31;
LABEL_15:
        v55 = v68;
LABEL_17:
        v36(v37, v55);
LABEL_18:
        sub_254F6C10C(v0, &qword_27F761908);
      }

      else
      {
        v57 = v67;
        v56 = v68;
        sub_254F9947C();
        v58(v20, v0 + v35, v56);
        sub_254F9B820();
        v59 = *(v57 + 8);
        v60 = sub_254F99990();
        v59(v60);
        (v59)(v31, v56);
LABEL_21:
        sub_254F99054();
        sub_254F92D68();
      }

      sub_254F77BAC();
      return;
  }
}

void static UIControlTool.== infix(_:_:)()
{
  sub_254F77B94();
  v1 = v0;
  v3 = v2;
  v4 = sub_254F9B830();
  sub_254F4DF18();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_254F4F314();
  v10 = v9 - v8;
  v11 = sub_254F52F94(&qword_27F761900);
  sub_254F77A18(v11);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v12);
  sub_254F4E558();
  v13 = sub_254F52F94(&qword_27F761910);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = *v3 == *v1 && v3[1] == v1[1];
  if (v17 || (sub_254F9BE30() & 1) != 0)
  {
    v18 = v3[2] == v1[2] && v3[3] == v1[3];
    if (v18 || (sub_254F9BE30() & 1) != 0)
    {
      v19 = v3[4] == v1[4] && v3[5] == v1[5];
      if (v19 || (sub_254F9BE30() & 1) != 0)
      {
        v31 = v6;
        type metadata accessor for UIControlTool(0);
        v20 = *(v13 + 48);
        sub_254F94830();
        sub_254F94830();
        sub_254F77880(v16);
        if (!v17)
        {
          sub_254F99AC0();
          sub_254F94830();
          sub_254F77880(&v16[v20]);
          if (!v21)
          {
            v24 = v31;
            (*(v31 + 32))(v10, &v16[v20], v4);
            sub_254F4DFB4();
            sub_254F505E4(v25, v26);
            sub_254F9B950();
            v27 = *(v24 + 8);
            v28 = sub_254F4E364();
            v27(v28);
            v29 = sub_254F4F33C();
            v27(v29);
            sub_254F6C10C(v16, &qword_27F761900);
            goto LABEL_25;
          }

          v22 = sub_254F99358();
          v23(v22, v4);
LABEL_24:
          sub_254F6C10C(v16, &qword_27F761910);
          goto LABEL_25;
        }

        sub_254F77880(&v16[v20]);
        if (!v17)
        {
          goto LABEL_24;
        }

        sub_254F6C10C(v16, &qword_27F761900);
      }
    }
  }

LABEL_25:
  sub_254F77BAC();
}

uint64_t sub_254F7DC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D656C706D69 && a2 == 0xEE006E6F69746174;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553797469746E65 && a2 == 0xEC00000072657474;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F72746E6F436975 && a2 == 0xE90000000000006CLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_254F9BE30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_254F7DE44(char a1)
{
  result = 0x6E656D656C706D69;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 0x6553797469746E65;
      break;
    case 3:
      result = 0x6341746E65696C63;
      break;
    case 4:
      result = 0x6F72746E6F436975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F7DF0C(uint64_t a1)
{
  v2 = sub_254F92F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7DF48(uint64_t a1)
{
  v2 = sub_254F92F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7DF84(uint64_t a1)
{
  v2 = sub_254F92E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7DFC0(uint64_t a1)
{
  v2 = sub_254F92E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7E004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F7DC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F7E02C(uint64_t a1)
{
  v2 = sub_254F92DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7E068(uint64_t a1)
{
  v2 = sub_254F92DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7E0A4(uint64_t a1)
{
  v2 = sub_254F92EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7E0E0(uint64_t a1)
{
  v2 = sub_254F92EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7E11C(uint64_t a1)
{
  v2 = sub_254F92F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7E158(uint64_t a1)
{
  v2 = sub_254F92F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F7E194(uint64_t a1)
{
  v2 = sub_254F92E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F7E1D0(uint64_t a1)
{
  v2 = sub_254F92E10();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedTool.Definition.encode(to:)()
{
  sub_254F4E9D0();
  v115 = v1;
  v111 = v0;
  v6 = v5;
  sub_254F52F94(&qword_27F761920);
  sub_254F4DF18();
  v107 = v8;
  v108 = v7;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F686A4();
  v106 = v10;
  v11 = sub_254F993EC();
  v104 = type metadata accessor for UIControlTool(v11);
  sub_254F4E534();
  MEMORY[0x28223BE20](v12);
  sub_254F4F314();
  v105 = v14 - v13;
  sub_254F52F94(&qword_27F761928);
  sub_254F4DF18();
  v102 = v16;
  v103 = v15;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  sub_254F686A4();
  v101 = v18;
  sub_254F52F94(&qword_27F761930);
  sub_254F4DF18();
  v99 = v20;
  v100 = v19;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v21);
  sub_254F686A4();
  v98 = v22;
  sub_254F52F94(&qword_27F761938);
  sub_254F4DF18();
  v96 = v24;
  v97 = v23;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v25);
  sub_254F686A4();
  v93 = v26;
  sub_254F993EC();
  v95 = sub_254F9B910();
  sub_254F4DF18();
  v94 = v27;
  MEMORY[0x28223BE20](v28);
  sub_254F4F314();
  v92 = v30 - v29;
  v91[2] = sub_254F52F94(&qword_27F761940);
  sub_254F4DF18();
  v91[1] = v31;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v32);
  sub_254F686A4();
  v91[0] = v33;
  sub_254F993EC();
  sub_254F9B830();
  sub_254F4DF18();
  v109 = v35;
  v110 = v34;
  MEMORY[0x28223BE20](v34);
  sub_254F505D4();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_254F99A30();
  MEMORY[0x28223BE20](v40);
  v42 = v91 - v41;
  v43 = type metadata accessor for RetrievedTool.Definition(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v44);
  sub_254F4F314();
  sub_254F99488();
  sub_254F52F94(&qword_27F761948);
  sub_254F4DF18();
  v113 = v46;
  v114 = v45;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v47);
  sub_254F778C8();
  v48 = *(v6 + 24);
  v49 = sub_254F99A78();
  sub_254F4EFBC(v49, v50);
  sub_254F92DBC();
  v112 = v3;
  sub_254F994AC();
  sub_254F9BF20();
  sub_254F4E078();
  sub_254F93414();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_254F9978C();
      v83 = v92;
      v84 = sub_254F991DC();
      v85 = v95;
      v86(v84);
      sub_254F92F0C();
      v87 = v93;
      sub_254F4F280();
      sub_254F98FFC();
      sub_254F505E4(v88, v89);
      v90 = v97;
      sub_254F9BE00();
      (*(v96 + 8))(v87, v90);
      (*(v3 + 8))(v83, v85);
      goto LABEL_8;
    case 2u:
      v67 = v109;
      v66 = v110;
      v68 = sub_254F991DC();
      v69(v68);
      sub_254F9934C();
      sub_254F92EB8();
      sub_254F4F280();
      sub_254F4DFB4();
      sub_254F505E4(v70, v71);
      sub_254F99BCC();
      v72 = sub_254F99148();
      v73(v72);
      (*(v67 + 8))(v4, v66);
      goto LABEL_8;
    case 3u:
      v75 = v109;
      v74 = v110;
      v76 = sub_254F9969C();
      v77(v76, v2, v74);
      sub_254F92E64();
      sub_254F4F280();
      sub_254F4DFB4();
      sub_254F505E4(v78, v79);
      v80 = v103;
      sub_254F9BE00();
      v81 = sub_254F991D0();
      v82(v81, v80);
      (*(v75 + 8))(v38, v74);
      goto LABEL_8;
    case 4u:
      sub_254F92FB4();
      sub_254F999B4();
      sub_254F92E10();
      v57 = v114;
      sub_254F9BD30();
      sub_254F50638();
      sub_254F505E4(v58, v59);
      v60 = v108;
      sub_254F9BE00();
      v61 = sub_254F9924C();
      v62(v61, v60);
      sub_254F4E4BC();
      sub_254F92D68();
      v63 = sub_254F99358();
      v65 = v57;
      goto LABEL_9;
    default:
      v52 = v109;
      v51 = v110;
      (*(v109 + 32))(v42, v2, v110);
      sub_254F92F60();
      sub_254F9978C();
      sub_254F4F280();
      sub_254F4DFB4();
      sub_254F505E4(v53, v54);
      sub_254F99BCC();
      v55 = sub_254F99148();
      v56(v55);
      (*(v52 + 8))(v42, v51);
LABEL_8:
      sub_254F997C8();
      v63 = v43;
      v65 = v48;
LABEL_9:
      v64(v63, v65);
      sub_254F4F348();
      return;
  }
}

void RetrievedTool.Definition.hash(into:)()
{
  sub_254F77B94();
  v1 = sub_254F52F94(&qword_27F761900);
  sub_254F77A18(v1);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v2);
  sub_254F686A4();
  v33 = v3;
  v4 = sub_254F993EC();
  type metadata accessor for UIControlTool(v4);
  sub_254F4E534();
  MEMORY[0x28223BE20](v5);
  sub_254F4F314();
  sub_254F99128();
  sub_254F9B910();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v6);
  sub_254F4F314();
  sub_254F9933C();
  v7 = sub_254F9B830();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v8);
  sub_254F4F314();
  v9 = sub_254F996AC();
  type metadata accessor for RetrievedTool.Definition(v9);
  sub_254F4E534();
  MEMORY[0x28223BE20](v10);
  sub_254F4F314();
  sub_254F99774();
  sub_254F4E078();
  sub_254F93414();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = sub_254F4F698();
      v23(v22);
      MEMORY[0x259C2FEE0](1);
      sub_254F98FFC();
      sub_254F505E4(v24, v25);
      sub_254F997BC();
      sub_254F9B930();
      v26 = sub_254F991DC();
      v27(v26);
      goto LABEL_11;
    case 2u:
      v14 = sub_254F99164();
      v15(v14);
      v13 = 2;
      goto LABEL_7;
    case 3u:
      v16 = sub_254F99164();
      v17(v16);
      v13 = 3;
      goto LABEL_7;
    case 4u:
      sub_254F9906C();
      sub_254F92FB4();
      MEMORY[0x259C2FEE0](4);
      sub_254F9B9C0();
      sub_254F9B9C0();
      sub_254F9B9C0();
      sub_254F94830();
      if (sub_254F4E5C0(v33, 1, v7) == 1)
      {
        sub_254F9BED0();
      }

      else
      {
        sub_254F9947C();
        v28(v0, v33, v7);
        sub_254F9BED0();
        sub_254F4DFB4();
        sub_254F505E4(v29, v30);
        sub_254F997BC();
        sub_254F9B930();
        v31 = sub_254F9941C();
        v32(v31);
      }

      sub_254F4E4BC();
      sub_254F92D68();
      goto LABEL_11;
    default:
      v11 = sub_254F99164();
      v12(v11);
      v13 = 0;
LABEL_7:
      MEMORY[0x259C2FEE0](v13);
      sub_254F4DFB4();
      sub_254F505E4(v18, v19);
      sub_254F997BC();
      sub_254F9B930();
      v20 = sub_254F9941C();
      v21(v20);
LABEL_11:
      sub_254F77BAC();
      return;
  }
}

void RetrievedTool.Definition.init(from:)()
{
  sub_254F4E9D0();
  v121 = v1;
  v5 = v4;
  v116 = v6;
  sub_254F52F94(&qword_27F761970);
  sub_254F4DF18();
  v110 = v7;
  v111 = v8;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F686A4();
  sub_254F995F4(v10);
  sub_254F52F94(&qword_27F761978);
  sub_254F4DF18();
  v108 = v12;
  v109 = v11;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F686A4();
  v115 = v14;
  sub_254F52F94(&qword_27F761980);
  sub_254F4DF18();
  v106 = v16;
  v107 = v15;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  sub_254F686A4();
  v114 = v18;
  sub_254F52F94(&qword_27F761988);
  sub_254F4DF18();
  v104 = v20;
  v105 = v19;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v21);
  sub_254F686A4();
  v113 = v22;
  sub_254F52F94(&qword_27F761990);
  sub_254F4DF18();
  v102[8] = v24;
  v103 = v23;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v25);
  sub_254F686A4();
  v112 = v26;
  sub_254F52F94(&qword_27F761998);
  sub_254F4DF18();
  v118 = v28;
  v119 = v27;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v29);
  sub_254F99364();
  v117 = type metadata accessor for RetrievedTool.Definition(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v30);
  sub_254F505D4();
  v102[7] = v31 - v32;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v102 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = v102 - v38;
  MEMORY[0x28223BE20](v37);
  sub_254F996BC();
  MEMORY[0x28223BE20](v40);
  sub_254F99374();
  MEMORY[0x28223BE20](v41);
  v43 = v102 - v42;
  v120 = v5;
  v44 = sub_254F99A6C();
  sub_254F4EFBC(v44, v45);
  sub_254F92DBC();
  v46 = v121;
  sub_254F9BF10();
  if (!v46)
  {
    v102[4] = v3;
    v102[2] = v39;
    v102[3] = v36;
    v102[5] = v2;
    v121 = v43;
    v47 = sub_254F9BD20();
    sub_254F68664(v47, 0);
    if (v49 == v48 >> 1)
    {
      v50 = v117;
    }

    else
    {
      sub_254F9932C();
      v102[6] = v0;
      v102[1] = 0;
      sub_254F9999C();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v52 + v51);
      sub_254F6865C(v51 + 1);
      v57 = v56;
      v59 = v58;
      swift_unknownObjectRelease();
      if (v57 == v59 >> 1)
      {
        switch(v55)
        {
          case 1:
            sub_254F92F0C();
            sub_254F506CC();
            sub_254F9B910();
            sub_254F98FFC();
            sub_254F505E4(v78, v79);
            v80 = v105;
            sub_254F506F0();
            sub_254F99768();
            swift_unknownObjectRelease();
            v98 = sub_254F9924C();
            v99(v98, v80);
            v100 = sub_254F4E63C();
            v101(v100);
            swift_storeEnumTagMultiPayload();
            goto LABEL_18;
          case 2:
            sub_254F9934C();
            sub_254F92EB8();
            sub_254F506CC();
            sub_254F9B830();
            sub_254F4DFB4();
            sub_254F505E4(v72, v73);
            sub_254F9978C();
            v74 = v107;
            sub_254F4EEB4();
            sub_254F99768();
            swift_unknownObjectRelease();
            v85 = sub_254F991D0();
            v86(v85, v74);
            v87 = sub_254F4E63C();
            v88(v87);
            goto LABEL_17;
          case 3:
            sub_254F92E64();
            sub_254F506CC();
            sub_254F9B830();
            sub_254F4DFB4();
            sub_254F505E4(v75, v76);
            sub_254F9978C();
            v77 = v109;
            sub_254F9BD10();
            sub_254F99768();
            swift_unknownObjectRelease();
            v89 = sub_254F9924C();
            v90(v89, v77);
            v91 = sub_254F4E63C();
            v92(v91);
            swift_storeEnumTagMultiPayload();
LABEL_18:
            v97 = v120;
            break;
          case 4:
            sub_254F999B4();
            sub_254F92E10();
            sub_254F506CC();
            type metadata accessor for UIControlTool(0);
            sub_254F50638();
            sub_254F505E4(v69, v70);
            sub_254F9978C();
            v71 = v110;
            sub_254F4EEB4();
            sub_254F99768();
            swift_unknownObjectRelease();
            v81 = sub_254F991D0();
            v82(v81, v71);
            v83 = sub_254F4E63C();
            v84(v83);
LABEL_17:
            swift_storeEnumTagMultiPayload();
            v97 = v120;
            break;
          default:
            sub_254F92F60();
            sub_254F506CC();
            sub_254F9B830();
            sub_254F4DFB4();
            sub_254F505E4(v60, v61);
            v62 = v103;
            sub_254F506F0();
            sub_254F99768();
            swift_unknownObjectRelease();
            v93 = sub_254F9924C();
            v94(v93, v62);
            v95 = sub_254F4E63C();
            v96(v95);
            swift_storeEnumTagMultiPayload();
            v97 = v120;
            break;
        }

        sub_254F92FB4();
        sub_254F92FB4();
        v68 = v97;
        goto LABEL_12;
      }

      v50 = v117;
    }

    sub_254F9BBB0();
    sub_254F77D00();
    v64 = v63;
    sub_254F52F94(&qword_27F761100);
    *v64 = v50;
    sub_254F9BC40();
    sub_254F77CC8();
    sub_254F778AC();
    (*(v65 + 104))(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = sub_254F99634();
    v67(v66);
  }

  v68 = v120;
LABEL_12:
  sub_254F4DA5C(v68);
  sub_254F4F348();
}

uint64_t RetrievedTool.similarityScore.setter(float a1)
{
  result = sub_254F991E8();
  *(v1 + v4) = a1;
  return result;
}

uint64_t RetrievedTool.similarityScore.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedTool(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedTool.sampleInvocations.getter()
{
  type metadata accessor for RetrievedTool(0);
}

uint64_t RetrievedTool.sampleInvocations.setter()
{
  v2 = sub_254F778A0();
  v3 = *(type metadata accessor for RetrievedTool(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t RetrievedTool.sampleInvocations.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedTool(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedTool.stage.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedTool(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t RetrievedTool.stage.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RetrievedTool(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t RetrievedTool.stage.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedTool(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedTool.source.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedTool(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t RetrievedTool.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RetrievedTool(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t RetrievedTool.source.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedTool(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedTool.init(definition:similarityScore:sampleInvocations:stage:)()
{
  sub_254F99A44();
  sub_254F98FE4();
  sub_254F92FB4();
  v1 = sub_254F991E8();
  result = sub_254F50048(v1, v2);
  *(v0 + v4) = 0;
  return result;
}

uint64_t RetrievedTool.init(definition:similarityScore:sampleInvocations:stage:source:)()
{
  sub_254F99A44();
  v2 = *v1;
  sub_254F98FE4();
  sub_254F92FB4();
  v3 = sub_254F991E8();
  result = sub_254F50048(v3, v4);
  *(v0 + v6) = v2;
  return result;
}

void RetrievedTool.init(toolDefinition:similarityScore:sampleInvocations:stage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_254F99520();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  sub_254F77918();
  v30 = sub_254F9B830();
  sub_254F4DF18();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_254F505D4();
  sub_254F996BC();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = *v27;
  v38 = *(v32 + 16);
  v38(&a9 - v35, v29, v30);
  v38(v23, v36, v30);
  ToolDefinition.isPropertySetter.getter();
  v39 = sub_254F9969C();
  v40(v39, v23, v30);
  type metadata accessor for RetrievedTool.Definition(0);
  swift_storeEnumTagMultiPayload();
  v41 = *(v32 + 8);
  v42 = sub_254F4F1B0();
  v41(v42);
  (v41)(v36, v30);
  v43 = sub_254F991E8();
  v45 = sub_254F9995C(v43, v44);
  *(v22 + v46) = v37;
  *(v22 + *(v45 + 32)) = 0;
  sub_254F9955C();
}

void RetrievedTool.init(toolDefinition:similarityScore:sampleInvocations:stage:source:)()
{
  sub_254F99520();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_254F77918();
  v8 = sub_254F9B830();
  sub_254F4DF18();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254F4F314();
  sub_254F99488();
  LOBYTE(v5) = *v5;
  v12 = *v3;
  (*(v10 + 16))(v1, v7, v8);
  ToolDefinition.isPropertySetter.getter();
  v13 = sub_254F9969C();
  v14(v13, v1, v8);
  type metadata accessor for RetrievedTool.Definition(0);
  swift_storeEnumTagMultiPayload();
  v15 = sub_254F4F1B0();
  v16(v15);
  v17 = sub_254F991E8();
  v19 = sub_254F9995C(v17, v18);
  *(v0 + v20) = v5;
  *(v0 + *(v19 + 32)) = v12;
  sub_254F9955C();
}

BOOL static RetrievedTool.== infix(_:_:)()
{
  sub_254F50B9C();
  static RetrievedTool.Definition.== infix(_:_:)();
  if (v2 & 1) != 0 && (v3 = sub_254F991E8(), *(v1 + v4) == *(v0 + v4)) && (v5 = v3, sub_254F54E8C(), (v6) && *(v1 + *(v5 + 28)) == *(v0 + *(v5 + 28)))
  {
    return *(v1 + *(v5 + 32)) == *(v0 + *(v5 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F7FFB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C696D6973 && a2 == 0xEF65726F63537974;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254FA75D0 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567617473 && a2 == 0xE500000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_254F9BE30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_254F80168(char a1)
{
  result = 0x6974696E69666564;
  switch(a1)
  {
    case 1:
      result = 0x6972616C696D6973;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6567617473;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F80218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F7FFB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F80240(uint64_t a1)
{
  v2 = sub_254F930C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8027C(uint64_t a1)
{
  v2 = sub_254F930C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedTool.encode(to:)()
{
  sub_254F99C20();
  sub_254F992B4();
  sub_254F52F94(&qword_27F7619B0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4E558();
  sub_254F98F98();
  sub_254F930C0();
  sub_254F4F1BC();
  type metadata accessor for RetrievedTool.Definition(0);
  sub_254F99204();
  sub_254F505E4(v2, v3);
  sub_254F4EFF0();
  sub_254F98F84();
  sub_254F9BE00();
  if (!v0)
  {
    type metadata accessor for RetrievedTool(0);
    sub_254F77AF8();
    sub_254F9913C();
    sub_254F9BDE0();
    sub_254F52F94(&qword_27F7619B8);
    sub_254F93114();
    sub_254F99A24();
    sub_254F98F84();
    sub_254F9BE00();
    sub_254F931EC();
    sub_254F9913C();
    sub_254F9BE00();
    sub_254F93240();
    sub_254F9913C();
    sub_254F9BE00();
  }

  v4 = sub_254F4F36C();
  v5(v4);
  sub_254F99584();
  sub_254F99C0C();
}

uint64_t RetrievedTool.hash(into:)(uint64_t a1)
{
  RetrievedTool.Definition.hash(into:)();
  v3 = type metadata accessor for RetrievedTool(0);
  sub_254F9BEE0();
  sub_254F5BDB0(a1, *(v1 + *(v3 + 24)));
  MEMORY[0x259C2FEE0](*(v1 + *(v3 + 28)));
  return sub_254F9BED0();
}

void RetrievedTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13)
{
  sub_254F4E9D0();
  v15 = v14;
  type metadata accessor for RetrievedTool.Definition(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v16);
  sub_254F4F314();
  sub_254F995F4(v18 - v17);
  sub_254F52F94(&qword_27F7619C8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_254F9933C();
  v21 = type metadata accessor for RetrievedTool(v20);
  sub_254F4E534();
  MEMORY[0x28223BE20](v22);
  sub_254F4F314();
  v25 = v24 - v23;
  v26 = sub_254F99628();
  sub_254F4EFBC(v26, v27);
  sub_254F930C0();
  sub_254F999A8();
  sub_254F9BF10();
  if (v13)
  {
    sub_254F4DA5C(v15);
  }

  else
  {
    sub_254F99204();
    sub_254F505E4(v28, v29);
    sub_254F4EFF0();
    sub_254F9BD10();
    sub_254F98FE4();
    sub_254F92FB4();
    sub_254F77AF8();
    sub_254F9BCF0();
    *(v25 + v21[5]) = v30;
    sub_254F52F94(&qword_27F7619B8);
    sub_254F9934C();
    sub_254F93294();
    sub_254F995E8();
    sub_254F9BD10();
    *(v25 + v21[6]) = v33;
    sub_254F9336C();
    sub_254F9BD10();
    *(v25 + v21[7]) = a13;
    sub_254F933C0();
    sub_254F9BD10();
    v31 = sub_254F99634();
    v32(v31);
    *(v25 + v21[8]) = a11;
    sub_254F93414();
    sub_254F4DA5C(v15);
    sub_254F92D68();
  }

  sub_254F4F348();
}

uint64_t UIControlTool.appBundleId.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UIControlTool.command.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t UIControlTool.commandId.setter()
{
  sub_254F5653C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t UIControlTool.toolDef.getter()
{
  v0 = sub_254F77918();
  type metadata accessor for UIControlTool(v0);
  return sub_254F94830();
}

uint64_t UIControlTool.toolDef.setter()
{
  v2 = sub_254F778A0();
  v3 = v1 + *(type metadata accessor for UIControlTool(v2) + 28);

  return sub_254F93468(v0, v3);
}

uint64_t UIControlTool.toolDef.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for UIControlTool(v0);
  return sub_254F4F68C();
}

unint64_t UIControlTool.identifier.getter()
{
  v1 = v0;
  sub_254F9911C();
  MEMORY[0x259C2FA00](46, 0xE100000000000000);
  MEMORY[0x259C2FA00](*v1, v1[1]);
  MEMORY[0x259C2FA00](46, 0xE100000000000000);
  MEMORY[0x259C2FA00](v1[2], v1[3]);
  return 0xD000000000000030;
}

void UIControlTool.init(toolDef:appBundleId:command:commandId:)()
{
  sub_254F77B94();
  v5 = v4;
  v7 = v6;
  sub_254F990D4();
  v9 = v8;
  v11 = v10;
  v12 = *(type metadata accessor for UIControlTool(0) + 28);
  v13 = sub_254F9B830();
  sub_254F77A50();
  sub_254F4E598(v14, v15, v16, v13);
  sub_254F6C10C(&v11[v12], &qword_27F761900);
  sub_254F778AC();
  (*(v17 + 32))(&v11[v12], v9, v13);
  sub_254F4E598(&v11[v12], 0, 1, v13);
  *v11 = v3;
  *(v11 + 1) = v2;
  *(v11 + 2) = v1;
  *(v11 + 3) = v0;
  *(v11 + 4) = v7;
  *(v11 + 5) = v5;
  sub_254F77BAC();
}

{
  sub_254F77B94();
  v5 = v4;
  v7 = v6;
  sub_254F990D4();
  v9 = v8;
  v11 = v10;
  v12 = *(type metadata accessor for UIControlTool(0) + 28);
  sub_254F9B830();
  sub_254F77A50();
  sub_254F4E598(v13, v14, v15, v16);
  sub_254F93468(v9, v11 + v12);
  *v11 = v3;
  v11[1] = v2;
  v11[2] = v1;
  v11[3] = v0;
  v11[4] = v7;
  v11[5] = v5;
  sub_254F77BAC();
}

uint64_t UIControlTool.init(appBundleId:command:commandId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_254F77918();
  v13 = *(type metadata accessor for UIControlTool(v12) + 28);
  sub_254F9B830();
  sub_254F77A50();
  sub_254F4E598(v14, v15, v16, v17);
  sub_254F9B860();
  sub_254F9B850();
  if (v7)
  {

    return sub_254F6C10C(v6 + v13, &qword_27F761900);
  }

  else
  {
    v18 = sub_254F9B840();
    sub_254F6C10C(v6 + v13, &qword_27F761900);
    sub_254F80F08(v18, MEMORY[0x277D72238], v6 + v13);

    *v6 = a1;
    v6[1] = a2;
    v6[2] = a3;
    v6[3] = a4;
    v6[4] = a5;
    v6[5] = a6;
  }

  return result;
}

uint64_t sub_254F80F08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_254F778AC();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_254F4E598(a3, v8, 1, v6);
}

uint64_t sub_254F80FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49646E616D6D6F63 && a2 == 0xE900000000000064;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6665446C6F6F74 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

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

uint64_t sub_254F81114(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x646E616D6D6F63;
      break;
    case 2:
      result = 0x49646E616D6D6F63;
      break;
    case 3:
      result = 0x6665446C6F6F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F811AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F80FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F811D4(uint64_t a1)
{
  v2 = sub_254F934D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F81210(uint64_t a1)
{
  v2 = sub_254F934D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void UIControlTool.encode(to:)()
{
  sub_254F99C20();
  sub_254F992B4();
  sub_254F52F94(&qword_27F7619D8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4E558();
  sub_254F98F98();
  sub_254F934D8();
  sub_254F4F1BC();
  sub_254F9913C();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F77AF8();
    sub_254F9913C();
    sub_254F9BDB0();
    sub_254F9934C();
    sub_254F9913C();
    sub_254F9BDB0();
    type metadata accessor for UIControlTool(0);
    sub_254F999CC();
    sub_254F9B830();
    sub_254F4DFB4();
    sub_254F505E4(v2, v3);
    sub_254F98F84();
    sub_254F9BD80();
  }

  v4 = sub_254F4F36C();
  v5(v4);
  sub_254F99584();
  sub_254F99C0C();
}

uint64_t UIControlTool.hash(into:)()
{
  v1 = sub_254F9B830();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v2);
  sub_254F4F314();
  v3 = sub_254F52F94(&qword_27F761900);
  sub_254F77A18(v3);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F4FC44();
  sub_254F9B9C0();
  sub_254F9B9C0();
  sub_254F9B9C0();
  type metadata accessor for UIControlTool(0);
  sub_254F94830();
  if (sub_254F4E5C0(v0, 1, v1) == 1)
  {
    return sub_254F9BED0();
  }

  v6 = sub_254F99AB4();
  v7(v6);
  sub_254F9BED0();
  sub_254F4DFB4();
  sub_254F505E4(v8, v9);
  sub_254F9B930();
  v10 = sub_254F9941C();
  return v11(v10);
}

void UIControlTool.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F761900);
  sub_254F77A18(v4);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F4FC44();
  sub_254F52F94(&qword_27F7619E8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_254F9933C();
  v8 = type metadata accessor for UIControlTool(v7);
  v9 = sub_254F77A18(v8);
  MEMORY[0x28223BE20](v9);
  sub_254F4F314();
  sub_254F99128();
  v11 = *(v10 + 36);
  v12 = sub_254F9B830();
  sub_254F77A50();
  sub_254F4E598(v13, v14, v15, v12);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F934D8();
  sub_254F999A8();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
    sub_254F6C10C(v1 + v11, &qword_27F761900);
  }

  else
  {
    *v1 = sub_254F9BCC0();
    v1[1] = v16;
    sub_254F77AF8();
    v1[2] = sub_254F9BCC0();
    v1[3] = v17;
    sub_254F9934C();
    sub_254F642C4();
    v1[4] = sub_254F9BCC0();
    v1[5] = v18;
    sub_254F999CC();
    sub_254F4DFB4();
    sub_254F505E4(v19, v20);
    sub_254F9BC90();
    v21 = sub_254F991A4();
    v22(v21);
    sub_254F93468(0, v1 + v11);
    sub_254F93414();
    sub_254F4DA5C(v3);
    sub_254F4E4BC();
    sub_254F92D68();
  }

  sub_254F4F348();
}

uint64_t SampleInvocation.invocationString.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlowShared::SampleInvocation __swiftcall SampleInvocation.init(invocationString:score:)(Swift::String invocationString, Swift::Float score)
{
  *v2 = invocationString;
  *(v2 + 16) = score;
  result.invocationString = invocationString;
  result.score = score;
  return result;
}

BOOL static SampleInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_254F9BE30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_254F81A44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000254FA75F0 == a2;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F81B10(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_254F81B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F81A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F81B78(uint64_t a1)
{
  v2 = sub_254F9352C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F81BB4(uint64_t a1)
{
  v2 = sub_254F9352C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SampleInvocation.encode(to:)()
{
  sub_254F99444();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F7619F0);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F9352C();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F4E2F0();
    sub_254F9BDE0();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F99428();
}

uint64_t SampleInvocation.hashValue.getter()
{
  sub_254F77C0C();
  sub_254F9B9C0();
  sub_254F9BEE0();
  return sub_254F9BF00();
}

void SampleInvocation.init(from:)()
{
  sub_254F99444();
  sub_254F99A90();
  sub_254F52F94(&qword_27F761A00);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F99488();
  v4 = sub_254F99664();
  sub_254F4EFBC(v4, v5);
  sub_254F9352C();
  sub_254F779D0();
  sub_254F9BF10();
  if (v1)
  {
    sub_254F4DA5C(v0);
  }

  else
  {
    sub_254F50448();
    v6 = sub_254F9BCC0();
    v8 = v7;
    sub_254F50448();
    sub_254F9BCF0();
    v10 = v9;
    v11 = sub_254F50038();
    v12(v11);
    *v2 = v6;
    *(v2 + 8) = v8;
    *(v2 + 16) = v10;

    sub_254F4DA5C(v0);
  }

  sub_254F77C44();
  sub_254F99428();
}

uint64_t sub_254F81FA4()
{
  sub_254F9BEB0();
  SampleInvocation.hash(into:)();
  return sub_254F9BF00();
}

uint64_t sub_254F81FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6374614D6E617073 && a2 == 0xEC000000676E6968;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000254FA7610 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x727465526C6F6F74 && a2 == 0xED00006C61766569;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000254FA7630 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736552746E696F6ALL && a2 == 0xED00007265766C6FLL;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x8000000254FA7650 == a2;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000013 && 0x8000000254FA7670 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_254F9BE30();

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

uint64_t sub_254F8223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F81FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F82264(uint64_t a1)
{
  v2 = sub_254F4FC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F822A0(uint64_t a1)
{
  v2 = sub_254F4FC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F822DC(uint64_t a1)
{
  v2 = sub_254F5055C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F82318(uint64_t a1)
{
  v2 = sub_254F5055C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F82354(uint64_t a1)
{
  v2 = sub_254F93580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F82390(uint64_t a1)
{
  v2 = sub_254F93580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F823CC(uint64_t a1)
{
  v2 = sub_254F935D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F82408(uint64_t a1)
{
  v2 = sub_254F935D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F82444(uint64_t a1)
{
  v2 = sub_254F4FCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F82480(uint64_t a1)
{
  v2 = sub_254F4FCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F824BC(uint64_t a1)
{
  v2 = sub_254F936D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F824F8(uint64_t a1)
{
  v2 = sub_254F936D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F82534(uint64_t a1)
{
  v2 = sub_254F93628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F82570(uint64_t a1)
{
  v2 = sub_254F93628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F825AC(uint64_t a1)
{
  v2 = sub_254F9367C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F825E8(uint64_t a1)
{
  v2 = sub_254F9367C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s22IntelligenceFlowShared13RetrievedToolV5StageO9hashValueSivg_0()
{
  sub_254F77C0C();
  sub_254F99C64();
  return sub_254F9BF00();
}

void QueryDecorationCoreService.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v44 = v3;
  sub_254F52F94(&qword_27F761A68);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F686A4();
  sub_254F995F4(v5);
  sub_254F52F94(&qword_27F761A70);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F686A4();
  v41 = sub_254F52F94(&qword_27F761A78);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A80);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v8);
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A88);
  sub_254F4DF18();
  v42 = v10;
  v43 = v9;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v11);
  sub_254F686A4();
  v45 = v12;
  sub_254F52F94(&qword_27F761A90);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F99364();
  v14 = sub_254F52F94(&qword_27F761A98);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v15);
  sub_254F99774();
  sub_254F52F94(&qword_27F761AA0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v16);
  sub_254F778C8();
  v17 = sub_254F99A78();
  sub_254F4EFBC(v17, v18);
  sub_254F4FC78();
  sub_254F994AC();
  sub_254F9BF10();
  if (!v0)
  {
    v19 = sub_254F9BD20();
    sub_254F68664(v19, 0);
    if (v21 != v20 >> 1)
    {
      sub_254F9932C();
      sub_254F9999C();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v40 = *(v23 + v22);
      sub_254F6865C(v22 + 1);
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        switch(v40)
        {
          case 1:
            sub_254F505B0();
            sub_254F5055C();
            sub_254F98F5C();
            sub_254F99814();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_254F9367C();
            sub_254F99014();
            sub_254F99814();
            swift_unknownObjectRelease();
            (*(v42 + 8))(v45, v43);
            goto LABEL_19;
          case 3:
            sub_254F999CC();
            sub_254F93628();
            sub_254F98F5C();
            sub_254F99814();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 4:
            sub_254F935D4();
            sub_254F98F5C();
            sub_254F99814();
            swift_unknownObjectRelease();
            v30 = sub_254F999D8();
            v32 = v41;
            break;
          case 5:
            sub_254F4FCCC();
            sub_254F99014();
            sub_254F99814();
            swift_unknownObjectRelease();
            v30 = sub_254F991D0();
            break;
          case 6:
            sub_254F93580();
            sub_254F98F5C();
            sub_254F99814();
            swift_unknownObjectRelease();
LABEL_17:
            v30 = sub_254F999D8();
            break;
          default:
            sub_254F936D0();
            sub_254F98F5C();
            sub_254F99814();
            swift_unknownObjectRelease();
            v30 = sub_254F999D8();
            v32 = v14;
            break;
        }

        v31(v30, v32);
LABEL_19:
        v38 = sub_254F99780();
        v39(v38);
        *v44 = v40;
        sub_254F4DA5C(v2);
        goto LABEL_10;
      }
    }

    sub_254F9BBB0();
    sub_254F77D00();
    v34 = v33;
    sub_254F52F94(&qword_27F761100);
    *v34 = &type metadata for QueryDecorationCoreService;
    sub_254F9BC40();
    sub_254F77CC8();
    sub_254F778AC();
    (*(v35 + 104))(v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = sub_254F99634();
    v37(v36);
  }

  sub_254F4DA5C(v2);
LABEL_10:
  sub_254F997B0();
  sub_254F4F348();
}

uint64_t QueryDecorationInput.contextId.getter()
{
  sub_254F9B760();
  sub_254F4E534();
  v0 = sub_254F9964C();

  return v1(v0);
}

id QueryDecorationInput.__allocating_init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int *a17, uint64_t a18, uint64_t a19, double a20, char a21, uint64_t a22)
{
  sub_254F99084();
  v16 = objc_allocWithZone(v14);
  v17 = sub_254F990C0();
  return QueryDecorationInput.init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:)(v17, v18, v19, v20, v15, a6, a7, a8, v21, v22, v23, v24, v25, v26, v27, v28, a17, a18, a19, a20, a21 & 1, a22);
}

id QueryDecorationInput.init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int *a17, uint64_t a18, uint64_t a19, double a20, char a21, uint64_t a22)
{
  sub_254F99970();
  v19 = v18;
  sub_254F99154();
  ObjectType = swift_getObjectType();
  v20 = *a17;
  sub_254F997D4(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  v21 = &v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId];
  *v21 = v17;
  *(v21 + 1) = v19;
  sub_254F9B760();
  sub_254F5001C();
  v22 = sub_254F990E8();
  v23(v22);
  v24 = &v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt];
  *v24 = v16;
  *(v24 + 1) = v15;
  *&v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v20;
  *&v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v31;
  v25 = &v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v25 = a18;
  *(v25 + 1) = a19;
  if (a21)
  {
    a20 = 10.0;
  }

  *&v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = a20;
  *&v14[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = a22;
  sub_254F99750(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices);
  v33.receiver = v14;
  v33.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v33, sel_init);
  v28 = sub_254F4F238();
  v29(v28);
  return v27;
}

id QueryDecorationInput.__allocating_init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:refreshServices:)(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v15 = objc_allocWithZone(v14);
  v16 = sub_254F990C0();
  return QueryDecorationInput.init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:refreshServices:)(v16, v17, v18, v19, a5, a6, a7, a8, v20, v21, v22, v23, v24, v25, v26, v27, a9, *(&a9 + 1), a10, *&a11, a12 & 1, a13, a14);
}

id QueryDecorationInput.init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:previousQueries:refreshServices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int *a17, uint64_t a18, uint64_t a19, double a20, char a21, uint64_t a22, char a23)
{
  sub_254F99970();
  v21 = v20;
  sub_254F99154();
  ObjectType = swift_getObjectType();
  v22 = *a17;
  sub_254F997D4(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  v23 = &v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId];
  *v23 = v19;
  v23[1] = v21;
  v24 = OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_contextId;
  v25 = sub_254F9B760();
  sub_254F50010();
  (*(v26 + 16))(&v16[v24], v15, v25);
  v27 = &v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt];
  *v27 = v18;
  v27[1] = v17;
  *&v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v22;
  *&v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v34;
  v28 = &v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v28 = a18;
  v28[1] = a19;
  if (a21)
  {
    a20 = 10.0;
  }

  *&v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = a20;
  *&v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = a22;
  v16[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices] = a23;
  v36.receiver = v16;
  v36.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v36, sel_init, a19);
  v31 = sub_254F99658();
  v32(v31);
  return v30;
}

void QueryDecorationInput.init(query:requestId:servicesExecuted:contextId:loggingSalt:caller:deviceIdsID:timeout:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, objc_super a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, double a38, char a39)
{
  sub_254F99728();
  a33 = v33;
  a34 = v34;
  sub_254F996FC();
  v48 = v35;
  v37 = v36;
  sub_254F99154();
  v49 = a39;
  v47 = a37;
  v38 = a35;
  v39 = a36;
  ObjectType = swift_getObjectType();
  LODWORD(v38) = *v38;
  sub_254F997D4(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  v40 = &v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId];
  *v40 = v32;
  *(v40 + 1) = v37;
  sub_254F9B760();
  sub_254F5001C();
  v41 = sub_254F990E8();
  v42(v41);
  sub_254F99ACC(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt);
  *&v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v38;
  *&v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v48;
  v43 = &v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v43 = v39;
  *(v43 + 1) = v47;
  v44 = a38;
  if (v49)
  {
    v44 = 10.0;
  }

  *&v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = v44;
  *&v31[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = MEMORY[0x277D84F90];
  sub_254F99750(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices);
  a22.receiver = v31;
  a22.super_class = ObjectType;
  objc_msgSendSuper2(&a22, sel_init);
  v45 = sub_254F4F238();
  v46(v45);
  sub_254F9970C();
}

void QueryDecorationInput.init(query:servicesExecuted:requestId:contextId:loggingSalt:caller:requiredContextReturned:deviceIdsID:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_254F99728();
  a24 = v31;
  a25 = v32;
  sub_254F996FC();
  v34 = v33;
  v36 = v35;
  sub_254F99154();
  v45 = a29;
  v44 = a28;
  v37 = a26;
  ObjectType = swift_getObjectType();
  LODWORD(v37) = *v37;
  sub_254F997D4(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  v38 = &v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId];
  *v38 = v36;
  *(v38 + 1) = v34;
  sub_254F9B760();
  sub_254F5001C();
  v39 = sub_254F990E8();
  v40(v39);
  sub_254F99ACC(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt);
  *&v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v37;
  *&v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v30;
  v41 = &v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v41 = v44;
  v41[1] = v45;
  *&v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = 0x4024000000000000;
  *&v29[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = MEMORY[0x277D84F90];
  sub_254F99750(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices);
  a13.receiver = v29;
  a13.super_class = ObjectType;
  objc_msgSendSuper2(&a13, sel_init);
  v42 = sub_254F4F238();
  v43(v42);
  sub_254F9970C();
}

id QueryDecorationInput.__allocating_init(query:servicesExecuted:requestId:contextId:loggingSalt:caller:requiredContextReturned:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  sub_254F99084();
  v14 = objc_allocWithZone(v9);
  v15 = sub_254F990C0();
  return QueryDecorationInput.init(query:servicesExecuted:requestId:contextId:loggingSalt:caller:requiredContextReturned:)(v15, v16, v17, v18, v10, a6, a7, a8, a9);
}

id QueryDecorationInput.__allocating_init(query:requestId:caller:maxToolsReturned:maxSpansReturned:maxUtteranceContextReturned:requiredContextReturned:spanTypeFilters:contextId:loggingSalt:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v18 = objc_allocWithZone(v14);
  v19 = sub_254F99494();
  return QueryDecorationInput.init(query:requestId:caller:maxToolsReturned:maxSpansReturned:maxUtteranceContextReturned:requiredContextReturned:spanTypeFilters:contextId:loggingSalt:)(v19, v20, a3, a4, a5, v21, v22, v23, v25, v26, v27, a12, *(&a12 + 1), a13, a14);
}

id QueryDecorationInput.init(query:requestId:caller:maxToolsReturned:maxSpansReturned:maxUtteranceContextReturned:requiredContextReturned:spanTypeFilters:contextId:loggingSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_254F99AD8();
  v19 = v18;
  ObjectType = swift_getObjectType();

  v20 = *v16;
  v21 = &v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query];
  *v21 = v19;
  *(v21 + 1) = v17;
  sub_254F99ACC(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId);
  v22 = OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_contextId;
  sub_254F9B760();
  sub_254F5001C();
  (*(v23 + 16))(&v15[v22], a13, v16);
  v24 = &v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt];
  *v24 = a14;
  *(v24 + 1) = a15;
  *&v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v20;
  v25 = MEMORY[0x277D84F90];
  *&v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = MEMORY[0x277D84F90];
  v26 = &v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = 0x4024000000000000;
  *&v15[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = v25;
  sub_254F99750(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices);
  v32.receiver = v15;
  v32.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  v28 = sub_254F4F238();
  v29(v28);
  return v27;
}

unint64_t QueryDecorationInput.description.getter()
{
  sub_254F9911C();
  MEMORY[0x259C2FA00](*(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query), *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query + 8));
  sub_254F99394();
  MEMORY[0x259C2FA00](0x7265757120202020, 0xEB00000000203A79);

  sub_254F99A9C();
  sub_254F9BB90();

  sub_254F99A84(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId);

  sub_254F52F94(&qword_27F761AD0);
  v1 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v1);

  sub_254F99394();
  sub_254F99884();

  QueryDecorationCaller.description.getter();
  MEMORY[0x259C2FA00](v2, v3, v4, v5);

  sub_254F99394();
  sub_254F99884();

  sub_254F99A9C();
  sub_254F9BB90();

  sub_254F9911C();
  v6 = MEMORY[0x259C2FAF0](*(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted), &type metadata for QueryDecorationCoreService);
  MEMORY[0x259C2FA00](v6);

  sub_254F99884();

  sub_254F99A9C();
  sub_254F9BB90();

  sub_254F9911C();
  v13 = v7;
  sub_254F99A84(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID);

  v8 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v8);

  sub_254F99394();
  MEMORY[0x259C2FA00](0xD000000000000011, v13);

  sub_254F99A9C();
  sub_254F9BB90();

  sub_254F9911C();
  v14 = v9;
  if (*(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x259C2FA00](v10, v11);

  sub_254F99394();
  MEMORY[0x259C2FA00](0xD000000000000015, v14);

  sub_254F998D4();
  return 0xD000000000000016;
}

id QueryDecorationInput.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_254F83D74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656C6C6163 && a2 == 0xE600000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000254FA7450 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x53676E6967676F6CLL && a2 == 0xEB00000000746C61;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6449656369766564 && a2 == 0xEB00000000444973;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x73756F6976657270 && a2 == 0xEF73656972657551;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x5368736572666572 && a2 == 0xEF73656369767265)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_254F9BE30();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254F840AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F83D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F840D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F840A4();
  *a1 = result;
  return result;
}

uint64_t sub_254F840FC(uint64_t a1)
{
  v2 = sub_254F4EF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F84138(uint64_t a1)
{
  v2 = sub_254F4EF68();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationInput.__allocating_init(from:)()
{
  sub_254F99868();
  sub_254F996DC();
  QueryDecorationInput.init(from:)();
}

void QueryDecorationInput.init(from:)()
{
  sub_254F4E9D0();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v23 = sub_254F9B760();
  sub_254F4DF18();
  v21 = v5;
  MEMORY[0x28223BE20](v6);
  sub_254F4F314();
  sub_254F99774();
  sub_254F52F94(&qword_27F761AE8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4EFBC(v4, v4[3]);
  sub_254F4EF68();
  sub_254F999A8();
  sub_254F9BF10();
  if (v1)
  {
    sub_254F4DA5C(v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_254F642C4();
    v8 = sub_254F9BCC0();
    sub_254F99640(v8, v9, OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
    sub_254F98FBC(1);
    v10 = sub_254F9BC50();
    sub_254F99640(v10, v11, OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId);
    sub_254F995B0();
    sub_254F937FC();
    sub_254F642C4();
    sub_254F9BD10();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v25;
    sub_254F52F94(&qword_27F761AE0);
    sub_254F993E0();
    sub_254F93850();
    sub_254F995E8();
    sub_254F642C4();
    sub_254F9BD10();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v25;
    sub_254F98FBC(4);
    sub_254F9BCE0();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = v12;
    LOBYTE(v25) = 5;
    sub_254F99258();
    sub_254F505E4(v13, v14);
    sub_254F642C4();
    sub_254F9BD10();
    (*(v21 + 32))(&v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_contextId], v2, v23);
    sub_254F98FBC(6);
    v15 = sub_254F9BCC0();
    sub_254F99640(v15, v16, OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt);
    sub_254F98FBC(7);
    v17 = sub_254F9BC50();
    sub_254F99640(v17, v18, OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID);
    sub_254F52F94(&qword_27F760DD0);
    sub_254F50650(&qword_280C459D8);
    sub_254F995E8();
    sub_254F642C4();
    sub_254F9BD10();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = v25;
    sub_254F98FBC(9);
    v0[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices] = sub_254F9BCD0() & 1;
    v24.receiver = v0;
    v24.super_class = ObjectType;
    objc_msgSendSuper2(&v24, sel_init);
    v19 = sub_254F991D0();
    v20(v19);
    sub_254F4DA5C(v4);
  }

  sub_254F4FC6C();
  sub_254F4F348();
}

void sub_254F848CC(void *a1@<X8>)
{
  QueryDecorationInput.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void QueryDecorationCaller.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (&unk_28672A360 + 24 * v1 + 32);
  while (v1 != 6)
  {
    if (v1 > 5)
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = v5 + 6;
    v7 = *v5;
    v5 += 6;
    if ((v7 & ~v2) == 0)
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254F90460(0, v4[2] + 1, 1);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_254F90460((v10 > 1), v11 + 1, 1);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      *(v12 + 8) = v7;
      v12[5] = v9;
      v12[6] = v8;
      goto LABEL_2;
    }
  }

  v13 = v4[2];
  if (v13)
  {
    sub_254F90440(0, v13, 0);
    v14 = v3;
    v15 = v4 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_254F90440((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v13;
    }

    while (v13);
  }

  sub_254F52F94(&qword_27F760DD0);
  sub_254F92CC4();
  sub_254F999E4();
  sub_254F9B940();

  sub_254F4E364();
}

uint64_t DynamicEnumerationEntity.parameterTypeInstance.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for DynamicEnumerationEntity(v0);
  return sub_254F4F68C();
}

uint64_t DynamicEnumerationEntity.typedValue.getter()
{
  v0 = sub_254F77918();
  type metadata accessor for DynamicEnumerationEntity(v0);
  sub_254F9B890();
  sub_254F4E534();
  v1 = sub_254F9964C();

  return v2(v1);
}

uint64_t DynamicEnumerationEntity.typedValue.setter()
{
  v2 = sub_254F778A0();
  v3 = *(type metadata accessor for DynamicEnumerationEntity(v2) + 24);
  sub_254F9B890();
  sub_254F4E880();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t DynamicEnumerationEntity.typedValue.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for DynamicEnumerationEntity(v0);
  return sub_254F4F68C();
}

uint64_t DynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_254F9B760();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v10);
  sub_254F4F314();
  sub_254F99488();
  if (!a2)
  {
    sub_254F9B750();
    a1 = sub_254F9B740();
    a2 = v11;
    v12 = sub_254F99984();
    v13(v12);
  }

  *a5 = a1;
  a5[1] = a2;
  v14 = type metadata accessor for DynamicEnumerationEntity(0);
  v15 = *(v14 + 20);
  sub_254F9B8B0();
  sub_254F4E880();
  (*(v16 + 32))(a5 + v15, a3);
  v17 = *(v14 + 24);
  sub_254F9B890();
  sub_254F4E880();
  return (*(v18 + 32))(a5 + v17, a4);
}

uint64_t static DynamicEnumerationEntity.== infix(_:_:)()
{
  sub_254F50B9C();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DynamicEnumerationEntity(0);
  if ((sub_254F9B8A0() & 1) == 0)
  {
    return 0;
  }

  return sub_254F9B880();
}

uint64_t sub_254F84F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000254FA7690 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575)
    {

      return 2;
    }

    else
    {
      v8 = sub_254F9BE30();

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

uint64_t sub_254F85060(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6C61566465707974;
}

uint64_t sub_254F850C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F84F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F850F0(uint64_t a1)
{
  v2 = sub_254F93948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8512C(uint64_t a1)
{
  v2 = sub_254F93948();

  return MEMORY[0x2821FE720](a1, v2);
}

void DynamicEnumerationEntity.encode(to:)()
{
  sub_254F99C20();
  sub_254F52F94(&qword_27F761AF0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4FC44();
  sub_254F98F98();
  sub_254F93948();
  sub_254F9975C();
  sub_254F9BF20();
  sub_254F9BDB0();
  if (!v0)
  {
    type metadata accessor for DynamicEnumerationEntity(0);
    sub_254F77AF8();
    sub_254F9B8B0();
    sub_254F99234();
    sub_254F505E4(v2, v3);
    sub_254F4EFE0();
    sub_254F9BE00();
    sub_254F9934C();
    sub_254F9B890();
    sub_254F4E448();
    sub_254F505E4(v4, v5);
    sub_254F4EFE0();
    sub_254F9BE00();
  }

  v6 = sub_254F99930();
  v7(v6);
  sub_254F99584();
  sub_254F99C0C();
}

void DynamicEnumerationEntity.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v26 = sub_254F9B890();
  sub_254F4DF18();
  v24 = v4;
  MEMORY[0x28223BE20](v5);
  sub_254F4F314();
  v25 = v7 - v6;
  sub_254F993EC();
  v8 = sub_254F9B8B0();
  sub_254F4DF18();
  v27 = v9;
  MEMORY[0x28223BE20](v10);
  sub_254F4F314();
  sub_254F99128();
  sub_254F52F94(&qword_27F761AF8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v11);
  sub_254F4FC44();
  v12 = type metadata accessor for DynamicEnumerationEntity(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v13);
  sub_254F4F314();
  v16 = (v15 - v14);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F93948();
  sub_254F9975C();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
  }

  else
  {
    *v16 = sub_254F9BCC0();
    v16[1] = v17;
    sub_254F77AF8();
    sub_254F99234();
    sub_254F505E4(v18, v19);
    sub_254F99A18();
    sub_254F9BD10();
    (*(v27 + 32))(v16 + *(v12 + 20), v1, v8);
    sub_254F9934C();
    sub_254F4E448();
    sub_254F505E4(v20, v21);
    sub_254F9BD10();
    v22 = sub_254F999C0();
    v23(v22);
    (*(v24 + 32))(v16 + *(v12 + 24), v25, v26);
    sub_254F93414();
    sub_254F4DA5C(v3);
    sub_254F92D68();
  }

  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t QueryDecorationRecognitionEntities.description.getter()
{
  sub_254F9911C();

  sub_254F9BB90();

  sub_254F9911C();
  v3 = v0;
  sub_254F52F94(&qword_27F761B00);
  v1 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v1);

  sub_254F99394();
  MEMORY[0x259C2FA00](0xD000000000000015, v3);

  sub_254F998D4();
  return 0xD000000000000024;
}

uint64_t sub_254F8582C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x45747865746E6F63 && a2 == 0xEF7365697469746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}